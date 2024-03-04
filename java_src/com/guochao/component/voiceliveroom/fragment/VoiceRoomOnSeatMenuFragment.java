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
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomOnSeatMenuBinding;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.viewmodel.BaseVoiceRoomSeatControllerViewModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.callback.GCValueCallbackKt;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.context.GCApplication;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0012\u0010\u0018\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001e"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;", "Lcom/guochao/component/voiceliveroom/fragment/FullWidthBaseFragment;", "()V", "user", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomOnSeatMenuBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onViewCreated", ViewHierarchyConstants.VIEW_KEY, "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomOnSeatMenuFragment extends FullWidthBaseFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private VoiceRoomUserOnSeatModel user;
    public FragmentVoiceRoomOnSeatMenuBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;", "user", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomOnSeatMenuFragment newInstance(@Nullable VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel) {
            VoiceRoomOnSeatMenuFragment voiceRoomOnSeatMenuFragment = new VoiceRoomOnSeatMenuFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("user", voiceRoomUserOnSeatModel);
            voiceRoomOnSeatMenuFragment.setArguments(bundle);
            return voiceRoomOnSeatMenuFragment;
        }
    }

    public VoiceRoomOnSeatMenuFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomOnSeatMenuFragment.this.requireActivity();
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
    /* renamed from: initView$lambda-4$lambda-0  reason: not valid java name */
    public static final void m305initView$lambda4$lambda0(VoiceRoomOnSeatMenuFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-1  reason: not valid java name */
    public static final void m306initView$lambda4$lambda1(VoiceRoomOnSeatMenuFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = this$0.user;
        String str = (voiceRoomUserOnSeatModel == null || (str = voiceRoomUserOnSeatModel.getUserId()) == null) ? "" : "";
        VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel2 = this$0.user;
        String valueOf = String.valueOf(voiceRoomUserOnSeatModel2 != null ? Integer.valueOf(voiceRoomUserOnSeatModel2.getId()) : null);
        VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel3 = this$0.user;
        this$0.showPeopleInfoCard(str, valueOf, voiceRoomUserOnSeatModel3 != null ? Integer.valueOf(voiceRoomUserOnSeatModel3.getSeatIndex()) : null);
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-2  reason: not valid java name */
    public static final void m307initView$lambda4$lambda2(final VoiceRoomOnSeatMenuFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requireGCLiveRoomModel(new Function1<GCLiveRoomModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuFragment$initView$1$3$1
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
                VoiceRoomSeatControllerViewModel viewModel;
                Intrinsics.checkNotNullParameter(requireGCLiveRoomModel, "$this$requireGCLiveRoomModel");
                viewModel = VoiceRoomOnSeatMenuFragment.this.getViewModel();
                BaseVoiceRoomSeatControllerViewModel.leaveSeat$default(viewModel, 0, 1, null);
                VoiceRoomOnSeatMenuFragment.this.dismissAllowingStateLoss();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-4$lambda-3  reason: not valid java name */
    public static final void m308initView$lambda4$lambda3(final VoiceRoomOnSeatMenuFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requireGCLiveRoomModel(new Function1<GCLiveRoomModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuFragment$initView$1$4$1
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
                VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel;
                VoiceRoomSeatControllerViewModel viewModel;
                VoiceRoomSeatControllerViewModel viewModel2;
                Intrinsics.checkNotNullParameter(requireGCLiveRoomModel, "$this$requireGCLiveRoomModel");
                voiceRoomUserOnSeatModel = VoiceRoomOnSeatMenuFragment.this.user;
                boolean z10 = false;
                if (voiceRoomUserOnSeatModel != null && voiceRoomUserOnSeatModel.getSeatStatus() == 4) {
                    z10 = true;
                }
                if (z10) {
                    viewModel2 = VoiceRoomOnSeatMenuFragment.this.getViewModel();
                    final VoiceRoomOnSeatMenuFragment voiceRoomOnSeatMenuFragment = VoiceRoomOnSeatMenuFragment.this;
                    VoiceRoomSeatControllerViewModel.openMicro$default(viewModel2, null, GCValueCallbackKt.callbackOnLifecycle(voiceRoomOnSeatMenuFragment, new Function1<Integer, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuFragment$initView$1$4$1.1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                            invoke(num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i9) {
                            if (i9 == 1) {
                                VoiceRoomOnSeatMenuFragment.this.dismissAllowingStateLoss();
                            } else if (i9 == 5001) {
                                ToastUtils.showToast$default(GCApplication.app(), R$string.permission_rejection, 0, 4, null);
                            } else if (i9 != 5007) {
                            } else {
                                ToastUtils.showToast$default(VoiceRoomOnSeatMenuFragment.this.getContext(), R$string.voice_room_tips_close_micro_5007, 0, 4, null);
                            }
                        }
                    }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuFragment$initView$1$4$1.2
                        @Override // kotlin.jvm.functions.Function2
                        /* renamed from: invoke */
                        public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                            invoke(num.intValue(), str);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i9, @Nullable String str) {
                        }
                    }), 1, null);
                    return;
                }
                viewModel = VoiceRoomOnSeatMenuFragment.this.getViewModel();
                final VoiceRoomOnSeatMenuFragment voiceRoomOnSeatMenuFragment2 = VoiceRoomOnSeatMenuFragment.this;
                VoiceRoomSeatControllerViewModel.closeMicro$default(viewModel, null, GCValueCallbackKt.callbackOnLifecycle(voiceRoomOnSeatMenuFragment2, new Function1<Integer, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuFragment$initView$1$4$1.3
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                        invoke(num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i9) {
                        if (i9 != -1) {
                            VoiceRoomOnSeatMenuFragment.this.dismissAllowingStateLoss();
                        } else if (i9 == 5001) {
                            ToastUtils.showToast$default(GCApplication.app(), R$string.permission_rejection, 0, 4, null);
                        } else if (i9 == 5006) {
                            ToastUtils.showToast$default(VoiceRoomOnSeatMenuFragment.this.getContext(), R$string.voice_room_tips_close_micro_5006, 0, 4, null);
                        }
                    }
                }, new Function2<Integer, String, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuFragment$initView$1$4$1.4
                    @Override // kotlin.jvm.functions.Function2
                    /* renamed from: invoke */
                    public /* bridge */ /* synthetic */ Unit mo1invoke(Integer num, String str) {
                        invoke(num.intValue(), str);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(int i9, @Nullable String str) {
                    }
                }), 1, null);
            }
        });
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomOnSeatMenuFragment newInstance(@Nullable VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel) {
        return Companion.newInstance(voiceRoomUserOnSeatModel);
    }

    @NotNull
    public final FragmentVoiceRoomOnSeatMenuBinding getViewBinding() {
        FragmentVoiceRoomOnSeatMenuBinding fragmentVoiceRoomOnSeatMenuBinding = this.viewBinding;
        if (fragmentVoiceRoomOnSeatMenuBinding != null) {
            return fragmentVoiceRoomOnSeatMenuBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = this.user;
        boolean z10 = false;
        if (voiceRoomUserOnSeatModel != null && voiceRoomUserOnSeatModel.getSeatStatus() == 4) {
            z10 = true;
        }
        if (z10) {
            getViewBinding().mute.setText(getString(R$string.voice_room_mute_self_remove));
        } else {
            getViewBinding().mute.setText(getString(R$string.voice_room_mute_self));
        }
        FragmentVoiceRoomOnSeatMenuBinding viewBinding = getViewBinding();
        MaterialButton cancel = viewBinding.cancel;
        Intrinsics.checkNotNullExpressionValue(cancel, "cancel");
        ViewExtendsKt.onClick$default(cancel, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomOnSeatMenuFragment.m305initView$lambda4$lambda0(VoiceRoomOnSeatMenuFragment.this, view);
            }
        }, 1, null);
        MaterialButton myCard = viewBinding.myCard;
        Intrinsics.checkNotNullExpressionValue(myCard, "myCard");
        ViewExtendsKt.onClick$default(myCard, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomOnSeatMenuFragment.m306initView$lambda4$lambda1(VoiceRoomOnSeatMenuFragment.this, view);
            }
        }, 1, null);
        MaterialButton leaveSeat = viewBinding.leaveSeat;
        Intrinsics.checkNotNullExpressionValue(leaveSeat, "leaveSeat");
        ViewExtendsKt.onClick$default(leaveSeat, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomOnSeatMenuFragment.m307initView$lambda4$lambda2(VoiceRoomOnSeatMenuFragment.this, view);
            }
        }, 1, null);
        MaterialButton mute = viewBinding.mute;
        Intrinsics.checkNotNullExpressionValue(mute, "mute");
        ViewExtendsKt.onClick$default(mute, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.fragment.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomOnSeatMenuFragment.m308initView$lambda4$lambda3(VoiceRoomOnSeatMenuFragment.this, view);
            }
        }, 1, null);
    }

    @Override // com.guochao.component.voiceliveroom.fragment.FullWidthBaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.user = arguments != null ? (VoiceRoomUserOnSeatModel) arguments.getParcelable("user") : null;
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

    public final void setViewBinding(@NotNull FragmentVoiceRoomOnSeatMenuBinding fragmentVoiceRoomOnSeatMenuBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomOnSeatMenuBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomOnSeatMenuBinding;
    }
}
