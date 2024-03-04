package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.view.ViewGroup;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.component.voiceliveroom.event.VoiceRoomCloseEvent;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.views.LiveRoomView;
import com.guochao.faceshow.utils.AppContentFilter;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y7.s;
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\fH\u0007J\u0012\u0010\u000f\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u000eH\u0007R\"\u0010\u0013\u001a\u0010\u0012\f\u0012\n \u0012*\u0004\u0018\u00010\u00110\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroidx/lifecycle/LifecycleOwner;", "owner", "", "onCreate", "onDestroy", "Lcom/guochao/component/voiceliveroom/event/VoiceRoomCloseEvent;", "event", "closeVoiceRoomEvent", "Ly7/s;", "onStartPkEvent", "Lcom/guochao/faceshow/utils/AppContentFilter$EventBusRoomItemData;", "filterVideo", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "onRoomItemDataEvent", "Ljava/lang/ref/WeakReference;", "Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;", "kotlin.jvm.PlatformType", "activityRef", "Ljava/lang/ref/WeakReference;", PushConstants.INTENT_ACTIVITY_NAME, "<init>", "(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class WatchLiveRoomEventBusHelper implements DefaultLifecycleObserver {
    @NotNull
    private final WeakReference<WatchLiveRoomActivity> activityRef;

    public WatchLiveRoomEventBusHelper(@NotNull WatchLiveRoomActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activityRef = new WeakReference<>(activity);
        activity.getLifecycle().addObserver(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: filterVideo$lambda-1  reason: not valid java name */
    public static final void m447filterVideo$lambda1(WatchLiveRoomActivity a10, List list, int i9, LiveRoomView viewPager) {
        Intrinsics.checkNotNullParameter(a10, "$a");
        Intrinsics.checkNotNullParameter(list, "$list");
        Intrinsics.checkNotNullParameter(viewPager, "$viewPager");
        a10.W1(true);
        list.remove(i9);
        viewPager.setIndexOnly(i9);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void closeVoiceRoomEvent(@Nullable VoiceRoomCloseEvent voiceRoomCloseEvent) {
        WatchLiveRoomActivity watchLiveRoomActivity = this.activityRef.get();
        if (watchLiveRoomActivity != null) {
            watchLiveRoomActivity.finish(true);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void filterVideo(@NotNull AppContentFilter.EventBusRoomItemData event) {
        final List<RoomItemData> list;
        final LiveRoomView liveRoomView;
        Intrinsics.checkNotNullParameter(event, "event");
        final WatchLiveRoomActivity watchLiveRoomActivity = this.activityRef.get();
        if (watchLiveRoomActivity == null || (list = watchLiveRoomActivity.f18074k) == null || (liveRoomView = watchLiveRoomActivity.mViewPager2) == null) {
            return;
        }
        RoomItemData roomItemData = event.getRoomItemData();
        final int i9 = -1;
        int size = list.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                break;
            }
            RoomItemData roomItemData2 = list.get(i10);
            Intrinsics.checkNotNullExpressionValue(roomItemData2, "list.get(i)");
            if (Intrinsics.areEqual(roomItemData2.getLiveRoomId(), roomItemData.getLiveRoomId())) {
                i9 = i10;
                break;
            }
            i10++;
        }
        if (i9 >= 0) {
            int i11 = i9 + 1;
            if (i11 > list.size() - 1) {
                i11 = 0;
            }
            if (list.size() >= 2) {
                liveRoomView.m(i11, true);
            }
            watchLiveRoomActivity.W1(false);
            watchLiveRoomActivity.f18086w.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.activity.b
                @Override // java.lang.Runnable
                public final void run() {
                    WatchLiveRoomEventBusHelper.m447filterVideo$lambda1(WatchLiveRoomActivity.this, list, i9, liveRoomView);
                }
            }, 200L);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        androidx.lifecycle.a.a(this, owner);
        if (EventBus.getDefault().isRegistered(this)) {
            return;
        }
        EventBus.getDefault().register(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        Lifecycle lifecycle;
        Intrinsics.checkNotNullParameter(owner, "owner");
        androidx.lifecycle.a.b(this, owner);
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        WatchLiveRoomActivity watchLiveRoomActivity = this.activityRef.get();
        if (watchLiveRoomActivity == null || (lifecycle = watchLiveRoomActivity.getLifecycle()) == null) {
            return;
        }
        lifecycle.removeObserver(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onPause(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.c(this, lifecycleOwner);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onResume(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.d(this, lifecycleOwner);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRoomItemDataEvent(@Nullable RoomItemData roomItemData) {
        WatchLiveRoomActivity watchLiveRoomActivity = this.activityRef.get();
        if (watchLiveRoomActivity == null || roomItemData == null) {
            return;
        }
        watchLiveRoomActivity.B1(roomItemData);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onStart(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.e(this, lifecycleOwner);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStartPkEvent(@Nullable s sVar) {
        WatcherLiveRoomFragment watcherLiveRoomFragment;
        WatchLiveRoomActivity watchLiveRoomActivity = this.activityRef.get();
        if (watchLiveRoomActivity != null && (watcherLiveRoomFragment = watchLiveRoomActivity.A) != null && watcherLiveRoomFragment.isAdded() && watcherLiveRoomFragment.p5() != null) {
            watcherLiveRoomFragment.p5().stopPlay(true, true);
            watcherLiveRoomFragment.p5().setPlayerView((ViewGroup) null);
        }
        WatchLiveRoomActivity watchLiveRoomActivity2 = this.activityRef.get();
        if (watchLiveRoomActivity2 != null) {
            watchLiveRoomActivity2.finish(false);
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public /* synthetic */ void onStop(LifecycleOwner lifecycleOwner) {
        androidx.lifecycle.a.f(this, lifecycleOwner);
    }
}
