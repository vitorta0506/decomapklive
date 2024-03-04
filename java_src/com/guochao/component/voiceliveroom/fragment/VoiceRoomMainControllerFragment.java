package com.guochao.component.voiceliveroom.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.FragmentVoiceRoomMainControllerBinding;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.liveroom.proxy.LiveRoomViewController;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.view.VoiceRoomSeatControllerView;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import java.util.ArrayList;
import java.util.List;
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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0013H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;", "Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;", "()V", "loadingHide", "", "viewBinding", "Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;", "setViewBinding", "(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMainControllerBinding;)V", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "getViewModel", "()Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMainControllerFragment extends BaseGCLiveRoomFragment {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private boolean loadingHide;
    public FragmentVoiceRoomMainControllerBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment$Companion;", "", "()V", "newInstance", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;", "gcLiveRoomModel", "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final VoiceRoomMainControllerFragment newInstance(@NotNull GCLiveRoomModel gcLiveRoomModel) {
            Intrinsics.checkNotNullParameter(gcLiveRoomModel, "gcLiveRoomModel");
            VoiceRoomMainControllerFragment voiceRoomMainControllerFragment = new VoiceRoomMainControllerFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelable("data", gcLiveRoomModel);
            voiceRoomMainControllerFragment.setArguments(bundle);
            return voiceRoomMainControllerFragment;
        }
    }

    public VoiceRoomMainControllerFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<VoiceRoomSeatControllerViewModel>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VoiceRoomSeatControllerViewModel invoke() {
                FragmentActivity requireActivity = VoiceRoomMainControllerFragment.this.requireActivity();
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
    /* renamed from: initView$lambda-1  reason: not valid java name */
    public static final void m278initView$lambda1(final VoiceRoomMainControllerFragment this$0, final VoiceRoomInfoModel voiceRoomInfoModel) {
        String string;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (voiceRoomInfoModel == null) {
            return;
        }
        if (voiceRoomInfoModel.getResponseCode() != 1001 && voiceRoomInfoModel.getResponseCode() != 1002) {
            if (voiceRoomInfoModel.getResponseCode() == 5001) {
                GCDialog.Builder builder = new GCDialog.Builder();
                String string2 = this$0.getString(R$string.voice_room_no_room);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.voice_room_no_room)");
                GCDialog.Builder singleButton = GCDialog.Builder.onClick$default(builder.contentText(string2), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment$initView$2$dialog$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                        invoke2(gCDialog);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull GCDialog onClick) {
                        Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                        onClick.dismiss();
                        FragmentActivity activity = VoiceRoomMainControllerFragment.this.getActivity();
                        if (activity != null) {
                            activity.finish();
                        }
                    }
                }, 1, null).singleButton(true);
                Context requireContext = this$0.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
                GCDialog build = singleButton.build(requireContext);
                build.setCancelable(false);
                build.show();
                return;
            } else if (voiceRoomInfoModel.getResponseCode() == 8888) {
                String roomId = voiceRoomInfoModel.getRoomId();
                UserSessionModel current = UserSessionViewModel.Companion.instance().current();
                if (Intrinsics.areEqual(roomId, current != null ? current.getUserId() : null)) {
                    string = voiceRoomInfoModel.getFreezeReason();
                } else {
                    string = this$0.getString(R$string.voice_room_room_toast_frozen);
                    Intrinsics.checkNotNullExpressionValue(string, "{\n                    ge…frozen)\n                }");
                }
                GCDialog.Builder singleButton2 = GCDialog.Builder.onClick$default(new GCDialog.Builder().contentText(string), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment$initView$2$dialog$3
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                        invoke2(gCDialog);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull GCDialog onClick) {
                        Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                        onClick.dismiss();
                        FragmentActivity activity = VoiceRoomMainControllerFragment.this.getActivity();
                        if (activity != null) {
                            activity.finish();
                        }
                    }
                }, 1, null).singleButton(true);
                Context requireContext2 = this$0.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
                GCDialog build2 = singleButton2.build(requireContext2);
                build2.setCancelable(false);
                build2.show();
                return;
            } else {
                this$0.requireGCLiveRoomModel(new Function1<GCLiveRoomModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment$initView$2$1
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
                        Intrinsics.checkNotNullParameter(requireGCLiveRoomModel, "$this$requireGCLiveRoomModel");
                        requireGCLiveRoomModel.setBackgroundImage(VoiceRoomInfoModel.this.getBackImgUrl());
                    }
                });
                Long kickEndTime = voiceRoomInfoModel.getKickEndTime();
                if ((kickEndTime != null ? kickEndTime.longValue() : 0L) > 0) {
                    this$0.requireLiveRoomViewController(new Function1<LiveRoomViewController, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment$initView$2$2
                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(LiveRoomViewController liveRoomViewController) {
                            invoke2(liveRoomViewController);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull LiveRoomViewController requireLiveRoomViewController) {
                            Intrinsics.checkNotNullParameter(requireLiveRoomViewController, "$this$requireLiveRoomViewController");
                            requireLiveRoomViewController.kickedFromVoiceRoom(VoiceRoomInfoModel.this);
                        }
                    });
                    return;
                }
                GCLiveRoomModel requireGCLiveRoomModel$default = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this$0, null, 1, null);
                if (requireGCLiveRoomModel$default != null) {
                    Long banEndTime = voiceRoomInfoModel.getBanEndTime();
                    requireGCLiveRoomModel$default.setForbiddenMessage((banEndTime != null ? banEndTime.longValue() : 0L) > 0);
                }
                if (!this$0.loadingHide) {
                    this$0.requireLiveRoomViewController(new Function1<LiveRoomViewController, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment$initView$2$3
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(LiveRoomViewController liveRoomViewController) {
                            invoke2(liveRoomViewController);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(@NotNull LiveRoomViewController requireLiveRoomViewController) {
                            Intrinsics.checkNotNullParameter(requireLiveRoomViewController, "$this$requireLiveRoomViewController");
                            requireLiveRoomViewController.hideLoading(true);
                        }
                    });
                }
                this$0.loadingHide = true;
                VoiceRoomSeatControllerView voiceRoomSeatControllerView = this$0.getViewBinding().voiceRoomSeatControllerView;
                List<VoiceRoomUserOnSeatModel> microList = voiceRoomInfoModel.getMicroList();
                if (microList == null) {
                    microList = new ArrayList<>();
                }
                voiceRoomSeatControllerView.updateSeats(microList);
                return;
            }
        }
        GCDialog.Builder builder2 = new GCDialog.Builder();
        String string3 = this$0.getString(R$string.voice_room_private_title);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(R.string.voice_room_private_title)");
        GCDialog.Builder singleButton3 = GCDialog.Builder.onClick$default(builder2.contentText(string3), null, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment$initView$2$dialog$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                invoke2(gCDialog);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GCDialog onClick) {
                Intrinsics.checkNotNullParameter(onClick, "$this$onClick");
                onClick.dismiss();
                FragmentActivity activity = VoiceRoomMainControllerFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }, 1, null).singleButton(true);
        Context requireContext3 = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext3, "requireContext()");
        GCDialog build3 = singleButton3.build(requireContext3);
        build3.setCancelable(false);
        build3.show();
    }

    @JvmStatic
    @NotNull
    public static final VoiceRoomMainControllerFragment newInstance(@NotNull GCLiveRoomModel gCLiveRoomModel) {
        return Companion.newInstance(gCLiveRoomModel);
    }

    @NotNull
    public final FragmentVoiceRoomMainControllerBinding getViewBinding() {
        FragmentVoiceRoomMainControllerBinding fragmentVoiceRoomMainControllerBinding = this.viewBinding;
        if (fragmentVoiceRoomMainControllerBinding != null) {
            return fragmentVoiceRoomMainControllerBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    @NotNull
    public final VoiceRoomSeatControllerViewModel getViewModel() {
        return (VoiceRoomSeatControllerViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        getViewBinding().voiceRoomSeatControllerView.attachController(this);
        getViewModel().getRoomInfo().observe(this, new Observer() { // from class: com.guochao.component.voiceliveroom.fragment.p
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VoiceRoomMainControllerFragment.m278initView$lambda1(VoiceRoomMainControllerFragment.this, (VoiceRoomInfoModel) obj);
            }
        });
        requireGCLiveRoomModel(new Function1<GCLiveRoomModel, Unit>() { // from class: com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment$initView$3
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
                Intrinsics.checkNotNullParameter(requireGCLiveRoomModel, "$this$requireGCLiveRoomModel");
                VoiceRoomSeatControllerViewModel viewModel = VoiceRoomMainControllerFragment.this.getViewModel();
                String liveRoomId = requireGCLiveRoomModel.getLiveRoomId();
                if (liveRoomId == null) {
                    liveRoomId = "";
                }
                String chatGroupId = requireGCLiveRoomModel.getChatGroupId();
                viewModel.loadRoomDetailInfoAndAddGroup(liveRoomId, chatGroupId != null ? chatGroupId : "");
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        getViewModel().checkLeaveRoom();
        getViewModel().destroyCurrentRoom();
    }

    public final void setViewBinding(@NotNull FragmentVoiceRoomMainControllerBinding fragmentVoiceRoomMainControllerBinding) {
        Intrinsics.checkNotNullParameter(fragmentVoiceRoomMainControllerBinding, "<set-?>");
        this.viewBinding = fragmentVoiceRoomMainControllerBinding;
    }
}
