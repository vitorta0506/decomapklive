package com.appsflyer.internal;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class AFa1bSDK {
    @VisibleForTesting
    private static volatile AFa1bSDK AFLogger;
    private static final BitSet afRDLog;
    final Object AFInAppEventParameterName = new Object();
    final Handler AFInAppEventType;
    final Runnable AFKeystoreWrapper;
    private final SensorManager AFVersionDeclaration;
    final Runnable afDebugLog;
    private final Map<AFa1eSDK, AFa1eSDK> afErrorLog;
    private final Map<AFa1eSDK, Map<String, Object>> afInfoLog;
    private final Runnable afWarnLog;
    private int getLevel;
    private boolean init;
    final Runnable valueOf;
    boolean values;

    /* renamed from: com.appsflyer.internal.AFa1bSDK$10  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass10 implements Runnable {
        AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (!AFa1bSDK.this.afErrorLog.isEmpty()) {
                    for (AFa1eSDK aFa1eSDK : AFa1bSDK.this.afErrorLog.values()) {
                        AFa1bSDK.this.AFVersionDeclaration.unregisterListener(aFa1eSDK);
                        aFa1eSDK.valueOf(AFa1bSDK.this.afInfoLog, true);
                    }
                }
            } catch (Throwable unused) {
            }
            AFa1bSDK.this.getLevel = 0;
            AFa1bSDK.this.init = false;
        }
    }

    static {
        BitSet bitSet = new BitSet(6);
        afRDLog = bitSet;
        bitSet.set(1);
        bitSet.set(2);
        bitSet.set(4);
    }

    private AFa1bSDK(@NonNull SensorManager sensorManager, Handler handler) {
        BitSet bitSet = afRDLog;
        this.afErrorLog = new HashMap(bitSet.size());
        this.afInfoLog = new ConcurrentHashMap(bitSet.size());
        this.AFKeystoreWrapper = new Runnable() { // from class: com.appsflyer.internal.AFa1bSDK.3
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (AFa1bSDK.this.AFInAppEventParameterName) {
                    final AFa1bSDK aFa1bSDK = AFa1bSDK.this;
                    aFa1bSDK.AFInAppEventType.post(new Runnable() { // from class: com.appsflyer.internal.AFa1bSDK.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                for (Sensor sensor : AFa1bSDK.this.AFVersionDeclaration.getSensorList(-1)) {
                                    if (AFa1bSDK.values(sensor.getType())) {
                                        AFa1eSDK aFa1eSDK = new AFa1eSDK(sensor);
                                        if (!AFa1bSDK.this.afErrorLog.containsKey(aFa1eSDK)) {
                                            AFa1bSDK.this.afErrorLog.put(aFa1eSDK, aFa1eSDK);
                                        }
                                        AFa1bSDK.this.AFVersionDeclaration.registerListener((SensorEventListener) AFa1bSDK.this.afErrorLog.get(aFa1eSDK), sensor, 0, AFa1bSDK.this.AFInAppEventType);
                                    }
                                }
                            } catch (Throwable unused) {
                            }
                            AFa1bSDK.this.init = true;
                        }
                    });
                    AFa1bSDK aFa1bSDK2 = AFa1bSDK.this;
                    aFa1bSDK2.AFInAppEventType.postDelayed(aFa1bSDK2.afWarnLog, 100L);
                    AFa1bSDK.this.values = true;
                }
            }
        };
        this.valueOf = new Runnable() { // from class: com.appsflyer.internal.AFa1bSDK.5
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (AFa1bSDK.this.AFInAppEventParameterName) {
                    AFa1bSDK aFa1bSDK = AFa1bSDK.this;
                    aFa1bSDK.AFInAppEventType.post(new AnonymousClass10());
                }
            }
        };
        this.afDebugLog = new Runnable() { // from class: com.appsflyer.internal.AFa1bSDK.4
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (AFa1bSDK.this.AFInAppEventParameterName) {
                    AFa1bSDK aFa1bSDK = AFa1bSDK.this;
                    if (aFa1bSDK.values) {
                        aFa1bSDK.AFInAppEventType.removeCallbacks(aFa1bSDK.AFKeystoreWrapper);
                        AFa1bSDK aFa1bSDK2 = AFa1bSDK.this;
                        aFa1bSDK2.AFInAppEventType.removeCallbacks(aFa1bSDK2.valueOf);
                        AFa1bSDK aFa1bSDK3 = AFa1bSDK.this;
                        aFa1bSDK3.AFInAppEventType.post(new AnonymousClass10());
                        AFa1bSDK.this.values = false;
                    }
                }
            }
        };
        this.getLevel = 1;
        this.afWarnLog = new Runnable() { // from class: com.appsflyer.internal.AFa1bSDK.1
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (AFa1bSDK.this.AFInAppEventParameterName) {
                    if (AFa1bSDK.this.getLevel == 0) {
                        AFa1bSDK.this.getLevel = 1;
                    }
                    AFa1bSDK aFa1bSDK = AFa1bSDK.this;
                    aFa1bSDK.AFInAppEventType.postDelayed(aFa1bSDK.valueOf, aFa1bSDK.getLevel * 500);
                }
            }
        };
        this.AFVersionDeclaration = sensorManager;
        this.AFInAppEventType = handler;
    }

    private static AFa1bSDK valueOf(SensorManager sensorManager, Handler handler) {
        if (AFLogger == null) {
            synchronized (AFa1bSDK.class) {
                if (AFLogger == null) {
                    AFLogger = new AFa1bSDK(sensorManager, handler);
                }
            }
        }
        return AFLogger;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean values(int i9) {
        return i9 >= 0 && afRDLog.get(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AFa1bSDK AFKeystoreWrapper(Context context) {
        if (AFLogger != null) {
            return AFLogger;
        }
        HandlerThread handlerThread = new HandlerThread("internal");
        handlerThread.start();
        return valueOf((SensorManager) context.getApplicationContext().getSystemService("sensor"), new Handler(handlerThread.getLooper()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, Object> values() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        List<Map<String, Object>> AFInAppEventType = AFInAppEventType();
        if (!AFInAppEventType.isEmpty()) {
            concurrentHashMap.put("sensors", AFInAppEventType);
        } else {
            List<Map<String, Object>> valueOf = valueOf();
            if (!valueOf.isEmpty()) {
                concurrentHashMap.put("sensors", valueOf);
            }
        }
        return concurrentHashMap;
    }

    @NonNull
    private List<Map<String, Object>> AFInAppEventType() {
        synchronized (this.AFInAppEventParameterName) {
            if (!this.afErrorLog.isEmpty() && this.init) {
                for (AFa1eSDK aFa1eSDK : this.afErrorLog.values()) {
                    aFa1eSDK.valueOf(this.afInfoLog, false);
                }
            }
            if (this.afInfoLog.isEmpty()) {
                return new CopyOnWriteArrayList(Collections.emptyList());
            }
            return new CopyOnWriteArrayList(this.afInfoLog.values());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<Map<String, Object>> valueOf() {
        for (AFa1eSDK aFa1eSDK : this.afErrorLog.values()) {
            aFa1eSDK.valueOf(this.afInfoLog, true);
        }
        Map<AFa1eSDK, Map<String, Object>> map = this.afInfoLog;
        if (map != null && !map.isEmpty()) {
            return new CopyOnWriteArrayList(this.afInfoLog.values());
        }
        return new CopyOnWriteArrayList(Collections.emptyList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void AFKeystoreWrapper() {
        this.AFInAppEventType.post(this.afDebugLog);
    }
}
