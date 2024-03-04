package com.guochao.component.voiceliveroom.fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelProvider;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.material.button.MaterialButton;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0014J\u0012\u0010\u001d\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;", "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;", "()V", "isLock", "", "roomId", "", "seatIndex", "", "Ljava/lang/Integer;", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuAdminEmptyBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomOnSeatMenuAdminEmptyFragment extends FullWidthBaseFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private boolean isLock;
    @Nullable
    private String roomId;
    @Nullable
    private Integer seatIndex;
    public FragmentVoiceRoomOnSeatMenuAdminEmptyBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuAdminEmptyFragment;", "roomId", "", "seatIndex", "", "isLock", "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomOnSeatMenuAdminEmptyFragment newInstance(@NotNull String roomId, int i9, boolean z10) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            VoiceRoomOnSeatMenuAdminEmptyFragment voiceRoomOnSeatMenuAdminEmptyFragment = new VoiceRoomOnSeatMenuAdminEmptyFragment();
            Bundle bundle = new Bundle();
            bundle.putString("roomId", roomId);
            bundle.putInt("roomSeatIndex", i9);
            bundle.putBoolean("isLock", z10);
            voiceRoomOnSeatMenuAdminEmptyFragment.setArguments(bundle);
            return voiceRoomOnSeatMenuAdminEmptyFragment;
        }
    }

    public VoiceRoomOnSeatMenuAdminEmptyFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomOnSeatMenuAdminEmptyFragment.this.requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                return (VoiceRoomSeatControllerViewModel) ((BaseViewModel) new ViewModelProvider(requireActivity).get(VoiceRoomSeatControllerViewModel.class));
            }
        });
        this.viewModel$delegate = lazy;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-0  reason: not valid java name */
    public static final void m302initView$lambda3$lambda0(VoiceRoomOnSeatMenuAdminEmptyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-1  reason: not valid java name */
    public static final void m303initView$lambda3$lambda1(final VoiceRoomOnSeatMenuAdminEmptyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        new com.tbruyelle.rxpermissions2.a(this$0).p("android.permission.RECORD_AUDIO").subscribe(new SimpleObserver<te.a>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1
            /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
                r3 = r2.this$0.roomId;
             */
            /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
                r1 = (r0 = r2.this$0).seatIndex;
             */
            @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onNext(@org.jetbrains.annotations.NotNull te.a r3) {
                /*
                    r2 = this;
                    java.lang.String r0 = "o"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                    super.onNext(r3)
                    boolean r3 = r3.f58133b
                    if (r3 == 0) goto L27
                    com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment r3 = com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment.this
                    java.lang.String r3 = com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment.access$getRoomId$p(r3)
                    if (r3 == 0) goto L27
                    com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment r0 = com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment.this
                    java.lang.Integer r1 = com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment.access$getSeatIndex$p(r0)
                    if (r1 == 0) goto L27
                    int r1 = r1.intValue()
                    com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel r0 = com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment.access$getViewModel(r0)
                    r0.takeSeat(r3, r1)
                L27:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$2$1.onNext(te.a):void");
            }
        });
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-3$lambda-2  reason: not valid java name */
    public static final void m304initView$lambda3$lambda2(final VoiceRoomOnSeatMenuAdminEmptyFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requireGCLiveRoomModel(new Function1<GCLiveRoomModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment$initView$1$3$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCLiveRoomModel gCLiveRoomModel) {
                invoke2(gCLiveRoomModel);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCLiveRoomModel requireGCLiveRoomModel) {
                boolean z10;
                Integer num;
                VoiceRoomSeatControllerViewModel viewModel;
                Integer num2;
                VoiceRoomSeatControllerViewModel viewModel2;
                Intrinsics.checkNotNullParameter(requireGCLiveRoomModel, "$this$requireGCLiveRoomModel");
                z10 = VoiceRoomOnSeatMenuAdminEmptyFragment.this.isLock;
                if (z10) {
                    num2 = VoiceRoomOnSeatMenuAdminEmptyFragment.this.seatIndex;
                    if (num2 != null) {
                        VoiceRoomOnSeatMenuAdminEmptyFragment voiceRoomOnSeatMenuAdminEmptyFragment = VoiceRoomOnSeatMenuAdminEmptyFragment.this;
                        int intValue = num2.intValue();
                        viewModel2 = voiceRoomOnSeatMenuAdminEmptyFragment.getViewModel();
                        viewModel2.unLockSeat(intValue);
                        voiceRoomOnSeatMenuAdminEmptyFragment.dismissAllowingStateLoss();
                        return;
                    }
                    return;
                }
                num = VoiceRoomOnSeatMenuAdminEmptyFragment.this.seatIndex;
                if (num != null) {
                    VoiceRoomOnSeatMenuAdminEmptyFragment voiceRoomOnSeatMenuAdminEmptyFragment2 = VoiceRoomOnSeatMenuAdminEmptyFragment.this;
                    int intValue2 = num.intValue();
                    viewModel = voiceRoomOnSeatMenuAdminEmptyFragment2.getViewModel();
                    viewModel.lockSeat(intValue2);
                    voiceRoomOnSeatMenuAdminEmptyFragment2.dismissAllowingStateLoss();
                }
            }
        });
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomOnSeatMenuAdminEmptyFragment newInstance(@NotNull String str, int i9, boolean z10) {
        return Companion.newInstance(str, i9, z10);
    }

    @NotNull
    public final FragmentVoiceRoomOnSeatMenuAdminEmptyBinding getViewBinding() {
        FragmentVoiceRoomOnSeatMenuAdminEmptyBinding fragmentVoiceRoomOnSeatMenuAdminEmptyBinding = this.viewBinding;
        if (fragmentVoiceRoomOnSeatMenuAdminEmptyBinding != null) {
            return fragmentVoiceRoomOnSeatMenuAdminEmptyBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        FragmentVoiceRoomOnSeatMenuAdminEmptyBinding viewBinding = getViewBinding();
        if (!this.isLock) {
            viewBinding.lockBT.setText(getString(R$string.voice_room_lock_seat));
        }
        MaterialButton cancel = viewBinding.cancel;
        Intrinsics.checkNotNullExpressionValue(cancel, "cancel");
        ViewExtendsKt.onClick$default(cancel, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomOnSeatMenuAdminEmptyFragment.m302initView$lambda3$lambda0(VoiceRoomOnSeatMenuAdminEmptyFragment.this, view);
            }
        }, 1, null);
        MaterialButton linkBT = viewBinding.linkBT;
        Intrinsics.checkNotNullExpressionValue(linkBT, "linkBT");
        ViewExtendsKt.onClick$default(linkBT, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomOnSeatMenuAdminEmptyFragment.m303initView$lambda3$lambda1(VoiceRoomOnSeatMenuAdminEmptyFragment.this, view);
            }
        }, 1, null);
        MaterialButton lockBT = viewBinding.lockBT;
        Intrinsics.checkNotNullExpressionValue(lockBT, "lockBT");
        ViewExtendsKt.onClick$default(lockBT, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomOnSeatMenuAdminEmptyFragment.m304initView$lambda3$lambda2(VoiceRoomOnSeatMenuAdminEmptyFragment.this, view);
            }
        }, 1, null);
    }

    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.roomId = arguments != null ? arguments.getString("roomId") : null;
        Bundle arguments2 = getArguments();
        this.seatIndex = arguments2 != null ? Integer.valueOf(arguments2.getInt("roomSeatIndex")) : null;
        Bundle arguments3 = getArguments();
        boolean z10 = true;
        this.isLock = (arguments3 == null || !arguments3.getBoolean("isLock")) ? false : false;
    }

    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, androidx.fragment.app.DialogFragment
    @NotNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createBottomDialog();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setLayout(-1, -1);
        window.setGravity(80);
        window.getDecorView().setBackground(null);
    }

    public final void setViewBinding(@NotNull FragmentVoiceRoomOnSeatMenuAdminEmptyBinding fragmentVoiceRoomOnSeatMenuAdminEmptyBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomOnSeatMenuAdminEmptyBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomOnSeatMenuAdminEmptyBinding;
    }
}
