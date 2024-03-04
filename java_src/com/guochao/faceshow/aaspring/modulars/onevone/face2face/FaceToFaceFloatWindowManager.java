package com.guochao.faceshow.aaspring.modulars.onevone.face2face;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.t;
import com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 42\u00020\u0001:\u000245B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u001d\u001a\u00020\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J\u001e\u0010!\u001a\u00020\u001e2\b\u0010\"\u001a\u0004\u0018\u00010#2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 H\u0007J\u0006\u0010\u0003\u001a\u00020\u0004J\u001a\u0010$\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0010\u0010'\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0016J\u0018\u0010*\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#2\u0006\u0010+\u001a\u00020&H\u0016J\u0010\u0010,\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010-\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#H\u0016J\u000e\u0010.\u001a\u00020\u001e2\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u001eJ\u0010\u00102\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0002J\u0012\u00103\u001a\u00020\u001e2\b\u0010/\u001a\u0004\u0018\u000100H\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\b\u0018\u00010\u0015R\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001a¨\u00066"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "()V", "isFaceToFaceFloatShowing", "", "lastLocation", "", "livePositionCache", "", "getLivePositionCache", "()I", "setLivePositionCache", "(I)V", "liveRoomListCache", "", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "getLiveRoomListCache", "()Ljava/util/List;", "setLiveRoomListCache", "(Ljava/util/List;)V", "mMiniViewHolder", "Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$MiniViewHolder;", "mStartedPreview", "viewModel", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "getViewModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "closeFaceToFaceFloat", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "closeFaceToFacePerformClick", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "openFaceToFaceActivity", "context", "Landroid/content/Context;", "releaseMini", "showFaceToFaceFloat", "watchCacheLive", "Companion", "MiniViewHolder", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FaceToFaceFloatWindowManager implements Application.ActivityLifecycleCallbacks {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static FaceToFaceFloatWindowManager sFaceToFaceFloatWindowManager = new FaceToFaceFloatWindowManager();
    @JvmField
    public boolean isFaceToFaceFloatShowing;
    @NotNull
    private final int[] lastLocation;
    private int livePositionCache;
    @Nullable
    private List<? extends RoomItemData> liveRoomListCache;
    @Nullable
    private MiniViewHolder mMiniViewHolder;
    private boolean mStartedPreview;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$Companion;", "", "()V", "sFaceToFaceFloatWindowManager", "Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;", "getInstance", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final FaceToFaceFloatWindowManager getInstance() {
            return FaceToFaceFloatWindowManager.sFaceToFaceFloatWindowManager;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bR\u0018\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager$MiniViewHolder;", "", NotifyType.VIBRATE, "Landroid/view/View;", PushConstants.INTENT_ACTIVITY_NAME, "Landroid/app/Activity;", "(Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;Landroid/view/View;Landroid/app/Activity;)V", "mActivity", "Ljava/lang/ref/WeakReference;", "mView", "removeFromActivity", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class MiniViewHolder {
        @Nullable
        private final WeakReference<Activity> mActivity;
        @Nullable
        private final WeakReference<View> mView;

        public MiniViewHolder(@Nullable View view, @Nullable Activity activity) {
            this.mView = new WeakReference<>(view);
            this.mActivity = new WeakReference<>(activity);
        }

        public final void removeFromActivity() {
            WeakReference<View> weakReference;
            try {
                WeakReference<Activity> weakReference2 = this.mActivity;
                if (weakReference2 == null || weakReference2.get() == null || (weakReference = this.mView) == null || weakReference.get() == null) {
                    return;
                }
                Activity activity = this.mActivity.get();
                Intrinsics.checkNotNull(activity);
                activity.getWindowManager().removeView(this.mView.get());
            } catch (Exception unused) {
            }
        }
    }

    private FaceToFaceFloatWindowManager() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<F2fMatchViewModel>() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final F2fMatchViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, F2fMatchViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(F2fMatchViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel");
                return (F2fMatchViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.lastLocation = new int[2];
    }

    private final void closeFaceToFaceFloat(View view) {
        this.isFaceToFaceFloatShowing = false;
        if (view != null) {
            HandlerGetter.runOnUIThread(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.face2face.c
                @Override // java.lang.Runnable
                public final void run() {
                    FaceToFaceFloatWindowManager.m525closeFaceToFaceFloat$lambda3(FaceToFaceFloatWindowManager.this);
                }
            }, 300L);
            return;
        }
        MiniViewHolder miniViewHolder = this.mMiniViewHolder;
        if (miniViewHolder != null) {
            miniViewHolder.removeFromActivity();
        }
    }

    static /* synthetic */ void closeFaceToFaceFloat$default(FaceToFaceFloatWindowManager faceToFaceFloatWindowManager, View view, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            view = null;
        }
        faceToFaceFloatWindowManager.closeFaceToFaceFloat(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: closeFaceToFaceFloat$lambda-3  reason: not valid java name */
    public static final void m525closeFaceToFaceFloat$lambda3(FaceToFaceFloatWindowManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        MiniViewHolder miniViewHolder = this$0.mMiniViewHolder;
        if (miniViewHolder != null) {
            miniViewHolder.removeFromActivity();
        }
    }

    public static /* synthetic */ void closeFaceToFacePerformClick$default(FaceToFaceFloatWindowManager faceToFaceFloatWindowManager, Activity activity, View view, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            view = null;
        }
        faceToFaceFloatWindowManager.closeFaceToFacePerformClick(activity, view);
    }

    @JvmStatic
    @NotNull
    public static final FaceToFaceFloatWindowManager getInstance() {
        return Companion.getInstance();
    }

    private final F2fMatchViewModel getViewModel() {
        return (F2fMatchViewModel) this.viewModel$delegate.getValue();
    }

    private final View showFaceToFaceFloat(final Activity activity) {
        View viewGroup = LayoutInflater.from(BaseApplication.getInstance()).inflate(R.layout.layout_float_face_to_face, (ViewGroup) null);
        viewGroup.findViewById(R.id.iv_close).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.face2face.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceToFaceFloatWindowManager.m526showFaceToFaceFloat$lambda0(FaceToFaceFloatWindowManager.this, activity, view);
            }
        });
        View findViewById = viewGroup.findViewById(R.id.txCloudVideoViewLay);
        findViewById.setLayoutParams(findViewById.getLayoutParams());
        z8.a aVar = new z8.a();
        aVar.a(activity);
        viewGroup.setOnTouchListener(aVar);
        viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.face2face.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FaceToFaceFloatWindowManager.m527showFaceToFaceFloat$lambda1(FaceToFaceFloatWindowManager.this, activity, view);
            }
        });
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2, 8, -2);
        layoutParams.softInputMode = 48;
        layoutParams.gravity = BadgeDrawable.TOP_START;
        viewGroup.setLayoutParams(layoutParams);
        Intrinsics.checkNotNullExpressionValue(viewGroup, "viewGroup");
        return viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showFaceToFaceFloat$lambda-0  reason: not valid java name */
    public static final void m526showFaceToFaceFloat$lambda0(FaceToFaceFloatWindowManager this$0, Activity activity, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        closeFaceToFacePerformClick$default(this$0, activity, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showFaceToFaceFloat$lambda-1  reason: not valid java name */
    public static final void m527showFaceToFaceFloat$lambda1(FaceToFaceFloatWindowManager this$0, Activity activity, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        this$0.openFaceToFaceActivity(activity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void watchCacheLive(Context context) {
        if (this.liveRoomListCache != null) {
            t.c().g(context, this.liveRoomListCache, this.livePositionCache, 0, 0);
            this.livePositionCache = 0;
            this.liveRoomListCache = null;
        }
    }

    @JvmOverloads
    public final void closeFaceToFacePerformClick(@Nullable Activity activity) {
        closeFaceToFacePerformClick$default(this, activity, null, 2, null);
    }

    @JvmOverloads
    public final void closeFaceToFacePerformClick(@Nullable Activity activity, @Nullable View view) {
        if (activity == null) {
            return;
        }
        this.mStartedPreview = false;
        closeFaceToFaceFloat(view);
        int[] iArr = this.lastLocation;
        iArr[0] = 0;
        iArr[1] = 0;
        getViewModel().cancelMatch(new Function0<Unit>() { // from class: com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager$closeFaceToFacePerformClick$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
            }
        });
        XMagicBeautyManager.Companion.getInstance(activity).destroyOnMainThread();
    }

    public final int getLivePositionCache() {
        return this.livePositionCache;
    }

    @Nullable
    public final List<RoomItemData> getLiveRoomListCache() {
        return this.liveRoomListCache;
    }

    public final boolean isFaceToFaceFloatShowing() {
        return this.isFaceToFaceFloatShowing;
    }

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
        if (this.isFaceToFaceFloatShowing) {
            MiniViewHolder miniViewHolder = this.mMiniViewHolder;
            if (miniViewHolder != null) {
                miniViewHolder.removeFromActivity();
            }
            this.mMiniViewHolder = null;
            if (!(activity instanceof F2fMatchActivity) && !(activity instanceof BaseLoginActivity) && !(activity instanceof LiveBroadCastActivity)) {
                View showFaceToFaceFloat = showFaceToFaceFloat(activity);
                showFaceToFaceFloat.setTag("FloatOneVOne");
                WindowManager windowManager = activity.getWindowManager();
                if (this.lastLocation[0] > 0) {
                    ViewGroup.LayoutParams layoutParams = showFaceToFaceFloat.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
                    ((WindowManager.LayoutParams) layoutParams).x = this.lastLocation[0];
                } else {
                    ViewGroup.LayoutParams layoutParams2 = showFaceToFaceFloat.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
                    ((WindowManager.LayoutParams) layoutParams2).x = (ScreenTools.getScreenWidth() - DensityUtil.dp2px(100.0f)) - DensityUtil.dp2px(8.0f);
                }
                int dp2px = (BaseApplication.getInstance().getResources().getDisplayMetrics().heightPixels - ((int) (((DensityUtil.dp2px(BaseApplication.getInstance(), 100.0f) * 1.0f) / ScreenTools.getScreenWidth()) * ScreenTools.getScreenHeight()))) - DensityUtil.dp2px(55.0f);
                if (this.lastLocation[1] > 0) {
                    ViewGroup.LayoutParams layoutParams3 = showFaceToFaceFloat.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
                    ((WindowManager.LayoutParams) layoutParams3).y = this.lastLocation[1];
                } else {
                    ViewGroup.LayoutParams layoutParams4 = showFaceToFaceFloat.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams4, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
                    ((WindowManager.LayoutParams) layoutParams4).y = dp2px;
                }
                windowManager.addView(showFaceToFaceFloat, showFaceToFaceFloat.getLayoutParams());
                View findViewById = showFaceToFaceFloat.findViewById(R.id.txCloudVideoViewLay);
                findViewById.setOutlineProvider(new CallingActivity.f(DensityUtil.dp2px(8.0f)));
                findViewById.setClipToOutline(true);
                watchCacheLive(activity);
                this.mMiniViewHolder = new MiniViewHolder(showFaceToFaceFloat, activity);
                return;
            }
            this.isFaceToFaceFloatShowing = false;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NotNull Activity activity, @NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        LogUtils.i("zune: ", "onActivityStarted" + activity.getComponentName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
        if (((com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment) r1).I == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void openFaceToFaceActivity(@org.jetbrains.annotations.NotNull android.content.Context r4) {
        /*
            r3 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            r0 = 0
            r3.closeFaceToFaceFloat(r0)
            boolean r0 = r4 instanceof com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity
            if (r0 == 0) goto L30
            r0 = r4
            com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity r0 = (com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity) r0
            d9.g r1 = r0.f18075l
            boolean r2 = r1 instanceof com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment
            if (r2 == 0) goto L21
            java.lang.String r2 = "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1, r2)
            com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment r1 = (com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment) r1
            boolean r1 = r1.I
            if (r1 != 0) goto L30
        L21:
            com.guochao.faceshow.aaspring.views.LiveRoomView r1 = r0.mViewPager2
            int r1 = r1.getCurrentItem()
            r3.livePositionCache = r1
            java.util.List<com.guochao.faceshow.aaspring.beans.RoomItemData> r1 = r0.f18074k
            r3.liveRoomListCache = r1
            r0.o1()
        L30:
            android.content.Intent r0 = new android.content.Intent
            java.lang.Class<com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity> r1 = com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity.class
            r0.<init>(r4, r1)
            r4.startActivity(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager.openFaceToFaceActivity(android.content.Context):void");
    }

    public final void releaseMini() {
        MiniViewHolder miniViewHolder = this.mMiniViewHolder;
        if (miniViewHolder != null) {
            miniViewHolder.removeFromActivity();
        }
    }

    public final void setLivePositionCache(int i9) {
        this.livePositionCache = i9;
    }

    public final void setLiveRoomListCache(@Nullable List<? extends RoomItemData> list) {
        this.liveRoomListCache = list;
    }
}
