package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFe1iSDK;
import com.miui.referrer.api.GetAppsReferrerClient;
import com.miui.referrer.api.GetAppsReferrerDetails;
import com.miui.referrer.api.GetAppsReferrerStateListener;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class AFe1hSDK extends AFe1nSDK {
    public AFe1hSDK(Runnable runnable) {
        super("store", "xiaomi", runnable);
    }

    private static boolean valueOf(@NonNull Context context) {
        if (AFe1nSDK.AFInAppEventType(context)) {
            try {
                Class.forName("com.miui.referrer.api.GetAppsReferrerClient");
                AFLogger.afDebugLog("Xiaomi Install Referrer is allowed");
                return true;
            } catch (ClassNotFoundException unused) {
                StringBuilder sb2 = new StringBuilder("Class ");
                sb2.append("com.miui.referrer.api.GetAppsReferrerClient");
                sb2.append(" not found");
                AFLogger.afRDLog(sb2.toString());
                return false;
            } catch (Throwable th2) {
                AFLogger.afErrorLog("An error occurred while trying to access GetAppsReferrerClient", th2);
                return false;
            }
        }
        return false;
    }

    @Override // com.appsflyer.internal.AFe1iSDK
    public final void AFKeystoreWrapper(final Context context) {
        if (valueOf(context)) {
            this.AFLogger = System.currentTimeMillis();
            this.AFKeystoreWrapper = AFe1iSDK.AFa1xSDK.STARTED;
            addObserver(new AFe1iSDK.AnonymousClass5());
            final GetAppsReferrerClient build = GetAppsReferrerClient.Companion.newBuilder(context).build();
            build.startConnection(new GetAppsReferrerStateListener() { // from class: com.appsflyer.internal.AFe1hSDK.2
                public final void onGetAppsReferrerSetupFinished(int i9) {
                    AFe1hSDK.this.AFInAppEventParameterName.put("api_ver", Long.valueOf(AFb1wSDK.AFInAppEventType(context, "com.xiaomi.mipicks")));
                    AFe1hSDK.this.AFInAppEventParameterName.put("api_ver_name", AFb1wSDK.AFInAppEventParameterName(context, "com.xiaomi.mipicks"));
                    if (i9 == -1) {
                        AFLogger.afWarnLog("XiaomiInstallReferrer SERVICE_DISCONNECTED");
                        AFe1hSDK.this.AFInAppEventParameterName.put("response", "SERVICE_DISCONNECTED");
                    } else if (i9 == 0) {
                        AFe1hSDK aFe1hSDK = AFe1hSDK.this;
                        GetAppsReferrerClient getAppsReferrerClient = build;
                        aFe1hSDK.AFInAppEventParameterName.put("response", "OK");
                        try {
                            AFLogger.afDebugLog("XiaomiInstallReferrer connected");
                            if (getAppsReferrerClient.isReady()) {
                                GetAppsReferrerDetails installReferrer = getAppsReferrerClient.getInstallReferrer();
                                String installReferrer2 = installReferrer.getInstallReferrer();
                                if (installReferrer2 != null) {
                                    aFe1hSDK.AFInAppEventParameterName.put("referrer", installReferrer2);
                                }
                                aFe1hSDK.AFInAppEventParameterName.put("click_ts", Long.valueOf(installReferrer.getReferrerClickTimestampSeconds()));
                                aFe1hSDK.AFInAppEventParameterName.put("install_begin_ts", Long.valueOf(installReferrer.getInstallBeginTimestampSeconds()));
                                HashMap hashMap = new HashMap();
                                hashMap.put("click_server_ts", Long.valueOf(installReferrer.getReferrerClickTimestampServerSeconds()));
                                hashMap.put("install_begin_server_ts", Long.valueOf(installReferrer.getInstallBeginTimestampServerSeconds()));
                                hashMap.put("install_version", installReferrer.getInstallVersion());
                                aFe1hSDK.AFInAppEventParameterName.put("xiaomi_custom", hashMap);
                            } else {
                                AFLogger.afWarnLog("XiaomiReferrerClient: XiaomiInstallReferrer is not ready");
                            }
                        } catch (Throwable th2) {
                            StringBuilder sb2 = new StringBuilder("Failed to get Xiaomi install referrer: ");
                            sb2.append(th2.getMessage());
                            AFLogger.afWarnLog(sb2.toString());
                        }
                    } else if (i9 == 1) {
                        AFe1hSDK.this.AFInAppEventParameterName.put("response", "SERVICE_UNAVAILABLE");
                        AFLogger.afWarnLog("XiaomiInstallReferrer not supported");
                    } else if (i9 == 2) {
                        AFLogger.afWarnLog("XiaomiInstallReferrer FEATURE_NOT_SUPPORTED");
                        AFe1hSDK.this.AFInAppEventParameterName.put("response", "FEATURE_NOT_SUPPORTED");
                    } else if (i9 == 3) {
                        AFLogger.afWarnLog("XiaomiInstallReferrer DEVELOPER_ERROR");
                        AFe1hSDK.this.AFInAppEventParameterName.put("response", "DEVELOPER_ERROR");
                    } else if (i9 != 4) {
                        AFLogger.afWarnLog("responseCode not found.");
                    } else {
                        AFLogger.afWarnLog("XiaomiInstallReferrer DEVELOPER_ERROR");
                        AFe1hSDK.this.AFInAppEventParameterName.put("response", "PERMISSION_ERROR");
                    }
                    AFLogger.afDebugLog("Xiaomi Install Referrer collected locally");
                    AFe1hSDK.this.valueOf();
                    build.endConnection();
                }

                public final void onGetAppsServiceDisconnected() {
                }
            });
        }
    }
}
