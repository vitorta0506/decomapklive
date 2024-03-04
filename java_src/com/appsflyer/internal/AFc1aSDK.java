package com.appsflyer.internal;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class AFc1aSDK extends AFc1nSDK<Map<String, Object>> {
    private static final int afRDLog = (int) TimeUnit.SECONDS.toMillis(2);
    private final Uri AFLogger;
    private final Context afDebugLog;
    private final List<String> afErrorLog;
    private final Map<String, Object> afInfoLog;

    public AFc1aSDK(@NonNull Context context, @NonNull Map<String, Object> map, @NonNull Uri uri, @NonNull List<String> list) {
        super(AFc1lSDK.RESOLVE_ESP, new AFc1lSDK[]{AFc1lSDK.RC_CDN}, "ResolveEsp");
        this.afDebugLog = context;
        this.afInfoLog = map;
        this.AFLogger = uri;
        this.afErrorLog = list;
    }

    private static Map<String, Object> AFInAppEventType(Uri uri) {
        HashMap hashMap = new HashMap();
        try {
            StringBuilder sb2 = new StringBuilder("ESP deeplink resolving is started: ");
            sb2.append(uri.toString());
            AFLogger.afDebugLog(sb2.toString());
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
            httpURLConnection.setInstanceFollowRedirects(false);
            int i9 = afRDLog;
            httpURLConnection.setReadTimeout(i9);
            httpURLConnection.setConnectTimeout(i9);
            httpURLConnection.setRequestProperty("User-agent", "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)");
            httpURLConnection.setRequestProperty("af-esp", "6.9.0");
            int responseCode = httpURLConnection.getResponseCode();
            hashMap.put("status", Integer.valueOf(responseCode));
            if (300 <= responseCode && responseCode <= 305) {
                hashMap.put("res", httpURLConnection.getHeaderField("Location"));
            }
            httpURLConnection.disconnect();
            AFLogger.afDebugLog("ESP deeplink resolving is finished");
        } catch (Throwable th2) {
            hashMap.put("error", th2.getLocalizedMessage());
            AFLogger.afErrorLog(th2.getMessage(), th2);
        }
        return hashMap;
    }

    private boolean valueOf(String str) {
        if (str.contains("af_tranid=")) {
            return false;
        }
        StringBuilder sb2 = new StringBuilder("Validate if link ");
        sb2.append(str);
        sb2.append(" belongs to ESP domains: ");
        sb2.append(this.afErrorLog);
        AFLogger.afRDLog(sb2.toString());
        try {
            return this.afErrorLog.contains(new URL(str).getHost());
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final boolean AFInAppEventType() {
        return false;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    @NonNull
    public final AFc1qSDK AFKeystoreWrapper() throws Exception {
        if (!valueOf(this.AFLogger.toString())) {
            AFa1aSDK.values().AFInAppEventType(this.afDebugLog, this.afInfoLog, this.AFLogger);
            return AFc1qSDK.SUCCESS;
        }
        long currentTimeMillis = System.currentTimeMillis();
        String obj = this.AFLogger.toString();
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        Integer num = null;
        String str = null;
        while (i9 < 5) {
            Map<String, Object> AFInAppEventType = AFInAppEventType(Uri.parse(obj));
            String str2 = (String) AFInAppEventType.get("res");
            Integer num2 = (Integer) AFInAppEventType.get("status");
            String str3 = (String) AFInAppEventType.get("error");
            if (str2 == null || !valueOf(str2)) {
                str = str3;
                obj = str2;
                num = num2;
                break;
            }
            if (i9 < 4) {
                arrayList.add(str2);
            }
            i9++;
            str = str3;
            obj = str2;
            num = num2;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("res", obj != null ? obj : "");
        hashMap.put("status", Integer.valueOf(num != null ? num.intValue() : -1));
        if (str != null) {
            hashMap.put("error", str);
        }
        if (!arrayList.isEmpty()) {
            hashMap.put("redirects", arrayList);
        }
        hashMap.put("latency", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        synchronized (this.afInfoLog) {
            this.afInfoLog.put("af_deeplink_r", hashMap);
            this.afInfoLog.put("af_deeplink", this.AFLogger.toString());
        }
        AFa1aSDK.values().AFInAppEventType(this.afDebugLog, this.afInfoLog, obj != null ? Uri.parse(obj) : this.AFLogger);
        return AFc1qSDK.SUCCESS;
    }

    @Override // com.appsflyer.internal.AFc1nSDK
    public final long values() {
        return 60000L;
    }
}
