package com.guochao.faceshow;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.LocaleList;
import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b8.e;
import cn.jpush.android.api.JPushInterface;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.guochao.GCLiveConfig;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.GCMvvmApplication;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.login.activity.ChooseLoginTypeActivity;
import com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.AppSettings;
import com.guochao.faceshow.aaspring.utils.CpuInfoUtils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.MMKVUtils;
import com.guochao.faceshow.aaspring.utils.NetworkObserverHelper;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.PhotoObserver;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.ApplicationContextGetter;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DataCleanManager;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import com.guochao.faceshow.utils.ReportController;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.pusher.GCLivePusher;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.opensource.svgaplayer.SVGAParser;
import com.tencent.bugly.crashreport.CrashReport;
import io.reactivex.k;
import java.io.File;
import java.util.Locale;
import java.util.Objects;
import ob.m;
import vh.o;
/* loaded from: classes3.dex */
public class BaseAppContext extends GCMvvmApplication {
    public static String UA = null;
    public static boolean isChange = false;
    public static boolean isClearHalloween = false;
    NetworkObserverHelper.OnNetworkChangeCallBack mOnNetworkChangeCallBack;
    public boolean normalLogined;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements o<Integer, Integer> {
        a() {
        }

        @Override // vh.o
        /* renamed from: a */
        public Integer apply(Integer num) throws Exception {
            BaseAppContext.this.initAsync();
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    class b extends c<UserBean> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(UserBean userBean, @NonNull FaceCastBaseResponse<UserBean> faceCastBaseResponse) {
            BaseMainActivity.v0();
            e.g().d(faceCastBaseResponse.getResult(), !i.u().f16494d, false, false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<UserBean> aVar) {
        }
    }

    @RequiresApi(api = 26)
    private void checkChannel(NotificationManager notificationManager, String str, String str2, int i9) {
        try {
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
            if (notificationChannel == null) {
                notificationChannel = new NotificationChannel(str, str2, i9);
            } else {
                notificationManager.deleteNotificationChannel(str);
            }
            notificationChannel.enableLights(true);
            if (i9 >= 3) {
                notificationChannel.enableVibration(true);
            }
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
        } catch (Exception unused) {
        }
    }

    private int considerImportance(int i9) {
        if (PhoneUtils.isLowMemoryDevice()) {
            return 3;
        }
        return i9;
    }

    private void createNotificationChannels() {
        NotificationManager notificationManager;
        if (Build.VERSION.SDK_INT < 26 || (notificationManager = (NotificationManager) getSystemService(RemoteMessageConst.NOTIFICATION)) == null) {
            return;
        }
        checkChannel(notificationManager, ThirdPushHelper.TYPE_XIAOMI_INTERNATIONAL, "Update", 2);
        checkChannel(notificationManager, "12", "Live", considerImportance(4));
        checkChannel(notificationManager, "99", "Chat", 4);
        checkChannel(notificationManager, ReportController.REPORT_TYPE_DYNAMIC_COMMENT, "Invite", considerImportance(4));
    }

    private void fixWebView() {
        String currentProcessName;
        if (Build.VERSION.SDK_INT >= 28 && (currentProcessName = getCurrentProcessName(this)) != null && !getPackageName().equals(currentProcessName)) {
            try {
                WebView.setDataDirectorySuffix(currentProcessName);
            } catch (Exception unused) {
            }
        }
        try {
            WebView webView = new WebView(BaseApplication.getInstance());
            UA = webView.getSettings().getUserAgentString();
            webView.destroy();
        } catch (Exception unused2) {
        }
    }

    public static String getCurrentProcessName(Context context) {
        try {
            int myPid = Process.myPid();
            ActivityManager activityManager = (ActivityManager) context.getSystemService(PushConstants.INTENT_ACTIVITY_NAME);
            if (activityManager != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == myPid) {
                        return runningAppProcessInfo.processName;
                    }
                }
                return "";
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    private void init() {
        Foreground.init(BaseApplication.getInstance());
        i.u().w(this);
    }

    public void accountForceLogout(String str, String str2) {
        e.g().a(null, false);
        if (AppManager.getInstance().getTopActivity() instanceof ChooseLoginTypeActivity) {
            return;
        }
        try {
            z8.c.o().J(true, false);
            z8.c.o().N(null);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        Intent intent = new Intent(BaseApplication.getInstance(), ChooseLoginTypeActivity.class);
        intent.setAction(str);
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra(LOCAL_EVENT_MSG.PARAMS_MSG_KEY, str2);
        }
        intent.setFlags(268468224);
        startActivity(intent);
    }

    @Nullable
    public Activity getCurrTopActivity() {
        return Foreground.get().getTopActivity();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = super.getResources();
        if (resources != null && resources.getConfiguration().fontScale != 1.0f) {
            Configuration configuration = resources.getConfiguration();
            configuration.fontScale = 1.0f;
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        }
        return resources;
    }

    public void initAsync() {
        if (isMainProcess()) {
            z7.a.a().b();
            createNotificationChannels();
            ja.a.b().c(this);
            UserStateHolder.reset();
            if (Build.VERSION.SDK_INT >= 24) {
                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
            }
            try {
                GCApplication.sCpuArch = CpuInfoUtils.getArchType();
            } catch (Exception unused) {
            }
            AppSettings.init(this);
            com.guochao.faceshow.aaspring.manager.a.g().p(this);
            SvgaImageViewUtils.setOptions(this);
            long j10 = SpUtils.getLong(this, "last_clear_banner");
            if (j10 <= 0 || System.currentTimeMillis() - j10 >= TimeUtil.WEEK) {
                DataCleanManager.deleteDir(new File(FilePathProvider.getCachePath("/banner_image/")));
                SpUtils.setLong(this, "last_clear_banner", System.currentTimeMillis());
            }
            d.Z().O();
        }
        initJPush();
    }

    public void initJPush() {
        JPushInterface.setLbsEnable(this, false);
        JPushInterface.setDebugMode(false);
        JPushInterface.init(getApplicationContext());
        JPushInterface.resumePush(getApplicationContext());
        JPushInterface.setSilenceTime(getApplicationContext(), 22, 0, 8, 0);
    }

    public void initWhenMainProcess() {
        MMKVUtils.init(this);
        BaseFaceCastRequest.f16245x = SpUtils.getStr(this, Contants.USER_TOKEN);
        BaseFaceCastRequest.f16244w = SpUtils.getStr(this, Contants.USER_ID);
        SVGAParser.Companion.shareParser().init(this);
        ApplicationContextGetter.instance().setApplicationContext(this);
        q7.a.e().i(this);
        e.g().init(this);
        init();
        GCLivePusher.init(this);
        ThirdPushHelper.init();
        GCLiveConfig.setTestEnv(false);
    }

    public boolean isMainProcess() {
        return TextUtils.equals(getCurrentProcessName(this), getPackageName());
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (TextUtils.equals(getCurrentProcessName(this), getPackageName())) {
            String f10 = q7.a.e().f();
            String g10 = q7.a.e().g();
            q7.a.e().n(this);
            if (Objects.equals(f10, q7.a.e().f()) && Objects.equals(g10, q7.a.e().g())) {
                return;
            }
            new PostRequest().O(this).Q("tokens/user/set/modifyPhoneConf").L();
            i.u().x();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.GCMvvmApplication, com.guochao.faceshow.context.GCApplication, android.app.Application
    public void onCreate() {
        super.onCreate();
        CrashReport.UserStrategy userStrategy = new CrashReport.UserStrategy(this);
        userStrategy.setUploadProcess(true);
        CrashReport.initCrashReport(getApplicationContext(), x6.a.f59629e, false, userStrategy);
        fixWebView();
        if (isMainProcess()) {
            initWhenMainProcess();
        }
        k.just(1).map(new a()).subscribeOn(di.a.b()).subscribe();
        m.a(this);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        ic.a.a(this).b();
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        PhotoObserver.getInstance().destroy();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i9) {
        super.onTrimMemory(i9);
        ic.a.a(this).r(i9);
    }

    public void refreshToken() {
        String str;
        if (this.normalLogined || (str = SpUtils.getStr(this, Contants.USER_TOKEN)) == null) {
            return;
        }
        new PostRequest(this, null, "api/sys/tokenLogin").D(JThirdPlatFormInterface.KEY_TOKEN, str).D("refreshThirdPushToken", "1").M(new b());
    }

    @Override // com.guochao.faceshow.context.GCApplication
    public void updateLocale() {
        Locale m10 = q7.a.e().m();
        if (m10 == null) {
            return;
        }
        Configuration configuration = getResources().getConfiguration();
        configuration.setLocale(m10);
        if (Build.VERSION.SDK_INT >= 24) {
            configuration.setLocales(new LocaleList(m10));
        }
        getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
    }
}
