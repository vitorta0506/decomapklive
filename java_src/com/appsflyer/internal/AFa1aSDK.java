package com.appsflyer.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AFKeystoreWrapper;
import com.appsflyer.AFLogger;
import com.appsflyer.AFVersionDeclaration;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.PurchaseHandler;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.attribution.RequestError;
import com.appsflyer.deeplink.DeepLinkListener;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.AFa1aSDK;
import com.appsflyer.internal.AFa1iSDK;
import com.appsflyer.internal.AFa1mSDK;
import com.appsflyer.internal.AFa1zSDK;
import com.appsflyer.internal.AFb1zSDK;
import com.appsflyer.internal.AFc1mSDK;
import com.appsflyer.internal.AFd1ySDK;
import com.appsflyer.internal.AFe1iSDK;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.facebook.FacebookSdk;
import com.facebook.bolts.AppLinks;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.huawei.hms.framework.common.ContainerUtils;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import com.tencent.thumbplayer.tplayer.plugins.report.TPReportParams;
import io.jsonwebtoken.JwtParser;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.URI;
import java.security.KeyStoreException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.text.Typography;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public final class AFa1aSDK extends AppsFlyerLib {
    static AppsFlyerInAppPurchaseValidatorListener AFInAppEventParameterName = null;
    public static volatile AppsFlyerConversionListener AFInAppEventType = null;
    public static final String AFKeystoreWrapper;
    private static String AFLogger = null;
    private static String AFLogger$LogLevel = null;
    @VisibleForTesting
    private static String AFVersionDeclaration = null;
    private static int AppsFlyerLib = 1;
    private static final String afInfoLog;
    private static String afRDLog;
    private static String afWarnLog;
    @VisibleForTesting
    private static AFa1aSDK getLevel;
    private static String init;
    private static int onValidateInApp;
    private static char[] onValidateInAppFailure;
    public static final String valueOf;
    static final String values;
    private String AppsFlyer2dXConversionCallback;
    @NonNull
    private final AFb1bSDK AppsFlyerConversionListener;
    public AFa1cSDK afDebugLog;
    String afErrorLog;
    private SharedPreferences onAppOpenAttribution;
    private AFb1gSDK onAttributionFailure;
    private Application onConversionDataFail;
    private boolean onConversionDataSuccess;
    private String onDeepLinking;
    private Map<Long, String> onInstallConversionDataLoadedNative;
    private Map<String, Object> onResponse;
    private boolean onResponseErrorNative;
    private long onInstallConversionFailureNative = -1;
    private long onAttributionFailureNative = -1;
    private long onAppOpenAttributionNative = TimeUnit.SECONDS.toMillis(5);
    private final AFb1vSDK onResponseNative = new AFb1vSDK();
    private boolean onDeepLinkingNative = false;
    private boolean onResponseError = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.AFa1aSDK$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements Runnable {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void AFKeystoreWrapper() {
            try {
                AFd1cSDK aFd1cSDK = new AFd1cSDK();
                Application valueOf = AFa1aSDK.valueOf(AFa1aSDK.this);
                if (valueOf != null) {
                    aFd1cSDK.AFInAppEventParameterName = (Application) valueOf.getApplicationContext();
                }
                AFa1aSDK aFa1aSDK = AFa1aSDK.this;
                if (AFa1aSDK.AFInAppEventType(aFa1aSDK, aFd1cSDK, AFa1aSDK.AFKeystoreWrapper(AFa1aSDK.valueOf(aFa1aSDK)))) {
                    AFa1aSDK.AFInAppEventParameterName(AFa1aSDK.this, aFd1cSDK);
                }
            } catch (Throwable th2) {
                AFLogger.afErrorLog(th2.getMessage(), th2);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            AFa1aSDK.AFInAppEventParameterName(AFa1aSDK.values(AFa1aSDK.this).AFInAppEventParameterName(), new Runnable() { // from class: com.appsflyer.internal.b
                @Override // java.lang.Runnable
                public final void run() {
                    AFa1aSDK.AnonymousClass2.this.AFKeystoreWrapper();
                }
            }, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: com.appsflyer.internal.AFa1aSDK$7  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] AFInAppEventType;

        static {
            int[] iArr = new int[AppsFlyerProperties.EmailsCryptType.values().length];
            AFInAppEventType = iArr;
            try {
                iArr[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                AFInAppEventType[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AFa1vSDK implements Runnable {
        private final AFa1tSDK valueOf;

        /* synthetic */ AFa1vSDK(AFa1aSDK aFa1aSDK, AFa1tSDK aFa1tSDK, byte b10) {
            this(aFa1tSDK);
        }

        @Override // java.lang.Runnable
        public final void run() {
            AFd1wSDK aFd1wSDK;
            if (this.valueOf.AFInAppEventType()) {
                AFd1wSDK aFd1wSDK2 = new AFd1wSDK(this.valueOf, AFa1aSDK.this.AFInAppEventType());
                aFd1wSDK2.AFVersionDeclaration = AFa1aSDK.AFInAppEventType(AFa1aSDK.this);
                aFd1wSDK = aFd1wSDK2;
            } else {
                aFd1wSDK = new AFd1tSDK(this.valueOf, AFa1aSDK.this.AFInAppEventType());
            }
            AFc1mSDK afErrorLog = AFa1aSDK.this.AFInAppEventType().afErrorLog();
            afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFd1wSDK));
        }

        private AFa1vSDK(AFa1tSDK aFa1tSDK) {
            this.valueOf = aFa1tSDK;
        }
    }

    /* loaded from: classes.dex */
    class AFa1wSDK implements AFc1oSDK {
        private AFa1wSDK() {
        }

        @Override // com.appsflyer.internal.AFc1oSDK
        public final void AFInAppEventParameterName(AFc1nSDK<?> aFc1nSDK) {
            if (aFc1nSDK instanceof AFd1wSDK) {
                AFa1aSDK.this.AFInAppEventType().afDebugLog().valueOf(((AFd1tSDK) aFc1nSDK).afRDLog.AFLogger);
            }
        }

        @Override // com.appsflyer.internal.AFc1oSDK
        public final void AFKeystoreWrapper(AFc1nSDK<?> aFc1nSDK) {
        }

        @Override // com.appsflyer.internal.AFc1oSDK
        public final void valueOf(AFc1nSDK<?> aFc1nSDK, AFc1qSDK aFc1qSDK) {
            JSONObject values;
            AFb1tSDK values2;
            if (aFc1nSDK instanceof AFd1tSDK) {
                AFd1tSDK aFd1tSDK = (AFd1tSDK) aFc1nSDK;
                boolean z10 = aFc1nSDK instanceof AFd1wSDK;
                if (z10) {
                    AFd1wSDK aFd1wSDK = (AFd1wSDK) aFc1nSDK;
                    boolean z11 = true;
                    if (aFd1wSDK.values != AFc1qSDK.SUCCESS && aFd1wSDK.AFInAppEventType != 1) {
                        z11 = false;
                    }
                    if (z11) {
                        Context context = AFa1aSDK.values(AFa1aSDK.this).values.values;
                        if (context != null) {
                            AFd1gSDK aFd1gSDK = new AFd1gSDK(aFd1wSDK, new AFb1eSDK(AFa1aSDK.AFKeystoreWrapper(context)));
                            AFc1mSDK afErrorLog = AFa1aSDK.values(AFa1aSDK.this).afErrorLog();
                            afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFd1gSDK));
                        } else {
                            throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
                        }
                    }
                }
                if (aFc1qSDK == AFc1qSDK.SUCCESS) {
                    AFa1aSDK aFa1aSDK = AFa1aSDK.this;
                    aFa1aSDK.valueOf(AFa1aSDK.valueOf(aFa1aSDK)).valueOf("sentSuccessfully", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                    if (!(aFc1nSDK instanceof AFd1xSDK) && (values2 = new AFd1kSDK(AFa1aSDK.valueOf(AFa1aSDK.this)).values()) != null && values2.valueOf()) {
                        String str = values2.valueOf;
                        AFLogger.afDebugLog("Resending Uninstall token to AF servers: ".concat(String.valueOf(str)));
                        AFd1kSDK.AFInAppEventType(str);
                    }
                    ResponseNetwork responseNetwork = aFd1tSDK.afDebugLog;
                    if (responseNetwork != null && (values = AFb1mSDK.values((String) responseNetwork.getBody())) != null) {
                        AFa1aSDK.valueOf(AFa1aSDK.this, values.optBoolean("send_background", false));
                    }
                    if (z10) {
                        AFa1aSDK.AFInAppEventType(AFa1aSDK.this, System.currentTimeMillis());
                    }
                }
            } else if (!(aFc1nSDK instanceof AFd1gSDK) || aFc1qSDK == AFc1qSDK.SUCCESS) {
            } else {
                AFd1eSDK aFd1eSDK = new AFd1eSDK(AFa1aSDK.values(AFa1aSDK.this));
                AFc1mSDK afErrorLog2 = AFa1aSDK.values(AFa1aSDK.this).afErrorLog();
                afErrorLog2.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFd1eSDK));
            }
        }

        /* synthetic */ AFa1wSDK(AFa1aSDK aFa1aSDK, byte b10) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AFa1ySDK implements Runnable {
        private final AFa1tSDK valueOf;

        /* synthetic */ AFa1ySDK(AFa1aSDK aFa1aSDK, AFa1tSDK aFa1tSDK, byte b10) {
            this(aFa1tSDK);
        }

        @Override // java.lang.Runnable
        public final void run() {
            AFa1aSDK.AFInAppEventParameterName(AFa1aSDK.this, this.valueOf);
        }

        private AFa1ySDK(AFa1tSDK aFa1tSDK) {
            this.valueOf = aFa1tSDK;
        }
    }

    static {
        AFKeystoreWrapper();
        values = "126";
        String substring = "6.9.0".substring(0, "6.9.0".lastIndexOf(AFKeystoreWrapper(new int[]{33, 1, 0, 1}, "\u0000", false).intern()));
        valueOf = substring;
        AFLogger = "https://%sstats.%s/stats";
        StringBuilder sb2 = new StringBuilder();
        sb2.append(substring);
        sb2.append("/androidevent?buildnumber=6.9.0&app_id=");
        AFKeystoreWrapper = sb2.toString();
        afRDLog = "https://%sadrevenue.%s/api/v2/generic/v6.9.0/android?app_id=";
        StringBuilder sb3 = new StringBuilder();
        sb3.append(substring);
        sb3.append("/androidevent?app_id=");
        String obj = sb3.toString();
        afInfoLog = obj;
        StringBuilder sb4 = new StringBuilder("https://%sconversions.%s/api/v");
        sb4.append(obj);
        afWarnLog = sb4.toString();
        StringBuilder sb5 = new StringBuilder("https://%slaunches.%s/api/v");
        sb5.append(obj);
        init = sb5.toString();
        StringBuilder sb6 = new StringBuilder("https://%sinapps.%s/api/v");
        sb6.append(obj);
        AFLogger$LogLevel = sb6.toString();
        StringBuilder sb7 = new StringBuilder("https://%sattr.%s/api/v");
        sb7.append(obj);
        AFVersionDeclaration = sb7.toString();
        AFInAppEventParameterName = null;
        AFInAppEventType = null;
        getLevel = new AFa1aSDK();
        int i9 = onValidateInApp + 99;
        AppsFlyerLib = i9 % 128;
        if ((i9 % 2 == 0 ? (char) 20 : (char) 23) == 23) {
            return;
        }
        throw null;
    }

    @VisibleForTesting
    public AFa1aSDK() {
        Executors.newSingleThreadExecutor();
        AFVersionDeclaration.init();
        AFb1bSDK aFb1bSDK = new AFb1bSDK();
        this.AppsFlyerConversionListener = aFb1bSDK;
        AFc1mSDK afErrorLog = aFb1bSDK.afErrorLog();
        afErrorLog.AFInAppEventParameterName.add(new AFa1wSDK(this, (byte) 0));
    }

    static /* synthetic */ void AFInAppEventParameterName(AFa1aSDK aFa1aSDK, AFa1tSDK aFa1tSDK) {
        int i9 = AppsFlyerLib + 17;
        onValidateInApp = i9 % 128;
        boolean z10 = i9 % 2 == 0;
        aFa1aSDK.valueOf(aFa1tSDK);
        if (z10) {
            return;
        }
        throw null;
    }

    static /* synthetic */ long AFInAppEventType(AFa1aSDK aFa1aSDK, long j10) {
        int i9 = onValidateInApp;
        int i10 = i9 + 87;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
        aFa1aSDK.onAttributionFailureNative = j10;
        int i12 = i9 + 35;
        AppsFlyerLib = i12 % 128;
        int i13 = i12 % 2;
        return j10;
    }

    static void AFKeystoreWrapper() {
        onValidateInAppFailure = new char[]{'w', 229, 226, 233, 227, 222, 221, 228, 233, 230, 228, 231, '7', 151, 153, Typography.pound, 150, Typography.section, '0', 'V', '`', 's', 'r', 'm', 'g', 'e', 'l', 'j', 'R', 'V', 'e', 'h', 'q', 23};
    }

    static /* synthetic */ void AFKeystoreWrapper(AFa1aSDK aFa1aSDK) {
        int i9 = AppsFlyerLib + 33;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        aFa1aSDK.AFLogger();
        int i11 = onValidateInApp + 71;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if ((!com.appsflyer.AppsFlyerProperties.getInstance().getBoolean(com.appsflyer.AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, true)) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
        if (com.appsflyer.AppsFlyerProperties.getInstance().getBoolean(com.appsflyer.AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib + 101;
        com.appsflyer.internal.AFa1aSDK.onValidateInApp = r0 % 128;
        r0 = r0 % 2;
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004c, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (com.appsflyer.AppsFlyerProperties.getInstance().getBoolean(com.appsflyer.AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean AFLogger(android.content.Context r5) {
        /*
            int r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r0 = r0 + 85
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r1
            int r0 = r0 % 2
            r1 = 88
            if (r0 == 0) goto L11
            r0 = 88
            goto L13
        L11:
            r0 = 30
        L13:
            java.lang.String r2 = "collectAndroidIdForceByUser"
            r3 = 1
            r4 = 0
            if (r0 == r1) goto L24
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            boolean r0 = r0.getBoolean(r2, r4)
            if (r0 != 0) goto L4c
            goto L33
        L24:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            boolean r0 = r0.getBoolean(r2, r3)
            if (r0 != 0) goto L30
            r0 = 1
            goto L31
        L30:
            r0 = 0
        L31:
            if (r0 == 0) goto L4c
        L33:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r1 = "collectIMEIForceByUser"
            boolean r0 = r0.getBoolean(r1, r4)
            if (r0 == 0) goto L40
            goto L4c
        L40:
            int r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r0 = r0 + 101
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r1
            int r0 = r0 % 2
            r0 = 0
            goto L4d
        L4c:
            r0 = 1
        L4d:
            if (r0 != 0) goto L51
            r0 = 1
            goto L52
        L51:
            r0 = 0
        L52:
            if (r0 == r3) goto L55
            goto L65
        L55:
            int r0 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r0 = r0 + 7
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r1
            int r0 = r0 % 2
            boolean r5 = values(r5)
            if (r5 != 0) goto L66
        L65:
            return r3
        L66:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.AFLogger(android.content.Context):boolean");
    }

    private String AFLogger$LogLevel(Context context) {
        File afDebugLog = afDebugLog(values("ro.appsflyer.preinstall.path"));
        if (values(afDebugLog)) {
            afDebugLog = afDebugLog(values(context, "AF_PRE_INSTALL_PATH"));
            int i9 = onValidateInApp + 75;
            AppsFlyerLib = i9 % 128;
            int i10 = i9 % 2;
        }
        if (values(afDebugLog)) {
            int i11 = AppsFlyerLib + 65;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
            afDebugLog = afDebugLog("/data/local/tmp/pre_install.appsflyer");
        }
        if (values(afDebugLog)) {
            afDebugLog = afDebugLog("/etc/pre_install.appsflyer");
        }
        if (!(values(afDebugLog) ? false : true)) {
            int i13 = onValidateInApp + 123;
            AppsFlyerLib = i13 % 128;
            int i14 = i13 % 2;
            return null;
        }
        String valueOf2 = valueOf(afDebugLog, context.getPackageName());
        int i15 = onValidateInApp + 39;
        AppsFlyerLib = i15 % 128;
        int i16 = i15 % 2;
        return valueOf2;
    }

    private String AFVersionDeclaration(Context context) {
        String str;
        int i9 = AppsFlyerLib + 9;
        onValidateInApp = i9 % 128;
        if (i9 % 2 == 0) {
            SharedPreferences AFKeystoreWrapper2 = AFKeystoreWrapper(context);
            String AFKeystoreWrapper3 = AFKeystoreWrapper("preInstallName");
            if (AFKeystoreWrapper3 != null) {
                return AFKeystoreWrapper3;
            }
            if (AFKeystoreWrapper2.contains("preInstallName")) {
                str = AFKeystoreWrapper2.getString("preInstallName", null);
            } else {
                if ((afInfoLog(context) ? (char) 3 : '\t') == 3) {
                    AFKeystoreWrapper3 = AFLogger$LogLevel(context);
                    if (AFKeystoreWrapper3 == null) {
                        AFKeystoreWrapper3 = values(context, "AF_PRE_INSTALL_NAME");
                    } else {
                        int i10 = AppsFlyerLib + 77;
                        onValidateInApp = i10 % 128;
                        int i11 = i10 % 2;
                    }
                }
                if (AFKeystoreWrapper3 != null) {
                    int i12 = onValidateInApp + 91;
                    AppsFlyerLib = i12 % 128;
                    int i13 = i12 % 2;
                    valueOf(context).valueOf("preInstallName", AFKeystoreWrapper3);
                }
                str = AFKeystoreWrapper3;
            }
            if (str != null) {
                values("preInstallName", str);
            }
            int i14 = AppsFlyerLib + 57;
            onValidateInApp = i14 % 128;
            int i15 = i14 % 2;
            return str;
        }
        AFKeystoreWrapper(context);
        AFKeystoreWrapper("preInstallName");
        throw null;
    }

    private static void afDebugLog(Context context) {
        int i9 = AppsFlyerLib + 117;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        try {
            if (!((context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.flags & 32768) == 0)) {
                int i11 = onValidateInApp + 71;
                AppsFlyerLib = i11 % 128;
                int i12 = i11 % 2;
                if ((context.getResources().getIdentifier("appsflyer_backup_rules", "xml", context.getPackageName()) != 0 ? '2' : ' ') != ' ') {
                    int i13 = onValidateInApp + 105;
                    AppsFlyerLib = i13 % 128;
                    int i14 = i13 % 2;
                    AFLogger.afInfoLog("appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data", true);
                    return;
                }
                AFLogger.valueOf("'allowBackup' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules");
            }
        } catch (Exception e10) {
            AFLogger.afRDLog("checkBackupRules Exception: ".concat(String.valueOf(e10)));
        }
    }

    private void afErrorLog(Context context) {
        this.onResponse = new HashMap();
        final long currentTimeMillis = System.currentTimeMillis();
        final AFa1mSDK.AFa1zSDK aFa1zSDK = new AFa1mSDK.AFa1zSDK() { // from class: com.appsflyer.internal.AFa1aSDK.5
            @Override // com.appsflyer.internal.AFa1mSDK.AFa1zSDK
            public final void AFInAppEventParameterName(String str, String str2, String str3) {
                if (str != null) {
                    AFLogger.afInfoLog("Facebook Deferred AppLink data received: ".concat(str));
                    AFa1aSDK.AFInAppEventType(AFa1aSDK.this).put("link", str);
                    if (str2 != null) {
                        AFa1aSDK.AFInAppEventType(AFa1aSDK.this).put("target_url", str2);
                    }
                    if (str3 != null) {
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        hashMap2.put(ShareConstants.PROMO_CODE, str3);
                        hashMap.put(ShareConstants.DEEPLINK_CONTEXT, hashMap2);
                        AFa1aSDK.AFInAppEventType(AFa1aSDK.this).put(AppLinks.KEY_NAME_EXTRAS, hashMap);
                    }
                } else {
                    AFa1aSDK.AFInAppEventType(AFa1aSDK.this).put("link", "");
                }
                AFa1aSDK.AFInAppEventType(AFa1aSDK.this).put("ttr", String.valueOf(System.currentTimeMillis() - currentTimeMillis));
            }

            @Override // com.appsflyer.internal.AFa1mSDK.AFa1zSDK
            public final void AFInAppEventParameterName(String str) {
                AFa1aSDK.AFInAppEventType(AFa1aSDK.this).put("error", str);
            }
        };
        try {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.class.getMethod("sdkInitialize", Context.class).invoke(null, context);
            final Class<?> cls = Class.forName("com.facebook.applinks.AppLinkData");
            Class<?> cls2 = Class.forName("com.facebook.applinks.AppLinkData$CompletionHandler");
            Method method = cls.getMethod("fetchDeferredAppLinkData", Context.class, String.class, cls2);
            Object newProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.internal.AFa1mSDK.1
                @Override // java.lang.reflect.InvocationHandler
                public final Object invoke(Object obj, Method method2, Object[] objArr) throws Throwable {
                    String str;
                    String str2;
                    String str3;
                    Bundle bundle;
                    if (method2.getName().equals("onDeferredAppLinkDataFetched")) {
                        if (objArr[0] != null) {
                            Bundle bundle2 = (Bundle) Bundle.class.cast(cls.getMethod("getArgumentBundle", new Class[0]).invoke(cls.cast(objArr[0]), new Object[0]));
                            if (bundle2 != null) {
                                str2 = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                                str3 = bundle2.getString("target_url");
                                Bundle bundle3 = bundle2.getBundle(AppLinks.KEY_NAME_EXTRAS);
                                str = (bundle3 == null || (bundle = bundle3.getBundle(ShareConstants.DEEPLINK_CONTEXT)) == null) ? null : bundle.getString(ShareConstants.PROMO_CODE);
                            } else {
                                str = null;
                                str2 = null;
                                str3 = null;
                            }
                            AFa1zSDK aFa1zSDK2 = aFa1zSDK;
                            if (aFa1zSDK2 != null) {
                                aFa1zSDK2.AFInAppEventParameterName(str2, str3, str);
                            }
                        } else {
                            AFa1zSDK aFa1zSDK3 = aFa1zSDK;
                            if (aFa1zSDK3 != null) {
                                aFa1zSDK3.AFInAppEventParameterName(null, null, null);
                            }
                        }
                        return null;
                    }
                    AFa1zSDK aFa1zSDK4 = aFa1zSDK;
                    if (aFa1zSDK4 != null) {
                        aFa1zSDK4.AFInAppEventParameterName("onDeferredAppLinkDataFetched invocation failed");
                    }
                    return null;
                }
            });
            String string = context.getString(context.getResources().getIdentifier("facebook_app_id", TypedValues.Custom.S_STRING, context.getPackageName()));
            if ((TextUtils.isEmpty(string) ? (char) 0 : 'X') != 0) {
                method.invoke(null, context, string, newProxyInstance);
                return;
            }
            int i9 = AppsFlyerLib + 35;
            onValidateInApp = i9 % 128;
            if (!(i9 % 2 != 0)) {
                aFa1zSDK.AFInAppEventParameterName("Facebook app id not defined in resources");
                return;
            }
            aFa1zSDK.AFInAppEventParameterName("Facebook app id not defined in resources");
            int i10 = 20 / 0;
        } catch (ClassNotFoundException e10) {
            aFa1zSDK.AFInAppEventParameterName(e10.toString());
        } catch (IllegalAccessException e11) {
            aFa1zSDK.AFInAppEventParameterName(e11.toString());
        } catch (NoSuchMethodException e12) {
            aFa1zSDK.AFInAppEventParameterName(e12.toString());
        } catch (InvocationTargetException e13) {
            aFa1zSDK.AFInAppEventParameterName(e13.toString());
        }
    }

    private static boolean afInfoLog(Context context) {
        int i9 = onValidateInApp + 25;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        if ((!AFKeystoreWrapper(context).contains("appsFlyerCount") ? '5' : (char) 21) != '5') {
            return false;
        }
        int i11 = onValidateInApp + 59;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
        return true;
    }

    private static void afRDLog(Context context) {
        int i9;
        if (AFb1wSDK.valueOf()) {
            i9 = 23;
            AFLogger.afRDLog("OPPO device found");
        } else {
            i9 = 18;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= i9 && !AFInAppEventParameterName(AppsFlyerProperties.DISABLE_KEYSTORE, true)) {
            StringBuilder sb2 = new StringBuilder("OS SDK is=");
            sb2.append(i10);
            sb2.append("; use KeyStore");
            AFLogger.afRDLog(sb2.toString());
            AFKeystoreWrapper aFKeystoreWrapper = new AFKeystoreWrapper(context);
            if (!aFKeystoreWrapper.AFKeystoreWrapper()) {
                aFKeystoreWrapper.AFInAppEventParameterName = AFb1uSDK.AFInAppEventParameterName(new WeakReference(context));
                aFKeystoreWrapper.AFInAppEventType = 0;
                aFKeystoreWrapper.values(aFKeystoreWrapper.AFInAppEventType());
            } else {
                String AFInAppEventType2 = aFKeystoreWrapper.AFInAppEventType();
                synchronized (aFKeystoreWrapper.values) {
                    aFKeystoreWrapper.AFInAppEventType++;
                    AFLogger.afInfoLog("Deleting key with alias: ".concat(String.valueOf(AFInAppEventType2)));
                    try {
                        synchronized (aFKeystoreWrapper.values) {
                            aFKeystoreWrapper.AFKeystoreWrapper.deleteEntry(AFInAppEventType2);
                        }
                    } catch (KeyStoreException e10) {
                        StringBuilder sb3 = new StringBuilder("Exception ");
                        sb3.append(e10.getMessage());
                        sb3.append(" occurred");
                        AFLogger.afErrorLog(sb3.toString(), e10);
                    }
                }
                aFKeystoreWrapper.values(aFKeystoreWrapper.AFInAppEventType());
            }
            values("KSAppsFlyerId", aFKeystoreWrapper.AFInAppEventParameterName());
            values("KSAppsFlyerRICounter", String.valueOf(aFKeystoreWrapper.values()));
            return;
        }
        StringBuilder sb4 = new StringBuilder("OS SDK is=");
        sb4.append(i10);
        sb4.append("; no KeyStore usage");
        AFLogger.afRDLog(sb4.toString());
    }

    private long afWarnLog(Context context) {
        long j10 = AFKeystoreWrapper(context).getLong("AppsFlyerTimePassedSincePrevLaunch", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        valueOf(context).AFInAppEventParameterName("AppsFlyerTimePassedSincePrevLaunch", currentTimeMillis);
        if (j10 > 0) {
            int i9 = AppsFlyerLib;
            int i10 = i9 + 25;
            onValidateInApp = i10 % 128;
            long j11 = (i10 % 2 != 0 ? '=' : ')') != ')' ? currentTimeMillis ^ j10 : currentTimeMillis - j10;
            int i11 = i9 + 75;
            onValidateInApp = i11 % 128;
            if (i11 % 2 != 0) {
            }
            return j11 / 1000;
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
        if (r0 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
        r4 = com.appsflyer.internal.AFa1aSDK.onValidateInApp + 35;
        com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r4 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
        if ((r4 % 2) != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
        r4 = '?';
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
        r4 = 'K';
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0043, code lost:
        if (r4 != 'K') goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0050, code lost:
        return values(r4, "AF_STORE");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r0 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getLevel(android.content.Context r4) {
        /*
            r3 = this;
            int r0 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r0 = r0 + 99
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r1
            int r0 = r0 % 2
            r1 = 14
            if (r0 != 0) goto L11
            r0 = 14
            goto L13
        L11:
            r0 = 77
        L13:
            java.lang.String r2 = "api_store_value"
            if (r0 == r1) goto L22
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r0.getString(r2)
            if (r0 == 0) goto L4a
            goto L30
        L22:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r0.getString(r2)
            r1 = 83
            int r1 = r1 / 0
            if (r0 == 0) goto L4a
        L30:
            int r4 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r4 = r4 + 35
            int r1 = r4 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r1
            int r4 = r4 % 2
            r1 = 75
            if (r4 != 0) goto L41
            r4 = 63
            goto L43
        L41:
            r4 = 75
        L43:
            if (r4 != r1) goto L46
            return r0
        L46:
            r4 = 0
            throw r4     // Catch: java.lang.Throwable -> L48
        L48:
            r4 = move-exception
            throw r4
        L4a:
            java.lang.String r0 = "AF_STORE"
            java.lang.String r4 = r3.values(r4, r0)
            return r4
        L51:
            r4 = move-exception
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.getLevel(android.content.Context):java.lang.String");
    }

    private static boolean onAttributionFailureNative(Context context) {
        ConnectivityManager connectivityManager;
        Network[] allNetworks;
        int length;
        int i9;
        int i10 = onValidateInApp + 93;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
        if (context != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                int i12 = onValidateInApp + 109;
                AppsFlyerLib = i12 % 128;
                try {
                    if (i12 % 2 != 0) {
                        connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                        allNetworks = connectivityManager.getAllNetworks();
                        length = allNetworks.length;
                        i9 = 0;
                    } else {
                        connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                        allNetworks = connectivityManager.getAllNetworks();
                        length = allNetworks.length;
                        i9 = 1;
                    }
                    int i13 = onValidateInApp + 107;
                    AppsFlyerLib = i13 % 128;
                    int i14 = i13 % 2;
                    while (true) {
                        if ((i9 < length ? (char) 15 : 'D') == 'D') {
                            return false;
                        }
                        int i15 = onValidateInApp + 53;
                        AppsFlyerLib = i15 % 128;
                        int i16 = i15 % 2;
                        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(allNetworks[i9]);
                        if (networkCapabilities.hasTransport(4) && !networkCapabilities.hasCapability(15)) {
                            return true;
                        }
                        i9++;
                    }
                } catch (Exception e10) {
                    AFLogger.afErrorLog("Failed collecting ivc data", e10);
                }
            } else {
                ArrayList arrayList = new ArrayList();
                try {
                    Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
                    while (it.hasNext()) {
                        NetworkInterface networkInterface = (NetworkInterface) it.next();
                        if (!(!networkInterface.isUp())) {
                            arrayList.add(networkInterface.getName());
                        }
                    }
                    boolean contains = arrayList.contains("tun0");
                    int i17 = AppsFlyerLib + 7;
                    onValidateInApp = i17 % 128;
                    if (i17 % 2 != 0) {
                        throw null;
                    }
                    return contains;
                } catch (Exception e11) {
                    AFLogger.afErrorLog("Failed collecting ivc data", e11);
                }
            }
        }
        return false;
    }

    private static float onInstallConversionDataLoadedNative(Context context) {
        try {
            Intent registerReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = registerReceiver.getIntExtra("level", -1);
            int intExtra2 = registerReceiver.getIntExtra("scale", -1);
            if (!(intExtra == -1)) {
                int i9 = onValidateInApp + 115;
                AppsFlyerLib = i9 % 128;
                int i10 = i9 % 2;
                if ((intExtra2 == -1 ? (char) 22 : ')') != 22) {
                    return (intExtra / intExtra2) * 100.0f;
                }
            }
            int i11 = onValidateInApp + 111;
            AppsFlyerLib = i11 % 128;
            int i12 = i11 % 2;
            return 50.0f;
        } catch (Throwable th2) {
            AFLogger.afErrorLog(th2.getMessage(), th2);
            return 1.0f;
        }
    }

    static /* synthetic */ Application valueOf(AFa1aSDK aFa1aSDK) {
        int i9 = onValidateInApp + 115;
        AppsFlyerLib = i9 % 128;
        boolean z10 = i9 % 2 != 0;
        Application application = aFa1aSDK.onConversionDataFail;
        if (!z10) {
            int i10 = 30 / 0;
        }
        return application;
    }

    static /* synthetic */ AFb1bSDK values(AFa1aSDK aFa1aSDK) {
        int i9 = AppsFlyerLib;
        int i10 = i9 + 69;
        onValidateInApp = i10 % 128;
        char c10 = i10 % 2 != 0 ? '\r' : 'H';
        AFb1bSDK aFb1bSDK = aFa1aSDK.AppsFlyerConversionListener;
        if (c10 == '\r') {
            int i11 = 14 / 0;
        }
        int i12 = i9 + 101;
        onValidateInApp = i12 % 128;
        if (i12 % 2 == 0) {
            return aFb1bSDK;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void addPushNotificationDeepLinkPath(String... strArr) {
        List<String> asList;
        List<List<String>> list;
        int i9 = AppsFlyerLib + 107;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? 'D' : 'S') != 'S') {
            asList = Arrays.asList(strArr);
            list = AFa1uSDK.values().afRDLog;
            int i10 = 6 / 0;
            if ((!list.contains(asList) ? '#' : (char) 3) == 3) {
                return;
            }
        } else {
            asList = Arrays.asList(strArr);
            list = AFa1uSDK.values().afRDLog;
            if (list.contains(asList)) {
                return;
            }
        }
        int i11 = onValidateInApp + 39;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
        list.add(asList);
        if (i12 == 0) {
            int i13 = 56 / 0;
        }
        int i14 = onValidateInApp + 11;
        AppsFlyerLib = i14 % 128;
        int i15 = i14 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void anonymizeUser(boolean z10) {
        int i9 = onValidateInApp + 1;
        AppsFlyerLib = i9 % 128;
        if (!(i9 % 2 == 0)) {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("anonymizeUser", String.valueOf(z10));
        } else {
            AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
            String[] strArr = new String[0];
            strArr[0] = String.valueOf(z10);
            AFKeystoreWrapper2.AFKeystoreWrapper("anonymizeUser", strArr);
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, z10);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void appendParametersToDeepLinkingURL(String str, Map<String, String> map) {
        int i9 = AppsFlyerLib + 67;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? '8' : (char) 27) != '8') {
            AFa1uSDK values2 = AFa1uSDK.values();
            values2.AFInAppEventParameterName = str;
            values2.afDebugLog = map;
            int i10 = onValidateInApp + 53;
            AppsFlyerLib = i10 % 128;
            int i11 = i10 % 2;
            return;
        }
        AFa1uSDK values3 = AFa1uSDK.values();
        values3.AFInAppEventParameterName = str;
        values3.afDebugLog = map;
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void enableFacebookDeferredApplinks(boolean z10) {
        int i9 = AppsFlyerLib + 97;
        int i10 = i9 % 128;
        onValidateInApp = i10;
        int i11 = i9 % 2;
        this.onResponseError = z10;
        int i12 = i10 + 1;
        AppsFlyerLib = i12 % 128;
        if (i12 % 2 == 0) {
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Nullable
    public final String getAppsFlyerUID(@NonNull Context context) {
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("getAppsFlyerUID", new String[0]);
        if (context == null) {
            int i9 = onValidateInApp + 109;
            AppsFlyerLib = i9 % 128;
            if (i9 % 2 == 0) {
                int i10 = 68 / 0;
            }
            return null;
        }
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        int i11 = onValidateInApp + 9;
        int i12 = i11 % 128;
        AppsFlyerLib = i12;
        int i13 = i11 % 2;
        AFb1dSDK aFb1dSDK = aFb1bSDK.values;
        int i14 = i12 + 95;
        onValidateInApp = i14 % 128;
        if (i14 % 2 == 0) {
            aFb1dSDK.values = context.getApplicationContext();
            return AFb1uSDK.AFInAppEventParameterName(new WeakReference(this.AppsFlyerConversionListener.valueOf().AFKeystoreWrapper.values));
        }
        aFb1dSDK.values = context.getApplicationContext();
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getAttributionId(Context context) {
        try {
            String valueOf2 = new AFb1ySDK(context, AFInAppEventType()).valueOf();
            int i9 = AppsFlyerLib + 79;
            onValidateInApp = i9 % 128;
            if (i9 % 2 == 0) {
                return valueOf2;
            }
            throw null;
        } catch (Throwable th2) {
            AFLogger.afErrorLog("Could not collect facebook attribution id. ", th2);
            return null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostName() {
        int i9 = AppsFlyerLib + 25;
        onValidateInApp = i9 % 128;
        if (i9 % 2 == 0) {
            String AFKeystoreWrapper2 = AFKeystoreWrapper("custom_host");
            if (AFKeystoreWrapper2 != null) {
                int i10 = AppsFlyerLib + 73;
                onValidateInApp = i10 % 128;
                if (i10 % 2 == 0) {
                    return AFKeystoreWrapper2;
                }
                throw null;
            }
            return "appsflyer.com";
        }
        AFKeystoreWrapper("custom_host");
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getHostPrefix() {
        int i9 = AppsFlyerLib + 97;
        onValidateInApp = i9 % 128;
        if (i9 % 2 == 0) {
            String AFKeystoreWrapper2 = AFKeystoreWrapper("custom_host_prefix");
            if (!(AFKeystoreWrapper2 != null)) {
                AFKeystoreWrapper2 = "";
                int i10 = onValidateInApp + 29;
                AppsFlyerLib = i10 % 128;
                if (i10 % 2 == 0) {
                    int i11 = 49 / 0;
                    return "";
                }
            }
            return AFKeystoreWrapper2;
        }
        AFKeystoreWrapper("custom_host_prefix");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
        if ((r0 == null) != true) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
        r5 = com.appsflyer.internal.AFa1aSDK.onValidateInApp + 99;
        com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r5 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
        if ((r5 % 2) != 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0041, code lost:
        if (r5 == true) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0043, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
        r5 = 84 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0047, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004a, code lost:
        r5 = values(r5, "AF_STORE");
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0052, code lost:
        if (r5 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0054, code lost:
        r1 = '(';
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0057, code lost:
        r1 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005a, code lost:
        if (r1 == '(') goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005c, code lost:
        com.appsflyer.AFLogger.afInfoLog("No out-of-store value set");
        r5 = com.appsflyer.internal.AFa1aSDK.onValidateInApp + 7;
        com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r5 % 128;
        r5 = r5 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006b, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006c, code lost:
        r0 = com.appsflyer.internal.AFa1aSDK.onValidateInApp + 95;
        com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r0 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0076, code lost:
        if ((r0 % 2) == 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0078, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0079, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r0 != null) goto L25;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getOutOfStore(android.content.Context r5) {
        /*
            r4 = this;
            int r0 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r0 = r0 + 33
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r1
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L10
            r0 = 0
            goto L11
        L10:
            r0 = 1
        L11:
            java.lang.String r3 = "api_store_value"
            if (r0 == 0) goto L20
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r0.getString(r3)
            if (r0 == 0) goto L4a
            goto L32
        L20:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r0.getString(r3)
            r3 = 23
            int r3 = r3 / r1
            if (r0 == 0) goto L2f
            r3 = 0
            goto L30
        L2f:
            r3 = 1
        L30:
            if (r3 == r2) goto L4a
        L32:
            int r5 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r5 = r5 + 99
            int r3 = r5 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r3
            int r5 = r5 % 2
            if (r5 != 0) goto L40
            r5 = 1
            goto L41
        L40:
            r5 = 0
        L41:
            if (r5 == r2) goto L44
            return r0
        L44:
            r5 = 84
            int r5 = r5 / r1
            return r0
        L48:
            r5 = move-exception
            throw r5
        L4a:
            java.lang.String r0 = "AF_STORE"
            java.lang.String r5 = r4.values(r5, r0)
            r0 = 40
            if (r5 == 0) goto L57
            r1 = 40
            goto L59
        L57:
            r1 = 15
        L59:
            r2 = 0
            if (r1 == r0) goto L6c
            java.lang.String r5 = "No out-of-store value set"
            com.appsflyer.AFLogger.afInfoLog(r5)
            int r5 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r5 = r5 + 7
            int r0 = r5 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r0
            int r5 = r5 % 2
            return r2
        L6c:
            int r0 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r0 = r0 + 95
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r1
            int r0 = r0 % 2
            if (r0 == 0) goto L79
            return r5
        L79:
            throw r2     // Catch: java.lang.Throwable -> L7a
        L7a:
            r5 = move-exception
            throw r5
        L7c:
            r5 = move-exception
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.getOutOfStore(android.content.Context):java.lang.String");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final String getSdkVersion() {
        int i9 = AppsFlyerLib + 97;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFc1ySDK AFInAppEventType2 = AFInAppEventType();
        AFInAppEventType2.afWarnLog().AFKeystoreWrapper("getSdkVersion", new String[0]);
        AFInAppEventType2.valueOf();
        String values2 = AFb1cSDK.values();
        int i11 = onValidateInApp + 17;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
        return values2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final AppsFlyerLib init(@NonNull String str, AppsFlyerConversionListener appsFlyerConversionListener, @NonNull Context context) {
        if (this.onConversionDataSuccess) {
            return this;
        }
        this.onConversionDataSuccess = true;
        this.AppsFlyerConversionListener.AFLogger$LogLevel().AFInAppEventType = str;
        AFb1tSDK.valueOf(str);
        if ((context != null ? '\n' : '\b') != '\b') {
            this.onConversionDataFail = (Application) context.getApplicationContext();
            AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
            int i9 = AppsFlyerLib + 49;
            int i10 = i9 % 128;
            onValidateInApp = i10;
            int i11 = i9 % 2;
            AFb1dSDK aFb1dSDK = aFb1bSDK.values;
            int i12 = i10 + 53;
            AppsFlyerLib = i12 % 128;
            int i13 = i12 % 2;
            aFb1dSDK.values = context.getApplicationContext();
            AFInAppEventType().afDebugLog().AFInAppEventType = System.currentTimeMillis();
            AFInAppEventType().afInfoLog().values(null);
            AFe1fSDK level = AFInAppEventType().getLevel();
            final AFe1lSDK aFe1lSDK = new AFe1lSDK(new AnonymousClass2());
            Runnable runnable = new Runnable() { // from class: com.appsflyer.internal.AFa1aSDK.4
                @Override // java.lang.Runnable
                public final void run() {
                    SharedPreferences AFKeystoreWrapper2 = AFa1aSDK.AFKeystoreWrapper(AFa1aSDK.valueOf(AFa1aSDK.this));
                    int valueOf2 = AFa1aSDK.valueOf(AFKeystoreWrapper2, false);
                    boolean z10 = AFKeystoreWrapper2.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false);
                    boolean z11 = aFe1lSDK.AFKeystoreWrapper == AFe1iSDK.AFa1xSDK.NOT_STARTED;
                    if (valueOf2 == 1) {
                        if (z11 || z10) {
                            AFa1aSDK aFa1aSDK = AFa1aSDK.this;
                            AFd1cSDK aFd1cSDK = new AFd1cSDK();
                            Application valueOf3 = AFa1aSDK.valueOf(AFa1aSDK.this);
                            if (valueOf3 != null) {
                                aFd1cSDK.AFInAppEventParameterName = (Application) valueOf3.getApplicationContext();
                            }
                            AFa1aSDK.AFInAppEventParameterName(aFa1aSDK, aFd1cSDK);
                        }
                    }
                }
            };
            level.values(aFe1lSDK);
            level.values(new AFe1hSDK(runnable));
            level.values(new AFe1mSDK(runnable, AFInAppEventType()));
            level.values(new AFe1jSDK(runnable, AFInAppEventType()));
            Application application = this.onConversionDataFail;
            AFc1ySDK AFInAppEventType2 = AFInAppEventType();
            List<ResolveInfo> queryIntentContentProviders = application.getPackageManager().queryIntentContentProviders(new Intent("com.appsflyer.referrer.INSTALL_PROVIDER"), 0);
            if (queryIntentContentProviders != null && !queryIntentContentProviders.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (ResolveInfo resolveInfo : queryIntentContentProviders) {
                    ProviderInfo providerInfo = resolveInfo.providerInfo;
                    if (providerInfo != null) {
                        arrayList.add(new AFe1kSDK(providerInfo, runnable, AFInAppEventType2));
                    } else {
                        AFLogger.afWarnLog("[Preinstall]: com.appsflyer.referrer.INSTALL_PROVIDER Action is set for non ContentProvider component");
                    }
                }
                if (!arrayList.isEmpty()) {
                    level.valueOf.addAll(arrayList);
                    StringBuilder sb2 = new StringBuilder("[Preinstall]: Detected ");
                    sb2.append(arrayList.size());
                    sb2.append(" valid preinstall provider(s)");
                    AFLogger.afDebugLog(sb2.toString());
                }
            }
            for (AFe1iSDK aFe1iSDK : level.AFKeystoreWrapper()) {
                aFe1iSDK.AFKeystoreWrapper(this.onConversionDataFail);
            }
            this.AppsFlyerConversionListener.AFLogger$LogLevel().AFInAppEventParameterName();
            AFb1iSDK.values = this.onConversionDataFail;
        } else {
            AFLogger.afWarnLog("context is null, Google Install Referrer will be not initialized");
        }
        AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = (appsFlyerConversionListener == null ? 'T' : '(') != '(' ? "null" : "conversionDataListener";
        AFKeystoreWrapper2.AFKeystoreWrapper("init", strArr);
        AFLogger.AFInAppEventParameterName(String.format("Initializing AppsFlyer SDK: (v%s.%s)", "6.9.0", values));
        AFInAppEventType = appsFlyerConversionListener;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final boolean isPreInstalledApp(Context context) {
        try {
        } catch (PackageManager.NameNotFoundException e10) {
            AFLogger.afErrorLog("Could not check if app is pre installed", e10);
        }
        if (!((context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) == 0)) {
            int i9 = onValidateInApp + 91;
            AppsFlyerLib = i9 % 128;
            return (i9 % 2 == 0 ? 'H' : ',') != 'H';
        }
        int i10 = AppsFlyerLib + 51;
        onValidateInApp = i10 % 128;
        int i11 = i10 % 2;
        return false;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final boolean isStopped() {
        int i9 = onValidateInApp + 93;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        boolean values2 = this.AppsFlyerConversionListener.AFLogger$LogLevel().values();
        int i11 = AppsFlyerLib + 25;
        onValidateInApp = i11 % 128;
        if ((i11 % 2 != 0 ? 'F' : 'W') != 'F') {
            return values2;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(Context context, String str, Map<String, Object> map) {
        int i9 = AppsFlyerLib + 47;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        logEvent(context, str, map, null);
        int i11 = AppsFlyerLib + 13;
        onValidateInApp = i11 % 128;
        if (i11 % 2 == 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logLocation(Context context, double d10, double d11) {
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("logLocation", String.valueOf(d10), String.valueOf(d11));
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.LONGTITUDE, Double.toString(d11));
        hashMap.put(AFInAppEventParameterName.LATITUDE, Double.toString(d10));
        AFInAppEventType(context, AFInAppEventType.LOCATION_COORDINATES, hashMap);
        int i9 = AppsFlyerLib + 63;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? '\r' : (char) 4) == 4) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logSession(Context context) {
        int i9 = AppsFlyerLib + 85;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? '\b' : (char) 18) != 18) {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("logSession", new String[1]);
        } else {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("logSession", new String[0]);
        }
        AFb1pSDK.AFKeystoreWrapper().afDebugLog();
        AFInAppEventParameterName(context, AFd1bSDK.logSession);
        AFInAppEventType(context, (String) null, (Map<String, Object>) null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void onPause(Context context) {
        int i9 = onValidateInApp + 23;
        AppsFlyerLib = i9 % 128;
        if (i9 % 2 != 0) {
            AFb1zSDK.AFa1zSDK aFa1zSDK = AFb1zSDK.AFKeystoreWrapper;
            if (aFa1zSDK != null) {
                aFa1zSDK.values(context);
                int i10 = onValidateInApp + 109;
                AppsFlyerLib = i10 % 128;
                int i11 = i10 % 2;
                return;
            }
            return;
        }
        AFb1zSDK.AFa1zSDK aFa1zSDK2 = AFb1zSDK.AFKeystoreWrapper;
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void performOnAppAttribution(@NonNull Context context, @NonNull URI uri) {
        int i9 = onValidateInApp + 27;
        int i10 = i9 % 128;
        AppsFlyerLib = i10;
        int i11 = i9 % 2;
        if ((uri != null ? Typography.less : IOUtils.DIR_SEPARATOR_UNIX) != '/') {
            int i12 = i10 + 13;
            onValidateInApp = i12 % 128;
            int i13 = i12 % 2;
            if (!uri.toString().isEmpty()) {
                if (context == null) {
                    StringBuilder sb2 = new StringBuilder("Context is \"");
                    sb2.append(context);
                    sb2.append("\"");
                    AFb1kSDK.AFInAppEventType(sb2.toString(), DeepLinkResult.Error.NETWORK);
                    return;
                }
                AFa1uSDK.values();
                AFa1uSDK.AFInAppEventType(context, new HashMap(), Uri.parse(uri.toString()));
                return;
            }
        }
        StringBuilder sb3 = new StringBuilder("Link is \"");
        sb3.append(uri);
        sb3.append("\"");
        AFb1kSDK.AFInAppEventType(sb3.toString(), DeepLinkResult.Error.NETWORK);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void performOnDeepLinking(@NonNull final Intent intent, @NonNull Context context) {
        int i9 = AppsFlyerLib;
        int i10 = i9 + 87;
        onValidateInApp = i10 % 128;
        int i11 = i10 % 2;
        if (intent == null) {
            int i12 = i9 + 37;
            onValidateInApp = i12 % 128;
            int i13 = i12 % 2;
            AFb1kSDK.AFInAppEventType("performOnDeepLinking was called with null intent", DeepLinkResult.Error.DEVELOPER_ERROR);
            return;
        }
        if (!(context != null)) {
            int i14 = i9 + 61;
            onValidateInApp = i14 % 128;
            int i15 = i14 % 2;
            AFb1kSDK.AFInAppEventType("performOnDeepLinking was called with null context", DeepLinkResult.Error.DEVELOPER_ERROR);
            return;
        }
        final Context applicationContext = context.getApplicationContext();
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if ((applicationContext != null ? '9' : '@') == '9') {
            int i16 = AppsFlyerLib + 17;
            onValidateInApp = i16 % 128;
            int i17 = i16 % 2;
            AFb1dSDK aFb1dSDK = aFb1bSDK.values;
            if (applicationContext != null) {
                aFb1dSDK.values = applicationContext.getApplicationContext();
            }
        }
        this.AppsFlyerConversionListener.AFInAppEventType().execute(new Runnable() { // from class: com.appsflyer.internal.a
            @Override // java.lang.Runnable
            public final void run() {
                AFa1aSDK.this.values(applicationContext, intent);
            }
        });
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener) {
        int i9 = AppsFlyerLib + 95;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? 'G' : Typography.amp) != '&') {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("registerConversionListener", new String[0]);
        } else {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("registerConversionListener", new String[0]);
        }
        values(appsFlyerConversionListener);
        int i10 = onValidateInApp + 55;
        AppsFlyerLib = i10 % 128;
        if (!(i10 % 2 == 0)) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void registerValidatorListener(Context context, AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener) {
        int i9 = onValidateInApp + 29;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("registerValidatorListener", new String[0]);
        AFLogger.afDebugLog("registerValidatorListener called");
        if ((appsFlyerInAppPurchaseValidatorListener == null ? Typography.quote : '!') != '!') {
            AFLogger.afDebugLog("registerValidatorListener null listener");
            return;
        }
        AFInAppEventParameterName = appsFlyerInAppPurchaseValidatorListener;
        int i11 = AppsFlyerLib + 15;
        onValidateInApp = i11 % 128;
        int i12 = i11 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendAdRevenue(Context context, Map<String, Object> map) {
        AFb1cSDK valueOf2 = this.AppsFlyerConversionListener.valueOf();
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if ((context != null ? 'B' : (char) 20) == 'B') {
            int i9 = onValidateInApp + 101;
            AppsFlyerLib = i9 % 128;
            if (i9 % 2 != 0) {
                AFb1dSDK aFb1dSDK = aFb1bSDK.values;
                if (context != null) {
                    aFb1dSDK.values = context.getApplicationContext();
                    int i10 = AppsFlyerLib + 91;
                    onValidateInApp = i10 % 128;
                    int i11 = i10 % 2;
                }
            } else {
                AFb1dSDK aFb1dSDK2 = aFb1bSDK.values;
                throw null;
            }
        }
        AFd1aSDK aFd1aSDK = new AFd1aSDK();
        if (!(context == null)) {
            int i12 = onValidateInApp + 53;
            AppsFlyerLib = i12 % 128;
            if ((i12 % 2 == 0 ? 'R' : '?') != '?') {
                aFd1aSDK.AFInAppEventParameterName = (Application) context.getApplicationContext();
                int i13 = 35 / 0;
            } else {
                aFd1aSDK.AFInAppEventParameterName = (Application) context.getApplicationContext();
            }
        }
        String format = String.format(afRDLog, AppsFlyerLib.getInstance().getHostPrefix(), values().getHostName());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(format);
        sb2.append(valueOf2.AFKeystoreWrapper.values.getPackageName());
        String obj = sb2.toString();
        int AFInAppEventType2 = valueOf2.AFInAppEventType.AFInAppEventType("appsFlyerAdRevenueCount");
        Map<String, Object> values2 = values(aFd1aSDK);
        values2.put("ad_network", map);
        values2.put("adrevenue_counter", Integer.valueOf(AFInAppEventType2));
        new AFa1vSDK(this, aFd1aSDK.AFKeystoreWrapper(obj).AFKeystoreWrapper(values2).AFKeystoreWrapper(valueOf2.AFInAppEventType.AFInAppEventType("appsFlyerCount")), (byte) 0).run();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendInAppPurchaseData(Context context, Map<String, Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        int i9 = onValidateInApp + 23;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            int i11 = AppsFlyerLib + 85;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
            AFb1dSDK aFb1dSDK = aFb1bSDK.values;
            if (!(applicationContext == null)) {
                aFb1dSDK.values = applicationContext.getApplicationContext();
            }
        }
        PurchaseHandler AFLogger2 = AFInAppEventType().AFLogger();
        if (AFLogger2.AFKeystoreWrapper(map, purchaseValidationCallback, "purchases")) {
            AFc1bSDK aFc1bSDK = new AFc1bSDK(map, purchaseValidationCallback, AFLogger2.AFInAppEventParameterName);
            AFc1mSDK aFc1mSDK = AFLogger2.values;
            aFc1mSDK.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFc1bSDK));
        }
        int i13 = onValidateInApp + 23;
        AppsFlyerLib = i13 % 128;
        int i14 = i13 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void sendPurchaseData(Context context, Map<String, Object> map, PurchaseHandler.PurchaseValidationCallback purchaseValidationCallback) {
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            AFb1dSDK aFb1dSDK = aFb1bSDK.values;
            if ((applicationContext != null ? '\n' : (char) 31) == '\n') {
                int i9 = onValidateInApp + 57;
                AppsFlyerLib = i9 % 128;
                if (i9 % 2 == 0) {
                    aFb1dSDK.values = applicationContext.getApplicationContext();
                    int i10 = 60 / 0;
                } else {
                    aFb1dSDK.values = applicationContext.getApplicationContext();
                }
                int i11 = onValidateInApp + 41;
                AppsFlyerLib = i11 % 128;
                int i12 = i11 % 2;
            }
        }
        PurchaseHandler AFLogger2 = AFInAppEventType().AFLogger();
        if (AFLogger2.AFKeystoreWrapper(map, purchaseValidationCallback, "subscriptions")) {
            AFc1dSDK aFc1dSDK = new AFc1dSDK(map, purchaseValidationCallback, AFLogger2.AFInAppEventParameterName);
            AFc1mSDK aFc1mSDK = AFLogger2.values;
            aFc1mSDK.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFc1dSDK));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x013f A[RETURN] */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sendPushNotificationData(@androidx.annotation.NonNull android.app.Activity r18) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.sendPushNotificationData(android.app.Activity):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAdditionalData(Map<String, Object> map) {
        if (map != null) {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setAdditionalData", map.toString());
            AppsFlyerProperties.getInstance().setCustomData(new JSONObject(map).toString());
            int i9 = AppsFlyerLib + 7;
            onValidateInApp = i9 % 128;
            int i10 = i9 % 2;
        }
        int i11 = onValidateInApp + 99;
        AppsFlyerLib = i11 % 128;
        if (i11 % 2 != 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAndroidIdData(String str) {
        int i9 = AppsFlyerLib + 9;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setAndroidIdData", str);
        this.afErrorLog = str;
        int i11 = onValidateInApp + 27;
        AppsFlyerLib = i11 % 128;
        if ((i11 % 2 == 0 ? 'X' : '5') == '5') {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setAppId(String str) {
        int i9 = AppsFlyerLib + 31;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setAppId", str);
        values("appid", str);
        int i11 = AppsFlyerLib + 83;
        onValidateInApp = i11 % 128;
        int i12 = i11 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
        if (r7.equals(com.appsflyer.AppsFlyerProperties.getInstance().getString(com.appsflyer.AppsFlyerProperties.ONELINK_ID)) == false) goto L27;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setAppInviteOneLink(java.lang.String r7) {
        /*
            r6 = this;
            com.appsflyer.internal.AFb1pSDK r0 = com.appsflyer.internal.AFb1pSDK.AFKeystoreWrapper()
            r1 = 1
            java.lang.String[] r2 = new java.lang.String[r1]
            r3 = 0
            r2[r3] = r7
            java.lang.String r4 = "setAppInviteOneLink"
            r0.AFKeystoreWrapper(r4, r2)
            java.lang.String r0 = java.lang.String.valueOf(r7)
            java.lang.String r2 = "setAppInviteOneLink = "
            java.lang.String r0 = r2.concat(r0)
            com.appsflyer.AFLogger.afInfoLog(r0)
            r0 = 32
            if (r7 == 0) goto L23
            r2 = 32
            goto L25
        L23:
            r2 = 61
        L25:
            r4 = 0
            java.lang.String r5 = "oneLinkSlug"
            if (r2 == r0) goto L2b
            goto L45
        L2b:
            int r0 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r0 = r0 + 33
            int r2 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r2
            int r0 = r0 % 2
            if (r0 == 0) goto L81
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r0.getString(r5)
            boolean r0 = r7.equals(r0)
            if (r0 != 0) goto L6a
        L45:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r2 = "onelinkDomain"
            r0.remove(r2)
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r2 = "onelinkVersion"
            r0.remove(r2)
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r2 = "onelinkScheme"
            r0.remove(r2)
            int r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r0 = r0 + 85
            int r2 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r2
            int r0 = r0 % 2
        L6a:
            values(r5, r7)
            int r7 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r7 = r7 + 75
            int r0 = r7 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r0
            int r7 = r7 % 2
            if (r7 != 0) goto L7a
            goto L7b
        L7a:
            r3 = 1
        L7b:
            if (r3 != r1) goto L7e
            return
        L7e:
            throw r4     // Catch: java.lang.Throwable -> L7f
        L7f:
            r7 = move-exception
            throw r7
        L81:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r0.getString(r5)
            r7.equals(r0)
            throw r4     // Catch: java.lang.Throwable -> L8d
        L8d:
            r7 = move-exception
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.setAppInviteOneLink(java.lang.String):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectAndroidID(boolean z10) {
        int i9 = onValidateInApp + 35;
        AppsFlyerLib = i9 % 128;
        if ((i9 % 2 == 0 ? (char) 3 : IOUtils.DIR_SEPARATOR_WINDOWS) != 3) {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setCollectAndroidID", String.valueOf(z10));
        } else {
            AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
            String[] strArr = new String[1];
            strArr[1] = String.valueOf(z10);
            AFKeystoreWrapper2.AFKeystoreWrapper("setCollectAndroidID", strArr);
        }
        values(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(z10));
        values(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, Boolean.toString(z10));
        int i10 = onValidateInApp + 47;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCollectIMEI(boolean z10) {
        int i9 = onValidateInApp + 53;
        AppsFlyerLib = i9 % 128;
        if (i9 % 2 == 0) {
            AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
            String[] strArr = new String[0];
            strArr[1] = String.valueOf(z10);
            AFKeystoreWrapper2.AFKeystoreWrapper("setCollectIMEI", strArr);
        } else {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setCollectIMEI", String.valueOf(z10));
        }
        values(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(z10));
        values(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, Boolean.toString(z10));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setCollectOaid(boolean z10) {
        int i9 = onValidateInApp + 1;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setCollectOaid", String.valueOf(z10));
        values(AppsFlyerProperties.COLLECT_OAID, Boolean.toString(z10));
        int i11 = onValidateInApp + 115;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCurrencyCode(String str) {
        int i9 = onValidateInApp + 45;
        AppsFlyerLib = i9 % 128;
        if ((i9 % 2 == 0 ? 'W' : ' ') != 'W') {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setCurrencyCode", str);
        } else {
            AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
            String[] strArr = new String[0];
            strArr[1] = str;
            AFKeystoreWrapper2.AFKeystoreWrapper("setCurrencyCode", strArr);
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerIdAndLogSession(String str, @NonNull Context context) {
        if (context != null) {
            int i9 = AppsFlyerLib + 95;
            onValidateInApp = i9 % 128;
            if (i9 % 2 == 0) {
                if (valueOf()) {
                    setCustomerUserId(str);
                    StringBuilder sb2 = new StringBuilder("CustomerUserId set: ");
                    sb2.append(str);
                    sb2.append(" - Initializing AppsFlyer Tacking");
                    AFLogger.afInfoLog(sb2.toString(), true);
                    String referrer = AppsFlyerProperties.getInstance().getReferrer(context);
                    AFInAppEventParameterName(context, AFd1bSDK.setCustomerIdAndLogSession);
                    String str2 = this.AppsFlyerConversionListener.AFLogger$LogLevel().AFInAppEventType;
                    if (referrer != null) {
                        int i10 = onValidateInApp + 45;
                        AppsFlyerLib = i10 % 128;
                        int i11 = i10 % 2;
                    } else {
                        int i12 = AppsFlyerLib + 119;
                        onValidateInApp = i12 % 128;
                        int i13 = i12 % 2;
                        referrer = "";
                    }
                    String str3 = referrer;
                    if (context instanceof Activity) {
                        ((Activity) context).getIntent();
                        int i14 = AppsFlyerLib + 65;
                        onValidateInApp = i14 % 128;
                        int i15 = i14 % 2;
                    }
                    valueOf(context, null, null, str3, null);
                    return;
                }
                setCustomerUserId(str);
                AFLogger.afInfoLog("waitForCustomerUserId is false; setting CustomerUserID: ".concat(String.valueOf(str)), true);
                return;
            }
            valueOf();
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setCustomerUserId(String str) {
        int i9 = AppsFlyerLib + 87;
        onValidateInApp = i9 % 128;
        if (!(i9 % 2 == 0)) {
            AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
            String[] strArr = new String[0];
            strArr[0] = str;
            AFKeystoreWrapper2.AFKeystoreWrapper("setCustomerUserId", strArr);
            AFLogger.afInfoLog("setCustomerUserId = ".concat(String.valueOf(str)));
            values(AppsFlyerProperties.APP_USER_ID, str);
            AFKeystoreWrapper(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, true);
        } else {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setCustomerUserId", str);
            AFLogger.afInfoLog("setCustomerUserId = ".concat(String.valueOf(str)));
            values(AppsFlyerProperties.APP_USER_ID, str);
            AFKeystoreWrapper(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false);
        }
        int i10 = AppsFlyerLib + 103;
        onValidateInApp = i10 % 128;
        int i11 = i10 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDebugLog(boolean z10) {
        AFLogger.LogLevel logLevel;
        int i9 = onValidateInApp + 79;
        AppsFlyerLib = i9 % 128;
        if (i9 % 2 == 0) {
            throw null;
        }
        if (!(z10)) {
            logLevel = AFLogger.LogLevel.NONE;
            int i10 = AppsFlyerLib + 97;
            onValidateInApp = i10 % 128;
            int i11 = i10 % 2;
        } else {
            logLevel = AFLogger.LogLevel.DEBUG;
        }
        setLogLevel(logLevel);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDisableAdvertisingIdentifiers(boolean z10) {
        boolean z11;
        int i9 = AppsFlyerLib + 67;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFLogger.afDebugLog("setDisableAdvertisingIdentifiers: ".concat(String.valueOf(z10)));
        if ((!z10 ? '\f' : '!') != '!') {
            int i11 = AppsFlyerLib + 57;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
            z11 = true;
        } else {
            z11 = false;
        }
        AFb1xSDK.AFKeystoreWrapper = Boolean.valueOf(z11);
        AppsFlyerProperties.getInstance().remove("advertiserIdEnabled");
        AppsFlyerProperties.getInstance().remove("advertiserId");
        int i13 = onValidateInApp + 79;
        AppsFlyerLib = i13 % 128;
        if ((i13 % 2 == 0 ? '8' : ':') != '8') {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setDisableNetworkData(boolean z10) {
        int i9 = AppsFlyerLib + 17;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFLogger.afDebugLog("setDisableNetworkData: ".concat(String.valueOf(z10)));
        AFKeystoreWrapper(AppsFlyerProperties.DISABLE_NETWORK_DATA, z10);
        int i11 = onValidateInApp + 113;
        AppsFlyerLib = i11 % 128;
        if ((i11 % 2 == 0 ? 'D' : Typography.less) != '<') {
            int i12 = 85 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setExtension(String str) {
        int i9 = AppsFlyerLib + 49;
        onValidateInApp = i9 % 128;
        if (!(i9 % 2 == 0)) {
            AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
            String[] strArr = new String[0];
            strArr[1] = str;
            AFKeystoreWrapper2.AFKeystoreWrapper("setExtension", strArr);
        } else {
            AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setExtension", str);
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EXTENSION, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setHost(String str, String str2) {
        int i9 = onValidateInApp + 7;
        int i10 = i9 % 128;
        AppsFlyerLib = i10;
        if (!(i9 % 2 == 0)) {
            if (str != null) {
                int i11 = i10 + 105;
                onValidateInApp = i11 % 128;
                if (i11 % 2 != 0) {
                    values("custom_host_prefix", str);
                    int i12 = 3 / 0;
                } else {
                    values("custom_host_prefix", str);
                }
            }
            if (str2 != null) {
                if ((!str2.isEmpty() ? '\n' : '4') != '4') {
                    int i13 = AppsFlyerLib + 25;
                    onValidateInApp = i13 % 128;
                    if (i13 % 2 == 0) {
                        values("custom_host", str2);
                        return;
                    } else {
                        values("custom_host", str2);
                        throw null;
                    }
                }
            }
            AFLogger.afWarnLog("hostName cannot be null or empty");
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setImeiData(String str) {
        int i9 = AppsFlyerLib + 123;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setImeiData", str);
        this.AppsFlyerConversionListener.AFLogger$LogLevel().AFKeystoreWrapper = str;
        int i11 = onValidateInApp + 21;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setIsUpdate(boolean z10) {
        int i9 = AppsFlyerLib + 115;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setIsUpdate", String.valueOf(z10));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, z10);
        int i11 = onValidateInApp + 115;
        AppsFlyerLib = i11 % 128;
        if (i11 % 2 != 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setLogLevel(@NonNull AFLogger.LogLevel logLevel) {
        boolean z10;
        if (logLevel.getLevel() <= AFLogger.LogLevel.NONE.getLevel()) {
            z10 = false;
        } else {
            int i9 = onValidateInApp + 77;
            int i10 = i9 % 128;
            AppsFlyerLib = i10;
            int i11 = i9 % 2;
            int i12 = i10 + 121;
            onValidateInApp = i12 % 128;
            int i13 = i12 % 2;
            z10 = true;
        }
        this.AppsFlyerConversionListener.afWarnLog().AFKeystoreWrapper("log", String.valueOf(z10));
        AppsFlyerProperties.getInstance().set("logLevel", logLevel.getLevel());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setMinTimeBetweenSessions(int i9) {
        int i10 = onValidateInApp + 9;
        AppsFlyerLib = i10 % 128;
        if (i10 % 2 != 0) {
            this.onAppOpenAttributionNative = TimeUnit.SECONDS.toMillis(i9);
        } else {
            this.onAppOpenAttributionNative = TimeUnit.SECONDS.toMillis(i9);
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOaidData(String str) {
        int i9 = onValidateInApp + 105;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setOaidData", str);
        AFb1xSDK.valueOf = str;
        int i11 = onValidateInApp + 21;
        AppsFlyerLib = i11 % 128;
        if (i11 % 2 != 0) {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOneLinkCustomDomain(String... strArr) {
        int i9 = AppsFlyerLib + 53;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFLogger.afDebugLog(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
        AFa1uSDK.values = strArr;
        int i11 = onValidateInApp + 81;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setOutOfStore(String str) {
        int i9 = AppsFlyerLib;
        int i10 = i9 + 51;
        onValidateInApp = i10 % 128;
        int i11 = i10 % 2;
        if (str == null) {
            AFLogger.valueOf("Cannot set setOutOfStore with null");
            return;
        }
        int i12 = i9 + 1;
        onValidateInApp = i12 % 128;
        if (!(i12 % 2 != 0)) {
            String lowerCase = str.toLowerCase();
            AppsFlyerProperties.getInstance().set("api_store_value", lowerCase);
            AFLogger.afInfoLog("Store API set with value: ".concat(String.valueOf(lowerCase)), true);
        } else {
            String lowerCase2 = str.toLowerCase();
            AppsFlyerProperties.getInstance().set("api_store_value", lowerCase2);
            AFLogger.afInfoLog("Store API set with value: ".concat(String.valueOf(lowerCase2)), false);
        }
        int i13 = AppsFlyerLib + 83;
        onValidateInApp = i13 % 128;
        if (i13 % 2 == 0) {
            return;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        if ((r4.isEmpty() ? 23 : 'L') != 23) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
        if (r4.isEmpty() != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0043, code lost:
        if (r5 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
        if (r5.isEmpty() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004d, code lost:
        r1 = kotlin.text.Typography.quote;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
        r1 = '*';
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
        if (r1 == '\"') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
        r1 = new java.lang.StringBuilder("Setting partner data for ");
        r1.append(r4);
        r1.append(": ");
        r1.append(r5);
        com.appsflyer.AFLogger.afDebugLog(r1.toString());
        r1 = new org.json.JSONObject(r5).toString().length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
        if (r1 <= 1000) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007e, code lost:
        com.appsflyer.AFLogger.afWarnLog("Partner data 1000 characters limit exceeded");
        r5 = new java.util.HashMap();
        r5.put("error", "limit exceeded: ".concat(java.lang.String.valueOf(r1)));
        r0.AFInAppEventType.put(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009c, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009d, code lost:
        r0.AFInAppEventParameterName.put(r4, r5);
        r0.AFInAppEventType.remove(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a7, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ae, code lost:
        if (r0.AFInAppEventParameterName.remove(r4) != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b0, code lost:
        r4 = "Partner data is missing or `null`";
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b3, code lost:
        r4 = "Cleared partner data for ".concat(r4);
        r5 = com.appsflyer.internal.AFa1aSDK.onValidateInApp + 31;
        com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r5 % 128;
        r5 = r5 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c3, code lost:
        com.appsflyer.AFLogger.afWarnLog(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c6, code lost:
        return;
     */
    @Override // com.appsflyer.AppsFlyerLib
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setPartnerData(@androidx.annotation.NonNull java.lang.String r4, java.util.Map<java.lang.String, java.lang.Object> r5) {
        /*
            r3 = this;
            int r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r0 = r0 + 107
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r1
            int r0 = r0 % 2
            com.appsflyer.internal.AFb1gSDK r0 = r3.onAttributionFailure
            if (r0 != 0) goto L15
            com.appsflyer.internal.AFb1gSDK r0 = new com.appsflyer.internal.AFb1gSDK
            r0.<init>()
            r3.onAttributionFailure = r0
        L15:
            com.appsflyer.internal.AFb1gSDK r0 = r3.onAttributionFailure
            if (r4 == 0) goto Lc7
            int r1 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r1 = r1 + 25
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r2
            int r1 = r1 % 2
            if (r1 == 0) goto L3b
            boolean r1 = r4.isEmpty()
            r2 = 44
            int r2 = r2 / 0
            r2 = 23
            if (r1 == 0) goto L34
            r1 = 23
            goto L36
        L34:
            r1 = 76
        L36:
            if (r1 == r2) goto Lc7
            goto L43
        L39:
            r4 = move-exception
            throw r4
        L3b:
            boolean r1 = r4.isEmpty()
            if (r1 == 0) goto L43
            goto Lc7
        L43:
            if (r5 == 0) goto La8
            boolean r1 = r5.isEmpty()
            r2 = 34
            if (r1 == 0) goto L50
            r1 = 34
            goto L52
        L50:
            r1 = 42
        L52:
            if (r1 == r2) goto La8
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Setting partner data for "
            r1.<init>(r2)
            r1.append(r4)
            java.lang.String r2 = ": "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            com.appsflyer.AFLogger.afDebugLog(r1)
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>(r5)
            java.lang.String r1 = r1.toString()
            int r1 = r1.length()
            r2 = 1000(0x3e8, float:1.401E-42)
            if (r1 <= r2) goto L9d
            java.lang.String r5 = "Partner data 1000 characters limit exceeded"
            com.appsflyer.AFLogger.afWarnLog(r5)
            java.util.HashMap r5 = new java.util.HashMap
            r5.<init>()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r2 = "limit exceeded: "
            java.lang.String r1 = r2.concat(r1)
            java.lang.String r2 = "error"
            r5.put(r2, r1)
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.AFInAppEventType
            r0.put(r4, r5)
            return
        L9d:
            java.util.Map<java.lang.String, java.lang.Object> r1 = r0.AFInAppEventParameterName
            r1.put(r4, r5)
            java.util.Map<java.lang.String, java.lang.Object> r5 = r0.AFInAppEventType
            r5.remove(r4)
            return
        La8:
            java.util.Map<java.lang.String, java.lang.Object> r5 = r0.AFInAppEventParameterName
            java.lang.Object r5 = r5.remove(r4)
            if (r5 != 0) goto Lb3
            java.lang.String r4 = "Partner data is missing or `null`"
            goto Lc3
        Lb3:
            java.lang.String r5 = "Cleared partner data for "
            java.lang.String r4 = r5.concat(r4)
            int r5 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r5 = r5 + 31
            int r0 = r5 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r0
            int r5 = r5 % 2
        Lc3:
            com.appsflyer.AFLogger.afWarnLog(r4)
            return
        Lc7:
            java.lang.String r4 = "Partner ID is missing or `null`"
            com.appsflyer.AFLogger.afWarnLog(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.setPartnerData(java.lang.String, java.util.Map):void");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPhoneNumber(String str) {
        int i9 = AppsFlyerLib + 55;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        this.onDeepLinking = AFb1rSDK.valueOf(str);
        int i11 = AppsFlyerLib + 115;
        onValidateInApp = i11 % 128;
        int i12 = i11 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setPreinstallAttribution(String str, String str2, String str3) {
        AFLogger.afDebugLog("setPreinstallAttribution API called");
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            int i9 = AppsFlyerLib + 3;
            onValidateInApp = i9 % 128;
            int i10 = i9 % 2;
            try {
                jSONObject.put("pid", str);
            } catch (JSONException e10) {
                AFLogger.afErrorLog(e10.getMessage(), e10);
            }
        }
        if ((str2 != null ? '3' : '\n') != '\n') {
            int i11 = AppsFlyerLib + 45;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
            jSONObject.put(com.huawei.hms.opendevice.c.f27627a, str2);
        }
        if ((str3 != null ? 'N' : 'H') != 'H') {
            jSONObject.put("af_siteid", str3);
            int i13 = AppsFlyerLib + 67;
            onValidateInApp = i13 % 128;
            int i14 = i13 % 2;
        }
        if (jSONObject.has("pid")) {
            values("preInstallName", jSONObject.toString());
        } else {
            AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setResolveDeepLinkURLs(String... strArr) {
        String format;
        int i9 = onValidateInApp + 13;
        AppsFlyerLib = i9 % 128;
        if (!(i9 % 2 != 0)) {
            Object[] objArr = new Object[0];
            objArr[0] = Arrays.toString(strArr);
            format = String.format("setResolveDeepLinkURLs %s", objArr);
        } else {
            format = String.format("setResolveDeepLinkURLs %s", Arrays.toString(strArr));
        }
        AFLogger.afDebugLog(format);
        List<String> list = AFa1uSDK.valueOf;
        list.clear();
        list.addAll(Arrays.asList(strArr));
        int i10 = onValidateInApp + 75;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setSharingFilter(@NonNull String... strArr) {
        int i9 = onValidateInApp + 113;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        setSharingFilterForPartners(strArr);
        int i11 = onValidateInApp + 47;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public final void setSharingFilterForAllPartners() {
        int i9 = AppsFlyerLib + 31;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        setSharingFilterForPartners("all");
        int i11 = AppsFlyerLib + 89;
        onValidateInApp = i11 % 128;
        if ((i11 % 2 != 0 ? (char) 4 : ']') != ']') {
            int i12 = 22 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setSharingFilterForPartners(String... strArr) {
        this.afDebugLog = new AFa1cSDK(strArr);
        int i9 = onValidateInApp + 63;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmails(String... strArr) {
        int i9 = AppsFlyerLib + 9;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setUserEmails", strArr);
        setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
        int i11 = onValidateInApp + 75;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(@NonNull Context context) {
        int i9 = AppsFlyerLib + 23;
        onValidateInApp = i9 % 128;
        boolean z10 = i9 % 2 == 0;
        start(context, null);
        if (!z10) {
            throw null;
        }
        int i10 = AppsFlyerLib + 11;
        onValidateInApp = i10 % 128;
        if (!(i10 % 2 != 0)) {
            return;
        }
        int i11 = 27 / 0;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void stop(boolean z10, Context context) {
        AFb1dSDK aFb1dSDK;
        int i9 = onValidateInApp + 65;
        int i10 = i9 % 128;
        AppsFlyerLib = i10;
        int i11 = i9 % 2;
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if (context != null) {
            int i12 = i10 + 119;
            onValidateInApp = i12 % 128;
            if ((i12 % 2 != 0 ? 'S' : 'R') != 'S') {
                aFb1dSDK = aFb1bSDK.values;
            } else {
                aFb1dSDK = aFb1bSDK.values;
                int i13 = 33 / 0;
            }
            aFb1dSDK.values = context.getApplicationContext();
        }
        this.AppsFlyerConversionListener.AFLogger$LogLevel().AFInAppEventParameterName = z10;
        try {
            File file = new File(this.AppsFlyerConversionListener.init().valueOf.values.getFilesDir(), "AFRequestCache");
            if (!file.exists()) {
                file.mkdir();
            } else {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    int i14 = AppsFlyerLib + 89;
                    onValidateInApp = i14 % 128;
                    int i15 = i14 % 2;
                } else {
                    for (File file2 : listFiles) {
                        StringBuilder sb2 = new StringBuilder("CACHE: Found cached request");
                        sb2.append(file2.getName());
                        AFLogger.afInfoLog(sb2.toString());
                        StringBuilder sb3 = new StringBuilder("CACHE: Deleting ");
                        sb3.append(file2.getName());
                        sb3.append(" from cache");
                        AFLogger.afInfoLog(sb3.toString());
                        file2.delete();
                    }
                }
            }
        } catch (Exception e10) {
            AFLogger.afErrorLog("CACHE: Could not cache request", e10);
        }
        if ((z10 ? 'O' : (char) 11) != 'O') {
            return;
        }
        int i16 = onValidateInApp + 37;
        AppsFlyerLib = i16 % 128;
        int i17 = i16 % 2;
        valueOf(context).values("is_stop_tracking_used", true);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(@NonNull DeepLinkListener deepLinkListener) {
        int i9 = AppsFlyerLib + 123;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? ':' : Typography.greater) == '>') {
            subscribeForDeepLink(deepLinkListener, TimeUnit.SECONDS.toMillis(3L));
        } else {
            subscribeForDeepLink(deepLinkListener, TimeUnit.SECONDS.toMillis(3L));
            throw null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void unregisterConversionListener() {
        int i9 = AppsFlyerLib + 77;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("unregisterConversionListener", new String[0]);
        AFInAppEventType = null;
        int i11 = AppsFlyerLib + 45;
        onValidateInApp = i11 % 128;
        int i12 = i11 % 2;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void updateServerUninstallToken(Context context, String str) {
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if (context != null) {
            aFb1bSDK.values.values = context.getApplicationContext();
        }
        AFd1kSDK aFd1kSDK = new AFd1kSDK(context);
        if (str != null && !str.trim().isEmpty()) {
            AFLogger.afInfoLog("[register] Firebase Refreshed Token = ".concat(str));
            AFb1tSDK values2 = aFd1kSDK.values();
            if (values2 == null || !str.equals(values2.valueOf)) {
                long currentTimeMillis = System.currentTimeMillis();
                boolean z10 = values2 == null || currentTimeMillis - values2.AFInAppEventType > TimeUnit.SECONDS.toMillis(2L);
                AFb1tSDK aFb1tSDK = new AFb1tSDK(str, currentTimeMillis, !z10);
                aFd1kSDK.valueOf.valueOf("afUninstallToken", aFb1tSDK.valueOf);
                aFd1kSDK.valueOf.AFInAppEventParameterName("afUninstallToken_received_time", aFb1tSDK.AFInAppEventType);
                aFd1kSDK.valueOf.values("afUninstallToken_queued", aFb1tSDK.valueOf());
                if (z10) {
                    AFd1kSDK.AFInAppEventType(str);
                    return;
                }
                return;
            }
            return;
        }
        AFLogger.afWarnLog("[register] Firebase Token is either empty or null and was not registered.");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void validateAndLogInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
        String[] strArr = new String[6];
        strArr[0] = str;
        strArr[1] = str2;
        strArr[2] = str3;
        strArr[3] = str4;
        strArr[4] = str5;
        strArr[5] = map == null ? "" : map.toString();
        AFKeystoreWrapper2.AFKeystoreWrapper("validateAndTrackInAppPurchase", strArr);
        if (!isStopped()) {
            StringBuilder sb2 = new StringBuilder("Validate in app called with parameters: ");
            sb2.append(str3);
            sb2.append(" ");
            sb2.append(str4);
            sb2.append(" ");
            sb2.append(str5);
            AFLogger.afInfoLog(sb2.toString());
        }
        if (str != null && str4 != null && str2 != null && str5 != null && str3 != null) {
            Context applicationContext = context.getApplicationContext();
            String str6 = this.AppsFlyerConversionListener.AFLogger$LogLevel().AFInAppEventType;
            if (context instanceof Activity) {
                ((Activity) context).getIntent();
            }
            new Thread(new AFa1dSDK(applicationContext, str6, str, str2, str3, str4, str5, map)).start();
            return;
        }
        AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AFInAppEventParameterName;
        if (appsFlyerInAppPurchaseValidatorListener != null) {
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void waitForCustomerUserId(boolean z10) {
        int i9 = AppsFlyerLib + 93;
        onValidateInApp = i9 % 128;
        if (i9 % 2 != 0) {
        }
        AFLogger.afInfoLog("initAfterCustomerUserID: ".concat(String.valueOf(z10)), true);
        AFKeystoreWrapper(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, z10);
        int i10 = AppsFlyerLib + 49;
        onValidateInApp = i10 % 128;
        int i11 = i10 % 2;
    }

    static /* synthetic */ void AFInAppEventParameterName(ScheduledExecutorService scheduledExecutorService, Runnable runnable, TimeUnit timeUnit) {
        int i9 = AppsFlyerLib + 105;
        onValidateInApp = i9 % 128;
        AFInAppEventParameterName(scheduledExecutorService, runnable, i9 % 2 == 0 ? 0L : 1L, timeUnit);
    }

    static /* synthetic */ Map AFInAppEventType(AFa1aSDK aFa1aSDK) {
        int i9 = onValidateInApp;
        int i10 = i9 + 1;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
        Map<String, Object> map = aFa1aSDK.onResponse;
        int i12 = i9 + 41;
        AppsFlyerLib = i12 % 128;
        int i13 = i12 % 2;
        return map;
    }

    static /* synthetic */ boolean valueOf(AFa1aSDK aFa1aSDK, boolean z10) {
        int i9 = AppsFlyerLib + 115;
        int i10 = i9 % 128;
        onValidateInApp = i10;
        int i11 = i9 % 2;
        aFa1aSDK.onDeepLinkingNative = z10;
        int i12 = i10 + 15;
        AppsFlyerLib = i12 % 128;
        int i13 = i12 % 2;
        return z10;
    }

    public static AFa1aSDK values() {
        int i9 = onValidateInApp;
        int i10 = i9 + 93;
        AppsFlyerLib = i10 % 128;
        if ((i10 % 2 == 0 ? 'c' : '4') == 'c') {
            throw null;
        }
        AFa1aSDK aFa1aSDK = getLevel;
        int i11 = i9 + 19;
        AppsFlyerLib = i11 % 128;
        if ((i11 % 2 == 0 ? (char) 24 : '6') != 24) {
            return aFa1aSDK;
        }
        throw null;
    }

    public final void AFKeystoreWrapper(Context context, Intent intent) {
        if (!(intent.getStringExtra("appsflyer_preinstall") == null)) {
            int i9 = AppsFlyerLib + 49;
            onValidateInApp = i9 % 128;
            if (i9 % 2 != 0) {
                AFInAppEventType(intent.getStringExtra("appsflyer_preinstall"));
                int i10 = 54 / 0;
            } else {
                AFInAppEventType(intent.getStringExtra("appsflyer_preinstall"));
            }
        }
        AFLogger.afInfoLog("****** onReceive called *******");
        AppsFlyerProperties.getInstance();
        String stringExtra = intent.getStringExtra("referrer");
        AFLogger.afInfoLog("Play store referrer: ".concat(String.valueOf(stringExtra)));
        if ((stringExtra != null ? '?' : '*') != '?') {
            return;
        }
        valueOf(context).valueOf("referrer", stringExtra);
        AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
        appsFlyerProperties.set("AF_REFERRER", stringExtra);
        appsFlyerProperties.values = stringExtra;
        if (AppsFlyerProperties.getInstance().AFKeystoreWrapper()) {
            int i11 = AppsFlyerLib + 3;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
            AFLogger.afInfoLog("onReceive: isLaunchCalled");
            AFInAppEventParameterName(context, AFd1bSDK.onReceive);
            valueOf(context, stringExtra);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void logEvent(@NonNull Context context, String str, Map<String, Object> map, AppsFlyerRequestListener appsFlyerRequestListener) {
        HashMap hashMap = map == null ? null : new HashMap(map);
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if (context != null) {
            aFb1bSDK.values.values = context.getApplicationContext();
        }
        AFe1xSDK aFe1xSDK = new AFe1xSDK();
        if (context != null) {
            aFe1xSDK.AFInAppEventParameterName = (Application) context.getApplicationContext();
        }
        aFe1xSDK.afErrorLog = str;
        aFe1xSDK.valueOf = appsFlyerRequestListener;
        if (hashMap != null && hashMap.containsKey(AFInAppEventParameterName.TOUCH_OBJ)) {
            HashMap hashMap2 = new HashMap();
            Object obj = hashMap.get(AFInAppEventParameterName.TOUCH_OBJ);
            if (obj instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) obj;
                HashMap hashMap3 = new HashMap();
                hashMap3.put(x.f19108w, Float.valueOf(motionEvent.getX()));
                hashMap3.put("y", Float.valueOf(motionEvent.getY()));
                hashMap2.put("loc", hashMap3);
                hashMap2.put("pf", Float.valueOf(motionEvent.getPressure()));
                hashMap2.put("rad", Float.valueOf(motionEvent.getTouchMajor() / 2.0f));
            } else {
                hashMap2.put("error", "Parsing failed due to invalid input in 'af_touch_obj'.");
                AFLogger.valueOf("Parsing failed due to invalid input in 'af_touch_obj'.");
            }
            Map<String, ?> singletonMap = Collections.singletonMap("tch_data", hashMap2);
            hashMap.remove(AFInAppEventParameterName.TOUCH_OBJ);
            aFe1xSDK.AFKeystoreWrapper(singletonMap);
        }
        aFe1xSDK.AFKeystoreWrapper = hashMap;
        AFb1pSDK afWarnLog2 = AFInAppEventType().afWarnLog();
        String[] strArr = new String[2];
        strArr[0] = str;
        Map map2 = aFe1xSDK.AFKeystoreWrapper;
        if (map2 == null) {
            map2 = new HashMap();
        }
        strArr[1] = new JSONObject(map2).toString();
        afWarnLog2.AFKeystoreWrapper("logEvent", strArr);
        if (str == null) {
            AFInAppEventParameterName(context, AFd1bSDK.logEvent);
        }
        valueOf(aFe1xSDK, context instanceof Activity ? (Activity) context : null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(@NonNull Context context, String str) {
        int i9 = onValidateInApp + 115;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        start(context, str, null);
        int i11 = AppsFlyerLib + 23;
        onValidateInApp = i11 % 128;
        if ((i11 % 2 != 0 ? (char) 3 : 'A') == 'A') {
            return;
        }
        throw null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void subscribeForDeepLink(@NonNull DeepLinkListener deepLinkListener, long j10) {
        int i9 = AppsFlyerLib + 87;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFa1uSDK.values().AFInAppEventType = deepLinkListener;
        AFb1oSDK.afWarnLog = j10;
        int i11 = onValidateInApp + 3;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
    }

    static /* synthetic */ boolean AFInAppEventType(AFa1aSDK aFa1aSDK, AFa1tSDK aFa1tSDK, SharedPreferences sharedPreferences) {
        int i9 = onValidateInApp + 61;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        boolean AFInAppEventParameterName2 = aFa1aSDK.AFInAppEventParameterName(aFa1tSDK, sharedPreferences);
        int i11 = onValidateInApp + 61;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
        return AFInAppEventParameterName2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void values(Context context, Intent intent) {
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if (context != null) {
            aFb1bSDK.values.values = context.getApplicationContext();
        }
        AFa1uSDK.values();
        Context context2 = this.AppsFlyerConversionListener.values.values;
        if (context2 != null) {
            AFb1eSDK aFb1eSDK = new AFb1eSDK(AFKeystoreWrapper(context2));
            Uri AFInAppEventParameterName2 = AFa1uSDK.AFInAppEventParameterName(intent);
            boolean z10 = (AFInAppEventParameterName2 == null || AFInAppEventParameterName2.toString().isEmpty()) ? false : true;
            if (aFb1eSDK.AFKeystoreWrapper("ddl_sent") && !z10) {
                AFb1kSDK.AFInAppEventType("No direct deep link", null);
                return;
            } else {
                AFa1uSDK.values().values(new HashMap(), intent, context);
                return;
            }
        }
        throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
    }

    public final void AFInAppEventParameterName(@NonNull Context context) {
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if (!(context == null)) {
            AFb1dSDK aFb1dSDK = aFb1bSDK.values;
            if (!(context == null)) {
                aFb1dSDK.values = context.getApplicationContext();
                int i9 = AppsFlyerLib + 41;
                onValidateInApp = i9 % 128;
                int i10 = i9 % 2;
            }
        }
        int i11 = AppsFlyerLib + 97;
        onValidateInApp = i11 % 128;
        if (!(i11 % 2 == 0)) {
            int i12 = 98 / 0;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void start(@NonNull Context context, String str, final AppsFlyerRequestListener appsFlyerRequestListener) {
        if (AFb1zSDK.AFKeystoreWrapper != null) {
            return;
        }
        if (!this.onConversionDataSuccess) {
            AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! The API call 'start()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.");
            if (str == null) {
                if (appsFlyerRequestListener != null) {
                    appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, AFb1fSDK.AFInAppEventType);
                    int i9 = AppsFlyerLib + 15;
                    onValidateInApp = i9 % 128;
                    int i10 = i9 % 2;
                    return;
                }
                return;
            }
        }
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if (context != null) {
            int i11 = AppsFlyerLib + 41;
            onValidateInApp = i11 % 128;
            if ((i11 % 2 != 0 ? (char) 16 : Typography.quote) != 16) {
                aFb1bSDK.values.values = context.getApplicationContext();
            } else {
                AFb1dSDK aFb1dSDK = aFb1bSDK.values;
                throw null;
            }
        }
        final AFd1dSDK afDebugLog = AFInAppEventType().afDebugLog();
        afDebugLog.values(AFa1lSDK.AFKeystoreWrapper(context));
        this.onConversionDataFail = (Application) context.getApplicationContext();
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("start", str);
        String str2 = values;
        AFLogger.afInfoLog(String.format("Starting AppsFlyer: (v%s.%s)", "6.9.0", str2));
        StringBuilder sb2 = new StringBuilder("Build Number: ");
        sb2.append(str2);
        AFLogger.afInfoLog(sb2.toString());
        AppsFlyerProperties.getInstance().loadProperties(this.onConversionDataFail.getApplicationContext());
        if ((!TextUtils.isEmpty(str) ? 'B' : IOUtils.DIR_SEPARATOR_UNIX) != '/') {
            this.AppsFlyerConversionListener.AFLogger$LogLevel().AFInAppEventType = str;
            AFb1tSDK.valueOf(str);
        } else if (TextUtils.isEmpty(this.AppsFlyerConversionListener.AFLogger$LogLevel().AFInAppEventType)) {
            int i12 = AppsFlyerLib + 43;
            onValidateInApp = i12 % 128;
            if ((i12 % 2 != 0 ? (char) 29 : (char) 1) != 1) {
                AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the start() API (should be called on Activity's onCreate).");
                int i13 = 12 / 0;
                if (appsFlyerRequestListener == null) {
                    return;
                }
            } else {
                AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the start() API (should be called on Activity's onCreate).");
                if (appsFlyerRequestListener == null) {
                    return;
                }
            }
            int i14 = onValidateInApp + 49;
            AppsFlyerLib = i14 % 128;
            if (i14 % 2 == 0) {
                appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, AFb1fSDK.AFInAppEventType);
                int i15 = 0 / 0;
                return;
            }
            appsFlyerRequestListener.onError(RequestError.NO_DEV_KEY, AFb1fSDK.AFInAppEventType);
            return;
        }
        AFInAppEventType().afInfoLog().values(null);
        AFLogger();
        afDebugLog(this.onConversionDataFail.getBaseContext());
        if (this.onResponseError) {
            int i16 = onValidateInApp + 3;
            AppsFlyerLib = i16 % 128;
            boolean z10 = i16 % 2 != 0;
            afErrorLog(this.onConversionDataFail.getApplicationContext());
            if (!z10) {
                int i17 = 73 / 0;
            }
        }
        AFb1zSDK.valueOf(context, new AFb1zSDK.AFa1zSDK() { // from class: com.appsflyer.internal.AFa1aSDK.3
            @Override // com.appsflyer.internal.AFb1zSDK.AFa1zSDK
            public final void values(Activity activity) {
                afDebugLog.values();
                AFa1aSDK.this.AFInAppEventType().afInfoLog().values(null);
                AFa1aSDK.AFKeystoreWrapper(AFa1aSDK.this);
                int valueOf2 = AFa1aSDK.valueOf(AFa1aSDK.AFKeystoreWrapper(activity), false);
                AFLogger.afInfoLog("onBecameForeground");
                if (valueOf2 < 2) {
                    AFa1bSDK AFKeystoreWrapper2 = AFa1bSDK.AFKeystoreWrapper(activity);
                    AFKeystoreWrapper2.AFInAppEventType.post(AFKeystoreWrapper2.afDebugLog);
                    AFKeystoreWrapper2.AFInAppEventType.post(AFKeystoreWrapper2.AFKeystoreWrapper);
                }
                AFe1uSDK aFe1uSDK = new AFe1uSDK();
                AFa1uSDK.values().values(aFe1uSDK.AFKeystoreWrapper(), activity.getIntent(), activity.getApplication());
                AFa1aSDK aFa1aSDK = AFa1aSDK.this;
                aFe1uSDK.AFInAppEventParameterName = (Application) activity.getApplicationContext();
                aFe1uSDK.valueOf = appsFlyerRequestListener;
                aFa1aSDK.valueOf(aFe1uSDK, activity);
            }

            @Override // com.appsflyer.internal.AFb1zSDK.AFa1zSDK
            public final void values(Context context2) {
                AFLogger.afInfoLog("onBecameBackground");
                AFd1dSDK aFd1dSDK = afDebugLog;
                long currentTimeMillis = System.currentTimeMillis();
                long j10 = aFd1dSDK.afErrorLog;
                if (j10 != 0) {
                    long j11 = currentTimeMillis - j10;
                    if (j11 > 0 && j11 < 1000) {
                        j11 = 1000;
                    }
                    long seconds = TimeUnit.MILLISECONDS.toSeconds(j11);
                    aFd1dSDK.AFVersionDeclaration = seconds;
                    aFd1dSDK.valueOf.AFInAppEventParameterName("prev_session_dur", seconds);
                } else {
                    AFLogger.afInfoLog("Metrics: fg ts is missing");
                }
                AFLogger.afInfoLog("callStatsBackground background call");
                AFa1aSDK.this.AFInAppEventType(new WeakReference<>(context2));
                AFb1pSDK AFKeystoreWrapper2 = AFb1pSDK.AFKeystoreWrapper();
                if (AFKeystoreWrapper2.afErrorLog()) {
                    AFKeystoreWrapper2.valueOf();
                    if (context2 != null && !AppsFlyerLib.getInstance().isStopped()) {
                        AFKeystoreWrapper2.AFInAppEventType(context2.getPackageName(), context2.getPackageManager(), AFa1aSDK.values(AFa1aSDK.this));
                    }
                    AFKeystoreWrapper2.values();
                } else {
                    AFLogger.afDebugLog("RD status is OFF");
                }
                AFa1bSDK.AFKeystoreWrapper(context2).AFKeystoreWrapper();
            }
        }, this.AppsFlyerConversionListener.values());
    }

    public final boolean valueOf() {
        if ((AFInAppEventParameterName(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false) ? '@' : ',') == '@' && AFInAppEventParameterName() == null) {
            int i9 = AppsFlyerLib + 65;
            onValidateInApp = i9 % 128;
            int i10 = i9 % 2;
            return true;
        }
        int i11 = onValidateInApp + 107;
        AppsFlyerLib = i11 % 128;
        if ((i11 % 2 == 0 ? ')' : '\f') != ')') {
            return false;
        }
        throw null;
    }

    @NonNull
    private AFe1iSDK[] afInfoLog() {
        int i9 = AppsFlyerLib + 45;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? IOUtils.DIR_SEPARATOR_UNIX : (char) 24) != 24) {
            AFInAppEventType().getLevel().AFKeystoreWrapper();
            throw null;
        }
        AFe1iSDK[] AFKeystoreWrapper2 = AFInAppEventType().getLevel().AFKeystoreWrapper();
        int i10 = AppsFlyerLib + 91;
        onValidateInApp = i10 % 128;
        int i11 = i10 % 2;
        return AFKeystoreWrapper2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void valueOf(android.content.Context r7, java.lang.String r8, java.util.Map<java.lang.String, java.lang.Object> r9, java.lang.String r10, java.lang.String r11) {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            r2 = 1
            if (r8 == 0) goto L31
            int r3 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r3 = r3 + 47
            int r4 = r3 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r4
            int r3 = r3 % 2
            if (r3 == 0) goto L13
            r3 = 0
            goto L14
        L13:
            r3 = 1
        L14:
            if (r3 != r2) goto L27
            java.lang.String r3 = r8.trim()
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L21
            goto L31
        L21:
            com.appsflyer.internal.AFe1xSDK r3 = new com.appsflyer.internal.AFe1xSDK
            r3.<init>()
            goto L36
        L27:
            java.lang.String r7 = r8.trim()
            r7.isEmpty()
            throw r0     // Catch: java.lang.Throwable -> L2f
        L2f:
            r7 = move-exception
            throw r7
        L31:
            com.appsflyer.internal.AFe1uSDK r3 = new com.appsflyer.internal.AFe1uSDK
            r3.<init>()
        L36:
            if (r7 == 0) goto L5c
            int r4 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r4 = r4 + 57
            int r5 = r4 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r5
            int r4 = r4 % 2
            if (r4 != 0) goto L45
            goto L46
        L45:
            r1 = 1
        L46:
            if (r1 == 0) goto L51
            android.content.Context r7 = r7.getApplicationContext()
            android.app.Application r7 = (android.app.Application) r7
            r3.AFInAppEventParameterName = r7
            goto L5c
        L51:
            android.content.Context r7 = r7.getApplicationContext()
            android.app.Application r7 = (android.app.Application) r7
            r3.AFInAppEventParameterName = r7
            throw r0     // Catch: java.lang.Throwable -> L5a
        L5a:
            r7 = move-exception
            throw r7
        L5c:
            r3.afErrorLog = r8
            r3.AFKeystoreWrapper = r9
            r3.afRDLog = r10
            r3.AFInAppEventType = r11
            r6.AFInAppEventParameterName(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.valueOf(android.content.Context, java.lang.String, java.util.Map, java.lang.String, java.lang.String):void");
    }

    public final AFc1ySDK AFInAppEventType() {
        int i9 = onValidateInApp;
        int i10 = i9 + 59;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        int i12 = i9 + 61;
        AppsFlyerLib = i12 % 128;
        int i13 = i12 % 2;
        return aFb1bSDK;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public final void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length + 1);
        arrayList.add(emailsCryptType.toString());
        arrayList.addAll(Arrays.asList(strArr));
        AFb1pSDK.AFKeystoreWrapper().AFKeystoreWrapper("setUserEmails", (String[]) arrayList.toArray(new String[strArr.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, emailsCryptType.getValue());
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        int length = strArr.length;
        String str = null;
        int i9 = 0;
        while (true) {
            if ((i9 < length ? 'Y' : '5') != '5') {
                int i10 = onValidateInApp + 71;
                AppsFlyerLib = i10 % 128;
                if ((i10 % 2 == 0 ? Typography.amp : 'T') != '&') {
                    String str2 = strArr[i9];
                    if (AnonymousClass7.AFInAppEventType[emailsCryptType.ordinal()] != 2) {
                        arrayList2.add(AFb1rSDK.valueOf(str2));
                        str = "sha256_el_arr";
                    } else {
                        arrayList2.add(str2);
                        str = "plain_el_arr";
                    }
                    i9++;
                    int i11 = AppsFlyerLib + 97;
                    onValidateInApp = i11 % 128;
                    int i12 = i11 % 2;
                } else {
                    String str3 = strArr[i9];
                    int i13 = AnonymousClass7.AFInAppEventType[emailsCryptType.ordinal()];
                    throw null;
                }
            } else {
                hashMap.put(str, arrayList2);
                AppsFlyerProperties.getInstance().setUserEmails(new JSONObject(hashMap).toString());
                int i14 = AppsFlyerLib + 103;
                onValidateInApp = i14 % 128;
                if (!(i14 % 2 != 0)) {
                    return;
                }
                int i15 = 16 / 0;
                return;
            }
        }
    }

    final void AFInAppEventType(WeakReference<Context> weakReference) {
        int i9 = AppsFlyerLib + 31;
        onValidateInApp = i9 % 128;
        if (i9 % 2 != 0) {
            weakReference.get();
            throw null;
        } else if (weakReference.get() == null) {
        } else {
            AFLogger.afInfoLog("app went to background");
            SharedPreferences AFKeystoreWrapper2 = AFKeystoreWrapper(weakReference.get());
            AppsFlyerProperties.getInstance().saveProperties(AFKeystoreWrapper2);
            long j10 = AFInAppEventType().afDebugLog().AFVersionDeclaration;
            HashMap hashMap = new HashMap();
            String str = this.AppsFlyerConversionListener.AFLogger$LogLevel().AFInAppEventType;
            if (str == null) {
                AFLogger.afWarnLog("[callStats] AppsFlyer's SDK cannot send any event without providing DevKey.");
                return;
            }
            String AFKeystoreWrapper3 = AFKeystoreWrapper("KSAppsFlyerId");
            if ((AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false) ? '1' : ',') != ',') {
                hashMap.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
                int i10 = onValidateInApp + 85;
                AppsFlyerLib = i10 % 128;
                int i11 = i10 % 2;
            }
            AFa1qSDK AFKeystoreWrapper4 = AFb1xSDK.AFKeystoreWrapper(weakReference.get().getContentResolver());
            if (!(AFKeystoreWrapper4 == null)) {
                int i12 = onValidateInApp + 11;
                AppsFlyerLib = i12 % 128;
                int i13 = i12 % 2;
                hashMap.put("amazon_aid", AFKeystoreWrapper4.valueOf);
                hashMap.put("amazon_aid_limit", String.valueOf(AFKeystoreWrapper4.values));
            }
            String string = AppsFlyerProperties.getInstance().getString("advertiserId");
            if (string != null) {
                int i14 = onValidateInApp + 21;
                AppsFlyerLib = i14 % 128;
                if (i14 % 2 == 0) {
                    hashMap.put("advertiserId", string);
                    int i15 = 98 / 0;
                } else {
                    hashMap.put("advertiserId", string);
                }
                int i16 = AppsFlyerLib + 45;
                onValidateInApp = i16 % 128;
                int i17 = i16 % 2;
            }
            hashMap.put("app_id", weakReference.get().getPackageName());
            hashMap.put("devkey", str);
            hashMap.put("uid", AFb1uSDK.AFInAppEventParameterName(weakReference));
            hashMap.put("time_in_app", String.valueOf(j10));
            hashMap.put("statType", "user_closed_app");
            hashMap.put("platform", "Android");
            hashMap.put("launch_counter", Integer.toString(valueOf(AFKeystoreWrapper2, false)));
            hashMap.put("channel", AFInAppEventType(weakReference.get()));
            if (AFKeystoreWrapper3 != null) {
                int i18 = AppsFlyerLib + 115;
                onValidateInApp = i18 % 128;
                if (i18 % 2 != 0) {
                    int i19 = 81 / 0;
                }
            } else {
                AFKeystoreWrapper3 = "";
            }
            hashMap.put("originalAppsflyerId", AFKeystoreWrapper3);
            if (this.onDeepLinkingNative) {
                AFe1qSDK aFe1qSDK = new AFe1qSDK();
                aFe1qSDK.getLevel = isStopped();
                AFd1tSDK aFd1tSDK = new AFd1tSDK((AFe1qSDK) aFe1qSDK.AFKeystoreWrapper(hashMap).AFKeystoreWrapper(String.format(AFLogger, AppsFlyerLib.getInstance().getHostPrefix(), values().getHostName())), this.AppsFlyerConversionListener);
                AFc1mSDK afErrorLog = this.AppsFlyerConversionListener.afErrorLog();
                afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(aFd1tSDK));
                return;
            }
            AFLogger.afDebugLog("Stats call is disabled, ignore ...");
            int i20 = AppsFlyerLib + 83;
            onValidateInApp = i20 % 128;
            if (!(i20 % 2 != 0)) {
                return;
            }
            int i21 = 53 / 0;
        }
    }

    private static boolean AFInAppEventParameterName(String str, boolean z10) {
        int i9 = AppsFlyerLib + 35;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? '8' : (char) 0) == 0) {
            return AppsFlyerProperties.getInstance().getBoolean(str, z10);
        }
        AppsFlyerProperties.getInstance().getBoolean(str, z10);
        throw null;
    }

    public static String AFInAppEventParameterName() {
        int i9 = onValidateInApp + 61;
        AppsFlyerLib = i9 % 128;
        if ((i9 % 2 == 0 ? (char) 23 : ' ') == 23) {
            AFKeystoreWrapper(AppsFlyerProperties.APP_USER_ID);
            throw null;
        }
        String AFKeystoreWrapper2 = AFKeystoreWrapper(AppsFlyerProperties.APP_USER_ID);
        int i10 = AppsFlyerLib + 79;
        onValidateInApp = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 73 / 0;
            return AFKeystoreWrapper2;
        }
        return AFKeystoreWrapper2;
    }

    private void AFInAppEventParameterName(Context context, AFd1bSDK aFd1bSDK) {
        int i9 = onValidateInApp + 5;
        int i10 = i9 % 128;
        AppsFlyerLib = i10;
        if (!(i9 % 2 == 0)) {
            AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
            if ((context != null ? ']' : (char) 24) == ']') {
                AFb1dSDK aFb1dSDK = aFb1bSDK.values;
                if (context != null) {
                    int i11 = i10 + 39;
                    onValidateInApp = i11 % 128;
                    int i12 = i11 % 2;
                    aFb1dSDK.values = context.getApplicationContext();
                }
            }
            AFd1dSDK afDebugLog = AFInAppEventType().afDebugLog();
            AFd1iSDK AFKeystoreWrapper2 = AFa1lSDK.AFKeystoreWrapper(context);
            if (afDebugLog.valueOf()) {
                afDebugLog.AFKeystoreWrapper.put("api_name", aFd1bSDK.toString());
                afDebugLog.values(AFKeystoreWrapper2);
                int i13 = onValidateInApp + 45;
                AppsFlyerLib = i13 % 128;
                int i14 = i13 % 2;
            }
            afDebugLog.values();
            return;
        }
        throw null;
    }

    private void AFLogger() {
        int i9 = onValidateInApp + 31;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        if (AFd1zSDK.afErrorLog()) {
            return;
        }
        AFc1ySDK AFInAppEventType2 = AFInAppEventType();
        AFc1mSDK afErrorLog = AFInAppEventType2.afErrorLog();
        afErrorLog.valueOf.execute(new AFc1mSDK.AnonymousClass5(new AFd1zSDK(AFInAppEventType2)));
        int i11 = AppsFlyerLib + 75;
        onValidateInApp = i11 % 128;
        if (i11 % 2 != 0) {
            throw null;
        }
    }

    private static String afDebugLog() {
        int i9 = onValidateInApp + 125;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        String AFKeystoreWrapper2 = AFKeystoreWrapper("appid");
        int i11 = onValidateInApp + 35;
        AppsFlyerLib = i11 % 128;
        if (!(i11 % 2 == 0)) {
            return AFKeystoreWrapper2;
        }
        int i12 = 74 / 0;
        return AFKeystoreWrapper2;
    }

    private static File afDebugLog(String str) {
        int i9 = AppsFlyerLib;
        int i10 = i9 + 113;
        onValidateInApp = i10 % 128;
        try {
        } catch (Throwable th2) {
            AFLogger.afErrorLog(th2.getMessage(), th2);
        }
        if ((i10 % 2 != 0 ? '#' : ']') == ']') {
            if ((str != null ? Typography.greater : 'a') != 'a') {
                int i11 = i9 + 63;
                onValidateInApp = i11 % 128;
                int i12 = i11 % 2;
                if (str.trim().length() > 0) {
                    return new File(str.trim());
                }
            }
            int i13 = onValidateInApp + 21;
            AppsFlyerLib = i13 % 128;
            int i14 = i13 % 2;
            return null;
        }
        throw null;
    }

    private void valueOf(Context context, String str) {
        AFe1ySDK aFe1ySDK = new AFe1ySDK();
        if ((context != null ? '0' : '\n') != '\n') {
            int i9 = AppsFlyerLib + 51;
            onValidateInApp = i9 % 128;
            int i10 = i9 % 2;
            aFe1ySDK.AFInAppEventParameterName = (Application) context.getApplicationContext();
        }
        aFe1ySDK.afRDLog = str;
        if ((str != null ? 'F' : 'A') == 'F' && str.length() > 5 && AFInAppEventParameterName(aFe1ySDK, AFKeystoreWrapper(context))) {
            AFInAppEventParameterName(this.AppsFlyerConversionListener.AFInAppEventParameterName(), new AFa1ySDK(this, aFe1ySDK, (byte) 0), 5L, TimeUnit.MILLISECONDS);
        }
        int i11 = AppsFlyerLib + 93;
        onValidateInApp = i11 % 128;
        int i12 = i11 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f6, code lost:
        throw null;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ee A[LOOP:4: B:21:0x0066->B:49:0x00ee, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void values(org.json.JSONObject r15) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.values(org.json.JSONObject):void");
    }

    public final void AFKeystoreWrapper(Context context, String str) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONObject jSONObject;
        AFLogger.afDebugLog("received a new (extra) referrer: ".concat(String.valueOf(str)));
        try {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                String string = AFKeystoreWrapper(context).getString("extraReferrers", null);
                if (string == null) {
                    jSONObject = new JSONObject();
                    jSONArray2 = new JSONArray();
                } else {
                    JSONObject jSONObject2 = new JSONObject(string);
                    if (jSONObject2.has(str)) {
                        jSONArray = new JSONArray((String) jSONObject2.get(str));
                    } else {
                        jSONArray = new JSONArray();
                    }
                    jSONArray2 = jSONArray;
                    jSONObject = jSONObject2;
                }
                if ((((long) jSONArray2.length()) < 5 ? '\t' : Typography.less) == '\t') {
                    int i9 = AppsFlyerLib + 3;
                    onValidateInApp = i9 % 128;
                    if (i9 % 2 == 0) {
                        jSONArray2.put(currentTimeMillis);
                    } else {
                        jSONArray2.put(currentTimeMillis);
                        throw null;
                    }
                }
                if (!(((long) jSONObject.length()) < 4)) {
                    int i10 = AppsFlyerLib + 45;
                    onValidateInApp = i10 % 128;
                    int i11 = i10 % 2;
                    values(jSONObject);
                    int i12 = onValidateInApp + 59;
                    AppsFlyerLib = i12 % 128;
                    int i13 = i12 % 2;
                }
                jSONObject.put(str, jSONArray2.toString());
                valueOf(context).valueOf("extraReferrers", jSONObject.toString());
                int i14 = AppsFlyerLib + 101;
                onValidateInApp = i14 % 128;
                int i15 = i14 % 2;
            } catch (Throwable th2) {
                StringBuilder sb2 = new StringBuilder("Couldn't save referrer - ");
                sb2.append(str);
                sb2.append(": ");
                AFLogger.afErrorLog(sb2.toString(), th2);
            }
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
        if (r4.onResponse != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0021, code lost:
        if (r4.onResponse != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0023, code lost:
        r0 = r0 + 97;
        com.appsflyer.internal.AFa1aSDK.onValidateInApp = r0 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
        if ((r0 % 2) == 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
        r0 = 'R';
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
        r0 = 'W';
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
        if (r0 == 'W') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003e, code lost:
        r1 = 13 / 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003f, code lost:
        if (r4.onResponse.isEmpty() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004c, code lost:
        if (r4.onResponse.isEmpty() != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004e, code lost:
        r0 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0050, code lost:
        r0 = '[';
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0052, code lost:
        if (r0 == '[') goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0054, code lost:
        r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib + 13;
        r1 = r0 % 128;
        com.appsflyer.internal.AFa1aSDK.onValidateInApp = r1;
        r0 = r0 % 2;
        r1 = r1 + 13;
        com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r1 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0069, code lost:
        if ((r1 % 2) != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
        r1 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006d, code lost:
        r1 = '\b';
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006f, code lost:
        if (r1 != '\b') goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0071, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0073, code lost:
        throw null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean afErrorLog() {
        /*
            r4 = this;
            int r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r1 = r0 + 83
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r2
            int r1 = r1 % 2
            r2 = 34
            if (r1 == 0) goto L11
            r1 = 37
            goto L13
        L11:
            r1 = 34
        L13:
            r3 = 0
            if (r1 == r2) goto L1f
            java.util.Map<java.lang.String, java.lang.Object> r1 = r4.onResponse
            r2 = 5
            int r2 = r2 / r3
            if (r1 == 0) goto L76
            goto L23
        L1d:
            r0 = move-exception
            throw r0
        L1f:
            java.util.Map<java.lang.String, java.lang.Object> r1 = r4.onResponse
            if (r1 == 0) goto L76
        L23:
            int r0 = r0 + 97
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r1
            int r0 = r0 % 2
            r1 = 87
            if (r0 == 0) goto L32
            r0 = 82
            goto L34
        L32:
            r0 = 87
        L34:
            if (r0 == r1) goto L44
            java.util.Map<java.lang.String, java.lang.Object> r0 = r4.onResponse
            boolean r0 = r0.isEmpty()
            r1 = 13
            int r1 = r1 / r3
            if (r0 != 0) goto L76
            goto L54
        L42:
            r0 = move-exception
            throw r0
        L44:
            java.util.Map<java.lang.String, java.lang.Object> r0 = r4.onResponse
            boolean r0 = r0.isEmpty()
            r1 = 91
            if (r0 != 0) goto L50
            r0 = 4
            goto L52
        L50:
            r0 = 91
        L52:
            if (r0 == r1) goto L76
        L54:
            int r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r0 = r0 + 13
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r1
            int r0 = r0 % 2
            r0 = 1
            int r1 = r1 + 13
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r2
            int r1 = r1 % 2
            r2 = 8
            if (r1 != 0) goto L6d
            r1 = 6
            goto L6f
        L6d:
            r1 = 8
        L6f:
            if (r1 != r2) goto L72
            return r0
        L72:
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L74
        L74:
            r0 = move-exception
            throw r0
        L76:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.afErrorLog():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0069 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean AFInAppEventParameterName(com.appsflyer.internal.AFa1tSDK r5, android.content.SharedPreferences r6) {
        /*
            r4 = this;
            int r0 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r0 = r0 + 37
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r1
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L15
            int r0 = valueOf(r6, r2)
            if (r0 != r2) goto L2b
            goto L1b
        L15:
            int r0 = valueOf(r6, r1)
            if (r0 != r2) goto L2b
        L1b:
            boolean r5 = r5 instanceof com.appsflyer.internal.AFd1cSDK
            r3 = 97
            if (r5 != 0) goto L24
            r5 = 97
            goto L26
        L24:
            r5 = 94
        L26:
            if (r5 == r3) goto L29
            goto L2b
        L29:
            r5 = 1
            goto L36
        L2b:
            int r5 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r5 = r5 + 107
            int r3 = r5 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r3
            int r5 = r5 % 2
            r5 = 0
        L36:
            java.lang.String r3 = "newGPReferrerSent"
            boolean r6 = r6.getBoolean(r3, r1)
            if (r6 != 0) goto L5c
            int r6 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r6 = r6 + 77
            int r3 = r6 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r3
            int r6 = r6 % 2
            if (r0 != r2) goto L5c
            int r3 = r3 + 27
            int r6 = r3 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r6
            int r3 = r3 % 2
            if (r3 == 0) goto L56
            r6 = 0
            goto L57
        L56:
            r6 = 1
        L57:
            if (r6 == r2) goto L5a
            goto L5c
        L5a:
            r6 = 1
            goto L5d
        L5c:
            r6 = 0
        L5d:
            r0 = 98
            if (r6 != 0) goto L64
            r6 = 98
            goto L66
        L64:
            r6 = 52
        L66:
            if (r6 == r0) goto L69
            goto L6b
        L69:
            if (r5 == 0) goto L6c
        L6b:
            return r2
        L6c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.AFInAppEventParameterName(com.appsflyer.internal.AFa1tSDK, android.content.SharedPreferences):boolean");
    }

    private boolean afRDLog() {
        if (this.onInstallConversionFailureNative > 0) {
            long currentTimeMillis = System.currentTimeMillis() - this.onInstallConversionFailureNative;
            Locale locale = Locale.US;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", locale);
            String AFInAppEventType2 = AFInAppEventType(simpleDateFormat, this.onInstallConversionFailureNative);
            String AFInAppEventType3 = AFInAppEventType(simpleDateFormat, this.onAttributionFailureNative);
            if ((currentTimeMillis < this.onAppOpenAttributionNative) && !isStopped()) {
                AFLogger.afInfoLog(String.format(locale, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", AFInAppEventType2, AFInAppEventType3, Long.valueOf(currentTimeMillis), Long.valueOf(this.onAppOpenAttributionNative)));
                return true;
            }
            if ((!isStopped() ? 'a' : 'X') == 'a') {
                AFLogger.afInfoLog(String.format(locale, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", AFInAppEventType2, AFInAppEventType3, Long.valueOf(currentTimeMillis)));
            }
        } else if (!isStopped()) {
            int i9 = onValidateInApp + 59;
            AppsFlyerLib = i9 % 128;
            int i10 = i9 % 2;
            AFLogger.afInfoLog("Sending first launch for this session!");
            int i11 = AppsFlyerLib + 57;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
        }
        return false;
    }

    public static Map<String, Object> AFInAppEventParameterName(Map<String, Object> map) {
        if ((map.containsKey("meta") ? ',' : '4') != '4') {
            int i9 = AppsFlyerLib + 75;
            onValidateInApp = i9 % 128;
            int i10 = i9 % 2;
            Map<String, Object> map2 = (Map) map.get("meta");
            int i11 = onValidateInApp + 57;
            AppsFlyerLib = i11 % 128;
            int i12 = i11 % 2;
            return map2;
        }
        HashMap hashMap = new HashMap();
        map.put("meta", hashMap);
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void valueOf(com.appsflyer.internal.AFa1tSDK r12) {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.valueOf(com.appsflyer.internal.AFa1tSDK):void");
    }

    public static void AFInAppEventParameterName(Context context, Map<String, ? super String> map) {
        boolean AFInAppEventParameterName2 = AFInAppEventParameterName(AppsFlyerProperties.DISABLE_NETWORK_DATA, false);
        AFa1iSDK aFa1iSDK = AFa1iSDK.AFa1xSDK.valueOf;
        AFa1iSDK.AFa1vSDK AFKeystoreWrapper2 = AFa1iSDK.AFKeystoreWrapper(context);
        map.put("network", AFKeystoreWrapper2.values);
        if (!AFInAppEventParameterName2) {
            String str = AFKeystoreWrapper2.AFKeystoreWrapper;
            if ((str != null ? '!' : '\'') != '\'') {
                int i9 = AppsFlyerLib + 59;
                onValidateInApp = i9 % 128;
                int i10 = i9 % 2;
                map.put("operator", str);
            }
        }
        if (AFInAppEventParameterName2) {
            return;
        }
        String str2 = AFKeystoreWrapper2.AFInAppEventType;
        if ((str2 != null ? 'c' : (char) 27) != 27) {
            int i11 = onValidateInApp + 11;
            AppsFlyerLib = i11 % 128;
            int i12 = i11 % 2;
            map.put("carrier", str2);
            if (i12 != 0) {
                return;
            }
            throw null;
        }
    }

    private static void values(String str, String str2) {
        int i9 = AppsFlyerLib + 65;
        onValidateInApp = i9 % 128;
        if ((i9 % 2 != 0 ? (char) 14 : 'b') != 'b') {
            AppsFlyerProperties.getInstance().set(str, str2);
            throw null;
        }
        AppsFlyerProperties.getInstance().set(str, str2);
        int i10 = AppsFlyerLib + 77;
        onValidateInApp = i10 % 128;
        if ((i10 % 2 != 0 ? 'E' : '[') != 'E') {
            return;
        }
        int i11 = 69 / 0;
    }

    private static void values(AppsFlyerConversionListener appsFlyerConversionListener) {
        int i9 = onValidateInApp + 67;
        int i10 = i9 % 128;
        AppsFlyerLib = i10;
        int i11 = i9 % 2;
        if (appsFlyerConversionListener != null) {
            AFInAppEventType = appsFlyerConversionListener;
            return;
        }
        int i12 = i10 + 87;
        onValidateInApp = i12 % 128;
        if ((i12 % 2 != 0 ? 'A' : Typography.quote) != '\"') {
            int i13 = 79 / 0;
        }
    }

    private static void values(Context context, Map<String, Object> map) {
        int i9 = AppsFlyerLib + 125;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        AFa1zSDK.AFa1vSDK AFInAppEventParameterName2 = AFa1zSDK.AFa1xSDK.AFKeystoreWrapper.AFInAppEventParameterName(context);
        map.put("btl", Float.toString(AFInAppEventParameterName2.AFInAppEventType));
        String str = AFInAppEventParameterName2.AFInAppEventParameterName;
        if ((str != null ? 'U' : (char) 21) != 21) {
            int i11 = AppsFlyerLib + 53;
            onValidateInApp = i11 % 128;
            boolean z10 = i11 % 2 == 0;
            map.put("btch", str);
            if (!z10) {
                int i12 = 38 / 0;
            }
        }
    }

    private static String AFInAppEventParameterName(@Nullable String str) {
        int i9 = AppsFlyerLib + 27;
        int i10 = i9 % 128;
        onValidateInApp = i10;
        int i11 = i9 % 2;
        if (str == null) {
            int i12 = i10 + 57;
            AppsFlyerLib = i12 % 128;
            if (i12 % 2 != 0) {
                return null;
            }
            throw null;
        } else if (str.matches("fb\\d*?://authorize.*") && str.contains("access_token")) {
            int i13 = onValidateInApp + 25;
            AppsFlyerLib = i13 % 128;
            if ((i13 % 2 == 0 ? '\b' : (char) 3) == 3) {
                String valueOf2 = valueOf(str);
                if ((valueOf2.length() == 0 ? '\n' : ')') != ')') {
                    return str;
                }
                ArrayList arrayList = new ArrayList();
                if (valueOf2.contains(ContainerUtils.FIELD_DELIMITER)) {
                    arrayList = new ArrayList(Arrays.asList(valueOf2.split(ContainerUtils.FIELD_DELIMITER)));
                } else {
                    arrayList.add(valueOf2);
                }
                StringBuilder sb2 = new StringBuilder();
                Iterator it = arrayList.iterator();
                int i14 = AppsFlyerLib + 41;
                onValidateInApp = i14 % 128;
                int i15 = i14 % 2;
                while (it.hasNext()) {
                    int i16 = onValidateInApp + 23;
                    AppsFlyerLib = i16 % 128;
                    int i17 = i16 % 2;
                    String str2 = (String) it.next();
                    if (str2.contains("access_token")) {
                        int i18 = onValidateInApp + 85;
                        AppsFlyerLib = i18 % 128;
                        int i19 = i18 % 2;
                        it.remove();
                        int i20 = onValidateInApp + 87;
                        AppsFlyerLib = i20 % 128;
                        int i21 = i20 % 2;
                    } else {
                        if (sb2.length() != 0) {
                            sb2.append(ContainerUtils.FIELD_DELIMITER);
                        } else if (!str2.startsWith("?")) {
                            sb2.append("?");
                        }
                        sb2.append(str2);
                    }
                }
                return str.replace(valueOf2, sb2.toString());
            }
            valueOf(str).length();
            throw null;
        } else {
            return str;
        }
    }

    private static void AFKeystoreWrapper(String str, boolean z10) {
        int i9 = onValidateInApp + 115;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        AppsFlyerProperties.getInstance().set(str, z10);
        int i11 = onValidateInApp + 41;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
    }

    private static String AFKeystoreWrapper(String str) {
        int i9 = onValidateInApp + 11;
        AppsFlyerLib = i9 % 128;
        if (!(i9 % 2 != 0)) {
            AppsFlyerProperties.getInstance().getString(str);
            throw null;
        }
        String string = AppsFlyerProperties.getInstance().getString(str);
        int i10 = AppsFlyerLib + 61;
        onValidateInApp = i10 % 128;
        if (i10 % 2 != 0) {
            int i11 = 74 / 0;
            return string;
        }
        return string;
    }

    private void AFKeystoreWrapper(Context context, Map<String, Object> map) {
        AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
        if (appsFlyerProperties.getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            map.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            return;
        }
        Context context2 = this.AppsFlyerConversionListener.values.values;
        if (context2 != null) {
            AFb1eSDK aFb1eSDK = new AFb1eSDK(AFKeystoreWrapper(context2));
            String values2 = this.AppsFlyerConversionListener.AFLogger$LogLevel().values(aFb1eSDK);
            if (!AFb1nSDK.values(values2)) {
                map.put("imei", values2);
            }
            boolean z10 = appsFlyerProperties.getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID, false);
            String str = null;
            String AFInAppEventType2 = aFb1eSDK.AFInAppEventType("androidIdCached", null);
            if (z10 && AFb1nSDK.values(this.afErrorLog)) {
                if (AFLogger(context)) {
                    try {
                        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                        if (string != null) {
                            str = string;
                        } else if (AFInAppEventType2 != null) {
                            AFLogger.afDebugLog("use cached AndroidId: ".concat(AFInAppEventType2));
                            str = AFInAppEventType2;
                        }
                    } catch (Exception e10) {
                        if (AFInAppEventType2 != null) {
                            AFLogger.afDebugLog("use cached AndroidId: ".concat(AFInAppEventType2));
                            str = AFInAppEventType2;
                        }
                        AFLogger.afErrorLog(e10.getMessage(), e10);
                    }
                }
            } else {
                String str2 = this.afErrorLog;
                if (str2 != null) {
                    str = str2;
                }
            }
            if (str != null) {
                aFb1eSDK.valueOf("androidIdCached", str);
                map.put("android_id", str);
            } else {
                AFLogger.afInfoLog("Android ID was not collected.");
            }
            AFa1qSDK AFInAppEventParameterName2 = AFb1xSDK.AFInAppEventParameterName(context);
            if (AFInAppEventParameterName2 != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("isManual", AFInAppEventParameterName2.AFKeystoreWrapper);
                hashMap.put(TPReportParams.JSON_KEY_VAL, AFInAppEventParameterName2.valueOf);
                Boolean bool = AFInAppEventParameterName2.values;
                if (bool != null) {
                    hashMap.put("isLat", bool);
                }
                map.put("oaid", hashMap);
                return;
            }
            return;
        }
        throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
    }

    private String init(Context context) {
        SharedPreferences AFKeystoreWrapper2 = AFKeystoreWrapper(context);
        String str = null;
        if (!(!AFKeystoreWrapper2.contains("INSTALL_STORE"))) {
            return AFKeystoreWrapper2.getString("INSTALL_STORE", null);
        }
        boolean z10 = afInfoLog(context) ? false : true;
        int i9 = onValidateInApp;
        if (!z10) {
            int i10 = i9 + 95;
            AppsFlyerLib = i10 % 128;
            int i11 = i10 % 2;
            str = getLevel(context);
        } else {
            int i12 = i9 + 109;
            AppsFlyerLib = i12 % 128;
            int i13 = i12 % 2;
        }
        valueOf(context).valueOf("INSTALL_STORE", str);
        int i14 = AppsFlyerLib + 3;
        onValidateInApp = i14 % 128;
        int i15 = i14 % 2;
        return str;
    }

    private AFd1ySDK.AFa1wSDK values(final Map<String, String> map) {
        AFd1ySDK.AFa1wSDK aFa1wSDK = new AFd1ySDK.AFa1wSDK() { // from class: com.appsflyer.internal.AFa1aSDK.1
            @Override // com.appsflyer.internal.AFd1ySDK.AFa1wSDK
            public final void AFInAppEventParameterName(String str) {
                AFb1kSDK.AFInAppEventType(str, DeepLinkResult.Error.NETWORK);
            }

            @Override // com.appsflyer.internal.AFd1ySDK.AFa1wSDK
            public final void AFInAppEventType(Map<String, String> map2) {
                for (String str : map2.keySet()) {
                    map.put(str, map2.get(str));
                }
                AFb1kSDK.valueOf(map);
            }
        };
        int i9 = onValidateInApp + 53;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        return aFa1wSDK;
    }

    private static void values(Context context, Map<String, Object> map, String str) {
        int i9 = onValidateInApp + 31;
        AppsFlyerLib = i9 % 128;
        try {
            if (!(i9 % 2 == 0)) {
                SharedPreferences AFKeystoreWrapper2 = AFKeystoreWrapper(context);
                SharedPreferences.Editor edit = AFKeystoreWrapper2.edit();
                String string = AFKeystoreWrapper2.getString("prev_event_name", null);
                if (string != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("prev_event_timestamp", AFKeystoreWrapper2.getLong("prev_event_timestamp", -1L));
                    jSONObject.put("prev_event_name", string);
                    map.put("prev_event", jSONObject);
                }
                edit.putString("prev_event_name", str).putLong("prev_event_timestamp", System.currentTimeMillis()).apply();
                int i10 = AppsFlyerLib + 65;
                onValidateInApp = i10 % 128;
                if ((i10 % 2 == 0 ? IOUtils.DIR_SEPARATOR_UNIX : (char) 31) == '/') {
                    return;
                }
                throw null;
            }
            SharedPreferences AFKeystoreWrapper3 = AFKeystoreWrapper(context);
            AFKeystoreWrapper3.edit();
            AFKeystoreWrapper3.getString("prev_event_name", null);
            throw null;
        } catch (Exception e10) {
            AFLogger.afErrorLog("Error while processing previous event.", e10);
        }
    }

    private void AFInAppEventType(Context context, String str, Map<String, Object> map) {
        AFe1xSDK aFe1xSDK = new AFe1xSDK();
        if ((context != null ? (char) 26 : Typography.quote) == 26) {
            aFe1xSDK.AFInAppEventParameterName = (Application) context.getApplicationContext();
            int i9 = onValidateInApp + 107;
            AppsFlyerLib = i9 % 128;
            int i10 = i9 % 2;
        }
        aFe1xSDK.afErrorLog = str;
        aFe1xSDK.AFKeystoreWrapper = map;
        valueOf(aFe1xSDK, (context instanceof Activity ? (char) 18 : '0') != 18 ? null : (Activity) context);
        int i11 = AppsFlyerLib + 59;
        onValidateInApp = i11 % 128;
        int i12 = i11 % 2;
    }

    public static String AFInAppEventType(SimpleDateFormat simpleDateFormat, long j10) {
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        String format = simpleDateFormat.format(new Date(j10));
        int i9 = AppsFlyerLib + 85;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        return format;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (com.appsflyer.AppsFlyerProperties.getInstance().getBoolean(com.appsflyer.AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, true) != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
        if ((!com.appsflyer.AppsFlyerProperties.getInstance().getBoolean(com.appsflyer.AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
        r0 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00af A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void AFInAppEventType(java.util.Map<java.lang.String, java.lang.Object> r6) {
        /*
            r5 = this;
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r1 = "collectAndroidIdForceByUser"
            r2 = 0
            boolean r0 = r0.getBoolean(r1, r2)
            r1 = 1
            if (r0 != 0) goto L41
            int r0 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r0 = r0 + 51
            int r3 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r3
            int r0 = r0 % 2
            r3 = 53
            if (r0 != 0) goto L1f
            r0 = 99
            goto L21
        L1f:
            r0 = 53
        L21:
            java.lang.String r4 = "collectIMEIForceByUser"
            if (r0 == r3) goto L30
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            boolean r0 = r0.getBoolean(r4, r1)
            if (r0 == 0) goto L3f
            goto L41
        L30:
            com.appsflyer.AppsFlyerProperties r0 = com.appsflyer.AppsFlyerProperties.getInstance()
            boolean r0 = r0.getBoolean(r4, r2)
            if (r0 == 0) goto L3c
            r0 = 0
            goto L3d
        L3c:
            r0 = 1
        L3d:
            if (r0 == 0) goto L41
        L3f:
            r0 = 0
            goto L42
        L41:
            r0 = 1
        L42:
            if (r0 != 0) goto Laf
            int r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r0 = r0 + 17
            int r3 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r3
            int r0 = r0 % 2
            if (r0 == 0) goto L52
            r0 = 1
            goto L53
        L52:
            r0 = 0
        L53:
            java.lang.String r3 = "advertiserId"
            if (r0 == r1) goto L61
            java.lang.Object r0 = r6.get(r3)
            if (r0 == 0) goto L5e
            r2 = 1
        L5e:
            if (r2 == r1) goto L6a
            goto Laf
        L61:
            java.lang.Object r0 = r6.get(r3)
            r1 = 20
            int r1 = r1 / r2
            if (r0 == 0) goto Laf
        L6a:
            java.lang.String r0 = r5.afErrorLog     // Catch: java.lang.Exception -> La6
            boolean r0 = com.appsflyer.internal.AFb1nSDK.values(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto L80
            java.lang.String r0 = "android_id"
            java.lang.Object r0 = r6.remove(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto L80
            java.lang.String r0 = "validateGaidAndIMEI :: removing: android_id"
            com.appsflyer.AFLogger.afInfoLog(r0)     // Catch: java.lang.Exception -> La6
        L80:
            com.appsflyer.internal.AFb1bSDK r0 = r5.AppsFlyerConversionListener     // Catch: java.lang.Exception -> La6
            com.appsflyer.internal.AFd1lSDK r0 = r0.AFLogger$LogLevel()     // Catch: java.lang.Exception -> La6
            java.lang.String r0 = r0.AFKeystoreWrapper     // Catch: java.lang.Exception -> La6
            boolean r0 = com.appsflyer.internal.AFb1nSDK.values(r0)     // Catch: java.lang.Exception -> La6
            if (r0 == 0) goto La5
            java.lang.String r0 = "imei"
            java.lang.Object r6 = r6.remove(r0)     // Catch: java.lang.Exception -> La6
            r0 = 55
            if (r6 == 0) goto L9b
            r6 = 55
            goto L9c
        L9b:
            r6 = 7
        L9c:
            if (r6 == r0) goto L9f
            goto La5
        L9f:
            java.lang.String r6 = "validateGaidAndIMEI :: removing: imei"
            com.appsflyer.AFLogger.afInfoLog(r6)     // Catch: java.lang.Exception -> La6
        La5:
            return
        La6:
            r6 = move-exception
            java.lang.String r0 = "failed to remove IMEI or AndroidID key from params; "
            com.appsflyer.AFLogger.afErrorLog(r0, r6)
            goto Laf
        Lad:
            r6 = move-exception
            throw r6
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.AFInAppEventType(java.util.Map):void");
    }

    public static boolean values(Context context) {
        try {
        } catch (Throwable th2) {
            AFLogger.afErrorLog("WARNING:  Google play services is unavailable. ", th2);
        }
        if ((com.google.android.gms.common.a.m().g(context) == 0 ? '4' : (char) 31) != 31) {
            int i9 = onValidateInApp + 27;
            AppsFlyerLib = i9 % 128;
            int i10 = i9 % 2;
            return true;
        }
        int i11 = onValidateInApp + 121;
        AppsFlyerLib = i11 % 128;
        int i12 = i11 % 2;
        try {
            context.getPackageManager().getPackageInfo("com.google.android.gms", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e10) {
            AFLogger.afErrorLog("WARNING:  Google Play Services is unavailable. ", e10);
            return false;
        }
    }

    private static String values(String str) {
        Object invoke;
        int i9 = AppsFlyerLib + 37;
        onValidateInApp = i9 % 128;
        String str2 = null;
        try {
            if ((i9 % 2 != 0 ? '?' : (char) 25) != 25) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                Class<?>[] clsArr = new Class[0];
                clsArr[1] = String.class;
                invoke = cls.getMethod("get", clsArr).invoke(null, str);
            } else {
                invoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            }
            str2 = (String) invoke;
        } catch (Throwable th2) {
            AFLogger.afErrorLog(th2.getMessage(), th2);
        }
        int i10 = onValidateInApp + 65;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
        return str2;
    }

    private static int AFInAppEventParameterName(SharedPreferences sharedPreferences, boolean z10) {
        int i9 = onValidateInApp + 21;
        AppsFlyerLib = i9 % 128;
        if (i9 % 2 == 0) {
            values(sharedPreferences, "appsFlyerInAppEventCount", z10);
            throw null;
        }
        int values2 = values(sharedPreferences, "appsFlyerInAppEventCount", z10);
        int i10 = onValidateInApp + 41;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
        return values2;
    }

    private static void AFInAppEventParameterName(@NonNull ScheduledExecutorService scheduledExecutorService, Runnable runnable, long j10, TimeUnit timeUnit) {
        int i9 = AppsFlyerLib + 47;
        onValidateInApp = i9 % 128;
        try {
            if ((i9 % 2 != 0 ? (char) 25 : (char) 29) != 29) {
                scheduledExecutorService.schedule(runnable, j10, timeUnit);
                int i10 = 75 / 0;
            } else {
                scheduledExecutorService.schedule(runnable, j10, timeUnit);
            }
            int i11 = AppsFlyerLib + 99;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
        } catch (RejectedExecutionException e10) {
            AFLogger.afErrorLog("scheduleJob failed with RejectedExecutionException Exception", e10);
        } catch (Throwable th2) {
            AFLogger.afErrorLog("scheduleJob failed with Exception", th2);
        }
    }

    private void AFInAppEventParameterName(AFa1tSDK aFa1tSDK) {
        boolean z10 = aFa1tSDK.afErrorLog == null;
        if ((valueOf() ? '*' : 'Y') != 'Y') {
            AFLogger.afInfoLog("CustomerUserId not set, reporting is disabled", true);
            return;
        }
        if ((z10 ? 'c' : 'L') != 'L') {
            int i9 = onValidateInApp + 125;
            AppsFlyerLib = i9 % 128;
            if (i9 % 2 != 0 ? AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, true) : AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, false)) {
                if (afRDLog()) {
                    int i10 = AppsFlyerLib + 101;
                    onValidateInApp = i10 % 128;
                    int i11 = i10 % 2;
                    AppsFlyerRequestListener appsFlyerRequestListener = aFa1tSDK.valueOf;
                    if ((appsFlyerRequestListener != null ? 'C' : 'M') != 'M') {
                        appsFlyerRequestListener.onError(RequestError.EVENT_TIMEOUT, AFb1fSDK.AFKeystoreWrapper);
                        return;
                    }
                    return;
                }
            } else {
                AFLogger.afInfoLog("Allowing multiple launches within a 5 second time window.");
            }
            this.onInstallConversionFailureNative = System.currentTimeMillis();
        }
        AFInAppEventParameterName(this.AppsFlyerConversionListener.AFInAppEventParameterName(), new AFa1ySDK(this, aFa1tSDK, (byte) 0), 0L, TimeUnit.MILLISECONDS);
    }

    private String AFKeystoreWrapper(SimpleDateFormat simpleDateFormat, Context context) {
        String str;
        int i9 = AppsFlyerLib + 85;
        onValidateInApp = i9 % 128;
        int i10 = i9 % 2;
        String string = AFKeystoreWrapper(context).getString("appsFlyerFirstInstall", null);
        if (string == null) {
            int i11 = AppsFlyerLib + 55;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
            if (afInfoLog(context)) {
                AFLogger.afDebugLog("AppsFlyer: first launch detected");
                str = simpleDateFormat.format(new Date());
            } else {
                str = "";
            }
            string = str;
            valueOf(context).valueOf("appsFlyerFirstInstall", string);
        }
        AFLogger.afInfoLog("AppsFlyer: first launch date: ".concat(String.valueOf(string)));
        return string;
    }

    @Nullable
    @VisibleForTesting
    private String values(Context context, String str) {
        int i9 = AppsFlyerLib;
        int i10 = i9 + 93;
        onValidateInApp = i10 % 128;
        int i11 = i10 % 2;
        if ((context == null ? '3' : (char) 1) != 1) {
            int i12 = i9 + 47;
            onValidateInApp = i12 % 128;
            int i13 = i12 % 2;
            return null;
        }
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if ((context == null ? (char) 30 : (char) 1) != 30) {
            AFb1dSDK aFb1dSDK = aFb1bSDK.values;
            if (context != null) {
                aFb1dSDK.values = context.getApplicationContext();
            }
        }
        return AFInAppEventType().valueOf().valueOf(str);
    }

    private static boolean AFInAppEventType(@NonNull SharedPreferences sharedPreferences) {
        int i9 = onValidateInApp + 33;
        AppsFlyerLib = i9 % 128;
        boolean z10 = i9 % 2 == 0;
        boolean parseBoolean = Boolean.parseBoolean(sharedPreferences.getString("sentSuccessfully", null));
        if (z10) {
            int i10 = 25 / 0;
        }
        int i11 = AppsFlyerLib + 75;
        onValidateInApp = i11 % 128;
        int i12 = i11 % 2;
        return parseBoolean;
    }

    private static boolean values(File file) {
        int i9 = AppsFlyerLib + 89;
        onValidateInApp = i9 % 128;
        if (i9 % 2 != 0) {
            throw null;
        }
        if ((file != null ? ':' : (char) 21) == ':' && file.exists()) {
            return false;
        }
        int i10 = AppsFlyerLib + 55;
        onValidateInApp = i10 % 128;
        int i11 = i10 % 2;
        return true;
    }

    private static String AFInAppEventType(Activity activity) {
        Intent intent;
        String str = null;
        if ((activity != null ? '`' : (char) 19) == '`' && (intent = activity.getIntent()) != null) {
            int i9 = AppsFlyerLib + 45;
            onValidateInApp = i9 % 128;
            int i10 = i9 % 2;
            try {
                Bundle extras = intent.getExtras();
                if ((extras != null ? '+' : '7') == '+') {
                    String string = extras.getString("af");
                    if (string != null) {
                        int i11 = AppsFlyerLib + 13;
                        onValidateInApp = i11 % 128;
                        try {
                            if (!(i11 % 2 != 0)) {
                                AFLogger.afInfoLog("Push Notification received af payload = ".concat(string));
                                extras.remove("af");
                                activity.setIntent(intent.putExtras(extras));
                            } else {
                                AFLogger.afInfoLog("Push Notification received af payload = ".concat(string));
                                extras.remove("af");
                                activity.setIntent(intent.putExtras(extras));
                                throw null;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            str = string;
                            AFLogger.afErrorLog(th.getMessage(), th);
                            return str;
                        }
                    }
                    str = string;
                }
                int i12 = AppsFlyerLib + 107;
                onValidateInApp = i12 % 128;
                int i13 = i12 % 2;
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
        if ((r6 ? false : true) != true) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
        r0 = r0 + 1;
        r4.edit().putInt(r5, r0).apply();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        if (r6 != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int values(android.content.SharedPreferences r4, java.lang.String r5, boolean r6) {
        /*
            int r0 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r0 = r0 + 45
            int r1 = r0 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r1
            int r0 = r0 % 2
            r1 = 57
            if (r0 == 0) goto L11
            r0 = 57
            goto L13
        L11:
            r0 = 95
        L13:
            r2 = 1
            r3 = 0
            if (r0 == r1) goto L1e
            int r0 = r4.getInt(r5, r3)
            if (r6 == 0) goto L34
            goto L28
        L1e:
            int r0 = r4.getInt(r5, r3)
            if (r6 == 0) goto L25
            goto L26
        L25:
            r3 = 1
        L26:
            if (r3 == r2) goto L34
        L28:
            int r0 = r0 + r2
            android.content.SharedPreferences$Editor r4 = r4.edit()
            android.content.SharedPreferences$Editor r4 = r4.putInt(r5, r0)
            r4.apply()
        L34:
            com.appsflyer.internal.AFb1pSDK r4 = com.appsflyer.internal.AFb1pSDK.AFKeystoreWrapper()
            boolean r4 = r4.afErrorLog()
            if (r4 == 0) goto L65
            int r4 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r4 = r4 + 37
            int r5 = r4 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r5
            int r4 = r4 % 2
            if (r4 != 0) goto L56
            com.appsflyer.internal.AFb1pSDK r4 = com.appsflyer.internal.AFb1pSDK.AFKeystoreWrapper()
            java.lang.String r5 = java.lang.String.valueOf(r0)
            r4.valueOf(r5)
            goto L65
        L56:
            com.appsflyer.internal.AFb1pSDK r4 = com.appsflyer.internal.AFb1pSDK.AFKeystoreWrapper()
            java.lang.String r5 = java.lang.String.valueOf(r0)
            r4.valueOf(r5)
            r4 = 0
            throw r4     // Catch: java.lang.Throwable -> L63
        L63:
            r4 = move-exception
            throw r4
        L65:
            int r4 = com.appsflyer.internal.AFa1aSDK.AppsFlyerLib
            int r4 = r4 + 91
            int r5 = r4 % 128
            com.appsflyer.internal.AFa1aSDK.onValidateInApp = r5
            int r4 = r4 % 2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.values(android.content.SharedPreferences, java.lang.String, boolean):int");
    }

    private static void valueOf(Context context, Map<String, Object> map) {
        String str;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if ((windowManager != null ? 'K' : ')') != ')') {
            int rotation = windowManager.getDefaultDisplay().getRotation();
            if (rotation == 0) {
                str = "p";
            } else if (rotation == 1) {
                int i9 = onValidateInApp + 83;
                AppsFlyerLib = i9 % 128;
                int i10 = i9 % 2;
                str = NotifyType.LIGHTS;
            } else if (rotation != 2) {
                str = rotation != 3 ? "" : "lr";
            } else {
                int i11 = onValidateInApp + 15;
                AppsFlyerLib = i11 % 128;
                int i12 = i11 % 2;
                str = "pr";
            }
            map.put("sc_o", str);
        }
    }

    public static synchronized SharedPreferences AFKeystoreWrapper(Context context) {
        AFa1aSDK values2;
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        synchronized (AFa1aSDK.class) {
            int i9 = AppsFlyerLib + 41;
            onValidateInApp = i9 % 128;
            int i10 = i9 % 2;
            if ((values().onAppOpenAttribution == null ? '?' : (char) 14) == '?') {
                int i11 = AppsFlyerLib + 69;
                onValidateInApp = i11 % 128;
                if ((i11 % 2 != 0 ? 'M' : (char) 5) != 'M') {
                    values2 = values();
                    sharedPreferences = context.getApplicationContext().getSharedPreferences("appsflyer-data", 0);
                } else {
                    values2 = values();
                    sharedPreferences = context.getApplicationContext().getSharedPreferences("appsflyer-data", 1);
                }
                values2.onAppOpenAttribution = sharedPreferences;
            }
            sharedPreferences2 = values().onAppOpenAttribution;
        }
        return sharedPreferences2;
    }

    private static void valueOf(Context context, boolean z10, Map<String, Object> map, int i9) {
        HashMap hashMap = new HashMap();
        hashMap.put("cpu_abi", values("ro.product.cpu.abi"));
        hashMap.put("cpu_abi2", values("ro.product.cpu.abi2"));
        hashMap.put("arch", values("os.arch"));
        hashMap.put("build_display_id", values("ro.build.display.id"));
        if (z10) {
            int i10 = AppsFlyerLib + 105;
            onValidateInApp = i10 % 128;
            int i11 = i10 % 2;
            values(context, hashMap);
            if (!(i9 > 2)) {
                hashMap.putAll(AFa1bSDK.AFKeystoreWrapper(context).values());
            }
        }
        hashMap.put("dim", AFa1fSDK.values(context));
        map.put("deviceData", hashMap);
        int i12 = onValidateInApp + 111;
        AppsFlyerLib = i12 % 128;
        if (i12 % 2 != 0) {
            return;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:238:0x059e A[Catch: all -> 0x0793, TryCatch #10 {all -> 0x0793, blocks: (B:15:0x00a6, B:17:0x00ac, B:21:0x00b9, B:23:0x00c9, B:24:0x00d1, B:26:0x00e4, B:31:0x00fc, B:33:0x0118, B:34:0x011d, B:36:0x0125, B:37:0x012a, B:39:0x0130, B:41:0x0138, B:46:0x0145, B:48:0x01c1, B:50:0x01c7, B:52:0x01cd, B:53:0x01da, B:55:0x01e1, B:58:0x01f4, B:60:0x01fb, B:61:0x0202, B:63:0x0208, B:56:0x01ea, B:64:0x020f, B:66:0x0226, B:67:0x022b, B:70:0x0233, B:71:0x0236, B:73:0x023d, B:74:0x0240, B:76:0x024a, B:78:0x0250, B:79:0x0253, B:81:0x025c, B:82:0x0265, B:87:0x0276, B:89:0x0281, B:92:0x028b, B:93:0x0290, B:95:0x0298, B:97:0x02ad, B:100:0x02bd, B:102:0x02c7, B:103:0x02d1, B:105:0x02d9, B:106:0x02de, B:108:0x02ec, B:113:0x02f9, B:115:0x02ff, B:117:0x0305, B:118:0x0308, B:120:0x0316, B:124:0x0320, B:125:0x0325, B:127:0x032b, B:128:0x0334, B:130:0x033a, B:131:0x0343, B:133:0x0349, B:136:0x0356, B:138:0x035c, B:144:0x0375, B:146:0x037b, B:147:0x0380, B:149:0x0388, B:154:0x03a1, B:155:0x03ad, B:157:0x03b3, B:158:0x03bc, B:160:0x03c4, B:162:0x03cb, B:163:0x03e1, B:164:0x03e6, B:166:0x03ee, B:167:0x03f3, B:177:0x0429, B:178:0x042e, B:179:0x0431, B:181:0x043c, B:186:0x0459, B:190:0x0469, B:191:0x046e, B:195:0x047e, B:196:0x0483, B:200:0x0493, B:201:0x0498, B:202:0x04af, B:236:0x0581, B:238:0x059e, B:240:0x05a7, B:242:0x05ab, B:244:0x05b3, B:245:0x05b9, B:246:0x05ce, B:248:0x05da, B:251:0x05ef, B:253:0x0601, B:252:0x05fc, B:258:0x061c, B:260:0x0622, B:264:0x0630, B:265:0x0637, B:267:0x0641, B:268:0x0653, B:272:0x0674, B:276:0x0684, B:277:0x0688, B:281:0x0693, B:283:0x06ce, B:284:0x06dc, B:286:0x077d, B:288:0x0781, B:257:0x0607, B:235:0x057b, B:206:0x04ca, B:185:0x0444, B:175:0x0421, B:150:0x038e, B:152:0x0396, B:139:0x0362, B:141:0x036c, B:143:0x0372, B:289:0x0787, B:112:0x02f4, B:86:0x026e, B:96:0x02a9, B:45:0x0140, B:30:0x00f7, B:22:0x00c4, B:169:0x0409), top: B:313:0x00a6, inners: #3, #5, #6, #8, #11, #12, #14, #15, #16, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x05a7 A[Catch: all -> 0x0793, TryCatch #10 {all -> 0x0793, blocks: (B:15:0x00a6, B:17:0x00ac, B:21:0x00b9, B:23:0x00c9, B:24:0x00d1, B:26:0x00e4, B:31:0x00fc, B:33:0x0118, B:34:0x011d, B:36:0x0125, B:37:0x012a, B:39:0x0130, B:41:0x0138, B:46:0x0145, B:48:0x01c1, B:50:0x01c7, B:52:0x01cd, B:53:0x01da, B:55:0x01e1, B:58:0x01f4, B:60:0x01fb, B:61:0x0202, B:63:0x0208, B:56:0x01ea, B:64:0x020f, B:66:0x0226, B:67:0x022b, B:70:0x0233, B:71:0x0236, B:73:0x023d, B:74:0x0240, B:76:0x024a, B:78:0x0250, B:79:0x0253, B:81:0x025c, B:82:0x0265, B:87:0x0276, B:89:0x0281, B:92:0x028b, B:93:0x0290, B:95:0x0298, B:97:0x02ad, B:100:0x02bd, B:102:0x02c7, B:103:0x02d1, B:105:0x02d9, B:106:0x02de, B:108:0x02ec, B:113:0x02f9, B:115:0x02ff, B:117:0x0305, B:118:0x0308, B:120:0x0316, B:124:0x0320, B:125:0x0325, B:127:0x032b, B:128:0x0334, B:130:0x033a, B:131:0x0343, B:133:0x0349, B:136:0x0356, B:138:0x035c, B:144:0x0375, B:146:0x037b, B:147:0x0380, B:149:0x0388, B:154:0x03a1, B:155:0x03ad, B:157:0x03b3, B:158:0x03bc, B:160:0x03c4, B:162:0x03cb, B:163:0x03e1, B:164:0x03e6, B:166:0x03ee, B:167:0x03f3, B:177:0x0429, B:178:0x042e, B:179:0x0431, B:181:0x043c, B:186:0x0459, B:190:0x0469, B:191:0x046e, B:195:0x047e, B:196:0x0483, B:200:0x0493, B:201:0x0498, B:202:0x04af, B:236:0x0581, B:238:0x059e, B:240:0x05a7, B:242:0x05ab, B:244:0x05b3, B:245:0x05b9, B:246:0x05ce, B:248:0x05da, B:251:0x05ef, B:253:0x0601, B:252:0x05fc, B:258:0x061c, B:260:0x0622, B:264:0x0630, B:265:0x0637, B:267:0x0641, B:268:0x0653, B:272:0x0674, B:276:0x0684, B:277:0x0688, B:281:0x0693, B:283:0x06ce, B:284:0x06dc, B:286:0x077d, B:288:0x0781, B:257:0x0607, B:235:0x057b, B:206:0x04ca, B:185:0x0444, B:175:0x0421, B:150:0x038e, B:152:0x0396, B:139:0x0362, B:141:0x036c, B:143:0x0372, B:289:0x0787, B:112:0x02f4, B:86:0x026e, B:96:0x02a9, B:45:0x0140, B:30:0x00f7, B:22:0x00c4, B:169:0x0409), top: B:313:0x00a6, inners: #3, #5, #6, #8, #11, #12, #14, #15, #16, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0622 A[Catch: all -> 0x0793, TryCatch #10 {all -> 0x0793, blocks: (B:15:0x00a6, B:17:0x00ac, B:21:0x00b9, B:23:0x00c9, B:24:0x00d1, B:26:0x00e4, B:31:0x00fc, B:33:0x0118, B:34:0x011d, B:36:0x0125, B:37:0x012a, B:39:0x0130, B:41:0x0138, B:46:0x0145, B:48:0x01c1, B:50:0x01c7, B:52:0x01cd, B:53:0x01da, B:55:0x01e1, B:58:0x01f4, B:60:0x01fb, B:61:0x0202, B:63:0x0208, B:56:0x01ea, B:64:0x020f, B:66:0x0226, B:67:0x022b, B:70:0x0233, B:71:0x0236, B:73:0x023d, B:74:0x0240, B:76:0x024a, B:78:0x0250, B:79:0x0253, B:81:0x025c, B:82:0x0265, B:87:0x0276, B:89:0x0281, B:92:0x028b, B:93:0x0290, B:95:0x0298, B:97:0x02ad, B:100:0x02bd, B:102:0x02c7, B:103:0x02d1, B:105:0x02d9, B:106:0x02de, B:108:0x02ec, B:113:0x02f9, B:115:0x02ff, B:117:0x0305, B:118:0x0308, B:120:0x0316, B:124:0x0320, B:125:0x0325, B:127:0x032b, B:128:0x0334, B:130:0x033a, B:131:0x0343, B:133:0x0349, B:136:0x0356, B:138:0x035c, B:144:0x0375, B:146:0x037b, B:147:0x0380, B:149:0x0388, B:154:0x03a1, B:155:0x03ad, B:157:0x03b3, B:158:0x03bc, B:160:0x03c4, B:162:0x03cb, B:163:0x03e1, B:164:0x03e6, B:166:0x03ee, B:167:0x03f3, B:177:0x0429, B:178:0x042e, B:179:0x0431, B:181:0x043c, B:186:0x0459, B:190:0x0469, B:191:0x046e, B:195:0x047e, B:196:0x0483, B:200:0x0493, B:201:0x0498, B:202:0x04af, B:236:0x0581, B:238:0x059e, B:240:0x05a7, B:242:0x05ab, B:244:0x05b3, B:245:0x05b9, B:246:0x05ce, B:248:0x05da, B:251:0x05ef, B:253:0x0601, B:252:0x05fc, B:258:0x061c, B:260:0x0622, B:264:0x0630, B:265:0x0637, B:267:0x0641, B:268:0x0653, B:272:0x0674, B:276:0x0684, B:277:0x0688, B:281:0x0693, B:283:0x06ce, B:284:0x06dc, B:286:0x077d, B:288:0x0781, B:257:0x0607, B:235:0x057b, B:206:0x04ca, B:185:0x0444, B:175:0x0421, B:150:0x038e, B:152:0x0396, B:139:0x0362, B:141:0x036c, B:143:0x0372, B:289:0x0787, B:112:0x02f4, B:86:0x026e, B:96:0x02a9, B:45:0x0140, B:30:0x00f7, B:22:0x00c4, B:169:0x0409), top: B:313:0x00a6, inners: #3, #5, #6, #8, #11, #12, #14, #15, #16, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0641 A[Catch: all -> 0x0793, TryCatch #10 {all -> 0x0793, blocks: (B:15:0x00a6, B:17:0x00ac, B:21:0x00b9, B:23:0x00c9, B:24:0x00d1, B:26:0x00e4, B:31:0x00fc, B:33:0x0118, B:34:0x011d, B:36:0x0125, B:37:0x012a, B:39:0x0130, B:41:0x0138, B:46:0x0145, B:48:0x01c1, B:50:0x01c7, B:52:0x01cd, B:53:0x01da, B:55:0x01e1, B:58:0x01f4, B:60:0x01fb, B:61:0x0202, B:63:0x0208, B:56:0x01ea, B:64:0x020f, B:66:0x0226, B:67:0x022b, B:70:0x0233, B:71:0x0236, B:73:0x023d, B:74:0x0240, B:76:0x024a, B:78:0x0250, B:79:0x0253, B:81:0x025c, B:82:0x0265, B:87:0x0276, B:89:0x0281, B:92:0x028b, B:93:0x0290, B:95:0x0298, B:97:0x02ad, B:100:0x02bd, B:102:0x02c7, B:103:0x02d1, B:105:0x02d9, B:106:0x02de, B:108:0x02ec, B:113:0x02f9, B:115:0x02ff, B:117:0x0305, B:118:0x0308, B:120:0x0316, B:124:0x0320, B:125:0x0325, B:127:0x032b, B:128:0x0334, B:130:0x033a, B:131:0x0343, B:133:0x0349, B:136:0x0356, B:138:0x035c, B:144:0x0375, B:146:0x037b, B:147:0x0380, B:149:0x0388, B:154:0x03a1, B:155:0x03ad, B:157:0x03b3, B:158:0x03bc, B:160:0x03c4, B:162:0x03cb, B:163:0x03e1, B:164:0x03e6, B:166:0x03ee, B:167:0x03f3, B:177:0x0429, B:178:0x042e, B:179:0x0431, B:181:0x043c, B:186:0x0459, B:190:0x0469, B:191:0x046e, B:195:0x047e, B:196:0x0483, B:200:0x0493, B:201:0x0498, B:202:0x04af, B:236:0x0581, B:238:0x059e, B:240:0x05a7, B:242:0x05ab, B:244:0x05b3, B:245:0x05b9, B:246:0x05ce, B:248:0x05da, B:251:0x05ef, B:253:0x0601, B:252:0x05fc, B:258:0x061c, B:260:0x0622, B:264:0x0630, B:265:0x0637, B:267:0x0641, B:268:0x0653, B:272:0x0674, B:276:0x0684, B:277:0x0688, B:281:0x0693, B:283:0x06ce, B:284:0x06dc, B:286:0x077d, B:288:0x0781, B:257:0x0607, B:235:0x057b, B:206:0x04ca, B:185:0x0444, B:175:0x0421, B:150:0x038e, B:152:0x0396, B:139:0x0362, B:141:0x036c, B:143:0x0372, B:289:0x0787, B:112:0x02f4, B:86:0x026e, B:96:0x02a9, B:45:0x0140, B:30:0x00f7, B:22:0x00c4, B:169:0x0409), top: B:313:0x00a6, inners: #3, #5, #6, #8, #11, #12, #14, #15, #16, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0671  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0690  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x06ce A[Catch: all -> 0x0793, TryCatch #10 {all -> 0x0793, blocks: (B:15:0x00a6, B:17:0x00ac, B:21:0x00b9, B:23:0x00c9, B:24:0x00d1, B:26:0x00e4, B:31:0x00fc, B:33:0x0118, B:34:0x011d, B:36:0x0125, B:37:0x012a, B:39:0x0130, B:41:0x0138, B:46:0x0145, B:48:0x01c1, B:50:0x01c7, B:52:0x01cd, B:53:0x01da, B:55:0x01e1, B:58:0x01f4, B:60:0x01fb, B:61:0x0202, B:63:0x0208, B:56:0x01ea, B:64:0x020f, B:66:0x0226, B:67:0x022b, B:70:0x0233, B:71:0x0236, B:73:0x023d, B:74:0x0240, B:76:0x024a, B:78:0x0250, B:79:0x0253, B:81:0x025c, B:82:0x0265, B:87:0x0276, B:89:0x0281, B:92:0x028b, B:93:0x0290, B:95:0x0298, B:97:0x02ad, B:100:0x02bd, B:102:0x02c7, B:103:0x02d1, B:105:0x02d9, B:106:0x02de, B:108:0x02ec, B:113:0x02f9, B:115:0x02ff, B:117:0x0305, B:118:0x0308, B:120:0x0316, B:124:0x0320, B:125:0x0325, B:127:0x032b, B:128:0x0334, B:130:0x033a, B:131:0x0343, B:133:0x0349, B:136:0x0356, B:138:0x035c, B:144:0x0375, B:146:0x037b, B:147:0x0380, B:149:0x0388, B:154:0x03a1, B:155:0x03ad, B:157:0x03b3, B:158:0x03bc, B:160:0x03c4, B:162:0x03cb, B:163:0x03e1, B:164:0x03e6, B:166:0x03ee, B:167:0x03f3, B:177:0x0429, B:178:0x042e, B:179:0x0431, B:181:0x043c, B:186:0x0459, B:190:0x0469, B:191:0x046e, B:195:0x047e, B:196:0x0483, B:200:0x0493, B:201:0x0498, B:202:0x04af, B:236:0x0581, B:238:0x059e, B:240:0x05a7, B:242:0x05ab, B:244:0x05b3, B:245:0x05b9, B:246:0x05ce, B:248:0x05da, B:251:0x05ef, B:253:0x0601, B:252:0x05fc, B:258:0x061c, B:260:0x0622, B:264:0x0630, B:265:0x0637, B:267:0x0641, B:268:0x0653, B:272:0x0674, B:276:0x0684, B:277:0x0688, B:281:0x0693, B:283:0x06ce, B:284:0x06dc, B:286:0x077d, B:288:0x0781, B:257:0x0607, B:235:0x057b, B:206:0x04ca, B:185:0x0444, B:175:0x0421, B:150:0x038e, B:152:0x0396, B:139:0x0362, B:141:0x036c, B:143:0x0372, B:289:0x0787, B:112:0x02f4, B:86:0x026e, B:96:0x02a9, B:45:0x0140, B:30:0x00f7, B:22:0x00c4, B:169:0x0409), top: B:313:0x00a6, inners: #3, #5, #6, #8, #11, #12, #14, #15, #16, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:286:0x077d A[Catch: all -> 0x0793, TryCatch #10 {all -> 0x0793, blocks: (B:15:0x00a6, B:17:0x00ac, B:21:0x00b9, B:23:0x00c9, B:24:0x00d1, B:26:0x00e4, B:31:0x00fc, B:33:0x0118, B:34:0x011d, B:36:0x0125, B:37:0x012a, B:39:0x0130, B:41:0x0138, B:46:0x0145, B:48:0x01c1, B:50:0x01c7, B:52:0x01cd, B:53:0x01da, B:55:0x01e1, B:58:0x01f4, B:60:0x01fb, B:61:0x0202, B:63:0x0208, B:56:0x01ea, B:64:0x020f, B:66:0x0226, B:67:0x022b, B:70:0x0233, B:71:0x0236, B:73:0x023d, B:74:0x0240, B:76:0x024a, B:78:0x0250, B:79:0x0253, B:81:0x025c, B:82:0x0265, B:87:0x0276, B:89:0x0281, B:92:0x028b, B:93:0x0290, B:95:0x0298, B:97:0x02ad, B:100:0x02bd, B:102:0x02c7, B:103:0x02d1, B:105:0x02d9, B:106:0x02de, B:108:0x02ec, B:113:0x02f9, B:115:0x02ff, B:117:0x0305, B:118:0x0308, B:120:0x0316, B:124:0x0320, B:125:0x0325, B:127:0x032b, B:128:0x0334, B:130:0x033a, B:131:0x0343, B:133:0x0349, B:136:0x0356, B:138:0x035c, B:144:0x0375, B:146:0x037b, B:147:0x0380, B:149:0x0388, B:154:0x03a1, B:155:0x03ad, B:157:0x03b3, B:158:0x03bc, B:160:0x03c4, B:162:0x03cb, B:163:0x03e1, B:164:0x03e6, B:166:0x03ee, B:167:0x03f3, B:177:0x0429, B:178:0x042e, B:179:0x0431, B:181:0x043c, B:186:0x0459, B:190:0x0469, B:191:0x046e, B:195:0x047e, B:196:0x0483, B:200:0x0493, B:201:0x0498, B:202:0x04af, B:236:0x0581, B:238:0x059e, B:240:0x05a7, B:242:0x05ab, B:244:0x05b3, B:245:0x05b9, B:246:0x05ce, B:248:0x05da, B:251:0x05ef, B:253:0x0601, B:252:0x05fc, B:258:0x061c, B:260:0x0622, B:264:0x0630, B:265:0x0637, B:267:0x0641, B:268:0x0653, B:272:0x0674, B:276:0x0684, B:277:0x0688, B:281:0x0693, B:283:0x06ce, B:284:0x06dc, B:286:0x077d, B:288:0x0781, B:257:0x0607, B:235:0x057b, B:206:0x04ca, B:185:0x0444, B:175:0x0421, B:150:0x038e, B:152:0x0396, B:139:0x0362, B:141:0x036c, B:143:0x0372, B:289:0x0787, B:112:0x02f4, B:86:0x026e, B:96:0x02a9, B:45:0x0140, B:30:0x00f7, B:22:0x00c4, B:169:0x0409), top: B:313:0x00a6, inners: #3, #5, #6, #8, #11, #12, #14, #15, #16, #17 }] */
    /* JADX WARN: Removed duplicated region for block: B:322:0x05da A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Object> values(com.appsflyer.internal.AFa1tSDK r30) {
        /*
            Method dump skipped, instructions count: 1962
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.values(com.appsflyer.internal.AFa1tSDK):java.util.Map");
    }

    @NonNull
    @Deprecated
    public static String AFKeystoreWrapper(HttpURLConnection httpURLConnection) {
        String obj;
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        StringBuilder sb2 = new StringBuilder();
        try {
            try {
                InputStream errorStream = httpURLConnection.getErrorStream();
                if (errorStream == null) {
                    int i9 = AppsFlyerLib + 41;
                    onValidateInApp = i9 % 128;
                    if (i9 % 2 != 0) {
                        errorStream = httpURLConnection.getInputStream();
                        int i10 = 58 / 0;
                    } else {
                        errorStream = httpURLConnection.getInputStream();
                    }
                }
                InputStreamReader inputStreamReader2 = new InputStreamReader(errorStream);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                    boolean z10 = false;
                    while (true) {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb2.append(z10 ? '\n' : "");
                            sb2.append(readLine);
                            z10 = true;
                        } catch (Throwable th2) {
                            bufferedReader = bufferedReader2;
                            th = th2;
                            inputStreamReader = inputStreamReader2;
                            try {
                                StringBuilder sb3 = new StringBuilder("Could not read connection response from: ");
                                sb3.append(httpURLConnection.getURL().toString());
                                AFLogger.afErrorLog(sb3.toString(), th);
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (inputStreamReader != null) {
                                    int i11 = AppsFlyerLib + 71;
                                    onValidateInApp = i11 % 128;
                                    if (i11 % 2 != 0) {
                                        inputStreamReader.close();
                                        throw null;
                                    }
                                    inputStreamReader.close();
                                }
                                obj = sb2.toString();
                                new JSONObject(obj);
                                return obj;
                            } catch (Throwable th3) {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Throwable th4) {
                                        AFLogger.afErrorLog(th4);
                                        throw th3;
                                    }
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                throw th3;
                            }
                        }
                    }
                    bufferedReader2.close();
                    inputStreamReader2.close();
                } catch (Throwable th5) {
                    th = th5;
                    inputStreamReader = inputStreamReader2;
                    bufferedReader = null;
                }
            } catch (Throwable th6) {
                th = th6;
                bufferedReader = null;
                inputStreamReader = null;
            }
        } catch (Throwable th7) {
            AFLogger.afErrorLog(th7);
        }
        obj = sb2.toString();
        try {
            new JSONObject(obj);
            return obj;
        } catch (JSONException unused) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("string_response", obj);
                return jSONObject.toString();
            } catch (JSONException unused2) {
                return new JSONObject().toString();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
        if (r2.contains(r4) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006b, code lost:
        if ((r2.contains(r4)) != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006d, code lost:
        r1 = android.net.Uri.parse(r2).buildUpon();
        r2 = android.net.Uri.EMPTY.buildUpon();
        r3 = r3.afDebugLog.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008b, code lost:
        if (r3.hasNext() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008d, code lost:
        r4 = 'X';
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0090, code lost:
        r4 = 'S';
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0092, code lost:
        if (r4 == 'S') goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0094, code lost:
        r4 = com.appsflyer.internal.AFa1aSDK.onValidateInApp + 13;
        com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r4 % 128;
        r4 = r4 % 2;
        r4 = r3.next();
        r1.appendQueryParameter(r4.getKey(), r4.getValue());
        r2.appendQueryParameter(r4.getKey(), r4.getValue());
        r4 = com.appsflyer.internal.AFa1aSDK.onValidateInApp + 13;
        com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r4 % 128;
        r4 = r4 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cb, code lost:
        r1 = r1.build().toString();
        r12.put("appended_query_params", r2.build().getEncodedQuery());
        r2 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void AFInAppEventType(android.content.Context r11, java.util.Map<java.lang.String, java.lang.Object> r12, android.net.Uri r13) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.AFInAppEventType(android.content.Context, java.util.Map, android.net.Uri):void");
    }

    private static void valueOf(Map<String, Object> map) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        String string2 = AppsFlyerProperties.getInstance().getString("onelinkVersion");
        if ((string != null ? (char) 1 : JwtParser.SEPARATOR_CHAR) != '.') {
            map.put("onelink_id", string);
        }
        if (string2 != null) {
            int i9 = onValidateInApp + 107;
            AppsFlyerLib = i9 % 128;
            int i10 = i9 % 2;
            map.put("onelink_ver", string2);
        }
        int i11 = AppsFlyerLib + 37;
        onValidateInApp = i11 % 128;
        if (i11 % 2 == 0) {
            return;
        }
        throw null;
    }

    private static String valueOf(String str) {
        int indexOf = str.indexOf(63);
        if (indexOf != -1) {
            String substring = str.substring(indexOf);
            int i9 = onValidateInApp + 125;
            AppsFlyerLib = i9 % 128;
            int i10 = i9 % 2;
            return substring;
        }
        int i11 = onValidateInApp;
        int i12 = i11 + 67;
        AppsFlyerLib = i12 % 128;
        int i13 = i12 % 2;
        int i14 = i11 + 119;
        AppsFlyerLib = i14 % 128;
        if (!(i14 % 2 == 0)) {
            return "";
        }
        throw null;
    }

    private static String valueOf(File file, String str) {
        FileReader fileReader;
        Properties properties;
        try {
            try {
                try {
                    properties = new Properties();
                    fileReader = new FileReader(file);
                } catch (Throwable th2) {
                    AFLogger.afErrorLog(th2.getMessage(), th2);
                    return null;
                }
            } catch (FileNotFoundException unused) {
                fileReader = null;
            } catch (Throwable th3) {
                th = th3;
                fileReader = null;
            }
            try {
                properties.load(fileReader);
                AFLogger.afInfoLog("Found PreInstall property!");
                String property = properties.getProperty(str);
                try {
                    fileReader.close();
                    int i9 = AppsFlyerLib + 117;
                    onValidateInApp = i9 % 128;
                    int i10 = i9 % 2;
                } catch (Throwable th4) {
                    AFLogger.afErrorLog(th4.getMessage(), th4);
                }
                return property;
            } catch (FileNotFoundException unused2) {
                StringBuilder sb2 = new StringBuilder("PreInstall file wasn't found: ");
                sb2.append(file.getAbsolutePath());
                AFLogger.afDebugLog(sb2.toString());
                if (fileReader != null) {
                    fileReader.close();
                }
                return null;
            } catch (Throwable th5) {
                th = th5;
                AFLogger.afErrorLog(th.getMessage(), th);
                if (fileReader != null) {
                    fileReader.close();
                    int i11 = onValidateInApp + 123;
                    AppsFlyerLib = i11 % 128;
                    int i12 = i11 % 2;
                }
                return null;
            }
        } catch (Throwable th6) {
            if (fileReader != null) {
                try {
                    fileReader.close();
                } catch (Throwable th7) {
                    AFLogger.afErrorLog(th7.getMessage(), th7);
                }
            }
            throw th6;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r13 = r13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String AFKeystoreWrapper(int[] r12, java.lang.String r13, boolean r14) {
        /*
            if (r13 == 0) goto L8
            java.lang.String r0 = "ISO-8859-1"
            byte[] r13 = r13.getBytes(r0)
        L8:
            byte[] r13 = (byte[]) r13
            java.lang.Object r0 = com.appsflyer.internal.AFf1vSDK.AFInAppEventParameterName
            monitor-enter(r0)
            r1 = 0
            r2 = r12[r1]     // Catch: java.lang.Throwable -> L89
            r3 = 1
            r4 = r12[r3]     // Catch: java.lang.Throwable -> L89
            r5 = 2
            r6 = r12[r5]     // Catch: java.lang.Throwable -> L89
            r7 = 3
            r7 = r12[r7]     // Catch: java.lang.Throwable -> L89
            char[] r8 = com.appsflyer.internal.AFa1aSDK.onValidateInAppFailure     // Catch: java.lang.Throwable -> L89
            char[] r9 = new char[r4]     // Catch: java.lang.Throwable -> L89
            java.lang.System.arraycopy(r8, r2, r9, r1, r4)     // Catch: java.lang.Throwable -> L89
            if (r13 == 0) goto L47
            char[] r2 = new char[r4]     // Catch: java.lang.Throwable -> L89
            com.appsflyer.internal.AFf1vSDK.values = r1     // Catch: java.lang.Throwable -> L89
            r8 = 0
        L27:
            int r10 = com.appsflyer.internal.AFf1vSDK.values     // Catch: java.lang.Throwable -> L89
            if (r10 >= r4) goto L46
            r11 = r13[r10]     // Catch: java.lang.Throwable -> L89
            if (r11 != r3) goto L38
            char r11 = r9[r10]     // Catch: java.lang.Throwable -> L89
            int r11 = r11 << r3
            int r11 = r11 + r3
            int r11 = r11 - r8
            char r8 = (char) r11     // Catch: java.lang.Throwable -> L89
            r2[r10] = r8     // Catch: java.lang.Throwable -> L89
            goto L3f
        L38:
            char r11 = r9[r10]     // Catch: java.lang.Throwable -> L89
            int r11 = r11 << r3
            int r11 = r11 - r8
            char r8 = (char) r11     // Catch: java.lang.Throwable -> L89
            r2[r10] = r8     // Catch: java.lang.Throwable -> L89
        L3f:
            char r8 = r2[r10]     // Catch: java.lang.Throwable -> L89
            int r10 = r10 + 1
            com.appsflyer.internal.AFf1vSDK.values = r10     // Catch: java.lang.Throwable -> L89
            goto L27
        L46:
            r9 = r2
        L47:
            if (r7 <= 0) goto L56
            char[] r13 = new char[r4]     // Catch: java.lang.Throwable -> L89
            java.lang.System.arraycopy(r9, r1, r13, r1, r4)     // Catch: java.lang.Throwable -> L89
            int r2 = r4 - r7
            java.lang.System.arraycopy(r13, r1, r9, r2, r7)     // Catch: java.lang.Throwable -> L89
            java.lang.System.arraycopy(r13, r7, r9, r1, r2)     // Catch: java.lang.Throwable -> L89
        L56:
            if (r14 == 0) goto L6d
            char[] r13 = new char[r4]     // Catch: java.lang.Throwable -> L89
            com.appsflyer.internal.AFf1vSDK.values = r1     // Catch: java.lang.Throwable -> L89
        L5c:
            int r14 = com.appsflyer.internal.AFf1vSDK.values     // Catch: java.lang.Throwable -> L89
            if (r14 >= r4) goto L6c
            int r2 = r4 - r14
            int r2 = r2 - r3
            char r2 = r9[r2]     // Catch: java.lang.Throwable -> L89
            r13[r14] = r2     // Catch: java.lang.Throwable -> L89
            int r14 = r14 + 1
            com.appsflyer.internal.AFf1vSDK.values = r14     // Catch: java.lang.Throwable -> L89
            goto L5c
        L6c:
            r9 = r13
        L6d:
            if (r6 <= 0) goto L82
            com.appsflyer.internal.AFf1vSDK.values = r1     // Catch: java.lang.Throwable -> L89
        L71:
            int r13 = com.appsflyer.internal.AFf1vSDK.values     // Catch: java.lang.Throwable -> L89
            if (r13 >= r4) goto L82
            char r14 = r9[r13]     // Catch: java.lang.Throwable -> L89
            r1 = r12[r5]     // Catch: java.lang.Throwable -> L89
            int r14 = r14 - r1
            char r14 = (char) r14     // Catch: java.lang.Throwable -> L89
            r9[r13] = r14     // Catch: java.lang.Throwable -> L89
            int r13 = r13 + 1
            com.appsflyer.internal.AFf1vSDK.values = r13     // Catch: java.lang.Throwable -> L89
            goto L71
        L82:
            java.lang.String r12 = new java.lang.String     // Catch: java.lang.Throwable -> L89
            r12.<init>(r9)     // Catch: java.lang.Throwable -> L89
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L89
            return r12
        L89:
            r12 = move-exception
            monitor-exit(r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.AFKeystoreWrapper(int[], java.lang.String, boolean):java.lang.String");
    }

    public static String valueOf(AFd1oSDK aFd1oSDK, String str) {
        int i9 = onValidateInApp + 23;
        AppsFlyerLib = i9 % 128;
        int i10 = i9 % 2;
        String AFInAppEventType2 = aFd1oSDK.AFInAppEventType("CACHED_CHANNEL", null);
        if (AFInAppEventType2 == null) {
            aFd1oSDK.valueOf("CACHED_CHANNEL", str);
            int i11 = onValidateInApp + 87;
            AppsFlyerLib = i11 % 128;
            int i12 = i11 % 2;
            return str;
        }
        int i13 = AppsFlyerLib + 65;
        onValidateInApp = i13 % 128;
        if (i13 % 2 == 0) {
            return AFInAppEventType2;
        }
        throw null;
    }

    public final AFd1oSDK valueOf(Context context) {
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if (context != null) {
            aFb1bSDK.values.values = context.getApplicationContext();
        }
        Context context2 = this.AppsFlyerConversionListener.values.values;
        if (context2 != null) {
            return new AFb1eSDK(AFKeystoreWrapper(context2));
        }
        throw new IllegalStateException("Context must be set via setContext method before calling this dependency.");
    }

    private static void AFInAppEventType(String str) {
        try {
            if (!new JSONObject(str).has("pid")) {
                AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
                int i9 = onValidateInApp + 57;
                AppsFlyerLib = i9 % 128;
                int i10 = i9 % 2;
                return;
            }
            int i11 = AppsFlyerLib + 27;
            onValidateInApp = i11 % 128;
            int i12 = i11 % 2;
            values("preInstallName", str);
            int i13 = onValidateInApp + 107;
            AppsFlyerLib = i13 % 128;
            if (i13 % 2 == 0) {
                throw null;
            }
        } catch (JSONException e10) {
            AFLogger.afErrorLog("Error parsing JSON for preinstall", e10);
        }
    }

    public static int valueOf(SharedPreferences sharedPreferences, boolean z10) {
        int i9 = onValidateInApp + 29;
        AppsFlyerLib = i9 % 128;
        if ((i9 % 2 == 0 ? (char) 18 : 'H') == 18) {
            values(sharedPreferences, "appsFlyerCount", z10);
            throw null;
        }
        int values2 = values(sharedPreferences, "appsFlyerCount", z10);
        int i10 = onValidateInApp + 113;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
        return values2;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006f  */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void valueOf(@androidx.annotation.NonNull com.appsflyer.internal.AFa1tSDK r8, @androidx.annotation.Nullable android.app.Activity r9) {
        /*
            r7 = this;
            android.app.Application r0 = r8.AFInAppEventParameterName
            r1 = 0
            r2 = 1
            if (r9 == 0) goto L8
            r3 = 1
            goto L9
        L8:
            r3 = 0
        L9:
            r4 = 0
            java.lang.String r5 = ""
            if (r3 == r2) goto Lf
            goto L36
        Lf:
            int r3 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r3 = r3 + 55
            int r6 = r3 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r6
            int r3 = r3 % 2
            if (r3 != 0) goto L1d
            r3 = 0
            goto L1e
        L1d:
            r3 = 1
        L1e:
            if (r3 == 0) goto L83
            android.content.Intent r3 = r9.getIntent()
            if (r3 == 0) goto L28
            r3 = 1
            goto L29
        L28:
            r3 = 0
        L29:
            if (r3 == 0) goto L36
            android.net.Uri r9 = com.appsflyer.internal.AFb1jSDK.AFInAppEventParameterName(r9)
            if (r9 == 0) goto L36
            java.lang.String r9 = r9.toString()
            goto L37
        L36:
            r9 = r5
        L37:
            com.appsflyer.internal.AFb1bSDK r3 = r7.AppsFlyerConversionListener
            com.appsflyer.internal.AFd1lSDK r3 = r3.AFLogger$LogLevel()
            java.lang.String r3 = r3.AFInAppEventType
            r6 = 70
            if (r3 != 0) goto L46
            r3 = 68
            goto L48
        L46:
            r3 = 70
        L48:
            if (r3 == r6) goto L6f
            java.lang.String r9 = "[LogEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey."
            com.appsflyer.AFLogger.afWarnLog(r9)
            com.appsflyer.attribution.AppsFlyerRequestListener r8 = r8.valueOf
            if (r8 == 0) goto L6e
            int r9 = com.appsflyer.internal.AFa1aSDK.onValidateInApp
            int r9 = r9 + 87
            int r0 = r9 % 128
            com.appsflyer.internal.AFa1aSDK.AppsFlyerLib = r0
            int r9 = r9 % 2
            if (r9 != 0) goto L60
            goto L61
        L60:
            r1 = 1
        L61:
            int r9 = com.appsflyer.attribution.RequestError.NO_DEV_KEY
            java.lang.String r0 = com.appsflyer.internal.AFb1fSDK.AFInAppEventType
            r8.onError(r9, r0)
            if (r1 == 0) goto L6b
            goto L6e
        L6b:
            throw r4     // Catch: java.lang.Throwable -> L6c
        L6c:
            r8 = move-exception
            throw r8
        L6e:
            return
        L6f:
            com.appsflyer.AppsFlyerProperties r1 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r1.getReferrer(r0)
            if (r0 != 0) goto L7a
            goto L7b
        L7a:
            r5 = r0
        L7b:
            r8.afRDLog = r5
            r8.AFInAppEventType = r9
            r7.AFInAppEventParameterName(r8)
            return
        L83:
            r9.getIntent()
            throw r4     // Catch: java.lang.Throwable -> L87
        L87:
            r8 = move-exception
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1aSDK.valueOf(com.appsflyer.internal.AFa1tSDK, android.app.Activity):void");
    }

    @Nullable
    @Deprecated
    public final String AFInAppEventType(Context context) {
        int i9 = onValidateInApp;
        int i10 = i9 + 109;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
        AFb1bSDK aFb1bSDK = this.AppsFlyerConversionListener;
        if ((context != null ? '\'' : 'L') != 'L') {
            AFb1dSDK aFb1dSDK = aFb1bSDK.values;
            if (context != null) {
                int i12 = i9 + 91;
                AppsFlyerLib = i12 % 128;
                char c10 = i12 % 2 == 0 ? (char) 22 : '3';
                aFb1dSDK.values = context.getApplicationContext();
                if (c10 != '3') {
                    throw null;
                }
            }
        }
        String AFInAppEventParameterName2 = this.AppsFlyerConversionListener.valueOf().AFInAppEventParameterName();
        int i13 = AppsFlyerLib + 109;
        onValidateInApp = i13 % 128;
        int i14 = i13 % 2;
        return AFInAppEventParameterName2;
    }

    private static void values(Map<String, Object> map, AFd1dSDK aFd1dSDK) {
        HashMap hashMap = new HashMap(aFd1dSDK.values);
        aFd1dSDK.values.clear();
        aFd1dSDK.valueOf.valueOf("gcd");
        if (!hashMap.isEmpty()) {
            int i9 = onValidateInApp + 65;
            AppsFlyerLib = i9 % 128;
            if (!(i9 % 2 == 0)) {
                AFInAppEventParameterName(map).put("gcd", hashMap);
            } else {
                AFInAppEventParameterName(map).put("gcd", hashMap);
                throw null;
            }
        }
        int i10 = onValidateInApp + 101;
        AppsFlyerLib = i10 % 128;
        int i11 = i10 % 2;
    }
}
