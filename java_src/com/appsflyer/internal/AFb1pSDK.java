package com.appsflyer.internal;

import android.content.pm.PackageManager;
import android.graphics.PointF;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.internal.AFc1mSDK;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.utils.PushUtils;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import io.jsonwebtoken.JwtParser;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public final class AFb1pSDK {
    private static AFb1pSDK AFInAppEventType = null;
    private static int afErrorLog = 0;
    private static long afInfoLog = -3883081674890070086L;
    private static int init = 1;
    private List<String> values = new ArrayList();
    private boolean AFKeystoreWrapper = true;
    @NonNull
    private final Map<String, Object> valueOf = new HashMap();
    private String afRDLog = PushUtils.CHAT_PUSH_TYPE;
    private boolean afDebugLog = true ^ AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
    private int AFInAppEventParameterName = 0;
    private boolean AFLogger = false;

    private AFb1pSDK() {
    }

    private synchronized void AFInAppEventParameterName(String str, String str2, String str3, String str4) {
        try {
            this.valueOf.put(HianalyticsBaseData.SDK_VERSION, str);
            if (str2 != null) {
                int i9 = init + 107;
                afErrorLog = i9 % 128;
                int i10 = i9 % 2;
                if ((str2.length() > 0 ? 'R' : (char) 23) != 23) {
                    this.valueOf.put("devkey", str2);
                }
            }
            if (str3 != null) {
                int i11 = afErrorLog + 89;
                init = i11 % 128;
                int i12 = i11 % 2;
                if (str3.length() > 0) {
                    this.valueOf.put("originalAppsFlyerId", str3);
                }
            }
            if (str4 != null && str4.length() > 0) {
                int i13 = afErrorLog + 39;
                init = i13 % 128;
                if ((i13 % 2 == 0 ? (char) 1 : (char) 16) != 1) {
                    this.valueOf.put("uid", str4);
                } else {
                    this.valueOf.put("uid", str4);
                    int i14 = 19 / 0;
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Deprecated
    public static AFb1pSDK AFKeystoreWrapper() {
        int i9 = afErrorLog + 51;
        init = i9 % 128;
        if ((i9 % 2 == 0 ? '\n' : 'O') != 'O') {
            throw null;
        }
        if (AFInAppEventType == null) {
            AFInAppEventType = new AFb1pSDK();
        }
        AFb1pSDK aFb1pSDK = AFInAppEventType;
        int i10 = init + 55;
        afErrorLog = i10 % 128;
        if ((i10 % 2 != 0 ? JwtParser.SEPARATOR_CHAR : ' ') != '.') {
            return aFb1pSDK;
        }
        throw null;
    }

    @NonNull
    private synchronized Map<String, Object> AFLogger() {
        Map<String, Object> map;
        int i9 = afErrorLog + 15;
        init = i9 % 128;
        int i10 = i9 % 2;
        this.valueOf.put("data", this.values);
        afInfoLog();
        map = this.valueOf;
        int i11 = afErrorLog + 95;
        init = i11 % 128;
        int i12 = i11 % 2;
        return map;
    }

    private synchronized void afInfoLog() {
        this.values = new ArrayList();
        this.AFInAppEventParameterName = 0;
        int i9 = afErrorLog + 97;
        init = i9 % 128;
        if ((i9 % 2 == 0 ? 'T' : '^') != '^') {
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
        if ((r4.AFLogger ? org.light.utils.IOUtils.DIR_SEPARATOR_UNIX : '@') != '@') goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
        if (r4.AFLogger != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean afRDLog() {
        /*
            r4 = this;
            boolean r0 = r4.afDebugLog
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L8
            r0 = 1
            goto L9
        L8:
            r0 = 0
        L9:
            if (r0 == 0) goto L4c
            boolean r0 = r4.AFKeystoreWrapper
            if (r0 != 0) goto L32
            int r0 = com.appsflyer.internal.AFb1pSDK.init
            int r0 = r0 + 97
            int r3 = r0 % 128
            com.appsflyer.internal.AFb1pSDK.afErrorLog = r3
            int r0 = r0 % 2
            if (r0 == 0) goto L2e
            boolean r0 = r4.AFLogger
            r3 = 9
            int r3 = r3 / r2
            r3 = 64
            if (r0 == 0) goto L27
            r0 = 47
            goto L29
        L27:
            r0 = 64
        L29:
            if (r0 == r3) goto L4c
            goto L32
        L2c:
            r0 = move-exception
            throw r0
        L2e:
            boolean r0 = r4.AFLogger
            if (r0 == 0) goto L4c
        L32:
            int r0 = com.appsflyer.internal.AFb1pSDK.afErrorLog
            int r0 = r0 + 111
            int r2 = r0 % 128
            com.appsflyer.internal.AFb1pSDK.init = r2
            int r0 = r0 % 2
            r2 = 40
            if (r0 != 0) goto L43
            r0 = 40
            goto L45
        L43:
            r0 = 30
        L45:
            if (r0 == r2) goto L48
            return r1
        L48:
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L4a
        L4a:
            r0 = move-exception
            throw r0
        L4c:
            int r0 = com.appsflyer.internal.AFb1pSDK.init
            int r0 = r0 + 97
            int r1 = r0 % 128
            com.appsflyer.internal.AFb1pSDK.afErrorLog = r1
            int r0 = r0 % 2
            r1 = 15
            if (r0 == 0) goto L5d
            r0 = 15
            goto L5f
        L5d:
            r0 = 57
        L5f:
            if (r0 == r1) goto L62
            return r2
        L62:
            r0 = 32
            int r0 = r0 / r2
            return r2
        L66:
            r0 = move-exception
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1pSDK.afRDLog():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void AFInAppEventType() {
        this.AFLogger = true;
        valueOf("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        int i9 = afErrorLog + 79;
        init = i9 % 128;
        if (!(i9 % 2 != 0)) {
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void afDebugLog() {
        int i9 = init;
        int i10 = i9 + 115;
        afErrorLog = i10 % 128;
        if (i10 % 2 != 0) {
        }
        this.afDebugLog = false;
        int i11 = i9 + 115;
        afErrorLog = i11 % 128;
        int i12 = i11 % 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean afErrorLog() {
        int i9 = afErrorLog + 37;
        int i10 = i9 % 128;
        init = i10;
        int i11 = i9 % 2;
        boolean z10 = this.AFLogger;
        int i12 = i10 + 93;
        afErrorLog = i12 % 128;
        int i13 = i12 % 2;
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void valueOf(String str) {
        int i9 = init + 113;
        int i10 = i9 % 128;
        afErrorLog = i10;
        int i11 = i9 % 2;
        this.afRDLog = str;
        int i12 = i10 + 93;
        init = i12 % 128;
        if ((i12 % 2 == 0 ? '\b' : '6') != '6') {
            int i13 = 94 / 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void values() {
        int i9 = init + 5;
        afErrorLog = i9 % 128;
        if (!(i9 % 2 == 0)) {
            this.valueOf.clear();
            AFInAppEventType = null;
            int i10 = 48 / 0;
        } else {
            this.valueOf.clear();
            AFInAppEventType = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void valueOf() {
        valueOf("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        this.AFLogger = false;
        this.AFKeystoreWrapper = false;
        int i9 = afErrorLog + 27;
        init = i9 % 128;
        int i10 = i9 % 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void AFInAppEventType(String str, PackageManager packageManager, AFc1ySDK aFc1ySDK) {
        try {
            valueOf(str, packageManager, aFc1ySDK.AFLogger$LogLevel());
            AFd1sSDK aFd1sSDK = new AFd1sSDK(AFLogger(), aFc1ySDK);
            AFc1mSDK afErrorLog2 = aFc1ySDK.afErrorLog();
            afErrorLog2.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFd1sSDK));
            int i9 = afErrorLog + 95;
            init = i9 % 128;
            int i10 = i9 % 2;
        } catch (Throwable th2) {
            AFLogger.afErrorLog(th2);
        }
    }

    private synchronized void valueOf(String str, String str2, String str3) {
        try {
            this.valueOf.put(values("㟘㷱⎩⥿Ἲ", (PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 2617).intern(), Build.BRAND);
            this.valueOf.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL);
            this.valueOf.put("platform", "Android");
            this.valueOf.put("platform_version", Build.VERSION.RELEASE);
            if (str != null) {
                try {
                    int i9 = init + 35;
                    afErrorLog = i9 % 128;
                    if (i9 % 2 != 0) {
                        throw null;
                    }
                    if (str.length() > 0) {
                        this.valueOf.put("advertiserId", str);
                        int i10 = afErrorLog + 95;
                        init = i10 % 128;
                        int i11 = i10 % 2;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (str2 != null) {
                if ((str2.length() > 0 ? 'c' : 'a') == 'c') {
                    int i12 = afErrorLog + 67;
                    init = i12 % 128;
                    if (i12 % 2 == 0) {
                        this.valueOf.put("imei", str2);
                        throw null;
                    }
                    this.valueOf.put("imei", str2);
                }
            }
            if (!(str3 == null) && str3.length() > 0) {
                int i13 = afErrorLog + 3;
                init = i13 % 128;
                int i14 = i13 % 2;
                this.valueOf.put("android_id", str3);
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized void values(String str, String str2, String str3, String str4) {
        int i9 = afErrorLog + 57;
        int i10 = i9 % 128;
        init = i10;
        int i11 = i9 % 2;
        if ((str != null ? 'c' : 'L') != 'L') {
            int i12 = i10 + 125;
            afErrorLog = i12 % 128;
            int i13 = i12 % 2;
            try {
                if ((str.length() > 0 ? ')' : (char) 24) != 24) {
                    this.valueOf.put("app_id", str);
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (str2 != null) {
            int i14 = init + 35;
            afErrorLog = i14 % 128;
            int i15 = i14 % 2;
            if (str2.length() > 0) {
                this.valueOf.put("app_version", str2);
            }
        }
        boolean z10 = false;
        if ((str3 != null ? 'U' : '6') != '6' && str3.length() > 0) {
            int i16 = afErrorLog + 39;
            init = i16 % 128;
            if (i16 % 2 == 0) {
                this.valueOf.put("channel", str3);
                int i17 = 47 / 0;
            } else {
                this.valueOf.put("channel", str3);
            }
        }
        if (str4 != null) {
            if (str4.length() <= 0) {
                z10 = true;
            }
            if (!z10) {
                this.valueOf.put("preInstall", str4);
            }
        }
        int i18 = afErrorLog + 35;
        init = i18 % 128;
        int i19 = i18 % 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void AFKeystoreWrapper(String str, String... strArr) {
        int i9 = init + 113;
        afErrorLog = i9 % 128;
        int i10 = i9 % 2;
        valueOf("public_api_call", str, strArr);
        int i11 = afErrorLog + 85;
        init = i11 % 128;
        if ((i11 % 2 == 0 ? 'W' : 'B') != 'W') {
            return;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
        if (r0 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
        r3 = r6.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
        r3 = r0.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (r0 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AFInAppEventType(java.lang.Throwable r6) {
        /*
            r5 = this;
            int r0 = com.appsflyer.internal.AFb1pSDK.afErrorLog
            int r0 = r0 + 43
            int r1 = r0 % 128
            com.appsflyer.internal.AFb1pSDK.init = r1
            int r0 = r0 % 2
            r1 = 9
            if (r0 != 0) goto L11
            r0 = 9
            goto L13
        L11:
            r0 = 75
        L13:
            r2 = 0
            if (r0 == r1) goto L25
            java.lang.Throwable r0 = r6.getCause()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            if (r0 != 0) goto L3b
            goto L36
        L25:
            java.lang.Throwable r0 = r6.getCause()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r3 = 84
            int r3 = r3 / r2
            if (r0 != 0) goto L3b
        L36:
            java.lang.String r3 = r6.getMessage()
            goto L3f
        L3b:
            java.lang.String r3 = r0.getMessage()
        L3f:
            r4 = 1
            if (r0 != 0) goto L43
            r2 = 1
        L43:
            if (r2 == r4) goto L4a
            java.lang.StackTraceElement[] r6 = r0.getStackTrace()
            goto L58
        L4a:
            int r0 = com.appsflyer.internal.AFb1pSDK.afErrorLog
            int r0 = r0 + 19
            int r2 = r0 % 128
            com.appsflyer.internal.AFb1pSDK.init = r2
            int r0 = r0 % 2
            java.lang.StackTraceElement[] r6 = r6.getStackTrace()
        L58:
            java.lang.String[] r6 = valueOf(r3, r6)
            java.lang.String r0 = "exception"
            r5.valueOf(r0, r1, r6)
            return
        L62:
            r6 = move-exception
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1pSDK.AFInAppEventType(java.lang.Throwable):void");
    }

    public final void AFInAppEventParameterName(String str, String str2) {
        int i9 = init + 15;
        afErrorLog = i9 % 128;
        int i10 = i9 % 2;
        valueOf("server_request", str, str2);
        int i11 = afErrorLog + 37;
        init = i11 % 128;
        if ((i11 % 2 == 0 ? ';' : '%') != ';') {
            return;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void AFInAppEventParameterName() {
        int i9 = afErrorLog + 67;
        init = i9 % 128;
        int i10 = i9 % 2;
        this.AFKeystoreWrapper = false;
        afInfoLog();
        int i11 = init + 119;
        afErrorLog = i11 % 128;
        if ((i11 % 2 != 0 ? '\t' : (char) 20) != '\t') {
            return;
        }
        int i12 = 93 / 0;
    }

    public final void valueOf(String str, String str2) {
        int i9 = afErrorLog + 95;
        init = i9 % 128;
        int i10 = i9 % 2;
        valueOf((String) null, str, str2);
        int i11 = init + 107;
        afErrorLog = i11 % 128;
        int i12 = i11 % 2;
    }

    public final void values(String str, int i9, String str2) {
        int i10 = afErrorLog + 35;
        init = i10 % 128;
        int i11 = i10 % 2;
        valueOf("server_response", str, String.valueOf(i9), str2);
        int i12 = init + 107;
        afErrorLog = i12 % 128;
        int i13 = i12 % 2;
    }

    private synchronized void valueOf(String str, String str2, String... strArr) {
        String obj;
        int i9 = afErrorLog + 59;
        init = i9 % 128;
        int i10 = i9 % 2;
        if (afRDLog()) {
            int i11 = afErrorLog + 1;
            init = i11 % 128;
            int i12 = i11 % 2;
            if (this.AFInAppEventParameterName < 98304) {
                try {
                    long currentTimeMillis = System.currentTimeMillis();
                    String join = TextUtils.join(", ", strArr);
                    if (str != null) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(currentTimeMillis);
                        sb2.append(" ");
                        sb2.append(Thread.currentThread().getId());
                        sb2.append(" _/AppsFlyer_6.9.0 [");
                        sb2.append(str);
                        sb2.append("] ");
                        sb2.append(str2);
                        sb2.append(" ");
                        sb2.append(join);
                        obj = sb2.toString();
                        int i13 = afErrorLog + 51;
                        init = i13 % 128;
                        int i14 = i13 % 2;
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(currentTimeMillis);
                        sb3.append(" ");
                        sb3.append(Thread.currentThread().getId());
                        sb3.append(" ");
                        sb3.append(str2);
                        sb3.append("/AppsFlyer_6.9.0 ");
                        sb3.append(join);
                        obj = sb3.toString();
                    }
                    this.values.add(obj);
                    this.AFInAppEventParameterName += obj.length() << 1;
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r6 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String values(java.lang.String r6, int r7) {
        /*
            if (r6 == 0) goto L6
            char[] r6 = r6.toCharArray()
        L6:
            char[] r6 = (char[]) r6
            java.lang.Object r0 = com.appsflyer.internal.AFf1zSDK.AFInAppEventType
            monitor-enter(r0)
            com.appsflyer.internal.AFf1zSDK.values = r7     // Catch: java.lang.Throwable -> L35
            int r7 = r6.length     // Catch: java.lang.Throwable -> L35
            char[] r7 = new char[r7]     // Catch: java.lang.Throwable -> L35
            r1 = 0
            com.appsflyer.internal.AFf1zSDK.valueOf = r1     // Catch: java.lang.Throwable -> L35
        L13:
            int r1 = com.appsflyer.internal.AFf1zSDK.valueOf     // Catch: java.lang.Throwable -> L35
            int r2 = r6.length     // Catch: java.lang.Throwable -> L35
            if (r1 >= r2) goto L2e
            char r2 = r6[r1]     // Catch: java.lang.Throwable -> L35
            int r3 = com.appsflyer.internal.AFf1zSDK.values     // Catch: java.lang.Throwable -> L35
            int r3 = r3 * r1
            r2 = r2 ^ r3
            long r2 = (long) r2     // Catch: java.lang.Throwable -> L35
            long r4 = com.appsflyer.internal.AFb1pSDK.afInfoLog     // Catch: java.lang.Throwable -> L35
            long r2 = r2 ^ r4
            int r3 = (int) r2     // Catch: java.lang.Throwable -> L35
            char r2 = (char) r3     // Catch: java.lang.Throwable -> L35
            r7[r1] = r2     // Catch: java.lang.Throwable -> L35
            int r1 = com.appsflyer.internal.AFf1zSDK.valueOf     // Catch: java.lang.Throwable -> L35
            int r1 = r1 + 1
            com.appsflyer.internal.AFf1zSDK.valueOf = r1     // Catch: java.lang.Throwable -> L35
            goto L13
        L2e:
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Throwable -> L35
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L35
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L35
            return r6
        L35:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1pSDK.values(java.lang.String, int):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
        if (r3 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
        if (r3 != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
        r6.valueOf.putAll(com.appsflyer.internal.AFa1lSDK.AFInAppEventParameterName(new org.json.JSONObject(r3)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
        r3 = com.appsflyer.internal.AFa1aSDK.values();
        valueOf(r0.getString("advertiserId"), r9.AFKeystoreWrapper, r3.afErrorLog);
        r9 = new java.lang.StringBuilder("6.9.0.");
        r9.append(com.appsflyer.internal.AFa1aSDK.values);
        AFInAppEventParameterName(r9.toString(), r3.AFInAppEventType().AFLogger$LogLevel().AFInAppEventType, r0.getString("KSAppsFlyerId"), r0.getString("uid"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0084, code lost:
        values(r7, java.lang.String.valueOf(r8.getPackageInfo(r7, 0).versionCode), r0.getString("channel"), r0.getString("preInstallName"));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void valueOf(java.lang.String r7, android.content.pm.PackageManager r8, com.appsflyer.internal.AFd1lSDK r9) {
        /*
            r6 = this;
            monitor-enter(r6)
            int r0 = com.appsflyer.internal.AFb1pSDK.afErrorLog     // Catch: java.lang.Throwable -> Lc0
            int r0 = r0 + 47
            int r1 = r0 % 128
            com.appsflyer.internal.AFb1pSDK.init = r1     // Catch: java.lang.Throwable -> Lc0
            int r0 = r0 % 2
            r1 = 0
            if (r0 != 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 == 0) goto L2a
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r2 = "remote_debug_static_data"
            java.lang.String r3 = r0.getString(r2)     // Catch: java.lang.Throwable -> Lc0
            java.util.Map<java.lang.String, java.lang.Object> r4 = r6.valueOf     // Catch: java.lang.Throwable -> Lc0
            r4.clear()     // Catch: java.lang.Throwable -> Lc0
            r4 = 32
            int r4 = r4 / r1
            if (r3 == 0) goto L4a
            goto L3b
        L28:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> Lc0
        L2a:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r2 = "remote_debug_static_data"
            java.lang.String r3 = r0.getString(r2)     // Catch: java.lang.Throwable -> Lc0
            java.util.Map<java.lang.String, java.lang.Object> r4 = r6.valueOf     // Catch: java.lang.Throwable -> Lc0
            r4.clear()     // Catch: java.lang.Throwable -> Lc0
            if (r3 == 0) goto L4a
        L3b:
            java.util.Map<java.lang.String, java.lang.Object> r7 = r6.valueOf     // Catch: java.lang.Throwable -> Lab
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Lab
            r8.<init>(r3)     // Catch: java.lang.Throwable -> Lab
            java.util.Map r8 = com.appsflyer.internal.AFa1lSDK.AFInAppEventParameterName(r8)     // Catch: java.lang.Throwable -> Lab
            r7.putAll(r8)     // Catch: java.lang.Throwable -> Lab
            goto Lab
        L4a:
            com.appsflyer.internal.AFa1aSDK r3 = com.appsflyer.internal.AFa1aSDK.values()     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r4 = "advertiserId"
            java.lang.String r4 = r0.getString(r4)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r9 = r9.AFKeystoreWrapper     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r5 = r3.afErrorLog     // Catch: java.lang.Throwable -> Lc0
            r6.valueOf(r4, r9, r5)     // Catch: java.lang.Throwable -> Lc0
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r4 = "6.9.0."
            r9.<init>(r4)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r4 = com.appsflyer.internal.AFa1aSDK.values     // Catch: java.lang.Throwable -> Lc0
            r9.append(r4)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> Lc0
            com.appsflyer.internal.AFc1ySDK r3 = r3.AFInAppEventType()     // Catch: java.lang.Throwable -> Lc0
            com.appsflyer.internal.AFd1lSDK r3 = r3.AFLogger$LogLevel()     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r3 = r3.AFInAppEventType     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r4 = "KSAppsFlyerId"
            java.lang.String r4 = r0.getString(r4)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r5 = "uid"
            java.lang.String r5 = r0.getString(r5)     // Catch: java.lang.Throwable -> Lc0
            r6.AFInAppEventParameterName(r9, r3, r4, r5)     // Catch: java.lang.Throwable -> Lc0
            android.content.pm.PackageInfo r8 = r8.getPackageInfo(r7, r1)     // Catch: java.lang.Throwable -> L9d
            int r8 = r8.versionCode     // Catch: java.lang.Throwable -> L9d
            java.lang.String r9 = "channel"
            java.lang.String r9 = r0.getString(r9)     // Catch: java.lang.Throwable -> L9d
            java.lang.String r1 = "preInstallName"
            java.lang.String r1 = r0.getString(r1)     // Catch: java.lang.Throwable -> L9d
            java.lang.String r8 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L9d
            r6.values(r7, r8, r9, r1)     // Catch: java.lang.Throwable -> L9d
        L9d:
            org.json.JSONObject r7 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Lc0
            java.util.Map<java.lang.String, java.lang.Object> r8 = r6.valueOf     // Catch: java.lang.Throwable -> Lc0
            r7.<init>(r8)     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Lc0
            r0.set(r2, r7)     // Catch: java.lang.Throwable -> Lc0
        Lab:
            java.util.Map<java.lang.String, java.lang.Object> r7 = r6.valueOf     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r8 = "launch_counter"
            java.lang.String r9 = r6.afRDLog     // Catch: java.lang.Throwable -> Lc0
            r7.put(r8, r9)     // Catch: java.lang.Throwable -> Lc0
            int r7 = com.appsflyer.internal.AFb1pSDK.afErrorLog     // Catch: java.lang.Throwable -> Lc0
            int r7 = r7 + 63
            int r8 = r7 % 128
            com.appsflyer.internal.AFb1pSDK.init = r8     // Catch: java.lang.Throwable -> Lc0
            int r7 = r7 % 2
            monitor-exit(r6)
            return
        Lc0:
            r7 = move-exception
            monitor-exit(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFb1pSDK.valueOf(java.lang.String, android.content.pm.PackageManager, com.appsflyer.internal.AFd1lSDK):void");
    }

    private static String[] valueOf(String str, StackTraceElement[] stackTraceElementArr) {
        int i9 = init;
        int i10 = i9 + 61;
        afErrorLog = i10 % 128;
        int i11 = i10 % 2;
        if (!(stackTraceElementArr == null)) {
            String[] strArr = new String[stackTraceElementArr.length + 1];
            strArr[0] = str;
            int i12 = 1;
            while (true) {
                if (i12 >= stackTraceElementArr.length) {
                    return strArr;
                }
                strArr[i12] = stackTraceElementArr[i12].toString();
                i12++;
            }
        } else {
            int i13 = i9 + 19;
            afErrorLog = i13 % 128;
            if (i13 % 2 == 0) {
                return new String[]{str};
            }
            String[] strArr2 = new String[0];
            strArr2[0] = str;
            return strArr2;
        }
    }
}
