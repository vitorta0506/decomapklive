package com.appsflyer.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFe1iSDK;
import com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class AFe1lSDK extends AFe1nSDK {
    public final Map<String, Object> values;

    public AFe1lSDK(Runnable runnable) {
        super("store", "google", runnable);
        this.values = new HashMap();
    }

    private static boolean valueOf(@NonNull Context context) {
        if (AFe1nSDK.AFInAppEventType(context)) {
            try {
                if (AFb1wSDK.AFKeystoreWrapper(context, "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE")) {
                    AFLogger.afDebugLog("Install referrer is allowed");
                    return true;
                }
                AFLogger.afDebugLog("Install referrer is not allowed");
                return false;
            } catch (ClassNotFoundException unused) {
                StringBuilder sb2 = new StringBuilder("Class ");
                sb2.append("com.android.installreferrer.api.InstallReferrerClient");
                sb2.append(" not found");
                AFLogger.afRDLog(sb2.toString());
                return false;
            } catch (Throwable th2) {
                AFLogger.afErrorLog("An error occurred while trying to verify manifest : ".concat("com.android.installreferrer.api.InstallReferrerClient"), th2);
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
            try {
                final InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
                AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                build.startConnection(new InstallReferrerStateListener() { // from class: com.appsflyer.internal.AFe1lSDK.3
                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public final void onInstallReferrerServiceDisconnected() {
                        AFLogger.afDebugLog("Install Referrer service disconnected");
                    }

                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public final void onInstallReferrerSetupFinished(int i9) {
                        AFe1lSDK.this.values.put("code", String.valueOf(i9));
                        AFe1lSDK.this.AFInAppEventParameterName.put("api_ver", Long.valueOf(AFb1wSDK.AFInAppEventType(context, "com.android.vending")));
                        AFe1lSDK.this.AFInAppEventParameterName.put("api_ver_name", AFb1wSDK.AFInAppEventParameterName(context, "com.android.vending"));
                        if (i9 == -1) {
                            AFLogger.afWarnLog("InstallReferrer SERVICE_DISCONNECTED");
                            AFe1lSDK.this.AFInAppEventParameterName.put("response", "SERVICE_DISCONNECTED");
                        } else if (i9 == 0) {
                            AFe1lSDK.this.AFInAppEventParameterName.put("response", "OK");
                            try {
                                AFLogger.afDebugLog("InstallReferrer connected");
                                if (build.isReady()) {
                                    ReferrerDetails installReferrer = build.getInstallReferrer();
                                    String installReferrer2 = installReferrer.getInstallReferrer();
                                    if (installReferrer2 != null) {
                                        AFe1lSDK.this.values.put(TPReportParams.JSON_KEY_VAL, installReferrer2);
                                        AFe1lSDK.this.AFInAppEventParameterName.put("referrer", installReferrer2);
                                    }
                                    long referrerClickTimestampSeconds = installReferrer.getReferrerClickTimestampSeconds();
                                    AFe1lSDK.this.values.put("clk", Long.toString(referrerClickTimestampSeconds));
                                    AFe1lSDK.this.AFInAppEventParameterName.put("click_ts", Long.valueOf(referrerClickTimestampSeconds));
                                    long installBeginTimestampSeconds = installReferrer.getInstallBeginTimestampSeconds();
                                    AFe1lSDK.this.values.put("install", Long.toString(installBeginTimestampSeconds));
                                    AFe1lSDK.this.AFInAppEventParameterName.put("install_begin_ts", Long.valueOf(installBeginTimestampSeconds));
                                    HashMap hashMap = new HashMap();
                                    try {
                                        boolean googlePlayInstantParam = installReferrer.getGooglePlayInstantParam();
                                        AFe1lSDK.this.values.put("instant", Boolean.valueOf(googlePlayInstantParam));
                                        hashMap.put("instant", Boolean.valueOf(googlePlayInstantParam));
                                    } catch (NoSuchMethodError unused) {
                                    }
                                    try {
                                        hashMap.put("click_server_ts", Long.valueOf(installReferrer.getReferrerClickTimestampServerSeconds()));
                                        hashMap.put("install_begin_server_ts", Long.valueOf(installReferrer.getInstallBeginTimestampServerSeconds()));
                                        hashMap.put("install_version", installReferrer.getInstallVersion());
                                    } catch (NoSuchMethodError unused2) {
                                    }
                                    if (!hashMap.isEmpty()) {
                                        AFe1lSDK.this.AFInAppEventParameterName.put("google_custom", hashMap);
                                    }
                                } else {
                                    AFLogger.afWarnLog("ReferrerClient: InstallReferrer is not ready");
                                    AFe1lSDK.this.values.put(NotificationCompat.CATEGORY_ERROR, "ReferrerClient: InstallReferrer is not ready");
                                }
                            } catch (Throwable th2) {
                                AFLogger.afWarnLog("Failed to get install referrer: " + th2.getMessage());
                                AFe1lSDK.this.values.put(NotificationCompat.CATEGORY_ERROR, th2.getMessage());
                            }
                        } else if (i9 == 1) {
                            AFe1lSDK.this.AFInAppEventParameterName.put("response", "SERVICE_UNAVAILABLE");
                            AFLogger.afWarnLog("InstallReferrer not supported");
                        } else if (i9 == 2) {
                            AFLogger.afWarnLog("InstallReferrer FEATURE_NOT_SUPPORTED");
                            AFe1lSDK.this.AFInAppEventParameterName.put("response", "FEATURE_NOT_SUPPORTED");
                        } else if (i9 != 3) {
                            AFLogger.afWarnLog("responseCode not found.");
                        } else {
                            AFLogger.afWarnLog("InstallReferrer DEVELOPER_ERROR");
                            AFe1lSDK.this.AFInAppEventParameterName.put("response", "DEVELOPER_ERROR");
                        }
                        AFLogger.afDebugLog("Install Referrer collected locally");
                        AFe1lSDK.this.valueOf();
                        build.endConnection();
                    }
                });
            } catch (Throwable th2) {
                AFLogger.afErrorLog("referrerClient -> startConnection", th2);
            }
        }
    }
}
