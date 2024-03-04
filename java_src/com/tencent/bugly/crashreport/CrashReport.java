package com.tencent.bugly.crashreport;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.CrashModule;
import com.tencent.bugly.b;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.crashreport.crash.d;
import com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.z;
import java.net.InetAddress;
import java.net.Proxy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public class CrashReport {

    /* renamed from: a  reason: collision with root package name */
    private static Context f30126a;

    /* loaded from: classes4.dex */
    public static class CrashHandleCallback extends BuglyStrategy.a {
    }

    /* loaded from: classes4.dex */
    public static class UserStrategy extends BuglyStrategy {

        /* renamed from: c  reason: collision with root package name */
        private CrashHandleCallback f30128c;

        public UserStrategy(Context context) {
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized int getCallBackType() {
            return this.f30094a;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized boolean getCloseErrorCallback() {
            return this.f30095b;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCallBackType(int i9) {
            this.f30094a = i9;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCloseErrorCallback(boolean z10) {
            this.f30095b = z10;
        }

        public synchronized void setCrashHandleCallback(CrashHandleCallback crashHandleCallback) {
            this.f30128c = crashHandleCallback;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized CrashHandleCallback getCrashHandleCallback() {
            return this.f30128c;
        }
    }

    /* loaded from: classes4.dex */
    public interface WebViewInterface {
        void addJavascriptInterface(H5JavaScriptInterface h5JavaScriptInterface, String str);

        CharSequence getContentDescription();

        String getUrl();

        void loadUrl(String str);

        void setJavaScriptEnabled(boolean z10);
    }

    public static void closeBugly() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not close bugly because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.w(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else if (f30126a == null) {
        } else {
            BuglyBroadcastReceiver buglyBroadcastReceiver = BuglyBroadcastReceiver.getInstance();
            if (buglyBroadcastReceiver != null) {
                buglyBroadcastReceiver.unregister(f30126a);
            }
            closeCrashReport();
            com.tencent.bugly.crashreport.biz.b.a(f30126a);
            w a10 = w.a();
            if (a10 != null) {
                a10.b();
            }
        }
    }

    public static void closeCrashReport() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not close crash report because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.w(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            c.a().d();
        }
    }

    public static void closeNativeReport() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not close native report because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            c.a().g();
        }
    }

    public static void enableBugly(boolean z10) {
        b.f30121a = z10;
    }

    public static void enableObtainId(Context context, boolean z10) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set DB name because bugly is disable.");
        } else if (context == null) {
            Log.w(x.f30674a, "enableObtainId args context should not be null");
        } else {
            String str = x.f30674a;
            Log.i(str, "Enable identification obtaining? " + z10);
            com.tencent.bugly.crashreport.common.info.a.a(context).b(z10);
        }
    }

    public static Set<String> getAllUserDataKeys(Context context) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get all keys of user data because bugly is disable.");
            return new HashSet();
        } else if (context == null) {
            Log.e(x.f30674a, "getAllUserDataKeys args context should not be null");
            return new HashSet();
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(context).x();
        }
    }

    public static String getAppChannel() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get App channel because bugly is disable.");
            return "unknown";
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return "unknown";
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(f30126a).f30203l;
        }
    }

    public static String getAppID() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get App ID because bugly is disable.");
            return "unknown";
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return "unknown";
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(f30126a).f();
        }
    }

    public static String getAppVer() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get app version because bugly is disable.");
            return "unknown";
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return "unknown";
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(f30126a).f30201j;
        }
    }

    public static String getBuglyVersion(Context context) {
        if (context == null) {
            x.d("Please call with context.", new Object[0]);
            return "unknown";
        }
        return com.tencent.bugly.crashreport.common.info.a.a(context).c();
    }

    public static String getDeviceID(Context context) {
        return com.tencent.bugly.crashreport.common.info.a.a(context).h();
    }

    public static Proxy getHttpProxy() {
        return com.tencent.bugly.proguard.a.b();
    }

    public static Map<String, String> getSdkExtraData() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get SDK extra data because bugly is disable.");
            return new HashMap();
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return null;
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(f30126a).B;
        }
    }

    public static String getUserData(Context context, String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get user data because bugly is disable.");
            return "unknown";
        } else if (context == null) {
            Log.e(x.f30674a, "getUserDataValue args context should not be null");
            return "unknown";
        } else if (z.a(str)) {
            return null;
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(context).h(str);
        }
    }

    public static int getUserDatasSize(Context context) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get size of user data because bugly is disable.");
            return -1;
        } else if (context == null) {
            Log.e(x.f30674a, "getUserDatasSize args context should not be null");
            return -1;
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(context).w();
        }
    }

    public static String getUserId() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get user ID because bugly is disable.");
            return "unknown";
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return "unknown";
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(f30126a).g();
        }
    }

    public static int getUserSceneTagId(Context context) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get user scene tag because bugly is disable.");
            return -1;
        } else if (context == null) {
            Log.e(x.f30674a, "getUserSceneTagId args context should not be null");
            return -1;
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(context).A();
        }
    }

    public static void initCrashReport(Context context) {
        if (context == null) {
            return;
        }
        f30126a = context;
        b.a(CrashModule.getInstance());
        b.a(context);
    }

    public static boolean isLastSessionCrash() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "The info 'isLastSessionCrash' is not accurate because bugly is disable.");
            return false;
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return false;
        } else {
            return c.a().b();
        }
    }

    public static void postCatchedException(Throwable th2) {
        postCatchedException(th2, Thread.currentThread(), false);
    }

    public static void postException(Thread thread, int i9, String str, String str2, String str3, Map<String, String> map) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not post crash caught because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            d.a(thread, i9, str, str2, str3, map);
        }
    }

    private static void putSdkData(Context context, String str, String str2) {
        if (context == null || z.a(str) || z.a(str2)) {
            return;
        }
        String replace = str.replace("[a-zA-Z[0-9]]+", "");
        if (replace.length() > 100) {
            Log.w(x.f30674a, String.format("putSdkData key length over limit %d, will be cutted.", 50));
            replace = replace.substring(0, 50);
        }
        if (str2.length() > 500) {
            Log.w(x.f30674a, String.format("putSdkData value length over limit %d, will be cutted!", 200));
            str2 = str2.substring(0, 200);
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).c(replace, str2);
        x.b(String.format("[param] putSdkData data: %s - %s", replace, str2), new Object[0]);
    }

    public static void putUserData(Context context, String str, String str2) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not put user data because bugly is disable.");
        } else if (context == null) {
            Log.w(x.f30674a, "putUserData args context should not be null");
        } else if (str == null) {
            x.d("putUserData args key should not be null or empty", new Object[0]);
        } else if (str2 == null) {
            x.d("putUserData args value should not be null", new Object[0]);
        } else {
            if (str2.length() > 200) {
                x.d("user data value length over limit %d, it will be cutted!", 200);
                str2 = str2.substring(0, 200);
            }
            com.tencent.bugly.crashreport.common.info.a a10 = com.tencent.bugly.crashreport.common.info.a.a(context);
            if (a10.x().contains(str)) {
                NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
                if (nativeCrashHandler != null) {
                    nativeCrashHandler.putKeyValueToNative(str, str2);
                }
                com.tencent.bugly.crashreport.common.info.a.a(context).b(str, str2);
                x.c("replace KV %s %s", str, str2);
            } else if (a10.w() >= 50) {
                x.d("user data size is over limit %d, it will be cutted!", 50);
            } else {
                if (str.length() > 50) {
                    x.d("user data key length over limit %d , will drop this new key %s", 50, str);
                    str = str.substring(0, 50);
                }
                NativeCrashHandler nativeCrashHandler2 = NativeCrashHandler.getInstance();
                if (nativeCrashHandler2 != null) {
                    nativeCrashHandler2.putKeyValueToNative(str, str2);
                }
                com.tencent.bugly.crashreport.common.info.a.a(context).b(str, str2);
                x.b("[param] set user data: %s - %s", str, str2);
            }
        }
    }

    public static String removeUserData(Context context, String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not remove user data because bugly is disable.");
            return "unknown";
        } else if (context == null) {
            Log.e(x.f30674a, "removeUserData args context should not be null");
            return "unknown";
        } else if (z.a(str)) {
            return null;
        } else {
            x.b("[param] remove user data: %s", str);
            return com.tencent.bugly.crashreport.common.info.a.a(context).g(str);
        }
    }

    public static void setAppChannel(Context context, String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set App channel because Bugly is disable.");
        } else if (context == null) {
            Log.w(x.f30674a, "setAppChannel args context should not be null");
        } else if (str == null) {
            Log.w(x.f30674a, "App channel is null, will not set");
        } else {
            com.tencent.bugly.crashreport.common.info.a.a(context).f30203l = str;
            NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
            if (nativeCrashHandler != null) {
                nativeCrashHandler.setNativeAppChannel(str);
            }
        }
    }

    public static void setAppPackage(Context context, String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set App package because bugly is disable.");
        } else if (context == null) {
            Log.w(x.f30674a, "setAppPackage args context should not be null");
        } else if (str == null) {
            Log.w(x.f30674a, "App package is null, will not set");
        } else {
            com.tencent.bugly.crashreport.common.info.a.a(context).f30194c = str;
            NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
            if (nativeCrashHandler != null) {
                nativeCrashHandler.setNativeAppPackage(str);
            }
        }
    }

    public static void setAppVersion(Context context, String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set App version because bugly is disable.");
        } else if (context == null) {
            Log.w(x.f30674a, "setAppVersion args context should not be null");
        } else if (str == null) {
            Log.w(x.f30674a, "App version is null, will not set");
        } else {
            com.tencent.bugly.crashreport.common.info.a.a(context).f30201j = str;
            NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
            if (nativeCrashHandler != null) {
                nativeCrashHandler.setNativeAppVersion(str);
            }
        }
    }

    public static void setBuglyDbName(String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set DB name because bugly is disable.");
            return;
        }
        String str2 = x.f30674a;
        Log.i(str2, "Set Bugly DB name: " + str);
        q.f30624a = str;
    }

    public static void setContext(Context context) {
        f30126a = context;
    }

    public static void setCrashFilter(String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set App package because bugly is disable.");
            return;
        }
        String str2 = x.f30674a;
        Log.i(str2, "Set crash stack filter: " + str);
        c.f30349n = str;
    }

    public static void setCrashRegularFilter(String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set App package because bugly is disable.");
            return;
        }
        String str2 = x.f30674a;
        Log.i(str2, "Set crash stack filter: " + str);
        c.f30350o = str;
    }

    public static void setDeviceId(Context context, String str) {
        if (str != null) {
            com.tencent.bugly.crashreport.common.info.a.a(context).c(str);
        }
    }

    public static void setDeviceModel(Context context, String str) {
        if (str != null) {
            com.tencent.bugly.crashreport.common.info.a.a(context).d(str);
        }
    }

    public static void setHandleNativeCrashInJava(boolean z10) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set App package because bugly is disable.");
            return;
        }
        String str = x.f30674a;
        Log.i(str, "Should handle native crash in Java profile after handled in native profile: " + z10);
        NativeCrashHandler.setShouldHandleInJava(z10);
    }

    public static void setHttpProxy(String str, int i9) {
        com.tencent.bugly.proguard.a.a(str, i9);
    }

    public static void setIsAppForeground(Context context, boolean z10) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set 'isAppForeground' because bugly is disable.");
        } else if (context == null) {
            x.d("Context should not be null.", new Object[0]);
        } else {
            if (z10) {
                x.c("App is in foreground.", new Object[0]);
            } else {
                x.c("App is in background.", new Object[0]);
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).a(z10);
        }
    }

    public static void setIsDevelopmentDevice(Context context, boolean z10) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set 'isDevelopmentDevice' because bugly is disable.");
        } else if (context == null) {
            x.d("Context should not be null.", new Object[0]);
        } else {
            if (z10) {
                x.c("This is a development device.", new Object[0]);
            } else {
                x.c("This is not a development device.", new Object[0]);
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).f30217z = z10;
        }
    }

    public static boolean setJavascriptMonitor(WebView webView, boolean z10) {
        return setJavascriptMonitor(webView, z10, false);
    }

    public static void setSdkExtraData(Context context, String str, String str2) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not put SDK extra data because bugly is disable.");
        } else if (context == null || z.a(str) || z.a(str2)) {
        } else {
            com.tencent.bugly.crashreport.common.info.a.a(context).a(str, str2);
        }
    }

    public static void setServerUrl(String str) {
        if (!z.a(str) && z.c(str)) {
            com.tencent.bugly.crashreport.common.strategy.a.a(str);
            StrategyBean.f30221a = str;
            StrategyBean.f30222b = str;
            return;
        }
        Log.i(x.f30674a, "URL is invalid.");
    }

    public static void setSessionIntervalMills(long j10) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set 'SessionIntervalMills' because bugly is disable.");
        } else {
            com.tencent.bugly.crashreport.biz.b.a(j10);
        }
    }

    public static void setUserId(String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set user ID because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            setUserId(f30126a, str);
        }
    }

    public static void setUserSceneTag(Context context, int i9) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set tag caught because bugly is disable.");
        } else if (context == null) {
            Log.e(x.f30674a, "setTag args context should not be null");
        } else {
            if (i9 <= 0) {
                x.d("setTag args tagId should > 0", new Object[0]);
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).a(i9);
            x.b("[param] set user scene tag: %d", Integer.valueOf(i9));
        }
    }

    public static void startCrashReport() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not start crash report because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.w(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            c.a().c();
        }
    }

    public static void testANRCrash() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not test ANR crash because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            x.a("start to create a anr crash for test!", new Object[0]);
            c.a().l();
        }
    }

    public static void testJavaCrash() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not test Java crash because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            com.tencent.bugly.crashreport.common.info.a b10 = com.tencent.bugly.crashreport.common.info.a.b();
            if (b10 != null) {
                b10.b(24096);
            }
            throw new RuntimeException("This Crash create for Test! You can go to Bugly see more detail!");
        }
    }

    public static void testNativeCrash() {
        testNativeCrash(false, false, false);
    }

    public static void uploadUserInfo() {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not upload user info because bugly is disable.");
            return;
        }
        com.tencent.bugly.crashreport.biz.a aVar = com.tencent.bugly.crashreport.biz.b.f30161a;
        if (aVar == null) {
            Log.w(x.f30674a, "Can not upload user info because bugly is not init.");
        } else {
            aVar.b();
        }
    }

    public static void postCatchedException(Throwable th2, Thread thread) {
        postCatchedException(th2, thread, false);
    }

    public static void setHttpProxy(InetAddress inetAddress, int i9) {
        com.tencent.bugly.proguard.a.a(inetAddress, i9);
    }

    public static boolean setJavascriptMonitor(final WebView webView, boolean z10, boolean z11) {
        if (webView == null) {
            Log.w(x.f30674a, "WebView is null.");
            return false;
        }
        webView.getSettings().setSavePassword(false);
        webView.getSettings().setAllowFileAccess(false);
        return setJavascriptMonitor(new WebViewInterface() { // from class: com.tencent.bugly.crashreport.CrashReport.1
            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void addJavascriptInterface(H5JavaScriptInterface h5JavaScriptInterface, String str) {
                webView.addJavascriptInterface(h5JavaScriptInterface, str);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final CharSequence getContentDescription() {
                return webView.getContentDescription();
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final String getUrl() {
                return webView.getUrl();
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void loadUrl(String str) {
                webView.loadUrl(str);
            }

            @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
            public final void setJavaScriptEnabled(boolean z12) {
                WebSettings settings = webView.getSettings();
                if (settings.getJavaScriptEnabled()) {
                    return;
                }
                settings.setJavaScriptEnabled(true);
            }
        }, z10, z11);
    }

    public static void testNativeCrash(boolean z10, boolean z11, boolean z12) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not test native crash because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            x.a("start to create a native crash for test!", new Object[0]);
            c.a().a(z10, z11, z12);
        }
    }

    public static void postCatchedException(Throwable th2, Thread thread, boolean z10) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not post crash caught because bugly is disable.");
        } else if (!CrashModule.getInstance().hasInitialized()) {
            Log.e(x.f30674a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else if (th2 == null) {
            x.d("throwable is null, just return", new Object[0]);
        } else {
            if (thread == null) {
                thread = Thread.currentThread();
            }
            c.a().a(thread, th2, false, (String) null, (byte[]) null, z10);
        }
    }

    public static void initCrashReport(Context context, UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        f30126a = context;
        b.a(CrashModule.getInstance());
        b.a(context, userStrategy);
    }

    public static void postException(int i9, String str, String str2, String str3, Map<String, String> map) {
        postException(Thread.currentThread(), i9, str, str2, str3, map);
    }

    public static void setUserId(Context context, String str) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not set user ID because bugly is disable.");
        } else if (context == null) {
            Log.e(x.f30674a, "Context should not be null when bugly has not been initialed!");
        } else if (TextUtils.isEmpty(str)) {
            x.d("userId should not be null", new Object[0]);
        } else {
            if (str.length() > 100) {
                String substring = str.substring(0, 100);
                x.d("userId %s length is over limit %d substring to %s", str, 100, substring);
                str = substring;
            }
            if (str.equals(com.tencent.bugly.crashreport.common.info.a.a(context).g())) {
                return;
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).b(str);
            x.b("[user] set userId : %s", str);
            NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance();
            if (nativeCrashHandler != null) {
                nativeCrashHandler.setNativeUserId(str);
            }
            if (CrashModule.getInstance().hasInitialized()) {
                com.tencent.bugly.crashreport.biz.b.a();
            }
        }
    }

    public static Map<String, String> getSdkExtraData(Context context) {
        if (!b.f30121a) {
            Log.w(x.f30674a, "Can not get SDK extra data because bugly is disable.");
            return new HashMap();
        } else if (context == null) {
            x.d("Context should not be null.", new Object[0]);
            return null;
        } else {
            return com.tencent.bugly.crashreport.common.info.a.a(context).B;
        }
    }

    public static void initCrashReport(Context context, String str, boolean z10) {
        if (context != null) {
            f30126a = context;
            b.a(CrashModule.getInstance());
            b.a(context, str, z10, null);
        }
    }

    public static boolean setJavascriptMonitor(WebViewInterface webViewInterface, boolean z10) {
        return setJavascriptMonitor(webViewInterface, z10, false);
    }

    public static void initCrashReport(Context context, String str, boolean z10, UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        f30126a = context;
        b.a(CrashModule.getInstance());
        b.a(context, str, z10, userStrategy);
    }

    public static boolean setJavascriptMonitor(WebViewInterface webViewInterface, boolean z10, boolean z11) {
        if (webViewInterface == null) {
            Log.w(x.f30674a, "WebViewInterface is null.");
            return false;
        } else if (!CrashModule.getInstance().hasInitialized()) {
            x.e("CrashReport has not been initialed! please to call method 'initCrashReport' first!", new Object[0]);
            return false;
        } else {
            x.a("Set Javascript exception monitor of webview.", new Object[0]);
            if (!b.f30121a) {
                Log.w(x.f30674a, "Can not set JavaScript monitor because bugly is disable.");
                return false;
            }
            x.c("URL of webview is %s", webViewInterface.getUrl());
            x.a("Enable the javascript needed by webview monitor.", new Object[0]);
            webViewInterface.setJavaScriptEnabled(true);
            H5JavaScriptInterface h5JavaScriptInterface = H5JavaScriptInterface.getInstance(webViewInterface);
            if (h5JavaScriptInterface != null) {
                x.a("Add a secure javascript interface to the webview.", new Object[0]);
                webViewInterface.addJavascriptInterface(h5JavaScriptInterface, "exceptionUploader");
            }
            if (z10) {
                x.a("Inject bugly.js(v%s) to the webview.", com.tencent.bugly.crashreport.crash.h5.b.b());
                String a10 = com.tencent.bugly.crashreport.crash.h5.b.a();
                if (a10 == null) {
                    x.e("Failed to inject Bugly.js.", com.tencent.bugly.crashreport.crash.h5.b.b());
                    return false;
                }
                webViewInterface.loadUrl("javascript:" + a10);
            }
            return true;
        }
    }
}
