package com.guochao.faceshow;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b8.c;
import b8.d;
import b8.e;
import com.facebook.appevents.AppEventsLogger;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.debug.StreamUrlUtils;
import com.guochao.faceshow.aaspring.modulars.live.floatwindow.LiveFloatWindowService;
import com.guochao.faceshow.aaspring.utils.AppsflyerUtils;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.ResponseChecker;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.Contants;
import com.tencent.bugly.crashreport.CrashReport;
import java.util.List;
/* loaded from: classes3.dex */
public class BaseApplication extends BaseAppContext implements EventTrackingUtils.OnEventTrackListener, d.a, EventTrackingV2Utils.OnEventTrackListener {
    private static final String TAG = "BaseApplication";
    AppEventsLogger mAppEventsLogger;
    FirebaseAnalytics mFirebaseAnalytics;

    /* loaded from: classes3.dex */
    class a implements ServiceConnection {
        a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static BaseApplication getInstance() {
        return (BaseApplication) GCApplication.app();
    }

    private void initAdjust() {
        AppsflyerUtils.init(this);
    }

    @Override // com.guochao.faceshow.BaseAppContext
    public void initWhenMainProcess() {
        GCEventUtils.init();
        initAdjust();
        e.g().registerOnUserChangedListener(this);
        this.mFirebaseAnalytics = FirebaseAnalytics.getInstance(this);
        DelayIniter.initFacebook();
        this.mAppEventsLogger = AppEventsLogger.newLogger(this);
        EventTrackingUtils.getInstance().addListener(this);
        EventTrackingV2Utils.INSTANCE.addListener(this);
        bindService(new Intent(this, LiveFloatWindowService.class), new a(), 1);
        super.initWhenMainProcess();
    }

    @Override // com.guochao.faceshow.BaseAppContext, com.guochao.faceshow.aaspring.base.mvvm.GCMvvmApplication, com.guochao.faceshow.context.GCApplication, android.app.Application
    public void onCreate() {
        x6.a.a(this, false);
        Contants.init();
        com.google.firebase.d.r(this);
        super.onCreate();
        if (x6.a.f59633i) {
            StreamUrlUtils.setGrey();
        }
        GCRequest.setBaseUrl(x6.a.f59626b);
        List<String> list = BaseFaceCastRequest.f16246y;
        list.add(x6.a.f59625a + "tokens/gift/V4/sendGift");
        i7.a.f40981d = new ResponseChecker();
    }

    @Override // b8.d.a
    public void onLogout() {
        FirebaseAnalytics firebaseAnalytics = this.mFirebaseAnalytics;
        if (firebaseAnalytics != null) {
            firebaseAnalytics.c(null);
        }
        BeautyItemCacheManager.clearMemory();
    }

    @Override // com.guochao.faceshow.aaspring.utils.EventTrackingUtils.OnEventTrackListener, com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils.OnEventTrackListener
    public void onTrackEvent(@NonNull String str, @Nullable Bundle bundle) {
        if (bundle != null) {
            try {
                Bundle bundle2 = new Bundle();
                for (String str2 : bundle.keySet()) {
                    Object obj = bundle.get(str2);
                    if (obj != null) {
                        bundle2.putString(str2, String.valueOf(obj));
                    }
                }
                this.mFirebaseAnalytics.a(str, bundle2);
                this.mAppEventsLogger.logEvent(str, bundle2);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        this.mFirebaseAnalytics.a(str, bundle);
        this.mAppEventsLogger.logEvent(str, bundle);
    }

    @Override // b8.d.a
    public void onUserChanged(UserBean userBean, UserBean userBean2) {
        if (userBean2 != null) {
            String userId = userBean2.getUserId();
            if (SpUtils.getInt(this, "first_award_" + userId) != 1) {
                SpUtils.setInt(this, "first_award_" + userId, 1);
                new GCRequestJava("api/token/promotion/levelAward/firstAward").request();
            }
            FirebaseAnalytics firebaseAnalytics = this.mFirebaseAnalytics;
            if (firebaseAnalytics != null) {
                firebaseAnalytics.c(userId);
            }
            try {
                CrashReport.setUserId(this, userId);
            } catch (Exception unused) {
            }
        }
    }

    @Override // b8.d.a
    public /* bridge */ /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        c.a(this, userBean, userBean2, z10, z11, z12);
    }
}
