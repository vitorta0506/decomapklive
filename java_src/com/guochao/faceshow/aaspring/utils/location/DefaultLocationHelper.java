package com.guochao.faceshow.aaspring.utils.location;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.location.LocationHelper;
/* loaded from: classes3.dex */
public class DefaultLocationHelper extends LocationHelper {
    private static final String TAG = "DefaultLocationHelper";
    private Handler mHandler;
    @Nullable
    private LocationHelper.OnLocationChangedListener mLocationChangedListener;
    private MyLocationListener mLocationListener;
    LocationManager mLocationManager;
    private Runnable mTimeout;

    /* loaded from: classes3.dex */
    private class MyLocationListener implements LocationListener {
        @Nullable
        LocationHelper.OnLocationChangedListener mOnLocationChangedListener;

        public MyLocationListener(LocationHelper.OnLocationChangedListener onLocationChangedListener) {
            this.mOnLocationChangedListener = onLocationChangedListener;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            LocationManager locationManager = DefaultLocationHelper.this.mLocationManager;
            if (locationManager != null) {
                locationManager.removeUpdates(this);
            }
            double latitude = (float) location.getLatitude();
            double longitude = (float) location.getLongitude();
            MemoryCache.getInstance().put(FcLocation.create(latitude, longitude));
            DefaultLocationHelper.this.mHandler.removeCallbacks(DefaultLocationHelper.this.mTimeout);
            LocationHelper.OnLocationChangedListener onLocationChangedListener = this.mOnLocationChangedListener;
            if (onLocationChangedListener != null) {
                onLocationChangedListener.onReceiveLocation(FcLocation.create(latitude, longitude));
            }
            this.mOnLocationChangedListener = null;
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            LogUtils.i(DefaultLocationHelper.TAG, "onProviderDisabled: ");
            DefaultLocationHelper defaultLocationHelper = DefaultLocationHelper.this;
            if (defaultLocationHelper.mLocationManager == null) {
                defaultLocationHelper.mLocationManager = (LocationManager) BaseApplication.getInstance().getSystemService("location");
            }
            LocationManager locationManager = DefaultLocationHelper.this.mLocationManager;
            if (locationManager == null) {
                return;
            }
            Location lastKnownLocation = locationManager.getLastKnownLocation(str);
            if (lastKnownLocation != null) {
                MemoryCache.getInstance().put(FcLocation.create(lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude()));
            } else {
                LocationHelper.OnLocationChangedListener onLocationChangedListener = this.mOnLocationChangedListener;
                if (onLocationChangedListener != null) {
                    onLocationChangedListener.onError(1005, "not enabled", FcLocation.DEFAULT);
                }
            }
            DefaultLocationHelper.this.mHandler.removeCallbacks(DefaultLocationHelper.this.mTimeout);
            this.mOnLocationChangedListener = null;
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            LogUtils.i(DefaultLocationHelper.TAG, "onProviderEnabled: ");
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i9, Bundle bundle) {
            LogUtils.i(DefaultLocationHelper.TAG, "onStatusChanged: ");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultLocationHelper(Context context) {
        super(context);
        this.mHandler = new Handler();
        this.mTimeout = new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.location.DefaultLocationHelper.1
            @Override // java.lang.Runnable
            public void run() {
                if (DefaultLocationHelper.this.mLocationChangedListener != null) {
                    try {
                        DefaultLocationHelper defaultLocationHelper = DefaultLocationHelper.this;
                        defaultLocationHelper.mLocationManager.removeUpdates(defaultLocationHelper.mLocationListener);
                    } catch (Exception unused) {
                    }
                    DefaultLocationHelper.this.mLocationChangedListener.onError(1006, "time out", FcLocation.DEFAULT);
                }
            }
        };
        this.mLocationManager = (LocationManager) context.getSystemService("location");
    }

    public boolean hasLocationPermission() {
        return ContextCompat.checkSelfPermission(getContext(), "android.permission.ACCESS_FINE_LOCATION") == 0 || ContextCompat.checkSelfPermission(getContext(), "android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    @Override // com.guochao.faceshow.aaspring.utils.location.LocationHelper
    public void requestLocation(LocationConfig locationConfig, LocationHelper.OnLocationChangedListener onLocationChangedListener) {
        this.mLocationChangedListener = onLocationChangedListener;
        boolean isProviderEnabled = this.mLocationManager.isProviderEnabled("network");
        if (!LocationService.hasGps(this.mContext) && !isProviderEnabled) {
            onLocationChangedListener.onError(1005, "not enabled", FcLocation.DEFAULT);
            return;
        }
        int timeOut = locationConfig == null ? 5 : locationConfig.getTimeOut();
        if (!hasLocationPermission()) {
            onLocationChangedListener.onError(1005, "not enabled", FcLocation.DEFAULT);
            return;
        }
        try {
            MyLocationListener myLocationListener = this.mLocationListener;
            if (myLocationListener != null) {
                this.mLocationManager.removeUpdates(myLocationListener);
            }
            MyLocationListener myLocationListener2 = new MyLocationListener(onLocationChangedListener);
            this.mLocationListener = myLocationListener2;
            this.mLocationManager.requestLocationUpdates("network", 1000L, 0.0f, myLocationListener2);
            this.mHandler.postDelayed(this.mTimeout, timeOut * 1000);
        } catch (Exception unused) {
            onLocationChangedListener.onError(1005, "not enabled", FcLocation.DEFAULT);
        }
    }
}
