package com.guochao.faceshow.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.manager.im.IMPushNotificationManager;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.utils.ActivityLifecycleCallBackImp;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.service.CallForegroundService;
import com.guochao.faceshow.service.LiveForegroundService;
import com.guochao.faceshow.service.WatchingLiveForegroundService;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes4.dex */
public class Foreground extends ActivityLifecycleCallBackImp {
    private static final long TIME_TO_CHECK_OPEN = 10800000;
    private long mEnterForegroundTime;
    private long mLastServiceTime;
    WeakReference<Activity> mTopActivity;
    private static Foreground instance = new Foreground();
    private static String TAG = Foreground.class.getSimpleName();
    private int FrontActCount = 0;
    private boolean isAppFront = true;
    private List<OnForegroundStateChangedListener> mListeners = new ArrayList();
    public Runnable mRunnable = new Runnable() { // from class: com.guochao.faceshow.utils.Foreground.1
        @Override // java.lang.Runnable
        public void run() {
            ServiceUtils.safeStopForegroundService(LiveForegroundService.class);
            ServiceUtils.safeStopForegroundService(CallForegroundService.class);
            ServiceUtils.safeStopForegroundService(WatchingLiveForegroundService.class);
        }
    };

    /* loaded from: classes4.dex */
    public interface OnForegroundStateChangedListener {
        void onEnterBackground();

        void onEnterForeground();
    }

    private Foreground() {
    }

    private void checkUserOpenApp() {
        long j10 = SpUtils.getLong(BaseApplication.getInstance(), "last_open_app");
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - j10 < TIME_TO_CHECK_OPEN) {
            return;
        }
        String userId = b8.e.g().c().getUserId();
        String token = b8.e.g().c().getToken();
        if (TextUtils.isEmpty(userId) && TextUtils.isEmpty(token)) {
            return;
        }
        new PostRequest("tokens/user/info/userOpenApp").L();
        SpUtils.setLong(BaseApplication.getInstance(), "last_open_app", currentTimeMillis);
    }

    public static Foreground get() {
        return instance;
    }

    public static void init(Application application) {
        application.registerActivityLifecycleCallbacks(instance);
    }

    private void updateLanguage(Activity activity) {
        PackageUtils.updateLocal(activity.getResources());
    }

    public Activity getCurrentActiveActivity() {
        return null;
    }

    public long getEnterForegroundTime() {
        return this.mEnterForegroundTime;
    }

    @Nullable
    public Activity getTopActivity() {
        WeakReference<Activity> weakReference = this.mTopActivity;
        if (weakReference == null) {
            return null;
        }
        Activity activity = weakReference.get();
        return (activity == null || activity.getParent() == null) ? activity : activity.getParent();
    }

    public boolean isForeground() {
        return this.isAppFront;
    }

    @Override // com.guochao.faceshow.aaspring.utils.ActivityLifecycleCallBackImp, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        updateLanguage(activity);
        AppManager.getInstance().addActivity(activity);
    }

    @Override // com.guochao.faceshow.aaspring.utils.ActivityLifecycleCallBackImp, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.mTopActivity = new WeakReference<>(activity);
        if (activity instanceof CallingActivity) {
            return;
        }
        w9.a.a().b();
    }

    @Override // com.guochao.faceshow.aaspring.utils.ActivityLifecycleCallBackImp, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.FrontActCount++;
        if (this.isAppFront) {
            return;
        }
        this.isAppFront = true;
        Intent intent = new Intent();
        intent.setAction(LOCAL_EVENT_MSG.APP_IN_FORGROUND);
        EventBus.getDefault().post(intent);
        IMPushNotificationManager.cancelAll();
        onEnterForeground();
    }

    @Override // com.guochao.faceshow.aaspring.utils.ActivityLifecycleCallBackImp, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int i9 = this.FrontActCount - 1;
        this.FrontActCount = i9;
        if (i9 <= 0) {
            this.isAppFront = false;
            Intent intent = new Intent();
            intent.setAction(LOCAL_EVENT_MSG.APP_IN_BACKGROUND);
            EventBus.getDefault().post(intent);
            if (Build.VERSION.SDK_INT >= 26) {
                if (activity instanceof WatchLiveRoomActivity) {
                    WatchLiveRoomActivity watchLiveRoomActivity = (WatchLiveRoomActivity) activity;
                    if (WatchLiveRoomActivity.L4) {
                        return;
                    }
                }
                onEnterBackground();
                return;
            }
            onEnterBackground();
        }
    }

    public void onEnterBackground() {
        for (OnForegroundStateChangedListener onForegroundStateChangedListener : this.mListeners) {
            onForegroundStateChangedListener.onEnterBackground();
        }
        boolean z10 = com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().q() != null;
        if (UserStateHolder.isLiving() || UserStateHolder.isLivingInMic()) {
            if (!UserStateHolder.isLiveOnHome()) {
                return;
            }
            if (z10) {
                ServiceUtils.safeStartForegroundService(CallForegroundService.class);
            } else {
                ServiceUtils.safeStartForegroundService(LiveForegroundService.class);
            }
            HandlerGetter.getMainHandler().removeCallbacks(this.mRunnable);
            this.mLastServiceTime = System.currentTimeMillis();
        }
        if (UserStateHolder.isWatchingLive() && !UserStateHolder.isLivingInMic() && !VoiceRoomMiniHelper.INSTANCE.isPlaying()) {
            if (z10) {
                ServiceUtils.safeStartForegroundService(CallForegroundService.class);
            } else {
                ServiceUtils.safeStartForegroundService(WatchingLiveForegroundService.class);
            }
            HandlerGetter.getMainHandler().removeCallbacks(this.mRunnable);
            this.mLastServiceTime = System.currentTimeMillis();
        }
        if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().q() != null) {
            ServiceUtils.safeStartForegroundService(CallForegroundService.class);
        }
    }

    public void onEnterForeground() {
        HandlerGetter.getMainHandler().postDelayed(this.mRunnable, 2000 - (System.currentTimeMillis() - this.mLastServiceTime));
        checkUserOpenApp();
        for (OnForegroundStateChangedListener onForegroundStateChangedListener : this.mListeners) {
            onForegroundStateChangedListener.onEnterForeground();
        }
        this.mEnterForegroundTime = System.currentTimeMillis();
    }

    public void registerStateChangedListener(OnForegroundStateChangedListener onForegroundStateChangedListener) {
        this.mListeners.add(onForegroundStateChangedListener);
    }

    public void unregisterStateChangedListener(OnForegroundStateChangedListener onForegroundStateChangedListener) {
        this.mListeners.remove(onForegroundStateChangedListener);
    }
}
