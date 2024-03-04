package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.deeplink.DeepLinkResult;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFd1dSDK {
    public final Map<String, Object> AFInAppEventParameterName;
    public long AFInAppEventType;
    public final Map<String, Object> AFKeystoreWrapper;
    public final long[] AFLogger;
    public long AFLogger$LogLevel;
    public long AFVersionDeclaration;
    public long afDebugLog;
    public long afErrorLog;
    public final long[] afInfoLog;
    public final long[] afRDLog;
    public final AFd1oSDK valueOf;
    public final Map<String, Object> values;

    public AFd1dSDK(AFd1oSDK aFd1oSDK) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.AFKeystoreWrapper = concurrentHashMap;
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        this.AFInAppEventParameterName = concurrentHashMap2;
        ConcurrentHashMap concurrentHashMap3 = new ConcurrentHashMap();
        this.values = concurrentHashMap3;
        this.AFInAppEventType = 0L;
        this.afErrorLog = 0L;
        this.AFLogger = new long[2];
        this.afInfoLog = new long[2];
        this.afRDLog = new long[2];
        this.afDebugLog = 0L;
        this.AFLogger$LogLevel = 0L;
        this.valueOf = aFd1oSDK;
        concurrentHashMap.putAll(values("first_launch"));
        concurrentHashMap2.putAll(values("ddl"));
        concurrentHashMap3.putAll(values("gcd"));
        this.AFVersionDeclaration = aFd1oSDK.values("prev_session_dur");
    }

    public final void AFInAppEventParameterName(int i9) {
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = this.AFLogger$LogLevel;
        if (j10 != 0) {
            this.values.put("net", Long.valueOf(currentTimeMillis - j10));
        } else {
            AFLogger.afInfoLog("Metrics: gcdStart ts is missing");
        }
        this.values.put("retries", Integer.valueOf(i9));
        this.valueOf.valueOf("gcd", new JSONObject(this.values).toString());
    }

    public final void AFInAppEventType(DeepLinkResult deepLinkResult, long j10) {
        this.AFInAppEventParameterName.put("status", deepLinkResult.getStatus().toString());
        this.AFInAppEventParameterName.put("timeout_value", Long.valueOf(j10));
        this.valueOf.valueOf("ddl", new JSONObject(this.AFInAppEventParameterName).toString());
    }

    public final void valueOf(int i9) {
        long currentTimeMillis = System.currentTimeMillis();
        this.afDebugLog = currentTimeMillis;
        if (i9 == 1) {
            long j10 = this.afErrorLog;
            if (j10 != 0) {
                this.AFKeystoreWrapper.put("from_fg", Long.valueOf(currentTimeMillis - j10));
                this.valueOf.valueOf("first_launch", new JSONObject(this.AFKeystoreWrapper).toString());
                return;
            }
            AFLogger.afInfoLog("Metrics: fg ts is missing");
        }
    }

    public final void values() {
        this.afErrorLog = System.currentTimeMillis();
        if (valueOf()) {
            long j10 = this.AFInAppEventType;
            if (j10 != 0) {
                this.AFKeystoreWrapper.put("init_to_fg", Long.valueOf(this.afErrorLog - j10));
                this.valueOf.valueOf("first_launch", new JSONObject(this.AFKeystoreWrapper).toString());
                return;
            }
            AFLogger.afInfoLog("Metrics: init ts is missing");
        }
    }

    public final boolean valueOf() {
        return this.valueOf.AFInAppEventType("appsFlyerCount") == 0;
    }

    public final void values(AFd1iSDK aFd1iSDK) {
        if (valueOf()) {
            this.AFKeystoreWrapper.put("start_with", aFd1iSDK.toString());
            this.valueOf.valueOf("first_launch", new JSONObject(this.AFKeystoreWrapper).toString());
        }
    }

    private Map<String, Object> values(String str) {
        Map<String, Object> emptyMap = Collections.emptyMap();
        String AFInAppEventType = this.valueOf.AFInAppEventType(str, null);
        if (AFInAppEventType != null) {
            try {
                return AFa1lSDK.AFInAppEventParameterName(new JSONObject(AFInAppEventType));
            } catch (Exception e10) {
                AFLogger.afErrorLog("Error while parsing cached json data", e10, true);
                return emptyMap;
            }
        }
        return emptyMap;
    }
}
