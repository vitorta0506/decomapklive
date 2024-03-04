package androidx.core.location;

import android.location.LocationRequest;
import android.os.Build;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.core.util.TimeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class LocationRequestCompat {
    private static final long IMPLICIT_MIN_UPDATE_INTERVAL = -1;
    public static final long PASSIVE_INTERVAL = Long.MAX_VALUE;
    public static final int QUALITY_BALANCED_POWER_ACCURACY = 102;
    public static final int QUALITY_HIGH_ACCURACY = 100;
    public static final int QUALITY_LOW_POWER = 104;
    private static Method sCreateFromDeprecatedProviderMethod;
    private static Method sSetExpireInMethod;
    private static Method sSetFastestIntervalMethod;
    private static Method sSetNumUpdatesMethod;
    private static Method sSetQualityMethod;
    final long mDurationMillis;
    final long mIntervalMillis;
    final long mMaxUpdateDelayMillis;
    final int mMaxUpdates;
    final float mMinUpdateDistanceMeters;
    final long mMinUpdateIntervalMillis;
    final int mQuality;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface Quality {
    }

    LocationRequestCompat(long j10, int i9, long j11, int i10, long j12, float f10, long j13) {
        this.mIntervalMillis = j10;
        this.mQuality = i9;
        this.mMinUpdateIntervalMillis = j12;
        this.mDurationMillis = j11;
        this.mMaxUpdates = i10;
        this.mMinUpdateDistanceMeters = f10;
        this.mMaxUpdateDelayMillis = j13;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocationRequestCompat) {
            LocationRequestCompat locationRequestCompat = (LocationRequestCompat) obj;
            return this.mQuality == locationRequestCompat.mQuality && this.mIntervalMillis == locationRequestCompat.mIntervalMillis && this.mMinUpdateIntervalMillis == locationRequestCompat.mMinUpdateIntervalMillis && this.mDurationMillis == locationRequestCompat.mDurationMillis && this.mMaxUpdates == locationRequestCompat.mMaxUpdates && Float.compare(locationRequestCompat.mMinUpdateDistanceMeters, this.mMinUpdateDistanceMeters) == 0 && this.mMaxUpdateDelayMillis == locationRequestCompat.mMaxUpdateDelayMillis;
        }
        return false;
    }

    @IntRange(from = 1)
    public long getDurationMillis() {
        return this.mDurationMillis;
    }

    @IntRange(from = 0)
    public long getIntervalMillis() {
        return this.mIntervalMillis;
    }

    @IntRange(from = 0)
    public long getMaxUpdateDelayMillis() {
        return this.mMaxUpdateDelayMillis;
    }

    @IntRange(from = 1, to = 2147483647L)
    public int getMaxUpdates() {
        return this.mMaxUpdates;
    }

    @FloatRange(from = 0.0d, to = 3.4028234663852886E38d)
    public float getMinUpdateDistanceMeters() {
        return this.mMinUpdateDistanceMeters;
    }

    @IntRange(from = 0)
    public long getMinUpdateIntervalMillis() {
        long j10 = this.mMinUpdateIntervalMillis;
        return j10 == -1 ? this.mIntervalMillis : j10;
    }

    public int getQuality() {
        return this.mQuality;
    }

    public int hashCode() {
        long j10 = this.mIntervalMillis;
        long j11 = this.mMinUpdateIntervalMillis;
        return (((this.mQuality * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)));
    }

    @NonNull
    @RequiresApi(31)
    public LocationRequest toLocationRequest() {
        return new LocationRequest.Builder(this.mIntervalMillis).setQuality(this.mQuality).setMinUpdateIntervalMillis(this.mMinUpdateIntervalMillis).setDurationMillis(this.mDurationMillis).setMaxUpdates(this.mMaxUpdates).setMinUpdateDistanceMeters(this.mMinUpdateDistanceMeters).setMaxUpdateDelayMillis(this.mMaxUpdateDelayMillis).build();
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Request[");
        if (this.mIntervalMillis != Long.MAX_VALUE) {
            sb2.append("@");
            TimeUtils.formatDuration(this.mIntervalMillis, sb2);
            int i9 = this.mQuality;
            if (i9 == 100) {
                sb2.append(" HIGH_ACCURACY");
            } else if (i9 == 102) {
                sb2.append(" BALANCED");
            } else if (i9 == 104) {
                sb2.append(" LOW_POWER");
            }
        } else {
            sb2.append("PASSIVE");
        }
        if (this.mDurationMillis != Long.MAX_VALUE) {
            sb2.append(", duration=");
            TimeUtils.formatDuration(this.mDurationMillis, sb2);
        }
        if (this.mMaxUpdates != Integer.MAX_VALUE) {
            sb2.append(", maxUpdates=");
            sb2.append(this.mMaxUpdates);
        }
        long j10 = this.mMinUpdateIntervalMillis;
        if (j10 != -1 && j10 < this.mIntervalMillis) {
            sb2.append(", minUpdateInterval=");
            TimeUtils.formatDuration(this.mMinUpdateIntervalMillis, sb2);
        }
        if (this.mMinUpdateDistanceMeters > 0.0d) {
            sb2.append(", minUpdateDistance=");
            sb2.append(this.mMinUpdateDistanceMeters);
        }
        if (this.mMaxUpdateDelayMillis / 2 > this.mIntervalMillis) {
            sb2.append(", maxUpdateDelay=");
            TimeUtils.formatDuration(this.mMaxUpdateDelayMillis, sb2);
        }
        sb2.append(']');
        return sb2.toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder {
        private long mDurationMillis;
        private long mIntervalMillis;
        private long mMaxUpdateDelayMillis;
        private int mMaxUpdates;
        private float mMinUpdateDistanceMeters;
        private long mMinUpdateIntervalMillis;
        private int mQuality;

        public Builder(long j10) {
            setIntervalMillis(j10);
            this.mQuality = 102;
            this.mDurationMillis = Long.MAX_VALUE;
            this.mMaxUpdates = Integer.MAX_VALUE;
            this.mMinUpdateIntervalMillis = -1L;
            this.mMinUpdateDistanceMeters = 0.0f;
            this.mMaxUpdateDelayMillis = 0L;
        }

        @NonNull
        public LocationRequestCompat build() {
            Preconditions.checkState((this.mIntervalMillis == Long.MAX_VALUE && this.mMinUpdateIntervalMillis == -1) ? false : true, "passive location requests must have an explicit minimum update interval");
            long j10 = this.mIntervalMillis;
            return new LocationRequestCompat(j10, this.mQuality, this.mDurationMillis, this.mMaxUpdates, Math.min(this.mMinUpdateIntervalMillis, j10), this.mMinUpdateDistanceMeters, this.mMaxUpdateDelayMillis);
        }

        @NonNull
        public Builder clearMinUpdateIntervalMillis() {
            this.mMinUpdateIntervalMillis = -1L;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(@IntRange(from = 1) long j10) {
            this.mDurationMillis = Preconditions.checkArgumentInRange(j10, 1L, Long.MAX_VALUE, "durationMillis");
            return this;
        }

        @NonNull
        public Builder setIntervalMillis(@IntRange(from = 0) long j10) {
            this.mIntervalMillis = Preconditions.checkArgumentInRange(j10, 0L, Long.MAX_VALUE, "intervalMillis");
            return this;
        }

        @NonNull
        public Builder setMaxUpdateDelayMillis(@IntRange(from = 0) long j10) {
            this.mMaxUpdateDelayMillis = j10;
            this.mMaxUpdateDelayMillis = Preconditions.checkArgumentInRange(j10, 0L, Long.MAX_VALUE, "maxUpdateDelayMillis");
            return this;
        }

        @NonNull
        public Builder setMaxUpdates(@IntRange(from = 1, to = 2147483647L) int i9) {
            this.mMaxUpdates = Preconditions.checkArgumentInRange(i9, 1, Integer.MAX_VALUE, "maxUpdates");
            return this;
        }

        @NonNull
        public Builder setMinUpdateDistanceMeters(@FloatRange(from = 0.0d, to = 3.4028234663852886E38d) float f10) {
            this.mMinUpdateDistanceMeters = f10;
            this.mMinUpdateDistanceMeters = Preconditions.checkArgumentInRange(f10, 0.0f, Float.MAX_VALUE, "minUpdateDistanceMeters");
            return this;
        }

        @NonNull
        public Builder setMinUpdateIntervalMillis(@IntRange(from = 0) long j10) {
            this.mMinUpdateIntervalMillis = Preconditions.checkArgumentInRange(j10, 0L, Long.MAX_VALUE, "minUpdateIntervalMillis");
            return this;
        }

        @NonNull
        public Builder setQuality(int i9) {
            Preconditions.checkArgument(i9 == 104 || i9 == 102 || i9 == 100, "quality must be a defined QUALITY constant, not %d", Integer.valueOf(i9));
            this.mQuality = i9;
            return this;
        }

        public Builder(@NonNull LocationRequestCompat locationRequestCompat) {
            this.mIntervalMillis = locationRequestCompat.mIntervalMillis;
            this.mQuality = locationRequestCompat.mQuality;
            this.mDurationMillis = locationRequestCompat.mDurationMillis;
            this.mMaxUpdates = locationRequestCompat.mMaxUpdates;
            this.mMinUpdateIntervalMillis = locationRequestCompat.mMinUpdateIntervalMillis;
            this.mMinUpdateDistanceMeters = locationRequestCompat.mMinUpdateDistanceMeters;
            this.mMaxUpdateDelayMillis = locationRequestCompat.mMaxUpdateDelayMillis;
        }
    }

    @Nullable
    @RequiresApi(19)
    public LocationRequest toLocationRequest(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return toLocationRequest();
        }
        try {
            if (sCreateFromDeprecatedProviderMethod == null) {
                Method declaredMethod = LocationRequest.class.getDeclaredMethod("createFromDeprecatedProvider", String.class, Long.TYPE, Float.TYPE, Boolean.TYPE);
                sCreateFromDeprecatedProviderMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            LocationRequest locationRequest = (LocationRequest) sCreateFromDeprecatedProviderMethod.invoke(null, str, Long.valueOf(this.mIntervalMillis), Float.valueOf(this.mMinUpdateDistanceMeters), Boolean.FALSE);
            if (locationRequest == null) {
                return null;
            }
            if (sSetQualityMethod == null) {
                Method declaredMethod2 = LocationRequest.class.getDeclaredMethod("setQuality", Integer.TYPE);
                sSetQualityMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            }
            sSetQualityMethod.invoke(locationRequest, Integer.valueOf(this.mQuality));
            if (getMinUpdateIntervalMillis() != this.mIntervalMillis) {
                if (sSetFastestIntervalMethod == null) {
                    Method declaredMethod3 = LocationRequest.class.getDeclaredMethod("setFastestInterval", Long.TYPE);
                    sSetFastestIntervalMethod = declaredMethod3;
                    declaredMethod3.setAccessible(true);
                }
                sSetFastestIntervalMethod.invoke(locationRequest, Long.valueOf(this.mMinUpdateIntervalMillis));
            }
            if (this.mMaxUpdates < Integer.MAX_VALUE) {
                if (sSetNumUpdatesMethod == null) {
                    Method declaredMethod4 = LocationRequest.class.getDeclaredMethod("setNumUpdates", Integer.TYPE);
                    sSetNumUpdatesMethod = declaredMethod4;
                    declaredMethod4.setAccessible(true);
                }
                sSetNumUpdatesMethod.invoke(locationRequest, Integer.valueOf(this.mMaxUpdates));
            }
            if (this.mDurationMillis < Long.MAX_VALUE) {
                if (sSetExpireInMethod == null) {
                    Method declaredMethod5 = LocationRequest.class.getDeclaredMethod("setExpireIn", Long.TYPE);
                    sSetExpireInMethod = declaredMethod5;
                    declaredMethod5.setAccessible(true);
                }
                sSetExpireInMethod.invoke(locationRequest, Long.valueOf(this.mDurationMillis));
            }
            return locationRequest;
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}