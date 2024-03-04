package cn.jpush.android.local;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import android.os.Bundle;
import cn.jpush.android.aa.c;
import cn.jpush.android.af.a;
import cn.jpush.android.d.d;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.service.JCommonService;
import cn.jpush.android.service.JPushMessageReceiver;
/* loaded from: classes.dex */
public class JPushConstants {
    public static int BUILD_ID = 2;
    public static final String ENCODING_UTF_8 = "UTF-8";
    public static final int FORE_GROUND = 0;
    public static final int FORE_GROUND_NO = 1;
    public static final int FORE_GROUND_UNKNOWN = -1;
    public static final String HTTPS_PRE = "https://";
    public static final String HTTP_PRE = "http://";
    public static final boolean IG = true;
    public static boolean IS_HB_PERIOD_ENABLE = true;
    public static String SDK_NAME = "";
    public static final String SDK_TYPE = "JPUSH";
    public static int SDK_VERSION_CODE = 422;
    public static String SDK_VERSION_NAME = "4.2.2";
    public static boolean SUPPORT_DY = true;
    private static final String TAG = "JPushConstants";
    public static boolean THIRD_ENABLE = true;
    private static final String USER_MESSAGE_RECEIVER_ACTION = "cn.jpush.android.intent.RECEIVE_MESSAGE";
    public static int isForeGround = -1;
    private static boolean isInitLife = false;
    private static Boolean isSameProcessWithJCommonService = null;
    private static boolean isTestAndroidQ = false;
    private static JPushMessageReceiver jPushMessageReceiver;
    public static Context mApplicationContext;
    private static String messageReceiverClass;
    private static String messageReceiverProcess;
    private static boolean tcpConnected;

    /* loaded from: classes.dex */
    public static class TEST_CONFIG {
        public static String TEST_FILE_URL = "";
        public static String TEST_FILE_VERSION = "";
    }

    public static boolean canGetLbsInBackGround(Context context) {
        String str;
        if (isAndroidQ(context, true, "canGetLbsInBackGround")) {
            if (isForeGround != 1 || a.b(context, "android.permission.ACCESS_BACKGROUND_LOCATION")) {
                str = (isForeGround == -1 && !a.b(context, "android.permission.ACCESS_BACKGROUND_LOCATION")) ? "app is unkonwn foreground stat and no android.permission.ACCESS_BACKGROUND_LOCATION" : "app is unkonwn foreground stat and no android.permission.ACCESS_BACKGROUND_LOCATION";
            } else {
                str = "app is not in foreground and no android.permission.ACCESS_BACKGROUND_LOCATION";
            }
            Logger.ww(TAG, str);
            return false;
        }
        return true;
    }

    public static void changeForegroudStat(Context context, boolean z10) {
        Logger.d(TAG, "changeForegroudStat:" + z10);
        isForeGround = !z10 ? 1 : 0;
        Bundle bundle = new Bundle();
        bundle.putBoolean("foreground", z10);
        JCoreHelper.runActionWithService(context, SDK_TYPE, "change_foreground", bundle);
    }

    public static Context getAppContext(Context context) {
        if (mApplicationContext == null && context != null) {
            mApplicationContext = context.getApplicationContext();
        }
        return mApplicationContext;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
        cn.jpush.android.local.JPushConstants.messageReceiverClass = r5;
        cn.jpush.android.local.JPushConstants.messageReceiverProcess = r4.activityInfo.processName;
        cn.jpush.android.helper.Logger.ii(cn.jpush.android.local.JPushConstants.TAG, "found messageReceiverClass :" + cn.jpush.android.local.JPushConstants.messageReceiverClass + "at " + cn.jpush.android.local.JPushConstants.messageReceiverProcess + " by getCommonReceiverNames");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0076, code lost:
        r3 = cn.jpush.android.local.JPushConstants.messageReceiverProcess;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0078, code lost:
        if (r3 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0082, code lost:
        if (r3.equals(cn.jpush.android.af.a.d(r8)) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0084, code lost:
        cn.jpush.android.local.JPushConstants.jPushMessageReceiver = (cn.jpush.android.service.JPushMessageReceiver) r6.newInstance();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMessageReceiverClass(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.local.JPushConstants.getMessageReceiverClass(android.content.Context):java.lang.String");
    }

    public static JPushMessageReceiver getPushMessageReceiver(Context context) {
        getMessageReceiverClass(getAppContext(context));
        return jPushMessageReceiver;
    }

    public static void init(Context context) {
        initPageLifecycle(context);
    }

    private static void initPageLifecycle(Context context) {
        Activity p10;
        if (context == null) {
            Logger.w(TAG, "[initPageLifecycle] context is null");
            return;
        }
        Logger.d(TAG, "initPageLifecycle init, isInitLife: " + isInitLife);
        if (isInitLife) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        try {
            isInitLife = true;
            if (applicationContext instanceof Application) {
                String d10 = a.d(applicationContext);
                String packageName = applicationContext.getPackageName();
                if (d10 == null || packageName == null || !applicationContext.getPackageName().equals(d10)) {
                    Logger.d(TAG, "need not initPageLifecycle in other process :" + d10);
                    d dVar = new d();
                    dVar.f3031q = 1;
                    c.a(applicationContext, "sync_reg_lifecycle", dVar, (Intent) null);
                    return;
                }
                ActivityLifeCallBack activityLifeCallBack = new ActivityLifeCallBack();
                ((Application) applicationContext).registerActivityLifecycleCallbacks(activityLifeCallBack);
                if (ActivityLifeCallBack.activityTaskCount == 0 && (p10 = a.p(applicationContext)) != null) {
                    activityLifeCallBack.onActivityCreated(p10, null);
                    activityLifeCallBack.onActivityStarted(p10);
                    activityLifeCallBack.onActivityResumed(p10);
                }
                Logger.d(TAG, "initPageLifecycle in main process, packageName:" + packageName + ", currentProcessName:" + d10);
            }
        } catch (Throwable th2) {
            Logger.ww(TAG, "registerActivityLifecycleCallbacks failed:" + th2.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0029, code lost:
        if (r3.getApplicationInfo().targetSdkVersion <= 28) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isAndroidQ(android.content.Context r3, boolean r4, java.lang.String r5) {
        /*
            r0 = 1
            r1 = 0
            r2 = 28
            if (r4 != 0) goto L16
            boolean r3 = cn.jpush.android.local.JPushConstants.isTestAndroidQ
            if (r3 == 0) goto Lf
            int r3 = android.os.Build.VERSION.SDK_INT
            if (r3 < r2) goto L14
            goto L2b
        Lf:
            int r3 = android.os.Build.VERSION.SDK_INT
            if (r3 <= r2) goto L14
            goto L2b
        L14:
            r0 = 0
            goto L2b
        L16:
            boolean r4 = cn.jpush.android.local.JPushConstants.isTestAndroidQ
            if (r4 == 0) goto L1f
            int r4 = android.os.Build.VERSION.SDK_INT
            if (r4 < r2) goto L14
            goto L23
        L1f:
            int r4 = android.os.Build.VERSION.SDK_INT
            if (r4 <= r2) goto L14
        L23:
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo()
            int r3 = r3.targetSdkVersion
            if (r3 <= r2) goto L14
        L2b:
            if (r0 == 0) goto L43
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "is Android Q, msg: "
            r3.append(r4)
            r3.append(r5)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "JPushConstants"
            cn.jpush.android.helper.Logger.d(r4, r3)
        L43:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.local.JPushConstants.isAndroidQ(android.content.Context, boolean, java.lang.String):boolean");
    }

    public static boolean isSameProcessWithJCommonService(Context context) {
        Boolean bool;
        try {
            Boolean bool2 = isSameProcessWithJCommonService;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
            if (messageReceiverProcess == null) {
                getMessageReceiverClass(context);
            }
            ComponentInfo a10 = a.a(context, context.getPackageName(), JCommonService.class);
            if (a10 != null) {
                if (a10.processName.equals(messageReceiverProcess)) {
                    Logger.dd(TAG, "same process with JCommonService");
                    bool = Boolean.TRUE;
                } else {
                    Logger.dd(TAG, "is not same process with JCommonService");
                    bool = Boolean.FALSE;
                }
                isSameProcessWithJCommonService = bool;
                return isSameProcessWithJCommonService.booleanValue();
            }
            return false;
        } catch (Throwable th2) {
            Logger.w(TAG, "call isSameProcessWithJCommonService failed:" + th2.getMessage());
            return false;
        }
    }

    public static boolean isTcpConnected() {
        return tcpConnected;
    }

    public static void setTcpConnected(boolean z10) {
        tcpConnected = z10;
    }

    public static void testAndroidQ() {
    }
}
