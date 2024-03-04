package com.appsflyer.internal;

import android.content.Context;
import android.telephony.TelephonyManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.AFd1jSDK;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class AFd1lSDK {
    public volatile String AFInAppEventType;
    @Nullable
    public volatile String AFKeystoreWrapper;
    @NonNull
    private final AFd1jSDK AFLogger;
    @NonNull
    public final AFb1dSDK valueOf;
    Map<String, Object> values;
    private boolean afInfoLog = false;
    public volatile boolean AFInAppEventParameterName = false;

    public AFd1lSDK(@NonNull AFb1dSDK aFb1dSDK, @NonNull AFd1jSDK aFd1jSDK) {
        this.valueOf = aFb1dSDK;
        this.AFLogger = aFd1jSDK;
    }

    private boolean valueOf() {
        Map<String, Object> map = this.values;
        return (map == null || map.isEmpty()) ? false : true;
    }

    public final boolean AFInAppEventParameterName() {
        try {
            Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
            final long currentTimeMillis = System.currentTimeMillis();
            Context context = this.valueOf.values;
            final AFd1jSDK.AFa1wSDK aFa1wSDK = new AFd1jSDK.AFa1wSDK() { // from class: com.appsflyer.internal.AFd1lSDK.3
                @Override // com.appsflyer.internal.AFd1jSDK.AFa1wSDK
                public final void AFInAppEventParameterName(@NonNull String str, @NonNull String str2) {
                    AFd1lSDK.this.values = new ConcurrentHashMap();
                    AFd1lSDK.this.values.put("signedData", str);
                    AFd1lSDK.this.values.put("signature", str2);
                    AFd1lSDK.this.values.put("ttr", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    AFLogger.afInfoLog("Successfully retrieved Google LVL data.");
                }

                @Override // com.appsflyer.internal.AFd1jSDK.AFa1wSDK
                public final void AFInAppEventType(String str, Exception exc) {
                    AFd1lSDK.this.values = new ConcurrentHashMap();
                    String message = exc.getMessage();
                    if (message == null) {
                        message = "unknown";
                    }
                    AFd1lSDK.this.values.put("error", message);
                    AFLogger.afErrorLog(str, exc, true);
                }
            };
            try {
                try {
                    Class<?> cls = Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
                    Class<?> cls2 = Class.forName("com.appsflyer.lvl.AppsFlyerLVL$resultListener");
                    cls.getMethod("checkLicense", Long.TYPE, Context.class, cls2).invoke(null, Long.valueOf(currentTimeMillis), context, Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.internal.AFd1jSDK.2
                        @Override // java.lang.reflect.InvocationHandler
                        public final Object invoke(Object obj, Method method, Object[] objArr) {
                            if (method.getName().equals("onLvlResult")) {
                                String str = objArr[0] != null ? (String) objArr[0] : null;
                                String str2 = objArr[1] != null ? (String) objArr[1] : null;
                                AFa1wSDK aFa1wSDK2 = aFa1wSDK;
                                if (aFa1wSDK2 == null) {
                                    AFLogger.afDebugLog("onLvlResult invocation succeeded, but listener is null");
                                } else if (str != null && str2 != null) {
                                    aFa1wSDK2.AFInAppEventParameterName(str, str2);
                                } else if (str2 == null) {
                                    aFa1wSDK2.AFInAppEventType("onLvlResult with error", new Exception("AFLVL Invalid signature"));
                                } else {
                                    aFa1wSDK2.AFInAppEventType("onLvlResult with error", new Exception("AFLVL Invalid signedData"));
                                }
                            } else if (method.getName().equals("onLvlFailure")) {
                                AFa1wSDK aFa1wSDK3 = aFa1wSDK;
                                if (aFa1wSDK3 != null) {
                                    if (objArr[0] != null) {
                                        aFa1wSDK3.AFInAppEventType("onLvlFailure with exception", (Exception) objArr[0]);
                                    } else {
                                        aFa1wSDK3.AFInAppEventType("onLvlFailure", new Exception("unknown"));
                                    }
                                } else {
                                    AFLogger.afDebugLog("onLvlFailure: listener is null");
                                }
                            } else {
                                AFa1wSDK aFa1wSDK4 = aFa1wSDK;
                                if (aFa1wSDK4 != null) {
                                    aFa1wSDK4.AFInAppEventType("lvlInvocation failed", new Exception("com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"));
                                }
                            }
                            return null;
                        }
                    }));
                } catch (NoSuchMethodException e10) {
                    aFa1wSDK.AFInAppEventType(e10.getClass().getSimpleName(), e10);
                } catch (InvocationTargetException e11) {
                    aFa1wSDK.AFInAppEventType(e11.getClass().getSimpleName(), e11);
                }
            } catch (ClassNotFoundException e12) {
                aFa1wSDK.AFInAppEventType(e12.getClass().getSimpleName(), e12);
            } catch (IllegalAccessException e13) {
                aFa1wSDK.AFInAppEventType(e13.getClass().getSimpleName(), e13);
            }
            this.afInfoLog = true;
        } catch (ClassNotFoundException unused) {
            this.afInfoLog = false;
        }
        return this.afInfoLog;
    }

    @NonNull
    public final Map<String, Object> AFInAppEventType() {
        HashMap hashMap = new HashMap();
        if (valueOf()) {
            hashMap.put("lvl", this.values);
        } else if (this.afInfoLog) {
            HashMap hashMap2 = new HashMap();
            this.values = hashMap2;
            hashMap2.put("error", "operation timed out.");
            hashMap.put("lvl", this.values);
        }
        return hashMap;
    }

    public final boolean AFKeystoreWrapper() {
        return this.afInfoLog && !valueOf();
    }

    public final boolean values() {
        return this.AFInAppEventParameterName;
    }

    private static boolean valueOf(Context context) {
        if (!(AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false))) {
            AFa1aSDK.values();
            if (AFa1aSDK.values(context)) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public final String values(AFd1oSDK aFd1oSDK) {
        String str;
        boolean z10 = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI, false);
        String AFInAppEventType = aFd1oSDK.AFInAppEventType("imeiCached", null);
        if (z10 && AFb1nSDK.values(this.AFKeystoreWrapper)) {
            Context context = this.valueOf.values;
            if (context != null && valueOf(context)) {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    str = (String) telephonyManager.getClass().getMethod("getDeviceId", new Class[0]).invoke(telephonyManager, new Object[0]);
                } catch (InvocationTargetException e10) {
                    if (AFInAppEventType != null) {
                        AFLogger.afDebugLog("use cached IMEI: ".concat(AFInAppEventType));
                    } else {
                        AFInAppEventType = null;
                    }
                    StringBuilder sb2 = new StringBuilder("WARNING: Can't collect IMEI because of missing permissions: ");
                    sb2.append(e10.getMessage());
                    AFLogger.afErrorLog(sb2.toString(), e10);
                } catch (Exception e11) {
                    if (AFInAppEventType != null) {
                        AFLogger.afDebugLog("use cached IMEI: ".concat(AFInAppEventType));
                    } else {
                        AFInAppEventType = null;
                    }
                    StringBuilder sb3 = new StringBuilder("WARNING: Can't collect IMEI: other reason: ");
                    sb3.append(e11.getMessage());
                    AFLogger.afErrorLog(sb3.toString(), e11);
                }
                if (str == null) {
                    if (AFInAppEventType != null) {
                        AFLogger.afDebugLog("use cached IMEI: ".concat(AFInAppEventType));
                    } else {
                        AFInAppEventType = null;
                    }
                    str = AFInAppEventType;
                }
            }
            str = null;
        } else {
            if (this.AFKeystoreWrapper != null) {
                str = this.AFKeystoreWrapper;
            }
            str = null;
        }
        if (!AFb1nSDK.values(str)) {
            aFd1oSDK.valueOf("imeiCached", str);
            return str;
        }
        AFLogger.afInfoLog("IMEI was not collected.");
        return null;
    }
}
