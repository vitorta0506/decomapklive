package com.guochao.faceshow.component.f2fmatch.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver;
import com.guochao.faceshow.aaspring.utils.KeyboardHeightProvider;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.e;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.R$string;
import com.guochao.faceshow.component.f2fmatch.databinding.ActivityF2fMatchBinding;
import com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fVideoChatBinding;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fGuideFragment;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fPlayerFragment;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fPrepareFragment;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fPreviewFragment;
import com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy;
import com.guochao.faceshow.component.f2fmatch.service.F2fForegroundService;
import com.guochao.faceshow.component.f2fmatch.utils.F2fCountDownPlayerUtils;
import com.guochao.faceshow.component.f2fmatch.utils.SlideTouchHelper;
import com.guochao.faceshow.component.f2fmatch.utils.TimeUtils;
import com.guochao.faceshow.component.f2fmatch.utils.ViewAnimator;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.pusher.beauty.XMagicBeautyManager;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.support.api.entity.core.CommonCode;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Route(name = "1v1匹配首页", path = RouterPath.ROUTER_F2F_MATCH)
@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0005\b\u0007\u0018\u0000 \u0091\u00012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007:\u0006\u0091\u0001\u0092\u0001\u0093\u0001B\u0005¢\u0006\u0002\u0010\bJ\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020+H\u0002J\b\u0010A\u001a\u00020?H\u0002J\b\u0010B\u001a\u00020?H\u0002J\b\u0010C\u001a\u00020?H\u0016J\b\u0010D\u001a\u00020?H\u0016J\b\u0010E\u001a\u00020?H\u0002J\b\u0010F\u001a\u00020?H\u0002J\b\u0010G\u001a\u00020?H\u0016J\u0010\u0010H\u001a\u00020+2\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010K\u001a\u00020?2\u0006\u0010L\u001a\u00020+H\u0016J\b\u0010M\u001a\u00020?H\u0016J\u000e\u0010M\u001a\u00020?2\u0006\u0010N\u001a\u00020+J\u0018\u0010O\u001a\u00020?2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020+H\u0016J\b\u0010S\u001a\u00020%H\u0016J\u0010\u0010T\u001a\u00020?2\u0006\u0010U\u001a\u00020VH\u0002J\u0012\u0010W\u001a\u00020?2\b\u0010X\u001a\u0004\u0018\u00010YH\u0016J\u0010\u0010Z\u001a\u00020?2\u0006\u0010[\u001a\u00020+H\u0002J\b\u0010N\u001a\u00020?H\u0016J\u0010\u0010\\\u001a\u00020?2\u0006\u0010P\u001a\u00020QH\u0016J\"\u0010]\u001a\u00020?2\u0006\u0010^\u001a\u00020 2\u0006\u0010_\u001a\u00020 2\b\u0010`\u001a\u0004\u0018\u00010VH\u0014J\u0010\u0010a\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\b\u0010d\u001a\u00020?H\u0016J\u0012\u0010e\u001a\u00020?2\b\u0010f\u001a\u0004\u0018\u00010YH\u0014J\b\u0010g\u001a\u00020?H\u0014J\u0018\u0010h\u001a\u00020?2\u0006\u0010i\u001a\u00020 2\u0006\u0010j\u001a\u00020 H\u0016J\u0010\u0010k\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\u0012\u0010l\u001a\u00020?2\b\u0010m\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010n\u001a\u00020?2\u0006\u0010U\u001a\u00020VH\u0014J\b\u0010o\u001a\u00020?H\u0014J\u0010\u0010p\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\u0018\u0010q\u001a\u00020?2\u0006\u0010b\u001a\u00020c2\u0006\u0010r\u001a\u00020sH\u0016J\u0018\u0010t\u001a\u00020?2\u0006\u0010b\u001a\u00020c2\u0006\u0010u\u001a\u00020 H\u0016J\u0010\u0010v\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\b\u0010w\u001a\u00020?H\u0014J\b\u0010x\u001a\u00020?H\u0014J\u0010\u0010y\u001a\u00020?2\u0006\u0010u\u001a\u00020 H\u0016J\b\u0010z\u001a\u00020?H\u0014J\u0010\u0010{\u001a\u00020?2\u0006\u0010b\u001a\u00020cH\u0016J\u0012\u0010*\u001a\u00020?2\b\b\u0002\u0010N\u001a\u00020+H\u0002J\u0010\u0010|\u001a\u00020?2\u0006\u0010}\u001a\u00020QH\u0016J\b\u0010~\u001a\u00020?H\u0002J\b\u0010\u007f\u001a\u00020?H\u0016J\u0012\u0010\u0080\u0001\u001a\u00020?2\u0007\u0010\u0081\u0001\u001a\u00020 H\u0016J\t\u0010\u0082\u0001\u001a\u00020+H\u0016J\t\u0010\u0083\u0001\u001a\u00020?H\u0016J\t\u0010\u0084\u0001\u001a\u00020?H\u0016J\t\u0010\u0085\u0001\u001a\u00020?H\u0016J\t\u0010\u0086\u0001\u001a\u00020?H\u0016J\t\u0010\u0087\u0001\u001a\u00020?H\u0002J\t\u0010\u0088\u0001\u001a\u00020?H\u0002J\t\u0010\u0089\u0001\u001a\u00020?H\u0002J$\u0010\u008a\u0001\u001a\u00020+2\b\u0010\u008b\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u008d\u0001\u001a\u00020J2\b\u0010\u008e\u0001\u001a\u00030\u008f\u0001J\t\u0010\u0090\u0001\u001a\u00020+H\u0016R\u0014\u0010\t\u001a\b\u0018\u00010\nR\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0018\u00010\fR\u00020\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020 @BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\"\u0010#R\u001b\u0010$\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b&\u0010'R\u000e\u0010*\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010.\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010)\u001a\u0004\b0\u00101R$\u00103\u001a\u0002048\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b5\u0010\b\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001b\u0010:\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b=\u0010)\u001a\u0004\b;\u0010<¨\u0006\u0094\u0001"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;", "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;", "Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;", "Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;", "()V", "countDownTask", "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;", "countUpTask", "Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;", "f2fMatchingFragment", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;", "f2fPlayerFragment", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPlayerFragment;", "f2fPrepareFragment", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;", "getF2fPrepareFragment", "()Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;", "setF2fPrepareFragment", "(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPrepareFragment;)V", "f2fPreviewFragment", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fPreviewFragment;", "f2fVideoChatFragment", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;", "keyboardHeightProvider", "Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightProvider;", "lastMatchTime", "", "value", "", "matchGender", "setMatchGender", "(I)V", "proxy", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;", "getProxy", "()Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fProxy;", "proxy$delegate", "Lkotlin/Lazy;", "release", "", "slideTouchHelper", "Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;", "viewAnimator", "Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;", "getViewAnimator", "()Lcom/guochao/faceshow/component/f2fmatch/utils/ViewAnimator;", "viewAnimator$delegate", "viewBinding", "Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;", "setViewBinding", "(Lcom/guochao/faceshow/component/f2fmatch/databinding/ActivityF2fMatchBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "viewModel$delegate", "animateToPreparing", "", "animating", "animateToStartMatching", "calSmallVideoSize", "cancelMatchAndBackToPrepare", "cancelMatchAndExit", "checkLiveStatus", "clickSmallVideoView", "detectNoFaceOnScreen", "dispatchTouchEvent", "ev", "Landroid/view/MotionEvent;", "exitCurrentRoom", "rematch", "finish", "moveToMini", "focusSomebody", "gcUser", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "showMessage", "getF2fProxy", "handleIntent", CommonCode.Resolution.HAS_RESOLUTION_FROM_APK, "Landroid/content/Intent;", "initView", "savedInstanceSate", "Landroid/os/Bundle;", "makePlayerViewVisible", "visible", "notifyFocusEachOther", "onActivityResult", "requestCode", "resultCode", "data", "onAgreed", "f2fHeartBeatModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "onBackPressed", "onCreate", "savedInstanceState", "onDestroy", "onKeyboardHeightChanged", "height", AdUnitActivity.EXTRA_ORIENTATION, "onMatchTimeout", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "onNewIntent", "onPause", "onPlayFirstFrame", "onReceiveSeiMessage", "json", "Lorg/json/JSONObject;", "onReject", "code", "onRemoteUserLeave", "onResume", "onStart", "onStartMatchError", "onStop", "onUserMatched", "report", "f2fMatchRoomInfo", "restVideoView", "retryMatch", "setGenderSelection", "selection", "shouldShowLiveFloatWindow", "showGenderFilterDialog", "showPendantDialog", "slideDownConfirmed", "slideUpConfirmed", "startCountDown", "startCountUp", "startMatch", "under", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "event", "location", "", "useBlackTextStatusBar", "Companion", "CountDownTask", "CountUpTask", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMatchActivity extends GCBaseMvvmActivity<F2fMatchModel, F2fMatchViewModel> implements F2fMatchContainer, SlideTouchHelper.Callback, F2fMatchCallback, KeyboardHeightObserver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private CountDownTask countDownTask;
    @Nullable
    private CountUpTask countUpTask;
    @NotNull
    private F2fMatchingFragment f2fMatchingFragment;
    @NotNull
    private F2fPlayerFragment f2fPlayerFragment;
    @NotNull
    private F2fPrepareFragment f2fPrepareFragment;
    @NotNull
    private F2fPreviewFragment f2fPreviewFragment;
    @NotNull
    private F2fVideoChatFragment f2fVideoChatFragment;
    @Nullable
    private KeyboardHeightProvider keyboardHeightProvider;
    private long lastMatchTime;
    private int matchGender;
    @NotNull
    private final Lazy proxy$delegate;
    private boolean release;
    @NotNull
    private final SlideTouchHelper slideTouchHelper = new SlideTouchHelper();
    @NotNull
    private final Lazy viewAnimator$delegate;
    public ActivityF2fMatchBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$Companion;", "", "()V", "start", "", "context", "Landroid/content/Context;", "matched", "", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void start(@NotNull Context context, boolean z10) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent putExtra = new Intent(context, F2fMatchActivity.class).putExtra("matched", z10);
            if (!(context instanceof Activity)) {
                putExtra.addFlags(268435456);
            }
            context.startActivity(putExtra);
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R$\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountDownTask;", "", "textView", "Landroid/widget/TextView;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/widget/TextView;Lkotlinx/coroutines/CoroutineScope;)V", "value", "", "cancel", "getCancel", "()Z", "setCancel", "(Z)V", "exitRoomOnCancel", "getExitRoomOnCancel", "setExitRoomOnCancel", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public final class CountDownTask {
        private boolean cancel;
        private boolean exitRoomOnCancel;
        final /* synthetic */ F2fMatchActivity this$0;

        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$CountDownTask$1", f = "F2fMatchActivity.kt", i = {0}, l = {724}, m = "invokeSuspend", n = {CrashHianalyticsData.TIME}, s = {"J$0"})
        /* renamed from: com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$CountDownTask$1  reason: invalid class name */
        /* loaded from: classes2.dex */
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ TextView $textView;
            long J$0;
            int label;
            final /* synthetic */ CountDownTask this$0;
            final /* synthetic */ F2fMatchActivity this$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TextView textView, CountDownTask countDownTask, F2fMatchActivity f2fMatchActivity, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$textView = textView;
                this.this$0 = countDownTask;
                this.this$1 = f2fMatchActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                return new AnonymousClass1(this.$textView, this.this$0, this.this$1, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                long currentTimeMillis;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.$textView.setVisibility(0);
                    this.$textView.bringToFront();
                    currentTimeMillis = System.currentTimeMillis() + 50000;
                } else if (i9 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    currentTimeMillis = this.J$0;
                    ResultKt.throwOnFailure(obj);
                }
                while (JobKt.isActive(getContext()) && !this.this$0.getCancel()) {
                    long currentTimeMillis2 = currentTimeMillis - System.currentTimeMillis();
                    this.$textView.setText(TimeUtils.INSTANCE.timeToString(currentTimeMillis2));
                    if (currentTimeMillis2 <= 15000) {
                        this.$textView.setTextColor(Color.parseColor("#F9447F"));
                    }
                    if (((int) ((((float) currentTimeMillis2) / 1000.0f) + 0.5f)) == 10) {
                        F2fCountDownPlayerUtils.INSTANCE.startPlay();
                    }
                    if (currentTimeMillis2 <= 0) {
                        break;
                    }
                    this.J$0 = currentTimeMillis;
                    this.label = 1;
                    if (DelayKt.delay(1000L, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                F2fCountDownPlayerUtils.INSTANCE.stopPlay();
                this.$textView.setText("");
                if (this.this$0.getExitRoomOnCancel()) {
                    F2fMatchContainer.DefaultImpls.exitCurrentRoom$default(this.this$1, false, 1, null);
                }
                return Unit.INSTANCE;
            }
        }

        public CountDownTask(@NotNull F2fMatchActivity f2fMatchActivity, @NotNull TextView textView, CoroutineScope scope) {
            Intrinsics.checkNotNullParameter(textView, "textView");
            Intrinsics.checkNotNullParameter(scope, "scope");
            this.this$0 = f2fMatchActivity;
            this.exitRoomOnCancel = true;
            textView.setTextColor(-1);
            BuildersKt.launch$default(scope, Dispatchers.getMain(), null, new AnonymousClass1(textView, this, f2fMatchActivity, null), 2, null);
        }

        public final boolean getCancel() {
            return this.cancel;
        }

        public final boolean getExitRoomOnCancel() {
            return this.exitRoomOnCancel;
        }

        public final void setCancel(boolean z10) {
            this.cancel = z10;
            if (z10) {
                F2fCountDownPlayerUtils.INSTANCE.stopPlay();
            }
        }

        public final void setExitRoomOnCancel(boolean z10) {
            this.exitRoomOnCancel = z10;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity$CountUpTask;", "", "textView", "Landroid/widget/TextView;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "lastTime", "", "(Lcom/guochao/faceshow/component/f2fmatch/activity/F2fMatchActivity;Landroid/widget/TextView;Lkotlinx/coroutines/CoroutineScope;J)V", "cancel", "", "getCancel", "()Z", "setCancel", "(Z)V", "getLastTime", "()J", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public final class CountUpTask {
        private boolean cancel;
        private final long lastTime;
        final /* synthetic */ F2fMatchActivity this$0;

        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$CountUpTask$1", f = "F2fMatchActivity.kt", i = {0}, l = {769}, m = "invokeSuspend", n = {CrashHianalyticsData.TIME}, s = {"J$0"})
        /* renamed from: com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$CountUpTask$1  reason: invalid class name */
        /* loaded from: classes2.dex */
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ TextView $textView;
            long J$0;
            int label;
            final /* synthetic */ CountUpTask this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TextView textView, CountUpTask countUpTask, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$textView = textView;
                this.this$0 = countUpTask;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                return new AnonymousClass1(this.$textView, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                long lastTime;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.$textView.setVisibility(0);
                    this.$textView.bringToFront();
                    lastTime = this.this$0.getLastTime();
                } else if (i9 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    lastTime = this.J$0;
                    ResultKt.throwOnFailure(obj);
                }
                while (JobKt.isActive(getContext()) && !this.this$0.getCancel()) {
                    this.$textView.setText(TimeUtils.INSTANCE.timeToString(System.currentTimeMillis() - lastTime));
                    this.J$0 = lastTime;
                    this.label = 1;
                    if (DelayKt.delay(1000L, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                this.$textView.setText("");
                return Unit.INSTANCE;
            }
        }

        public CountUpTask(@NotNull F2fMatchActivity f2fMatchActivity, @NotNull TextView textView, CoroutineScope scope, long j10) {
            Intrinsics.checkNotNullParameter(textView, "textView");
            Intrinsics.checkNotNullParameter(scope, "scope");
            this.this$0 = f2fMatchActivity;
            this.lastTime = j10;
            textView.setTextColor(-1);
            BuildersKt.launch$default(scope, Dispatchers.getMain(), null, new AnonymousClass1(textView, this, null), 2, null);
        }

        public final boolean getCancel() {
            return this.cancel;
        }

        public final long getLastTime() {
            return this.lastTime;
        }

        public final void setCancel(boolean z10) {
            this.cancel = z10;
        }
    }

    public F2fMatchActivity() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.viewAnimator$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<ViewAnimator>() { // from class: com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$viewAnimator$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewAnimator invoke() {
                return new ViewAnimator();
            }
        });
        this.proxy$delegate = LazyKt.lazy(new Function0<F2fProxy>() { // from class: com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$proxy$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final F2fProxy invoke() {
                Object navigation = o.a.c().a(RouterPath.ROUTER_F2F_PROXY).navigation();
                Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy");
                return (F2fProxy) navigation;
            }
        });
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        this.viewModel$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<F2fMatchViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$special$$inlined$lazyGlobalViewModel$default$1
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
        this.f2fPrepareFragment = new F2fPrepareFragment();
        this.f2fVideoChatFragment = new F2fVideoChatFragment();
        this.f2fPreviewFragment = new F2fPreviewFragment();
        this.f2fPlayerFragment = new F2fPlayerFragment();
        this.f2fMatchingFragment = new F2fMatchingFragment();
        this.matchGender = -1;
    }

    private final void animateToPreparing(boolean z10) {
        if (z10) {
            getViewModel().setMatchState(1);
            this.f2fMatchingFragment.showMatching(false);
            ViewAnimator viewAnimator = getViewAnimator();
            FrameLayout frameLayout = getViewBinding().preview;
            Intrinsics.checkNotNullExpressionValue(frameLayout, "viewBinding.preview");
            FrameLayout frameLayout2 = getViewBinding().prepare;
            Intrinsics.checkNotNullExpressionValue(frameLayout2, "viewBinding.prepare");
            FrameLayout frameLayout3 = getViewBinding().matching;
            Intrinsics.checkNotNullExpressionValue(frameLayout3, "viewBinding.matching");
            viewAnimator.animToPrepare(this, frameLayout, frameLayout2, frameLayout3);
        }
    }

    private final void animateToStartMatching() {
        if (getViewBinding().smallVideoContainer.getVisibility() == 0) {
            return;
        }
        getViewBinding().smallVideoContainer.setVisibility(0);
        ViewAnimator viewAnimator = getViewAnimator();
        FrameLayout frameLayout = getViewBinding().preview;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "viewBinding.preview");
        FrameLayout frameLayout2 = getViewBinding().prepare;
        Intrinsics.checkNotNullExpressionValue(frameLayout2, "viewBinding.prepare");
        FrameLayout frameLayout3 = getViewBinding().matching;
        Intrinsics.checkNotNullExpressionValue(frameLayout3, "viewBinding.matching");
        viewAnimator.anim(this, frameLayout, frameLayout2, frameLayout3);
        this.f2fMatchingFragment.showMatching(true);
    }

    private final void calSmallVideoSize() {
        CardView cardView = getViewBinding().smallVideoArea;
        ViewGroup.LayoutParams layoutParams = cardView.getLayoutParams();
        int dp2px = DensityUtil.dp2px(86.0f);
        layoutParams.width = dp2px;
        layoutParams.height = (int) (((dp2px * 1.0f) * cardView.getResources().getDisplayMetrics().heightPixels) / cardView.getResources().getDisplayMetrics().widthPixels);
        cardView.setLayoutParams(layoutParams);
        CardView cardView2 = getViewBinding().smallVideoContainer;
        ViewGroup.LayoutParams layoutParams2 = cardView2.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = DensityUtil.dp2px(12.0f) + StatusBarHelper.getStatusbarHeight(this);
        cardView2.setLayoutParams(layoutParams2);
    }

    private final void checkLiveStatus() {
        getF2fProxy().showForbiddenLiveDialogIfNeed(this);
    }

    private final void clickSmallVideoView() {
        if (getViewModel().getMatchState() == 3) {
            TXCloudVideoView tXCloudVideoView = this.f2fPreviewFragment.getViewBinding().previewView;
            Intrinsics.checkNotNullExpressionValue(tXCloudVideoView, "f2fPreviewFragment.viewBinding.previewView");
            TXCloudVideoView tXCloudVideoView2 = this.f2fPlayerFragment.getViewBinding().playerView;
            Intrinsics.checkNotNullExpressionValue(tXCloudVideoView2, "f2fPlayerFragment.viewBinding.playerView");
            ViewGroup viewGroup = (ViewGroup) tXCloudVideoView.getParent();
            ViewGroup viewGroup2 = (ViewGroup) tXCloudVideoView2.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(tXCloudVideoView);
            }
            if (viewGroup2 != null) {
                viewGroup2.removeView(tXCloudVideoView2);
            }
            if (viewGroup != null) {
                viewGroup.addView(tXCloudVideoView2);
            }
            if (viewGroup2 != null) {
                viewGroup2.addView(tXCloudVideoView);
            }
            if (Intrinsics.areEqual(tXCloudVideoView.getParent(), getViewBinding().smallVideoArea)) {
                this.f2fVideoChatFragment.playerViewMoveToMiniSize(false);
            } else {
                this.f2fVideoChatFragment.playerViewMoveToMiniSize(true);
            }
        }
    }

    private final F2fProxy getProxy() {
        return (F2fProxy) this.proxy$delegate.getValue();
    }

    private final ViewAnimator getViewAnimator() {
        return (ViewAnimator) this.viewAnimator$delegate.getValue();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    private final void handleIntent(Intent intent) {
        if (intent.getBooleanExtra("fromService", false)) {
            return;
        }
        if (intent.hasExtra("matched")) {
            getViewModel().launchMatch(true);
        } else {
            getViewModel().launchMatch(false);
        }
        if (intent.getBooleanExtra("matched", false)) {
            final F2fMatchModel.F2fHeartBeatModel lastMatchUserInfo = getViewModel().getLastMatchUserInfo();
            if (lastMatchUserInfo != null) {
                HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.activity.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        F2fMatchActivity.m607handleIntent$lambda4(F2fMatchActivity.this, lastMatchUserInfo);
                    }
                });
            }
        } else if (getViewModel().getMatchState() == 2) {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.activity.b
                @Override // java.lang.Runnable
                public final void run() {
                    F2fMatchActivity.m608handleIntent$lambda5(F2fMatchActivity.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleIntent$lambda-4  reason: not valid java name */
    public static final void m607handleIntent$lambda4(F2fMatchActivity this$0, F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.animateToStartMatching();
        this$0.onUserMatched(f2fHeartBeatModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handleIntent$lambda-5  reason: not valid java name */
    public static final void m608handleIntent$lambda5(F2fMatchActivity this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.animateToStartMatching();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1$lambda-0  reason: not valid java name */
    public static final void m609initView$lambda1$lambda0(KeyboardHeightProvider this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.start();
    }

    private final void makePlayerViewVisible(boolean z10) {
        View view = this.f2fPlayerFragment.getView();
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (z10) {
            layoutParams.width = -1;
            layoutParams.height = -1;
        } else {
            layoutParams.width = 1;
            layoutParams.height = 1;
        }
        view.requestLayout();
    }

    private final void release(boolean z10) {
        if (this.release) {
            return;
        }
        this.release = true;
        if (!z10) {
            XMagicBeautyManager.Companion.getInstance(this).destroyOnMainThread();
            F2fMatchViewModel.cancelMatch$default(getViewModel(), null, 1, null);
            getViewModel().getPusherModel().stopLocalPreview();
        }
        getViewModel().setF2fMatchCallback(null);
    }

    static /* synthetic */ void release$default(F2fMatchActivity f2fMatchActivity, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        f2fMatchActivity.release(z10);
    }

    private final void restVideoView() {
        if (getViewAnimator().getAnimating()) {
            return;
        }
        CardView cardView = getViewBinding().smallVideoArea;
        Intrinsics.checkNotNullExpressionValue(cardView, "viewBinding.smallVideoArea");
        FrameLayout frameLayout = this.f2fPlayerFragment.getViewBinding().playerViewParent;
        Intrinsics.checkNotNullExpressionValue(frameLayout, "f2fPlayerFragment.viewBinding.playerViewParent");
        TXCloudVideoView tXCloudVideoView = this.f2fPreviewFragment.getViewBinding().previewView;
        Intrinsics.checkNotNullExpressionValue(tXCloudVideoView, "f2fPreviewFragment.viewBinding.previewView");
        TXCloudVideoView tXCloudVideoView2 = this.f2fPlayerFragment.getViewBinding().playerView;
        Intrinsics.checkNotNullExpressionValue(tXCloudVideoView2, "f2fPlayerFragment.viewBinding.playerView");
        ViewGroup viewGroup = (ViewGroup) tXCloudVideoView.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(tXCloudVideoView);
        }
        ViewGroup viewGroup2 = (ViewGroup) tXCloudVideoView2.getParent();
        if (viewGroup2 != null) {
            viewGroup2.removeView(tXCloudVideoView2);
        }
        cardView.addView(tXCloudVideoView);
        frameLayout.addView(tXCloudVideoView2);
    }

    private final void setMatchGender(int i9) {
        this.matchGender = i9;
        getViewModel().setMatchGender(i9);
    }

    private final void startCountDown() {
        CountDownTask countDownTask = this.countDownTask;
        if (countDownTask != null) {
            countDownTask.setCancel(true);
            countDownTask.setExitRoomOnCancel(false);
        }
        CountUpTask countUpTask = this.countUpTask;
        if (countUpTask != null) {
            countUpTask.setCancel(true);
        }
        this.countUpTask = null;
        TextView textView = getViewBinding().countDownTime;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.countDownTime");
        this.countDownTask = new CountDownTask(this, textView, getLifecycleSupportedScope());
    }

    private final void startCountUp() {
        if (this.lastMatchTime == 0) {
            this.lastMatchTime = System.currentTimeMillis();
        }
        CountDownTask countDownTask = this.countDownTask;
        if (countDownTask != null) {
            countDownTask.setCancel(true);
            countDownTask.setExitRoomOnCancel(false);
        }
        CountUpTask countUpTask = this.countUpTask;
        if (countUpTask != null) {
            countUpTask.setCancel(true);
        }
        this.countDownTask = null;
        TextView textView = getViewBinding().countDownTime;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.countDownTime");
        this.countUpTask = new CountUpTask(this, textView, getLifecycleSupportedScope(), this.lastMatchTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startMatch() {
        if (!n7.c.c()) {
            ToastUtils.showToast$default(null, R$string.Network_Error, 0, 5, null);
        }
        if (this.matchGender < 0 || getF2fProxy().diamondsEnoughToFilterGender(this)) {
            animateToStartMatching();
            getViewModel().markStateStartMatching(this.matchGender, new Function1<Integer, Unit>() { // from class: com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$startMatch$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                    invoke(num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(int i9) {
                    F2fProxy f2fProxy = F2fMatchActivity.this.getF2fProxy();
                    F2fMatchActivity f2fMatchActivity = F2fMatchActivity.this;
                    f2fProxy.showRetryAlertDialog(f2fMatchActivity, f2fMatchActivity);
                }
            });
        }
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void cancelMatchAndBackToPrepare() {
        animateToPreparing(true);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void cancelMatchAndExit() {
        finish();
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void detectNoFaceOnScreen() {
        this.f2fVideoChatFragment.detectNoFaceOnScreen();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(@NotNull MotionEvent ev) {
        Intrinsics.checkNotNullParameter(ev, "ev");
        this.slideTouchHelper.onTouchEvent(ev);
        if (this.f2fVideoChatFragment.isAdded() && this.f2fVideoChatFragment.getView() != null) {
            if (ev.getAction() == 0) {
                F2fVideoChatFragment f2fVideoChatFragment = this.f2fVideoChatFragment;
                FragmentF2fVideoChatBinding viewBinding = f2fVideoChatFragment.getViewBinding();
                if (f2fVideoChatFragment.isAdded() && viewBinding.liveBottomInputLy.getVisibility() == 0) {
                    int[] iArr = new int[2];
                    viewBinding.liveBottomInputLy.getLocationInWindow(iArr);
                    LinearLayout linearLayout = viewBinding.liveBottomInputLy;
                    Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.liveBottomInputLy");
                    if (!under(linearLayout, ev, iArr)) {
                        viewBinding.liveBottomInputLy.setVisibility(8);
                        SoftKeyBoardUtils.closeSoftKeyBoardNow(this, viewBinding.liveBottomEditText);
                    }
                }
            }
            if (ev.getAction() == 1) {
                int[] iArr2 = new int[2];
                getViewBinding().smallVideoContainer.getLocationInWindow(iArr2);
                CardView cardView = getViewBinding().smallVideoContainer;
                Intrinsics.checkNotNullExpressionValue(cardView, "viewBinding.smallVideoContainer");
                if (under(cardView, ev, iArr2)) {
                    clickSmallVideoView();
                }
            }
            return super.dispatchTouchEvent(ev);
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void exitCurrentRoom(final boolean z10) {
        if (z10) {
            this.f2fMatchingFragment.showMatching(true);
        }
        CountUpTask countUpTask = this.countUpTask;
        if (countUpTask != null) {
            countUpTask.setCancel(true);
        }
        CountDownTask countDownTask = this.countDownTask;
        if (countDownTask != null) {
            countDownTask.setExitRoomOnCancel(false);
            countDownTask.setCancel(true);
        }
        this.countDownTask = null;
        this.countUpTask = null;
        animateToStartMatching();
        getSupportFragmentManager().beginTransaction().hide(this.f2fVideoChatFragment).commitAllowingStateLoss();
        makePlayerViewVisible(false);
        this.f2fVideoChatFragment.removeChat();
        this.f2fMatchingFragment.showWaitingMatchRoomInfo(null);
        restVideoView();
        getViewModel().cancelMatch(new Function0<Unit>() { // from class: com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity$exitCurrentRoom$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                if (z10) {
                    this.startMatch();
                }
            }
        });
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void focusSomebody(@NotNull F2fMatchModel.F2fMatchRoomInfo gcUser, boolean z10) {
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        this.f2fVideoChatFragment.focusSomebody(gcUser, z10);
    }

    @NotNull
    public final F2fPrepareFragment getF2fPrepareFragment() {
        return this.f2fPrepareFragment;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    @NotNull
    public F2fProxy getF2fProxy() {
        return getProxy();
    }

    @NotNull
    public final ActivityF2fMatchBinding getViewBinding() {
        ActivityF2fMatchBinding activityF2fMatchBinding = this.viewBinding;
        if (activityF2fMatchBinding != null) {
            return activityF2fMatchBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public void initView(@Nullable Bundle bundle) {
        checkLiveStatus();
        final KeyboardHeightProvider keyboardHeightProvider = new KeyboardHeightProvider(this, getWindow().getDecorView());
        HandlerGetter.runOnUIThread$default(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.activity.a
            @Override // java.lang.Runnable
            public final void run() {
                F2fMatchActivity.m609initView$lambda1$lambda0(KeyboardHeightProvider.this);
            }
        }, null, 2, null);
        this.keyboardHeightProvider = keyboardHeightProvider;
        getViewModel().setF2fMatchCallback(this);
        ActivityF2fMatchBinding viewBinding = getViewBinding();
        viewBinding.smallVideoContainer.setVisibility(8);
        calSmallVideoSize();
        viewBinding.matching.setVisibility(4);
        this.slideTouchHelper.setCallback(this);
        Window window = getWindow();
        if (window != null) {
            window.addFlags(128);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.addFlags(8192);
        }
        if (bundle == null) {
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            beginTransaction.add(R$id.preview, this.f2fPreviewFragment);
            beginTransaction.add(R$id.prepare, this.f2fPrepareFragment);
            beginTransaction.add(R$id.matching, this.f2fMatchingFragment);
            beginTransaction.add(R$id.player, this.f2fPlayerFragment);
            beginTransaction.add(R$id.video_message_chat, this.f2fVideoChatFragment).hide(this.f2fVideoChatFragment);
            beginTransaction.commitNowAllowingStateLoss();
            if (ja.a.b().f("KEY_F2F_GUIDE")) {
                F2fGuideFragment f2fGuideFragment = new F2fGuideFragment();
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
                f2fGuideFragment.show(supportFragmentManager, "guide");
            }
        }
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void moveToMini() {
        if (getViewModel().getMatchState() == 1) {
            getViewModel().markStateStartMatching(this.matchGender, null);
        }
        getF2fProxy().f2fMoveToMini();
        finish(true);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void notifyFocusEachOther(@NotNull F2fMatchModel.F2fMatchRoomInfo gcUser) {
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        startCountUp();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i10 != -1 || intent == null) {
            return;
        }
        getProxy().onActivityResult(this, i9, i10, intent);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void onAgreed(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        this.f2fPlayerFragment.startPlay(f2fHeartBeatModel);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        int matchState = getViewModel().getMatchState();
        if (matchState == 1) {
            finish(false);
        } else if (matchState == 2) {
            moveToMini();
        } else if (matchState != 3) {
        } else {
            finish(false);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getViewModel().getPusherModel().getTrtcCloud().setSystemVolumeType(0);
        getF2fProxy().onEnterF2f();
        setMatchGender(SpUtils.getSelfInt2("f2f_match_gender"));
        getWindow().setBackgroundDrawableResource(17170444);
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "intent");
        handleIntent(intent);
        getF2fProxy().releaseMini();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        KeyboardHeightProvider keyboardHeightProvider = this.keyboardHeightProvider;
        if (keyboardHeightProvider != null) {
            keyboardHeightProvider.close();
        }
        getViewModel().getPusherModel().getTrtcCloud().setSystemVolumeType(1);
        release(false);
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public void onKeyboardHeightChanged(int i9, int i10) {
        this.f2fVideoChatFragment.onKeyboardHeightChanged(i9, i10);
    }

    @Override // com.guochao.faceshow.aaspring.utils.KeyboardHeightObserver
    public /* synthetic */ void onKeyboardHeightChanged(int i9, int i10, int i11) {
        e.a(this, i9, i10, i11);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void onMatchTimeout(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        F2fMatchContainer.DefaultImpls.exitCurrentRoom$default(this, false, 1, null);
        getF2fProxy().showRetryAlertDialog(this, this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        handleIntent(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        KeyboardHeightProvider keyboardHeightProvider = this.keyboardHeightProvider;
        if (keyboardHeightProvider != null) {
            keyboardHeightProvider.setKeyboardHeightObserver(null);
        }
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void onPlayFirstFrame(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        this.lastMatchTime = System.currentTimeMillis();
        boolean z10 = false;
        this.f2fMatchingFragment.showMatching(false);
        getSupportFragmentManager().beginTransaction().show(this.f2fVideoChatFragment).commitAllowingStateLoss();
        makePlayerViewVisible(true);
        F2fMatchModel.F2fMatchRoomInfo matchUserInfo = f2fHeartBeatModel.getMatchUserInfo();
        Integer valueOf = matchUserInfo != null ? Integer.valueOf(matchUserInfo.getAttentionStatus()) : null;
        if (((valueOf != null && valueOf.intValue() == -1) || (valueOf != null && valueOf.intValue() == 0)) || (valueOf != null && valueOf.intValue() == 1)) {
            z10 = true;
        }
        if (z10) {
            startCountDown();
        } else if (valueOf != null && valueOf.intValue() == 2) {
            startCountUp();
        }
        if (this.matchGender != -1) {
            getF2fProxy().shouldCostFilterDiamonds();
        }
        getViewModel().confirmMatchSuccess(f2fHeartBeatModel);
        this.f2fVideoChatFragment.setCurrentUserInfo(f2fHeartBeatModel);
        if (!this.f2fVideoChatFragment.isAdded() || this.f2fVideoChatFragment.getView() == null) {
            return;
        }
        this.f2fVideoChatFragment.getViewBinding().exit.setEnabled(true);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void onReceiveSeiMessage(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel, @NotNull JSONObject json) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        Intrinsics.checkNotNullParameter(json, "json");
        if (json.has("guass")) {
            this.f2fVideoChatFragment.receiveGuass(json.getInt("guass"));
        }
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void onReject(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel, int i9) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        F2fMatchContainer.DefaultImpls.exitCurrentRoom$default(this, false, 1, null);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void onRemoteUserLeave(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        F2fMatchContainer.DefaultImpls.exitCurrentRoom$default(this, false, 1, null);
        if (!this.f2fVideoChatFragment.isAdded() || this.f2fVideoChatFragment.getView() == null) {
            return;
        }
        this.f2fVideoChatFragment.getViewBinding().exit.setEnabled(false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        KeyboardHeightProvider keyboardHeightProvider = this.keyboardHeightProvider;
        if (keyboardHeightProvider != null) {
            keyboardHeightProvider.setKeyboardHeightObserver(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        F2fForegroundService.Companion.stop(this);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void onStartMatchError(int i9) {
        if (i9 == 50001) {
            ToastUtils.showToast$default(null, R$string.match_balance, 0, 5, null);
            exitCurrentRoom(false);
            cancelMatchAndBackToPrepare();
            return;
        }
        finish(false);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        if (isFinishing()) {
            return;
        }
        F2fForegroundService.Companion.start(this);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchCallback
    public void onUserMatched(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        getSupportFragmentManager().beginTransaction().hide(this.f2fPrepareFragment).commitAllowingStateLoss();
        getViewModel().agreeMatch(f2fHeartBeatModel);
        this.f2fMatchingFragment.showWaitingMatchRoomInfo(f2fHeartBeatModel.getMatchUserInfo());
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void report(@NotNull F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo) {
        Intrinsics.checkNotNullParameter(f2fMatchRoomInfo, "f2fMatchRoomInfo");
        getF2fProxy().report(f2fMatchRoomInfo, this);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void retryMatch() {
        startMatch();
    }

    public final void setF2fPrepareFragment(@NotNull F2fPrepareFragment f2fPrepareFragment) {
        Intrinsics.checkNotNullParameter(f2fPrepareFragment, "<set-?>");
        this.f2fPrepareFragment = f2fPrepareFragment;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void setGenderSelection(int i9) {
        if (i9 == 0) {
            setMatchGender(-1);
        } else if (i9 == 1) {
            setMatchGender(1);
        } else if (i9 != 2) {
        } else {
            setMatchGender(0);
        }
    }

    public final void setViewBinding(@NotNull ActivityF2fMatchBinding activityF2fMatchBinding) {
        Intrinsics.checkNotNullParameter(activityF2fMatchBinding, "<set-?>");
        this.viewBinding = activityF2fMatchBinding;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean shouldShowLiveFloatWindow() {
        return false;
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void showGenderFilterDialog() {
        getF2fProxy().showGenderFilterDialog(this, this.matchGender);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer
    public void showPendantDialog() {
        F2fProxy proxy = getProxy();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        proxy.showPendantDialog(supportFragmentManager);
    }

    @Override // com.guochao.faceshow.component.f2fmatch.utils.SlideTouchHelper.Callback
    public void slideDownConfirmed() {
        if (getViewAnimator().getAnimating() || getViewModel().getMatchState() == 3) {
            return;
        }
        moveToMini();
    }

    @Override // com.guochao.faceshow.component.f2fmatch.utils.SlideTouchHelper.Callback
    public void slideUpConfirmed() {
        if (getViewAnimator().getAnimating()) {
            return;
        }
        try {
            if (getViewModel().getMatchState() == 3 || this.f2fMatchingFragment.getViewBinding().matchingArea.getVisibility() != 0) {
                F2fMatchContainer.DefaultImpls.exitCurrentRoom$default(this, false, 1, null);
                return;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        ja.a.b().e("KEY_F2F_SLIDE_UP");
        startMatch();
    }

    public final boolean under(@NotNull View view, @NotNull MotionEvent event, @NotNull int[] location) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        Intrinsics.checkNotNullParameter(location, "location");
        int i9 = location[0];
        int i10 = location[1];
        return ((float) i9) < event.getRawX() && ((float) i10) < event.getRawY() && ((float) (view.getWidth() + i9)) > event.getRawX() && ((float) (view.getHeight() + i10)) > event.getRawY();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity
    public boolean useBlackTextStatusBar() {
        return false;
    }

    public final void finish(boolean z10) {
        super.finish();
        release(z10);
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.activity.GCBaseMvvmActivity
    @NotNull
    public F2fMatchViewModel getViewModel() {
        return (F2fMatchViewModel) this.viewModel$delegate.getValue();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable F2fMatchModel f2fMatchModel) {
        if (f2fMatchModel instanceof F2fMatchModel.F2fMatchRoomAgreeModel) {
            getSupportFragmentManager().beginTransaction().show(this.f2fVideoChatFragment).commitAllowingStateLoss();
            makePlayerViewVisible(true);
        }
    }
}
