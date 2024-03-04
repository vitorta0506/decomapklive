package androidx.core.location;

import android.location.GnssStatus;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.collection.SimpleArrayMap;
import androidx.core.location.GnssStatusCompat;
import androidx.core.location.LocationManagerCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class LocationManagerCompat {
    private static final long GET_CURRENT_LOCATION_TIMEOUT_MS = 30000;
    private static final long MAX_CURRENT_LOCATION_AGE_MS = 10000;
    private static final long PRE_N_LOOPER_TIMEOUT_S = 5;
    private static Field sContextField;
    @GuardedBy("sLocationListeners")
    static final WeakHashMap<LocationListener, List<WeakReference<LocationListenerTransport>>> sLocationListeners = new WeakHashMap<>();
    private static Method sRequestLocationUpdatesExecutorMethod;
    private static Method sRequestLocationUpdatesLooperMethod;

    @RequiresApi(28)
    /* loaded from: classes.dex */
    private static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static String getGnssHardwareModelName(LocationManager locationManager) {
            return locationManager.getGnssHardwareModelName();
        }

        @DoNotInline
        static int getGnssYearOfHardware(LocationManager locationManager) {
            return locationManager.getGnssYearOfHardware();
        }

        @DoNotInline
        static boolean isLocationEnabled(LocationManager locationManager) {
            return locationManager.isLocationEnabled();
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    private static class Api30Impl {
        private Api30Impl() {
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        static void getCurrentLocation(LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull final Consumer<Location> consumer) {
            android.os.CancellationSignal cancellationSignal2 = cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.getCancellationSignalObject() : null;
            Objects.requireNonNull(consumer);
            locationManager.getCurrentLocation(str, cancellationSignal2, executor, new java.util.function.Consumer() { // from class: androidx.core.location.d
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Consumer.this.accept((Location) obj);
                }
            });
        }
    }

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static class Api31Impl {
        private Api31Impl() {
        }

        @DoNotInline
        static boolean hasProvider(LocationManager locationManager, @NonNull String str) {
            return locationManager.hasProvider(str);
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        static void requestLocationUpdates(LocationManager locationManager, @NonNull String str, @NonNull LocationRequest locationRequest, @NonNull Executor executor, @NonNull LocationListener locationListener) {
            locationManager.requestLocationUpdates(str, locationRequest, executor, locationListener);
        }
    }

    /* loaded from: classes.dex */
    private static final class CancellableLocationListener implements LocationListener {
        private Consumer<Location> mConsumer;
        private final Executor mExecutor;
        private final LocationManager mLocationManager;
        private final Handler mTimeoutHandler = new Handler(Looper.getMainLooper());
        @Nullable
        Runnable mTimeoutRunnable;
        @GuardedBy("this")
        private boolean mTriggered;

        CancellableLocationListener(LocationManager locationManager, Executor executor, Consumer<Location> consumer) {
            this.mLocationManager = locationManager;
            this.mExecutor = executor;
            this.mConsumer = consumer;
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        private void cleanup() {
            this.mConsumer = null;
            this.mLocationManager.removeUpdates(this);
            Runnable runnable = this.mTimeoutRunnable;
            if (runnable != null) {
                this.mTimeoutHandler.removeCallbacks(runnable);
                this.mTimeoutRunnable = null;
            }
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void cancel() {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                this.mTriggered = true;
                cleanup();
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void onLocationChanged(@Nullable final Location location) {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                this.mTriggered = true;
                final Consumer<Location> consumer = this.mConsumer;
                this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        Consumer.this.accept(location);
                    }
                });
                cleanup();
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void onProviderDisabled(@NonNull String str) {
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i9, Bundle bundle) {
        }

        public void startTimeout(long j10) {
            synchronized (this) {
                if (this.mTriggered) {
                    return;
                }
                Runnable runnable = new Runnable() { // from class: androidx.core.location.LocationManagerCompat.CancellableLocationListener.1
                    @Override // java.lang.Runnable
                    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
                    public void run() {
                        CancellableLocationListener cancellableLocationListener = CancellableLocationListener.this;
                        cancellableLocationListener.mTimeoutRunnable = null;
                        cancellableLocationListener.onLocationChanged((Location) null);
                    }
                };
                this.mTimeoutRunnable = runnable;
                this.mTimeoutHandler.postDelayed(runnable, j10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GnssLazyLoader {
        @GuardedBy("sGnssStatusListeners")
        static final SimpleArrayMap<Object, Object> sGnssStatusListeners = new SimpleArrayMap<>();

        private GnssLazyLoader() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class GnssStatusTransport extends GnssStatus.Callback {
        final GnssStatusCompat.Callback mCallback;

        GnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mCallback = callback;
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(int i9) {
            this.mCallback.onFirstFix(i9);
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            this.mCallback.onStarted();
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            this.mCallback.onStopped();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GpsStatusTransport implements GpsStatus.Listener {
        final GnssStatusCompat.Callback mCallback;
        @Nullable
        volatile Executor mExecutor;
        private final LocationManager mLocationManager;

        GpsStatusTransport(LocationManager locationManager, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mLocationManager = locationManager;
            this.mCallback = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGpsStatusChanged$0(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStarted();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGpsStatusChanged$1(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStopped();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGpsStatusChanged$2(Executor executor, int i9) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onFirstFix(i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGpsStatusChanged$3(Executor executor, GnssStatusCompat gnssStatusCompat) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onSatelliteStatusChanged(gnssStatusCompat);
        }

        @Override // android.location.GpsStatus.Listener
        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        public void onGpsStatusChanged(int i9) {
            GpsStatus gpsStatus;
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            if (i9 == 1) {
                executor.execute(new Runnable() { // from class: androidx.core.location.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.GpsStatusTransport.this.lambda$onGpsStatusChanged$0(executor);
                    }
                });
            } else if (i9 == 2) {
                executor.execute(new Runnable() { // from class: androidx.core.location.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.GpsStatusTransport.this.lambda$onGpsStatusChanged$1(executor);
                    }
                });
            } else if (i9 != 3) {
                if (i9 == 4 && (gpsStatus = this.mLocationManager.getGpsStatus(null)) != null) {
                    final GnssStatusCompat wrap = GnssStatusCompat.wrap(gpsStatus);
                    executor.execute(new Runnable() { // from class: androidx.core.location.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationManagerCompat.GpsStatusTransport.this.lambda$onGpsStatusChanged$3(executor, wrap);
                        }
                    });
                }
            } else {
                GpsStatus gpsStatus2 = this.mLocationManager.getGpsStatus(null);
                if (gpsStatus2 != null) {
                    final int timeToFirstFix = gpsStatus2.getTimeToFirstFix();
                    executor.execute(new Runnable() { // from class: androidx.core.location.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationManagerCompat.GpsStatusTransport.this.lambda$onGpsStatusChanged$2(executor, timeToFirstFix);
                        }
                    });
                }
            }
        }

        public void register(Executor executor) {
            Preconditions.checkState(this.mExecutor == null);
            this.mExecutor = executor;
        }

        public void unregister() {
            this.mExecutor = null;
        }
    }

    /* loaded from: classes.dex */
    private static final class InlineHandlerExecutor implements Executor {
        private final Handler mHandler;

        InlineHandlerExecutor(@NonNull Handler handler) {
            this.mHandler = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                runnable.run();
            } else if (this.mHandler.post((Runnable) Preconditions.checkNotNull(runnable))) {
            } else {
                throw new RejectedExecutionException(this.mHandler + " is shutting down");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class PreRGnssStatusTransport extends GnssStatus.Callback {
        final GnssStatusCompat.Callback mCallback;
        @Nullable
        volatile Executor mExecutor;

        PreRGnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.mCallback = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFirstFix$2(Executor executor, int i9) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onFirstFix(i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSatelliteStatusChanged$3(Executor executor, GnssStatus gnssStatus) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStarted$0(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStarted();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStopped$1(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.onStopped();
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(final int i9) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.t
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.lambda$onFirstFix$2(executor, i9);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(final GnssStatus gnssStatus) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.u
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.lambda$onSatelliteStatusChanged$3(executor, gnssStatus);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.s
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.lambda$onStarted$0(executor);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.r
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.lambda$onStopped$1(executor);
                }
            });
        }

        public void register(Executor executor) {
            Preconditions.checkArgument(executor != null, "invalid null executor");
            Preconditions.checkState(this.mExecutor == null);
            this.mExecutor = executor;
        }

        public void unregister() {
            this.mExecutor = null;
        }
    }

    private LocationManagerCompat() {
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void getCurrentLocation(@NonNull LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull final Consumer<Location> consumer) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.getCurrentLocation(locationManager, str, cancellationSignal, executor, consumer);
            return;
        }
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        final Location lastKnownLocation = locationManager.getLastKnownLocation(str);
        if (lastKnownLocation != null && SystemClock.elapsedRealtime() - LocationCompat.getElapsedRealtimeMillis(lastKnownLocation) < MAX_CURRENT_LOCATION_AGE_MS) {
            executor.execute(new Runnable() { // from class: androidx.core.location.b
                @Override // java.lang.Runnable
                public final void run() {
                    Consumer.this.accept(lastKnownLocation);
                }
            });
            return;
        }
        final CancellableLocationListener cancellableLocationListener = new CancellableLocationListener(locationManager, executor, consumer);
        locationManager.requestLocationUpdates(str, 0L, 0.0f, cancellableLocationListener, Looper.getMainLooper());
        if (cancellationSignal != null) {
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.core.location.LocationManagerCompat.1
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
                public void onCancel() {
                    CancellableLocationListener.this.cancel();
                }
            });
        }
        cancellableLocationListener.startTimeout(GET_CURRENT_LOCATION_TIMEOUT_MS);
    }

    @Nullable
    public static String getGnssHardwareModelName(@NonNull LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getGnssHardwareModelName(locationManager);
        }
        return null;
    }

    public static int getGnssYearOfHardware(@NonNull LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.getGnssYearOfHardware(locationManager);
        }
        return 0;
    }

    public static boolean hasProvider(@NonNull LocationManager locationManager, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.hasProvider(locationManager, str);
        }
        if (locationManager.getAllProviders().contains(str)) {
            return true;
        }
        try {
            return locationManager.getProvider(str) != null;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static boolean isLocationEnabled(@NonNull LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.isLocationEnabled(locationManager);
        }
        return locationManager.isProviderEnabled("network") || locationManager.isProviderEnabled("gps");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$registerGnssStatusCallback$1(LocationManager locationManager, GpsStatusTransport gpsStatusTransport) throws Exception {
        return Boolean.valueOf(locationManager.addGpsStatusListener(gpsStatusTransport));
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat.Callback callback, @NonNull Handler handler) {
        if (Build.VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, ExecutorCompat.create(handler), callback);
        }
        return registerGnssStatusCallback(locationManager, new InlineHandlerExecutor(handler), callback);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void removeUpdates(@NonNull LocationManager locationManager, @NonNull LocationListenerCompat locationListenerCompat) {
        WeakHashMap<LocationListener, List<WeakReference<LocationListenerTransport>>> weakHashMap = sLocationListeners;
        synchronized (weakHashMap) {
            List<WeakReference<LocationListenerTransport>> remove = weakHashMap.remove(locationListenerCompat);
            if (remove != null) {
                for (WeakReference<LocationListenerTransport> weakReference : remove) {
                    LocationListenerTransport locationListenerTransport = weakReference.get();
                    if (locationListenerTransport != null && locationListenerTransport.unregister()) {
                        locationManager.removeUpdates(locationListenerTransport);
                    }
                }
            }
        }
        locationManager.removeUpdates(locationListenerCompat);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull Executor executor, @NonNull LocationListenerCompat locationListenerCompat) {
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 31) {
            Api31Impl.requestLocationUpdates(locationManager, str, locationRequestCompat.toLocationRequest(), executor, locationListenerCompat);
            return;
        }
        if (i9 >= 30) {
            try {
                if (sRequestLocationUpdatesExecutorMethod == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", LocationRequest.class, Executor.class, LocationListener.class);
                    sRequestLocationUpdatesExecutorMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    sRequestLocationUpdatesExecutorMethod.invoke(locationManager, locationRequest, executor, locationListenerCompat);
                    return;
                }
            } catch (IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
        }
        LocationListenerTransport locationListenerTransport = new LocationListenerTransport(locationListenerCompat, executor);
        try {
            if (sRequestLocationUpdatesLooperMethod == null) {
                Method declaredMethod2 = LocationManager.class.getDeclaredMethod("requestLocationUpdates", LocationRequest.class, LocationListener.class, Looper.class);
                sRequestLocationUpdatesLooperMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            }
            LocationRequest locationRequest2 = locationRequestCompat.toLocationRequest(str);
            if (locationRequest2 != null) {
                synchronized (sLocationListeners) {
                    sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequest2, locationListenerTransport, Looper.getMainLooper());
                    locationListenerTransport.register();
                }
                return;
            }
        } catch (IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused2) {
        }
        synchronized (sLocationListeners) {
            locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerTransport, Looper.getMainLooper());
            locationListenerTransport.register();
        }
    }

    public static void unregisterGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat.Callback callback) {
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 30) {
            SimpleArrayMap<Object, Object> simpleArrayMap = GnssLazyLoader.sGnssStatusListeners;
            synchronized (simpleArrayMap) {
                GnssStatus.Callback callback2 = (GnssStatusTransport) simpleArrayMap.remove(callback);
                if (callback2 != null) {
                    locationManager.unregisterGnssStatusCallback(callback2);
                }
            }
        } else if (i9 >= 24) {
            SimpleArrayMap<Object, Object> simpleArrayMap2 = GnssLazyLoader.sGnssStatusListeners;
            synchronized (simpleArrayMap2) {
                PreRGnssStatusTransport preRGnssStatusTransport = (PreRGnssStatusTransport) simpleArrayMap2.remove(callback);
                if (preRGnssStatusTransport != null) {
                    preRGnssStatusTransport.unregister();
                    locationManager.unregisterGnssStatusCallback(preRGnssStatusTransport);
                }
            }
        } else {
            SimpleArrayMap<Object, Object> simpleArrayMap3 = GnssLazyLoader.sGnssStatusListeners;
            synchronized (simpleArrayMap3) {
                GpsStatusTransport gpsStatusTransport = (GpsStatusTransport) simpleArrayMap3.remove(callback);
                if (gpsStatusTransport != null) {
                    gpsStatusTransport.unregister();
                    locationManager.removeGpsStatusListener(gpsStatusTransport);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LocationListenerTransport implements LocationListener {
        final Executor mExecutor;
        @Nullable
        volatile LocationListenerCompat mListener;

        LocationListenerTransport(@Nullable LocationListenerCompat locationListenerCompat, Executor executor) {
            this.mListener = (LocationListenerCompat) ObjectsCompat.requireNonNull(locationListenerCompat, "invalid null listener");
            this.mExecutor = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFlushComplete$4(LocationListenerCompat locationListenerCompat, int i9) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onFlushComplete(i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLocationChanged$2(LocationListenerCompat locationListenerCompat, Location location) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onLocationChanged(location);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLocationChanged$3(LocationListenerCompat locationListenerCompat, List list) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onLocationChanged(list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onProviderDisabled$7(LocationListenerCompat locationListenerCompat, String str) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onProviderDisabled(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onProviderEnabled$6(LocationListenerCompat locationListenerCompat, String str) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onProviderEnabled(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStatusChanged$5(LocationListenerCompat locationListenerCompat, String str, int i9, Bundle bundle) {
            if (this.mListener != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onStatusChanged(str, i9, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$register$0(WeakReference weakReference) {
            return weakReference.get() == null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$unregister$1(WeakReference weakReference) {
            return weakReference.get() == null;
        }

        @Override // android.location.LocationListener
        public void onFlushComplete(final int i9) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.lambda$onFlushComplete$4(locationListenerCompat, i9);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull final Location location) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.k
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.lambda$onLocationChanged$2(locationListenerCompat, location);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(@NonNull final String str) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.l
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.lambda$onProviderDisabled$7(locationListenerCompat, str);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull final String str) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.m
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.lambda$onProviderEnabled$6(locationListenerCompat, str);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(final String str, final int i9, final Bundle bundle) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.n
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.lambda$onStatusChanged$5(locationListenerCompat, str, i9, bundle);
                }
            });
        }

        @GuardedBy("sLocationListeners")
        public void register() {
            WeakHashMap<LocationListener, List<WeakReference<LocationListenerTransport>>> weakHashMap = LocationManagerCompat.sLocationListeners;
            List<WeakReference<LocationListenerTransport>> list = weakHashMap.get(this.mListener);
            if (list == null) {
                list = new ArrayList<>(1);
                weakHashMap.put(this.mListener, list);
            } else if (Build.VERSION.SDK_INT >= 24) {
                list.removeIf(new Predicate() { // from class: androidx.core.location.p
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$register$0;
                        lambda$register$0 = LocationManagerCompat.LocationListenerTransport.lambda$register$0((WeakReference) obj);
                        return lambda$register$0;
                    }
                });
            } else {
                Iterator<WeakReference<LocationListenerTransport>> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().get() == null) {
                        it.remove();
                    }
                }
            }
            list.add(new WeakReference<>(this));
        }

        @GuardedBy("sLocationListeners")
        public boolean unregister() {
            LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return false;
            }
            this.mListener = null;
            List<WeakReference<LocationListenerTransport>> list = LocationManagerCompat.sLocationListeners.get(locationListenerCompat);
            if (list != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    list.removeIf(new Predicate() { // from class: androidx.core.location.q
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            boolean lambda$unregister$1;
                            lambda$unregister$1 = LocationManagerCompat.LocationListenerTransport.lambda$unregister$1((WeakReference) obj);
                            return lambda$unregister$1;
                        }
                    });
                } else {
                    Iterator<WeakReference<LocationListenerTransport>> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().get() == null) {
                            it.remove();
                        }
                    }
                }
                if (list.isEmpty()) {
                    LocationManagerCompat.sLocationListeners.remove(locationListenerCompat);
                    return true;
                }
                return true;
            }
            return true;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull final List<Location> list) {
            final LocationListenerCompat locationListenerCompat = this.mListener;
            if (locationListenerCompat == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.o
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.lambda$onLocationChanged$3(locationListenerCompat, list);
                }
            });
        }
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, null, executor, callback);
        }
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return registerGnssStatusCallback(locationManager, new Handler(myLooper), executor, callback);
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x010a A[Catch: all -> 0x0126, TryCatch #2 {all -> 0x0126, blocks: (B:83:0x00e9, B:84:0x00ff, B:87:0x0102, B:89:0x010a, B:91:0x0112, B:92:0x0118, B:93:0x0119, B:94:0x011e, B:95:0x011f, B:96:0x0125, B:73:0x00d8), top: B:107:0x0098 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x011f A[Catch: all -> 0x0126, TryCatch #2 {all -> 0x0126, blocks: (B:83:0x00e9, B:84:0x00ff, B:87:0x0102, B:89:0x010a, B:91:0x0112, B:92:0x0118, B:93:0x0119, B:94:0x011e, B:95:0x011f, B:96:0x0125, B:73:0x00d8), top: B:107:0x0098 }] */
    @androidx.annotation.RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean registerGnssStatusCallback(final android.location.LocationManager r9, android.os.Handler r10, java.util.concurrent.Executor r11, androidx.core.location.GnssStatusCompat.Callback r12) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.location.LocationManagerCompat.registerGnssStatusCallback(android.location.LocationManager, android.os.Handler, java.util.concurrent.Executor, androidx.core.location.GnssStatusCompat$Callback):boolean");
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull LocationListenerCompat locationListenerCompat, @NonNull Looper looper) {
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.requestLocationUpdates(locationManager, str, locationRequestCompat.toLocationRequest(), ExecutorCompat.create(new Handler(looper)), locationListenerCompat);
            return;
        }
        try {
            if (sRequestLocationUpdatesLooperMethod == null) {
                Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", LocationRequest.class, LocationListener.class, Looper.class);
                sRequestLocationUpdatesLooperMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            try {
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequest, locationListenerCompat, looper);
                    return;
                }
            } catch (IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
        } catch (IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused2) {
        }
        locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerCompat, looper);
    }
}
