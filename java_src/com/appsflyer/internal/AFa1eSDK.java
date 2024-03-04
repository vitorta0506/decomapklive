package com.appsflyer.internal;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AFa1eSDK implements SensorEventListener {
    private final int AFInAppEventParameterName;
    @NonNull
    private final String AFInAppEventType;
    @NonNull
    private final String AFKeystoreWrapper;
    private final int AFLogger;
    @Nullable
    private Executor afDebugLog;
    private double afInfoLog;
    private long afRDLog;
    private final float[][] valueOf = new float[2];
    private final long[] values = new long[2];

    /* JADX INFO: Access modifiers changed from: package-private */
    public AFa1eSDK(Sensor sensor) {
        int type = sensor.getType();
        this.AFInAppEventParameterName = type;
        String name = sensor.getName();
        name = name == null ? "" : name;
        this.AFKeystoreWrapper = name;
        String vendor = sensor.getVendor();
        String str = vendor != null ? vendor : "";
        this.AFInAppEventType = str;
        this.AFLogger = ((((type + 31) * 31) + name.hashCode()) * 31) + str.hashCode();
    }

    @NonNull
    private synchronized Executor AFInAppEventParameterName() {
        if (this.afDebugLog == null) {
            this.afDebugLog = Executors.newSingleThreadExecutor();
        }
        return this.afDebugLog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: AFInAppEventType */
    public void values(SensorEvent sensorEvent) {
        long j10 = sensorEvent.timestamp;
        float[] fArr = sensorEvent.values;
        long currentTimeMillis = System.currentTimeMillis();
        float[][] fArr2 = this.valueOf;
        float[] fArr3 = fArr2[0];
        if (fArr3 == null) {
            fArr2[0] = Arrays.copyOf(fArr, fArr.length);
            this.values[0] = currentTimeMillis;
            return;
        }
        float[] fArr4 = fArr2[1];
        if (fArr4 == null) {
            float[] copyOf = Arrays.copyOf(fArr, fArr.length);
            this.valueOf[1] = copyOf;
            this.values[1] = currentTimeMillis;
            this.afInfoLog = AFInAppEventParameterName(fArr3, copyOf);
        } else if (50000000 <= j10 - this.afRDLog) {
            this.afRDLog = j10;
            if (Arrays.equals(fArr4, fArr)) {
                this.values[1] = currentTimeMillis;
                return;
            }
            double AFInAppEventParameterName = AFInAppEventParameterName(fArr3, fArr);
            if (AFInAppEventParameterName > this.afInfoLog) {
                this.valueOf[1] = Arrays.copyOf(fArr, fArr.length);
                this.values[1] = currentTimeMillis;
                this.afInfoLog = AFInAppEventParameterName;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AFa1eSDK) {
            AFa1eSDK aFa1eSDK = (AFa1eSDK) obj;
            return values(aFa1eSDK.AFInAppEventParameterName, aFa1eSDK.AFKeystoreWrapper, aFa1eSDK.AFInAppEventType);
        }
        return false;
    }

    public final int hashCode() {
        return this.AFLogger;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i9) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(final SensorEvent sensorEvent) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            AFInAppEventParameterName().execute(new Runnable() { // from class: com.appsflyer.internal.c
                @Override // java.lang.Runnable
                public final void run() {
                    AFa1eSDK.this.values(sensorEvent);
                }
            });
        } else {
            values(sensorEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void valueOf(@NonNull Map<AFa1eSDK, Map<String, Object>> map, boolean z10) {
        if (valueOf()) {
            map.put(this, AFInAppEventType());
            if (z10) {
                int length = this.valueOf.length;
                for (int i9 = 0; i9 < length; i9++) {
                    this.valueOf[i9] = null;
                }
                int length2 = this.values.length;
                for (int i10 = 0; i10 < length2; i10++) {
                    this.values[i10] = 0;
                }
                this.afInfoLog = 0.0d;
                this.afRDLog = 0L;
            }
        } else if (!map.containsKey(this)) {
            map.put(this, AFInAppEventType());
        }
    }

    private boolean values(int i9, @NonNull String str, @NonNull String str2) {
        return this.AFInAppEventParameterName == i9 && this.AFKeystoreWrapper.equals(str) && this.AFInAppEventType.equals(str2);
    }

    private static double AFInAppEventParameterName(@NonNull float[] fArr, @NonNull float[] fArr2) {
        int min = Math.min(fArr.length, fArr2.length);
        double d10 = 0.0d;
        for (int i9 = 0; i9 < min; i9++) {
            d10 += StrictMath.pow(fArr[i9] - fArr2[i9], 2.0d);
        }
        return Math.sqrt(d10);
    }

    @NonNull
    private static List<Float> AFInAppEventParameterName(@NonNull float[] fArr) {
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f10 : fArr) {
            arrayList.add(Float.valueOf(f10));
        }
        return arrayList;
    }

    private boolean valueOf() {
        return this.valueOf[0] != null;
    }

    @NonNull
    private Map<String, Object> AFInAppEventType() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(7);
        concurrentHashMap.put("sT", Integer.valueOf(this.AFInAppEventParameterName));
        concurrentHashMap.put("sN", this.AFKeystoreWrapper);
        concurrentHashMap.put("sV", this.AFInAppEventType);
        float[] fArr = this.valueOf[0];
        if (fArr != null) {
            concurrentHashMap.put("sVS", AFInAppEventParameterName(fArr));
        }
        float[] fArr2 = this.valueOf[1];
        if (fArr2 != null) {
            concurrentHashMap.put("sVE", AFInAppEventParameterName(fArr2));
        }
        return concurrentHashMap;
    }
}
