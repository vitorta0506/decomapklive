package com.appsflyer.internal;

import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.internal.AFe1iSDK;
import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class AFd1wSDK extends AFd1tSDK {
    @NonNull
    private final AFd1oSDK AFLogger$LogLevel;
    public Map<String, Object> AFVersionDeclaration;
    @NonNull
    private final AFd1dSDK afWarnLog;
    @NonNull
    private final AFe1fSDK getLevel;
    @NonNull
    private final CreateOneLinkHttpTask onAppOpenAttributionNative;
    @NonNull
    private final AppsFlyerProperties onInstallConversionDataLoadedNative;

    /* renamed from: com.appsflyer.internal.AFd1wSDK$3  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] values;

        static {
            int[] iArr = new int[AFe1iSDK.AFa1xSDK.values().length];
            values = iArr;
            try {
                iArr[AFe1iSDK.AFa1xSDK.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                values[AFe1iSDK.AFa1xSDK.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public AFd1wSDK(@NonNull AFa1tSDK aFa1tSDK, @NonNull AFc1ySDK aFc1ySDK) {
        super(aFa1tSDK, aFc1ySDK);
        this.getLevel = aFc1ySDK.getLevel();
        this.AFLogger$LogLevel = aFc1ySDK.afRDLog();
        this.afWarnLog = aFc1ySDK.afDebugLog();
        this.onAppOpenAttributionNative = aFc1ySDK.afInfoLog();
        this.onInstallConversionDataLoadedNative = AppsFlyerProperties.getInstance();
        this.valueOf.add(AFc1lSDK.RESOLVE_ESP);
        this.valueOf.add(AFc1lSDK.DLSDK);
    }

    @Override // com.appsflyer.internal.AFc1hSDK, com.appsflyer.internal.AFc1nSDK
    public final void AFInAppEventParameterName() {
        super.AFInAppEventParameterName();
        AFd1dSDK aFd1dSDK = this.afWarnLog;
        int i9 = ((AFd1tSDK) this).afRDLog.AFLogger;
        long currentTimeMillis = System.currentTimeMillis();
        if (i9 == 1) {
            long j10 = aFd1dSDK.afDebugLog;
            if (j10 != 0) {
                aFd1dSDK.AFKeystoreWrapper.put("net", Long.valueOf(currentTimeMillis - j10));
                aFd1dSDK.valueOf.valueOf("first_launch", new JSONObject(aFd1dSDK.AFKeystoreWrapper).toString());
                return;
            }
            AFLogger.afInfoLog("Metrics: launch start ts is missing");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appsflyer.internal.AFd1tSDK
    public final void AFKeystoreWrapper(AFa1tSDK aFa1tSDK) {
        AFe1iSDK[] AFKeystoreWrapper;
        super.AFKeystoreWrapper(aFa1tSDK);
        int i9 = aFa1tSDK.AFLogger;
        this.afWarnLog.valueOf(i9);
        Map map = (Map) aFa1tSDK.AFKeystoreWrapper().get("meta");
        if (map == null) {
            map = new HashMap();
            aFa1tSDK.AFKeystoreWrapper().put("meta", map);
        }
        AFb1qSDK values = this.onAppOpenAttributionNative.values();
        if (values != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("cdn_token", values.values);
            String str = values.AFInAppEventType;
            if (str != null) {
                hashMap.put("c_ver", str);
            }
            long j10 = values.valueOf;
            if (j10 > 0) {
                hashMap.put("latency", Long.valueOf(j10));
            }
            long j11 = values.AFInAppEventParameterName;
            if (j11 > 0) {
                hashMap.put("delay", Long.valueOf(j11));
            }
            int i10 = values.AFKeystoreWrapper;
            if (i10 > 0) {
                hashMap.put("res_code", Integer.valueOf(i10));
            }
            if (values.afDebugLog != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(values.afDebugLog.getClass().getSimpleName());
                sb2.append(": ");
                sb2.append(values.afDebugLog.getMessage());
                hashMap.put("error", sb2.toString());
            }
            AFe1rSDK aFe1rSDK = values.afErrorLog;
            if (aFe1rSDK != null) {
                hashMap.put("sig", aFe1rSDK.toString());
            }
            String str2 = values.AFLogger;
            if (str2 != null) {
                hashMap.put("cdn_cache_status", str2);
            }
            map.put("rc", hashMap);
        }
        if (i9 == 1) {
            if (this.onInstallConversionDataLoadedNative.getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
                aFa1tSDK.AFKeystoreWrapper().put("wait_cid", Boolean.toString(true));
            }
            HashMap hashMap2 = new HashMap(this.afWarnLog.AFInAppEventParameterName);
            this.afWarnLog.valueOf.valueOf("ddl");
            if (!hashMap2.isEmpty()) {
                map.put("ddl", hashMap2);
            }
            HashMap hashMap3 = new HashMap(this.afWarnLog.AFKeystoreWrapper);
            if (!hashMap3.isEmpty()) {
                map.put("first_launch", hashMap3);
            }
        } else if (i9 == 2) {
            HashMap hashMap4 = new HashMap(this.afWarnLog.AFKeystoreWrapper);
            if (!hashMap4.isEmpty()) {
                map.put("first_launch", hashMap4);
            }
            this.afWarnLog.valueOf.valueOf("first_launch");
        }
        if (map.isEmpty()) {
            aFa1tSDK.AFKeystoreWrapper().remove("meta");
        }
        if (i9 <= 2) {
            ArrayList arrayList = new ArrayList();
            for (AFe1iSDK aFe1iSDK : this.getLevel.AFKeystoreWrapper()) {
                boolean z10 = aFe1iSDK instanceof AFe1lSDK;
                int i11 = AnonymousClass3.values[aFe1iSDK.AFKeystoreWrapper.ordinal()];
                if (i11 == 1) {
                    if (z10) {
                        aFa1tSDK.AFInAppEventType("rfr", ((AFe1lSDK) aFe1iSDK).values);
                        this.AFLogger$LogLevel.values(AppsFlyerProperties.NEW_REFERRER_SENT, true);
                    }
                    arrayList.add(aFe1iSDK.AFInAppEventParameterName);
                } else if (i11 == 2 && i9 == 2 && !z10) {
                    HashMap hashMap5 = new HashMap();
                    hashMap5.put(ShareConstants.FEED_SOURCE_PARAM, aFe1iSDK.valueOf);
                    hashMap5.put("response", "TIMEOUT");
                    hashMap5.put("type", aFe1iSDK.afErrorLog);
                    arrayList.add(hashMap5);
                }
            }
            if (!arrayList.isEmpty()) {
                aFa1tSDK.AFInAppEventType("referrers", arrayList);
            }
            Object obj = this.AFVersionDeclaration;
            if (obj != null) {
                aFa1tSDK.AFInAppEventType("fb_ddl", obj);
            }
        }
    }
}
