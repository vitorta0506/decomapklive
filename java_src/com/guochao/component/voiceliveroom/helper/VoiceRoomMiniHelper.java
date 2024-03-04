package com.guochao.component.voiceliveroom.helper;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.bumptech.glide.h;
import com.bumptech.glide.load.resource.bitmap.l;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.component.liveroom.R$raw;
import com.guochao.component.liveroom.databinding.LayoutMiniSizeVoiceRoomBinding;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.voiceliveroom.event.VoiceRoomCloseEvent;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.lib_service_center.liveroom.service.IUserLeaveMessage;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u000256B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\tH\u0003J\b\u0010!\u001a\u00020\u001fH\u0007J0\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0016\u0010'\u001a\u0012\u0012\u0004\u0012\u00020)0(j\b\u0012\u0004\u0012\u00020)`*H\u0007J\u0006\u0010+\u001a\u00020\u0011J\u0012\u0010,\u001a\u00020-2\b\b\u0002\u0010.\u001a\u00020\u0011H\u0002J\b\u0010/\u001a\u00020\u001fH\u0007J\b\u00100\u001a\u00020\u001fH\u0007J\b\u00101\u001a\u00020\u001fH\u0002J\u000e\u00102\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\tJ\u0010\u00103\u001a\u00020\u001f2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\b\u00104\u001a\u00020\u001fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u00067"}, d2 = {"Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;", "", "()V", "_life", "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;", "_viewBinding", "Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;", "currentActivity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "gcLiveRoomModel", "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "getGcLiveRoomModel", "()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "setGcLiveRoomModel", "(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V", "hasRoom", "", "getHasRoom", "()Z", "setHasRoom", "(Z)V", "life", "getLife", "()Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;", "touchListener", "Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;", "viewBinding", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/LayoutMiniSizeVoiceRoomBinding;", "activityResume", "", PushConstants.INTENT_ACTIVITY_NAME, "goBack", "gotoVoiceRoom", "context", "Landroid/content/Context;", "position", "", "list", "Ljava/util/ArrayList;", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;", "Lkotlin/collections/ArrayList;", "isPlaying", "makeWindowLayoutParams", "Landroid/view/WindowManager$LayoutParams;", "init", "releaseAll", "releaseView", "sendLeaveMessage", "showView", "startMini", "stopMini", "ActivityLife", "TouchListener", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMiniHelper {
    @NotNull
    public static final VoiceRoomMiniHelper INSTANCE = new VoiceRoomMiniHelper();
    @Nullable
    private static ActivityLife _life;
    @Nullable
    private static LayoutMiniSizeVoiceRoomBinding _viewBinding;
    @Nullable
    private static WeakReference<Activity> currentActivity;
    @Nullable
    private static GCLiveRoomModel gcLiveRoomModel;
    private static boolean hasRoom;
    @Nullable
    private static TouchListener touchListener;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\bH\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0010"}, d2 = {"Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$ActivityLife;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "()V", "onActivityCreated", "", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ActivityLife implements Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NotNull Activity activity, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            VoiceRoomMiniHelper.activityResume(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(outState, "outState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper$TouchListener;", "Landroid/view/View$OnTouchListener;", "root", "Landroid/view/View;", "(Landroid/view/View;)V", PushConstants.INTENT_ACTIVITY_NAME, "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "getActivity", "()Ljava/lang/ref/WeakReference;", "setActivity", "(Ljava/lang/ref/WeakReference;)V", "downX", "", "downY", "slop", "", "startX", "startY", "onTouch", "", NotifyType.VIBRATE, "event", "Landroid/view/MotionEvent;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class TouchListener implements View.OnTouchListener {
        @Nullable
        private WeakReference<Activity> activity;
        private float downX;
        private float downY;
        @NotNull
        private final View root;
        private final int slop;
        private float startX;
        private float startY;

        public TouchListener(@NotNull View root) {
            Intrinsics.checkNotNullParameter(root, "root");
            this.root = root;
            this.slop = ViewConfiguration.get(GCApplication.app()).getScaledTouchSlop();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: onTouch$lambda-1$lambda-0  reason: not valid java name */
        public static final void m327onTouch$lambda1$lambda0(WindowManager.LayoutParams lp, TouchListener this$0, ValueAnimator valueAnimator) {
            Activity activity;
            WindowManager windowManager;
            Intrinsics.checkNotNullParameter(lp, "$lp");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Object animatedValue = valueAnimator.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            lp.x = (int) ((Float) animatedValue).floatValue();
            WeakReference<Activity> weakReference = this$0.activity;
            if (weakReference == null || (activity = weakReference.get()) == null || (windowManager = activity.getWindowManager()) == null) {
                return;
            }
            windowManager.updateViewLayout(this$0.root, lp);
        }

        @Nullable
        public final WeakReference<Activity> getActivity() {
            return this.activity;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
            if (r2 != 3) goto L15;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(@org.jetbrains.annotations.NotNull android.view.View r7, @org.jetbrains.annotations.NotNull android.view.MotionEvent r8) {
            /*
                Method dump skipped, instructions count: 229
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper.TouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }

        public final void setActivity(@Nullable WeakReference<Activity> weakReference) {
            this.activity = weakReference;
        }
    }

    private VoiceRoomMiniHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final void activityResume(Activity activity) {
        WeakReference<Activity> weakReference = currentActivity;
        if (Intrinsics.areEqual(weakReference != null ? weakReference.get() : null, activity)) {
            return;
        }
        INSTANCE.showView(activity);
    }

    private final ActivityLife getLife() {
        ActivityLife activityLife = _life;
        if (activityLife == null) {
            ActivityLife activityLife2 = new ActivityLife();
            _life = activityLife2;
            return activityLife2;
        }
        return activityLife;
    }

    private final LayoutMiniSizeVoiceRoomBinding getViewBinding() {
        LayoutMiniSizeVoiceRoomBinding layoutMiniSizeVoiceRoomBinding = _viewBinding;
        if (layoutMiniSizeVoiceRoomBinding == null) {
            LayoutMiniSizeVoiceRoomBinding inflate = LayoutMiniSizeVoiceRoomBinding.inflate(LayoutInflater.from(GCApplication.app()));
            inflate.getRoot().measure(View.MeasureSpec.makeMeasureSpec(10000, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(10000, Integer.MIN_VALUE));
            inflate.svga.playRaw(R$raw.voice_room_mini_recording);
            FrameLayout root = inflate.getRoot();
            FrameLayout root2 = inflate.getRoot();
            Intrinsics.checkNotNullExpressionValue(root2, "root");
            TouchListener touchListener2 = new TouchListener(root2);
            touchListener = touchListener2;
            root.setOnTouchListener(touchListener2);
            inflate.close.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.helper.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoiceRoomMiniHelper.releaseAll();
                }
            });
            inflate.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.helper.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VoiceRoomMiniHelper.goBack();
                }
            });
            _viewBinding = inflate;
            Intrinsics.checkNotNullExpressionValue(inflate, "inflate(\n               …wBinding = this\n        }");
            return inflate;
        }
        return layoutMiniSizeVoiceRoomBinding;
    }

    @JvmStatic
    public static final void goBack() {
        Activity activity;
        WeakReference<Activity> weakReference = currentActivity;
        if (weakReference == null || (activity = weakReference.get()) == null) {
            return;
        }
        o.a.c().a(RouterPath.ROUTER_LIVE_ROOM).addFlags(131072).withInt("from_float", 1).navigation(activity);
        releaseView();
        stopMini();
    }

    @JvmStatic
    public static final void gotoVoiceRoom(@NotNull Context context, int i9, @NotNull ArrayList<VoiceRoomInfoModel> list) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(list, "list");
        if (INSTANCE.isPlaying() && i9 < list.size()) {
            String roomId = list.get(i9).getRoomId();
            GCLiveRoomModel gCLiveRoomModel = gcLiveRoomModel;
            if (Intrinsics.areEqual(roomId, gCLiveRoomModel != null ? gCLiveRoomModel.getLiveRoomId() : null)) {
                goBack();
                return;
            }
        }
        o.a.c().a(RouterPath.ROUTER_LIVE_ROOM).withParcelableArrayList("voice_room", new ArrayList<>(list)).withInt("ROOM_POS_KEY", i9).navigation(context);
    }

    private final WindowManager.LayoutParams makeWindowLayoutParams(boolean z10) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2;
        layoutParams.flags = 8;
        VoiceRoomMiniHelper voiceRoomMiniHelper = INSTANCE;
        layoutParams.width = voiceRoomMiniHelper.getViewBinding().getRoot().getMeasuredWidth();
        layoutParams.height = voiceRoomMiniHelper.getViewBinding().getRoot().getMeasuredHeight();
        layoutParams.format = -2;
        layoutParams.softInputMode = 48;
        layoutParams.gravity = BadgeDrawable.TOP_START;
        ViewGroup.LayoutParams layoutParams2 = voiceRoomMiniHelper.getViewBinding().getRoot().getLayoutParams();
        WindowManager.LayoutParams layoutParams3 = layoutParams2 instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams2 : null;
        if (!z10 && layoutParams3 != null) {
            layoutParams.x = layoutParams3.x;
            layoutParams.y = layoutParams3.y;
        } else {
            layoutParams.x = ScreenTools.getScreenWidth() - voiceRoomMiniHelper.getViewBinding().getRoot().getMeasuredWidth();
            layoutParams.y = (ScreenTools.getScreenHeight() - DensityUtil.dp2px(hasRoom ? 200.0f : 100.0f)) - voiceRoomMiniHelper.getViewBinding().getRoot().getMeasuredHeight();
        }
        return layoutParams;
    }

    static /* synthetic */ WindowManager.LayoutParams makeWindowLayoutParams$default(VoiceRoomMiniHelper voiceRoomMiniHelper, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        return voiceRoomMiniHelper.makeWindowLayoutParams(z10);
    }

    @JvmStatic
    public static final void releaseAll() {
        INSTANCE.sendLeaveMessage();
        releaseView();
        stopMini();
        EventBus.getDefault().post(new VoiceRoomCloseEvent());
    }

    @JvmStatic
    public static final void releaseView() {
        Activity activity;
        WeakReference<Activity> weakReference = currentActivity;
        if (weakReference != null && (activity = weakReference.get()) != null) {
            try {
                activity.getWindowManager().removeView(INSTANCE.getViewBinding().getRoot());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        currentActivity = null;
    }

    private final void sendLeaveMessage() {
        String chatGroupId;
        UserSessionModel current;
        String userId;
        Object navigation = o.a.c().a(RouterPath.ROUTER_USER_LEAVE_GROUP).navigation();
        Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.lib_service_center.liveroom.service.IUserLeaveMessage");
        IUserLeaveMessage iUserLeaveMessage = (IUserLeaveMessage) navigation;
        GCLiveRoomModel gCLiveRoomModel = gcLiveRoomModel;
        if (gCLiveRoomModel == null || (chatGroupId = gCLiveRoomModel.getChatGroupId()) == null || (current = UserSessionViewModel.Companion.instance().current()) == null || (userId = current.getUserId()) == null) {
            return;
        }
        iUserLeaveMessage.start(userId, chatGroupId);
    }

    @JvmStatic
    public static final void startMini(@NotNull GCLiveRoomModel gcLiveRoomModel2) {
        Intrinsics.checkNotNullParameter(gcLiveRoomModel2, "gcLiveRoomModel");
        VoiceRoomMiniHelper voiceRoomMiniHelper = INSTANCE;
        gcLiveRoomModel = gcLiveRoomModel2;
        GCApplication.app().registerActivityLifecycleCallbacks(voiceRoomMiniHelper.getLife());
        voiceRoomMiniHelper.getViewBinding().getRoot().setLayoutParams(voiceRoomMiniHelper.makeWindowLayoutParams(true));
    }

    @JvmStatic
    public static final void stopMini() {
        VoiceRoomMiniHelper voiceRoomMiniHelper = INSTANCE;
        gcLiveRoomModel = null;
        GCApplication.app().unregisterActivityLifecycleCallbacks(voiceRoomMiniHelper.getLife());
        _life = null;
        _viewBinding = null;
        currentActivity = null;
    }

    @Nullable
    public final GCLiveRoomModel getGcLiveRoomModel() {
        return gcLiveRoomModel;
    }

    public final boolean getHasRoom() {
        return hasRoom;
    }

    public final boolean isPlaying() {
        return gcLiveRoomModel != null;
    }

    public final void setGcLiveRoomModel(@Nullable GCLiveRoomModel gCLiveRoomModel) {
        gcLiveRoomModel = gCLiveRoomModel;
    }

    public final void setHasRoom(boolean z10) {
        hasRoom = z10;
    }

    public final void showView(@NotNull Activity activity) {
        Activity activity2;
        Intrinsics.checkNotNullParameter(activity, "activity");
        WeakReference<Activity> weakReference = currentActivity;
        if (weakReference != null && (activity2 = weakReference.get()) != null) {
            try {
                activity2.getWindowManager().removeView(INSTANCE.getViewBinding().getRoot());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        WeakReference<Activity> weakReference2 = new WeakReference<>(activity);
        currentActivity = weakReference2;
        TouchListener touchListener2 = touchListener;
        if (touchListener2 != null) {
            touchListener2.setActivity(weakReference2);
        }
        WindowManager windowManager = activity.getWindowManager();
        if (gcLiveRoomModel != null) {
            VoiceRoomMiniHelper voiceRoomMiniHelper = INSTANCE;
            FrameLayout root = voiceRoomMiniHelper.getViewBinding().getRoot();
            WindowManager.LayoutParams makeWindowLayoutParams$default = makeWindowLayoutParams$default(voiceRoomMiniHelper, false, 1, null);
            voiceRoomMiniHelper.getViewBinding().getRoot().setLayoutParams(makeWindowLayoutParams$default);
            Unit unit = Unit.INSTANCE;
            windowManager.addView(root, makeWindowLayoutParams$default);
            h u10 = com.bumptech.glide.c.u(GCApplication.app());
            GCLiveRoomModel gCLiveRoomModel = gcLiveRoomModel;
            u10.r(gCLiveRoomModel != null ? gCLiveRoomModel.getCoverImgUrl() : null).q0(new l()).Q0(voiceRoomMiniHelper.getViewBinding().cover);
        }
    }
}
