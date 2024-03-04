package com.guochao.faceshow.component.f2fmatch.fragment;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.component.f2fmatch.R$dimen;
import com.guochao.faceshow.component.f2fmatch.R$drawable;
import com.guochao.faceshow.component.f2fmatch.R$id;
import com.guochao.faceshow.component.f2fmatch.R$raw;
import com.guochao.faceshow.component.f2fmatch.R$string;
import com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fVideoChatBinding;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.model.F2fSpeechToTextResultModel;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy;
import com.guochao.faceshow.component.f2fmatch.utils.ViewAnimator;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.lib_base.R$color;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010.\u001a\u00020/H\u0002J\u0006\u00100\u001a\u00020/J\u0012\u00101\u001a\u00020/2\b\u00102\u001a\u0004\u0018\u00010\u001cH\u0002J\u0018\u00103\u001a\u00020/2\u0006\u00104\u001a\u00020\n2\b\b\u0002\u00105\u001a\u00020\u0013J\u001a\u00106\u001a\u00020/2\u0006\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010:H\u0014J\b\u0010;\u001a\u00020/H\u0016J\u0010\u0010<\u001a\u00020/2\u0006\u0010=\u001a\u00020\u0013H\u0016J\u0016\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020\u0006J\u0012\u0010A\u001a\u00020/2\b\u0010B\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010C\u001a\u00020/2\u0006\u0010D\u001a\u00020\u0013J\u000e\u0010E\u001a\u00020/2\u0006\u0010F\u001a\u00020\u0006J\u0006\u0010G\u001a\u00020/J\u000e\u0010H\u001a\u00020/2\u0006\u00104\u001a\u00020\nJ\u000e\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020KJ\b\u0010L\u001a\u00020/H\u0002J\b\u0010M\u001a\u00020/H\u0002J\b\u0010N\u001a\u00020/H\u0002J\u0010\u0010O\u001a\u00020/2\b\b\u0002\u0010P\u001a\u00020\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u001d\u001a\u00020\u001e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b\u001f\u0010 R$\u0010#\u001a\u00020$8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b%\u0010\u0004\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001b\u0010*\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\"\u001a\u0004\b+\u0010,¨\u0006Q"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "()V", "currentGuass", "", "f2fChatFragmentBase", "Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fChatFragmentBase;", "f2fMatchRoomInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "getF2fMatchRoomInfo", "()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "setF2fMatchRoomInfo", "(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;)V", "focusTips", "Ljava/lang/Runnable;", "giftTips", "guassRemove", "", "handler", "Landroid/os/Handler;", "matchUserIsInSmallPosition", "getMatchUserIsInSmallPosition", "()Z", "setMatchUserIsInSmallPosition", "(Z)V", "popupWindowFocus", "Landroid/widget/PopupWindow;", "pusherModel", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;", "getPusherModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;", "pusherModel$delegate", "Lkotlin/Lazy;", "viewBinding", "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;", "setViewBinding", "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "viewModel$delegate", "checkGuass", "", "detectNoFaceOnScreen", "dismiss", "popupWindow", "focusSomebody", "gcUser", "showFocusMessage", "initView", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onHiddenChanged", "hidden", "onKeyboardHeightChanged", "height", AdUnitActivity.EXTRA_ORIENTATION, "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "playerViewMoveToMiniSize", "miniSize", "receiveGuass", com.huawei.hms.opendevice.i.TAG, "removeChat", "removeGuass", "setCurrentUserInfo", "f2fHeartBeatModel", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;", "showFocusTips", "showGiftTips", "startAudioRecord", "stopAudioRecord", "cancel", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fVideoChatFragment extends GCBaseMvvmFragment<F2fMatchModel, F2fMatchViewModel> {
    private int currentGuass;
    @Nullable
    private F2fChatFragmentBase f2fChatFragmentBase;
    @Nullable
    private F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo;
    @NotNull
    private final Runnable focusTips;
    @NotNull
    private final Runnable giftTips;
    private boolean guassRemove;
    @NotNull
    private final Handler handler;
    private boolean matchUserIsInSmallPosition;
    @Nullable
    private PopupWindow popupWindowFocus;
    @NotNull
    private final Lazy pusherModel$delegate;
    public FragmentF2fVideoChatBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    public F2fVideoChatFragment() {
        Lazy lazy;
        Lazy lazy2;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<F2fMatchViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment$special$$inlined$lazyGlobalViewModel$default$1
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
        final GCApplication app2 = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app2, "app()");
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<F2fPusherViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment$special$$inlined$lazyGlobalViewModel$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final F2fPusherViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, F2fPusherViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(F2fPusherViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.viewmodel.F2fPusherViewModel");
                return (F2fPusherViewModel) baseViewModel;
            }
        });
        this.pusherModel$delegate = lazy2;
        this.handler = new Handler(Looper.getMainLooper());
        this.giftTips = new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.y
            @Override // java.lang.Runnable
            public final void run() {
                F2fVideoChatFragment.m625giftTips$lambda23(F2fVideoChatFragment.this);
            }
        };
        this.focusTips = new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.p
            @Override // java.lang.Runnable
            public final void run() {
                F2fVideoChatFragment.m624focusTips$lambda24(F2fVideoChatFragment.this);
            }
        };
    }

    private final void checkGuass() {
        if (this.matchUserIsInSmallPosition) {
            getViewBinding().guassArea.setVisibility(8);
        } else if (!this.guassRemove && this.currentGuass != 0) {
            getViewBinding().guassArea.setVisibility(0);
        } else {
            getViewBinding().guassArea.setVisibility(8);
        }
    }

    private final void dismiss(PopupWindow popupWindow) {
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        popupWindow.dismiss();
    }

    public static /* synthetic */ void focusSomebody$default(F2fVideoChatFragment f2fVideoChatFragment, F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo, boolean z10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            z10 = true;
        }
        f2fVideoChatFragment.focusSomebody(f2fMatchRoomInfo, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: focusTips$lambda-24  reason: not valid java name */
    public static final void m624focusTips$lambda24(F2fVideoChatFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showFocusTips();
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: giftTips$lambda-23  reason: not valid java name */
    public static final void m625giftTips$lambda23(F2fVideoChatFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.showGiftTips();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-13$lambda-1  reason: not valid java name */
    public static final void m626initView$lambda13$lambda1(F2fVideoChatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
        F2fMatchContainer f2fMatchContainer = (F2fMatchContainer) requireActivity;
        f2fMatchContainer.exitCurrentRoom(false);
        f2fMatchContainer.cancelMatchAndBackToPrepare();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-13$lambda-11  reason: not valid java name */
    public static final void m627initView$lambda13$lambda11(F2fVideoChatFragment this$0, FragmentF2fVideoChatBinding this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo = this$0.f2fMatchRoomInfo;
        if (f2fMatchRoomInfo != null) {
            this$0.guassRemove = true;
            this_apply.guassArea.setVisibility(8);
            F2fChatFragmentBase f2fChatFragmentBase = this$0.f2fChatFragmentBase;
            if (f2fChatFragmentBase != null) {
                f2fChatFragmentBase.removeCurrentGuass(f2fMatchRoomInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-13$lambda-12  reason: not valid java name */
    public static final void m628initView$lambda13$lambda12(FragmentF2fVideoChatBinding this_apply, F2fVideoChatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_apply.audioTranslate.isSelected()) {
            stopAudioRecord$default(this$0, false, 1, null);
            return;
        }
        this_apply.audioTranslate.setSelected(true);
        F2fChatFragmentBase f2fChatFragmentBase = this$0.f2fChatFragmentBase;
        if (f2fChatFragmentBase != null) {
            f2fChatFragmentBase.enterInput(false);
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.SPEECH_TO_TEXT_CLICK);
        this$0.startAudioRecord();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-13$lambda-4  reason: not valid java name */
    public static final void m629initView$lambda13$lambda4(F2fVideoChatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNull(requireContext, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
        ((F2fMatchContainer) requireContext).showPendantDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-13$lambda-5  reason: not valid java name */
    public static final void m630initView$lambda13$lambda5(FragmentF2fVideoChatBinding this_apply, F2fVideoChatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_apply.audioTranslate.isSelected()) {
            return;
        }
        this_apply.liveBottomInputLy.setVisibility(0);
        SoftKeyBoardUtils.openSoftKeyBoardNow(this_apply.liveBottomEditText);
        F2fChatFragmentBase f2fChatFragmentBase = this$0.f2fChatFragmentBase;
        if (f2fChatFragmentBase != null) {
            f2fChatFragmentBase.enterInput(true);
        }
        F2fChatFragmentBase f2fChatFragmentBase2 = this$0.f2fChatFragmentBase;
        if (f2fChatFragmentBase2 != null) {
            f2fChatFragmentBase2.awakenChatRecyclerView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-13$lambda-6  reason: not valid java name */
    public static final void m631initView$lambda13$lambda6(FragmentF2fVideoChatBinding this_apply, F2fVideoChatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String obj = this_apply.liveBottomEditText.getText().toString();
        if (TextUtils.isEmpty(obj)) {
            return;
        }
        F2fChatFragmentBase f2fChatFragmentBase = this$0.f2fChatFragmentBase;
        if (f2fChatFragmentBase != null) {
            f2fChatFragmentBase.sendText(obj);
        }
        this_apply.liveBottomEditText.setText("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-13$lambda-7  reason: not valid java name */
    public static final void m632initView$lambda13$lambda7(F2fVideoChatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        F2fChatFragmentBase f2fChatFragmentBase = this$0.f2fChatFragmentBase;
        if (f2fChatFragmentBase != null) {
            f2fChatFragmentBase.showGiftDialog();
        }
        ja.a.b().e("KEY_F2F_SEND_GIFT");
        this$0.getViewBinding().giftTips.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-13$lambda-9  reason: not valid java name */
    public static final void m633initView$lambda13$lambda9(F2fVideoChatFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo = this$0.f2fMatchRoomInfo;
        if (f2fMatchRoomInfo != null) {
            FragmentActivity requireActivity = this$0.requireActivity();
            Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
            ((F2fMatchContainer) requireActivity).report(f2fMatchRoomInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setCurrentUserInfo$lambda-15$lambda-14  reason: not valid java name */
    public static final void m634setCurrentUserInfo$lambda15$lambda14(ImageView this_apply) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.setVisibility(8);
    }

    private final void showFocusTips() {
        String string;
        PopupWindow popupWindow = this.popupWindowFocus;
        if (popupWindow == null) {
            popupWindow = new PopupWindow(requireContext());
            this.popupWindowFocus = popupWindow;
        }
        View findViewWithTag = requireView().findViewWithTag("focus");
        if (findViewWithTag.getVisibility() != 0) {
            return;
        }
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setFocusable(false);
        popupWindow.setTouchable(false);
        popupWindow.setOutsideTouchable(false);
        TextView textView = new TextView(requireContext());
        textView.setBackgroundResource(R$drawable.gift_top_remind_1);
        textView.setGravity(GravityCompat.START);
        F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo = this.f2fMatchRoomInfo;
        if (f2fMatchRoomInfo != null && f2fMatchRoomInfo.getGender() == 0) {
            string = getString(R$string.focus_tips_famale);
        } else {
            string = getString(R$string.focus_tips_male);
        }
        textView.setText(string);
        textView.setTextColor(getResources().getColor(R$color.white));
        textView.setTextSize(14.0f);
        popupWindow.setContentView(textView);
        popupWindow.setWidth(DensityUtil.dp2px(140.0f));
        popupWindow.setHeight(-2);
        findViewWithTag.getLocationInWindow(new int[2]);
        if (q7.a.e().j()) {
            popupWindow.showAsDropDown(findViewWithTag, DensityUtil.dp2px(5.0f), 0, GravityCompat.START);
        } else {
            popupWindow.showAsDropDown(findViewWithTag, -DensityUtil.dp2px(5.0f), 0, GravityCompat.START);
        }
    }

    private final void showGiftTips() {
        String string;
        TextView textView = getViewBinding().giftTips;
        F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo = this.f2fMatchRoomInfo;
        if (f2fMatchRoomInfo != null && f2fMatchRoomInfo.getGender() == 0) {
            string = getString(R$string.gift_tips_famale);
        } else {
            string = getString(R$string.gift_tips_male);
        }
        textView.setText(string);
        getViewBinding().giftTips.setVisibility(0);
    }

    private final void startAudioRecord() {
        getViewModel().startAudioRecord(new Function1<F2fSpeechToTextResultModel, Unit>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment$startAudioRecord$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(F2fSpeechToTextResultModel f2fSpeechToTextResultModel) {
                invoke2(f2fSpeechToTextResultModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull F2fSpeechToTextResultModel it) {
                F2fChatFragmentBase f2fChatFragmentBase;
                Intrinsics.checkNotNullParameter(it, "it");
                if (it.getFinalResult()) {
                    F2fVideoChatFragment.this.getViewBinding().audioTranslate.setSelected(false);
                    F2fVideoChatFragment.this.getViewBinding().inputMessage.setEnabled(true);
                }
                f2fChatFragmentBase = F2fVideoChatFragment.this.f2fChatFragmentBase;
                if (f2fChatFragmentBase != null) {
                    f2fChatFragmentBase.sendSpeechToTextResult(it);
                }
            }
        });
        getViewBinding().inputMessage.setEnabled(false);
        F2fChatFragmentBase f2fChatFragmentBase = this.f2fChatFragmentBase;
        if (f2fChatFragmentBase != null) {
            f2fChatFragmentBase.sendSpeechToTextResult(new F2fSpeechToTextResultModel("", false, false, 4, null));
        }
    }

    public static /* synthetic */ void stopAudioRecord$default(F2fVideoChatFragment f2fVideoChatFragment, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        f2fVideoChatFragment.stopAudioRecord(z10);
    }

    public final void detectNoFaceOnScreen() {
        F2fChatFragmentBase f2fChatFragmentBase = this.f2fChatFragmentBase;
        if (f2fChatFragmentBase != null) {
            f2fChatFragmentBase.detectNoFaceOnScreen();
        }
    }

    public final void focusSomebody(@NotNull F2fMatchModel.F2fMatchRoomInfo gcUser, boolean z10) {
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        View view = getView();
        View findViewWithTag = view != null ? view.findViewWithTag("focus") : null;
        if (findViewWithTag != null) {
            findViewWithTag.setVisibility(8);
        }
        F2fChatFragmentBase f2fChatFragmentBase = this.f2fChatFragmentBase;
        if (f2fChatFragmentBase != null) {
            f2fChatFragmentBase.focusSomebody(gcUser, z10);
        }
        PopupWindow popupWindow = this.popupWindowFocus;
        if (popupWindow != null) {
            dismiss(popupWindow);
            ja.a.b().e("KEY_F2F_FOCUS_TIPS");
            this.popupWindowFocus = null;
        }
    }

    @Nullable
    public final F2fMatchModel.F2fMatchRoomInfo getF2fMatchRoomInfo() {
        return this.f2fMatchRoomInfo;
    }

    public final boolean getMatchUserIsInSmallPosition() {
        return this.matchUserIsInSmallPosition;
    }

    @NotNull
    public final F2fPusherViewModel getPusherModel() {
        return (F2fPusherViewModel) this.pusherModel$delegate.getValue();
    }

    @NotNull
    public final FragmentF2fVideoChatBinding getViewBinding() {
        FragmentF2fVideoChatBinding fragmentF2fVideoChatBinding = this.viewBinding;
        if (fragmentF2fVideoChatBinding != null) {
            return fragmentF2fVideoChatBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        final FragmentF2fVideoChatBinding viewBinding = getViewBinding();
        viewBinding.exit.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fVideoChatFragment.m626initView$lambda13$lambda1(F2fVideoChatFragment.this, view);
            }
        });
        viewBinding.btnSend.setEnabled(false);
        viewBinding.liveBottomEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment$initView$1$2
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(@NotNull TextView v10, int i9, @Nullable KeyEvent keyEvent) {
                Intrinsics.checkNotNullParameter(v10, "v");
                if (i9 == 4) {
                    FragmentF2fVideoChatBinding.this.btnSend.performClick();
                    return true;
                }
                return false;
            }
        });
        EditText liveBottomEditText = viewBinding.liveBottomEditText;
        Intrinsics.checkNotNullExpressionValue(liveBottomEditText, "liveBottomEditText");
        liveBottomEditText.addTextChangedListener(new TextWatcher() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment$initView$lambda-13$$inlined$doAfterTextChanged$1
            /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
                if ((r4.length() > 0) != false) goto L7;
             */
            @Override // android.text.TextWatcher
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void afterTextChanged(@org.jetbrains.annotations.Nullable android.text.Editable r4) {
                /*
                    r3 = this;
                    com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fVideoChatBinding r0 = com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fVideoChatBinding.this
                    android.widget.ImageView r0 = r0.btnSend
                    r1 = 1
                    r2 = 0
                    if (r4 == 0) goto L14
                    int r4 = r4.length()
                    if (r4 <= 0) goto L10
                    r4 = 1
                    goto L11
                L10:
                    r4 = 0
                L11:
                    if (r4 == 0) goto L14
                    goto L15
                L14:
                    r1 = 0
                L15:
                    r0.setEnabled(r1)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.component.f2fmatch.fragment.F2fVideoChatFragment$initView$lambda13$$inlined$doAfterTextChanged$1.afterTextChanged(android.text.Editable):void");
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i9, int i10, int i11) {
            }
        });
        LinearLayout linearLayout = viewBinding.extraInfoArea;
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.topMargin = DensityUtil.dp2px(16.0f) + StatusBarHelper.getStatusbarHeight(requireContext());
        linearLayout.setLayoutParams(marginLayoutParams);
        viewBinding.beauty.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fVideoChatFragment.m629initView$lambda13$lambda4(F2fVideoChatFragment.this, view);
            }
        });
        viewBinding.inputMessage.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fVideoChatFragment.m630initView$lambda13$lambda5(FragmentF2fVideoChatBinding.this, this, view);
            }
        });
        viewBinding.btnSend.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fVideoChatFragment.m631initView$lambda13$lambda6(FragmentF2fVideoChatBinding.this, this, view);
            }
        });
        viewBinding.gift.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fVideoChatFragment.m632initView$lambda13$lambda7(F2fVideoChatFragment.this, view);
            }
        });
        viewBinding.gift.playRaw(R$raw.gift_new);
        viewBinding.report.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fVideoChatFragment.m633initView$lambda13$lambda9(F2fVideoChatFragment.this, view);
            }
        });
        viewBinding.remove.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fVideoChatFragment.m627initView$lambda13$lambda11(F2fVideoChatFragment.this, viewBinding, view);
            }
        });
        viewBinding.audioTranslate.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fVideoChatFragment.m628initView$lambda13$lambda12(FragmentF2fVideoChatBinding.this, this, view);
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.handler.removeMessages(0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z10) {
        FragmentManager supportFragmentManager;
        List<Fragment> fragments;
        super.onHiddenChanged(z10);
        if (z10) {
            this.handler.removeMessages(0);
            dismiss(this.popupWindowFocus);
            this.popupWindowFocus = null;
            if (getActivity() != null && this.viewBinding != null) {
                SoftKeyBoardUtils.closeSoftKeyBoard(requireContext(), getViewBinding().liveBottomEditText);
            }
            FragmentActivity activity = getActivity();
            if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null || (fragments = supportFragmentManager.getFragments()) == null) {
                return;
            }
            for (Fragment fragment : fragments) {
                if (fragment instanceof GCCoreFragment) {
                    GCCoreFragment gCCoreFragment = (GCCoreFragment) fragment;
                    if (gCCoreFragment.getShowsDialog()) {
                        gCCoreFragment.dismissAllowingStateLoss();
                    }
                }
            }
        }
    }

    public final void onKeyboardHeightChanged(int i9, int i10) {
        FragmentF2fVideoChatBinding viewBinding = getViewBinding();
        ViewGroup.LayoutParams layoutParams = viewBinding.message.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (i9 <= 0) {
            marginLayoutParams.bottomMargin = 0;
            viewBinding.liveBottomInputLy.setVisibility(8);
        } else {
            marginLayoutParams.bottomMargin = (((i9 - ((int) getResources().getDimension(R$dimen.f2f_bottom_margin))) + viewBinding.liveBottomInputLy.getHeight()) - viewBinding.menus.getHeight()) + DensityUtil.dp2px(8.0f);
            viewBinding.liveBottomInputLy.setVisibility(0);
        }
        viewBinding.message.setLayoutParams(marginLayoutParams);
        LinearLayout linearLayout = viewBinding.liveBottomInputLy;
        ViewGroup.LayoutParams layoutParams2 = linearLayout.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams2.bottomMargin = i9;
        linearLayout.setLayoutParams(marginLayoutParams2);
        ViewGroup.LayoutParams layoutParams3 = viewBinding.messageLayout.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) layoutParams3;
        if (i9 <= 0) {
            viewBinding.spaceChat.setVisibility(0);
            layoutParams4.weight = 0.0f;
            layoutParams4.height = DensityUtil.dp2px(300.0f);
            return;
        }
        viewBinding.spaceChat.setVisibility(8);
        layoutParams4.weight = 1.0f;
        layoutParams4.height = 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable F2fMatchModel f2fMatchModel) {
    }

    public final void playerViewMoveToMiniSize(boolean z10) {
        this.matchUserIsInSmallPosition = z10;
        checkGuass();
    }

    public final void receiveGuass(int i9) {
        if (this.guassRemove) {
            if (getViewBinding().guassArea.getVisibility() != 8) {
                getViewBinding().guassArea.setVisibility(8);
                return;
            }
            return;
        }
        this.currentGuass = i9;
        checkGuass();
    }

    public final void removeChat() {
        Fragment fragment = (Fragment) this.f2fChatFragmentBase;
        if (fragment == null || !fragment.isAdded()) {
            return;
        }
        getChildFragmentManager().beginTransaction().remove(fragment).commitAllowingStateLoss();
    }

    public final void removeGuass(@NotNull F2fMatchModel.F2fMatchRoomInfo gcUser) {
        Intrinsics.checkNotNullParameter(gcUser, "gcUser");
        String userId = gcUser.getUserId();
        F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo = this.f2fMatchRoomInfo;
        if (Intrinsics.areEqual(userId, f2fMatchRoomInfo != null ? f2fMatchRoomInfo.getUserId() : null)) {
            getPusherModel().setRemoveGuass(true);
        }
    }

    public final void setCurrentUserInfo(@NotNull F2fMatchModel.F2fHeartBeatModel f2fHeartBeatModel) {
        Intrinsics.checkNotNullParameter(f2fHeartBeatModel, "f2fHeartBeatModel");
        this.guassRemove = false;
        this.matchUserIsInSmallPosition = false;
        getPusherModel().setRemoveGuass(false);
        if (ja.a.b().g("KEY_F2F_TIPS_WHEN_CHATTING")) {
            final ImageView imageView = getViewBinding().chatTips;
            imageView.setVisibility(0);
            imageView.postDelayed(new Runnable() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.x
                @Override // java.lang.Runnable
                public final void run() {
                    F2fVideoChatFragment.m634setCurrentUserInfo$lambda15$lambda14(imageView);
                }
            }, 3000L);
        } else {
            getViewBinding().chatTips.setVisibility(8);
        }
        F2fMatchModel.F2fMatchRoomInfo matchUserInfo = f2fHeartBeatModel.getMatchUserInfo();
        if (matchUserInfo != null) {
            this.f2fMatchRoomInfo = matchUserInfo;
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), Dispatchers.getMain(), null, new F2fVideoChatFragment$setCurrentUserInfo$2$1(this, matchUserInfo, null), 2, null);
            getViewBinding().audioTranslate.setSelected(false);
            getViewBinding().inputMessage.setEnabled(true);
            if (ja.a.b().f("KEY_F2F_SEND_GIFT")) {
                this.handler.postDelayed(this.giftTips, 30000L);
            }
            if ((matchUserInfo.getAttentionStatus() == 0 || matchUserInfo.getAttentionStatus() == -1) && ja.a.b().f("KEY_F2F_FOCUS_TIPS")) {
                this.handler.post(this.focusTips);
            }
            TextView textView = getViewBinding().guassTips;
            int i9 = R$string.guass_tips;
            textView.setText(getString(i9, (char) 12300 + matchUserInfo.getNickName() + (char) 12301));
            FragmentActivity requireActivity = requireActivity();
            Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
            F2fProxy f2fProxy = ((F2fMatchContainer) requireActivity).getF2fProxy();
            LinearLayout linearLayout = getViewBinding().extraInfoArea;
            Intrinsics.checkNotNullExpressionValue(linearLayout, "viewBinding.extraInfoArea");
            FragmentActivity requireActivity2 = requireActivity();
            Intrinsics.checkNotNull(requireActivity2, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
            f2fProxy.setVideoChatUserInfo(matchUserInfo, linearLayout, (F2fMatchContainer) requireActivity2);
            getViewBinding().addr.setText(matchUserInfo.getAddressStr());
            ViewAnimator viewAnimator = new ViewAnimator();
            TextView textView2 = getViewBinding().addr;
            Intrinsics.checkNotNullExpressionValue(textView2, "viewBinding.addr");
            viewAnimator.animateAddress(textView2);
            FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
            int i10 = R$id.message;
            Fragment obtainChatFragment = f2fProxy.obtainChatFragment(f2fHeartBeatModel.getMatchUserInfo());
            Intrinsics.checkNotNull(obtainChatFragment, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fChatFragmentBase");
            this.f2fChatFragmentBase = (F2fChatFragmentBase) obtainChatFragment;
            Unit unit = Unit.INSTANCE;
            beginTransaction.replace(i10, obtainChatFragment).commitAllowingStateLoss();
        }
    }

    public final void setF2fMatchRoomInfo(@Nullable F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo) {
        this.f2fMatchRoomInfo = f2fMatchRoomInfo;
    }

    public final void setMatchUserIsInSmallPosition(boolean z10) {
        this.matchUserIsInSmallPosition = z10;
    }

    public final void setViewBinding(@NotNull FragmentF2fVideoChatBinding fragmentF2fVideoChatBinding) {
        Intrinsics.checkNotNullParameter(fragmentF2fVideoChatBinding, "<set-?>");
        this.viewBinding = fragmentF2fVideoChatBinding;
    }

    public final void stopAudioRecord(boolean z10) {
        getViewBinding().inputMessage.setEnabled(true);
        getViewBinding().audioTranslate.setSelected(false);
        getViewModel().stopAudioRecord(z10);
        F2fChatFragmentBase f2fChatFragmentBase = this.f2fChatFragmentBase;
        if (f2fChatFragmentBase != null) {
            f2fChatFragmentBase.sendSpeechToTextResult(new F2fSpeechToTextResultModel("", true, true));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public F2fMatchViewModel getViewModel() {
        return (F2fMatchViewModel) this.viewModel$delegate.getValue();
    }
}
