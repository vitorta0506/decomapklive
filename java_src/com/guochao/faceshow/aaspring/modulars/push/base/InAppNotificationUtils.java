package com.guochao.faceshow.aaspring.modulars.push.base;

import android.app.Activity;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.MapUtils;
import com.guochao.faceshow.utils.Foreground;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0007J\b\u0010\u000e\u001a\u00020\rH\u0007J\u001a\u0010\u000f\u001a\u00020\r2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0011J\u0018\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bH\u0002R$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/push/base/InAppNotificationUtils;", "Landroidx/lifecycle/LifecycleObserver;", "()V", "value", "", "isNotificationShowing", "()Z", "setNotificationShowing", "(Z)V", "queue", "Ljava/util/concurrent/LinkedBlockingQueue;", "Landroid/os/Bundle;", "onResume", "", "onStop", "showInAppNotification", "data", "", "", "showInAppNotificationOnActivity", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "bundle", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class InAppNotificationUtils implements LifecycleObserver {
    @NotNull
    public static final InAppNotificationUtils INSTANCE;
    private static boolean isNotificationShowing;
    @NotNull
    private static final LinkedBlockingQueue<Bundle> queue;

    static {
        InAppNotificationUtils inAppNotificationUtils = new InAppNotificationUtils();
        INSTANCE = inAppNotificationUtils;
        queue = new LinkedBlockingQueue<>();
        ProcessLifecycleOwner.get().getLifecycle().addObserver(inAppNotificationUtils);
    }

    private InAppNotificationUtils() {
    }

    private final void showInAppNotificationOnActivity(Activity activity, Bundle bundle) {
        if (!(activity instanceof FragmentActivity)) {
            queue.add(bundle);
            return;
        }
        FragmentManager supportFragmentManager = ((FragmentActivity) activity).getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "activity.supportFragmentManager");
        FragmentTransaction customAnimations = supportFragmentManager.beginTransaction().setCustomAnimations(R.anim.notification_enter, R.anim.do_nothing, R.anim.do_nothing, R.anim.notification_exit);
        InAppNotificationFragment inAppNotificationFragment = new InAppNotificationFragment();
        inAppNotificationFragment.setArguments(bundle);
        Unit unit = Unit.INSTANCE;
        customAnimations.add(16908290, inAppNotificationFragment, "in_app_notification").addToBackStack(null).commitAllowingStateLoss();
        setNotificationShowing(true);
    }

    public final boolean isNotificationShowing() {
        return isNotificationShowing;
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public final void onResume() {
        Activity currTopActivity;
        Bundle poll;
        LinkedBlockingQueue<Bundle> linkedBlockingQueue = queue;
        if (!(!linkedBlockingQueue.isEmpty()) || (currTopActivity = BaseApplication.getInstance().getCurrTopActivity()) == null || (poll = linkedBlockingQueue.poll()) == null) {
            return;
        }
        showInAppNotificationOnActivity(currTopActivity, poll);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public final void onStop() {
    }

    public final void setNotificationShowing(boolean z10) {
        Activity currTopActivity;
        Bundle poll;
        isNotificationShowing = z10;
        if (z10 || ProcessLifecycleOwner.get().getLifecycle().getCurrentState() != Lifecycle.State.RESUMED) {
            return;
        }
        LinkedBlockingQueue<Bundle> linkedBlockingQueue = queue;
        if (!(!linkedBlockingQueue.isEmpty()) || (currTopActivity = BaseApplication.getInstance().getCurrTopActivity()) == null || (poll = linkedBlockingQueue.poll()) == null) {
            return;
        }
        showInAppNotificationOnActivity(currTopActivity, poll);
    }

    public final void showInAppNotification(@NotNull Map<String, String> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Bundle bundle = MapUtils.toBundle(data);
        Intrinsics.checkNotNullExpressionValue(bundle, "toBundle(data)");
        if (Intrinsics.areEqual("12", bundle.getString("type_id"))) {
            return;
        }
        LinkedBlockingQueue<Bundle> linkedBlockingQueue = queue;
        if (!linkedBlockingQueue.isEmpty()) {
            linkedBlockingQueue.add(bundle);
        } else if (Foreground.get().isForeground() && !isNotificationShowing) {
            Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
            if (currTopActivity == null) {
                linkedBlockingQueue.add(bundle);
            } else {
                showInAppNotificationOnActivity(currTopActivity, bundle);
            }
        } else {
            linkedBlockingQueue.add(bundle);
        }
    }
}
