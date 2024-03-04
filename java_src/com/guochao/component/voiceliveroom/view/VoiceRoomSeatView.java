package com.guochao.component.voiceliveroom.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.component.liveroom.R$drawable;
import com.guochao.component.liveroom.R$mipmap;
import com.guochao.component.liveroom.R$string;
import com.guochao.component.liveroom.databinding.LayoutVoiceRoomSeatBinding;
import com.guochao.component.liveroom.model.GCLiveRoomModel;
import com.guochao.component.voiceliveroom.fragment.BaseGCLiveRoomFragment;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomMainControllerFragment;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuAdminEmptyFragment;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomOnSeatMenuFragment;
import com.guochao.component.voiceliveroom.model.VoiceRoomUserOnSeatModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomSeatControllerViewModel;
import com.guochao.faceshow.aaspring.base.utils.ViewExtendsKt;
import com.guochao.faceshow.aaspring.dialog.GCDialog;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001%B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0019\u001a\u00020\u001aH\u0002J\u0006\u0010\u001b\u001a\u00020\u001aJ\u0012\u0010\u001c\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\fH\u0002J\u000e\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 J\b\u0010!\u001a\u00020\u001aH\u0002J\b\u0010\"\u001a\u00020\u001aH\u0002J\u0006\u0010#\u001a\u00020\u001aJ\u0010\u0010$\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\fR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "viewModel", "Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;", "controllerFragment", "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;", "(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMainControllerFragment;)V", "lastSeatModel", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "getLastSeatModel", "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;", "setLastSeatModel", "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V", "seatIndex", "", "getSeatIndex", "()I", "setSeatIndex", "(I)V", "viewBinding", "Lcom/guochao/component/liveroom/databinding/LayoutVoiceRoomSeatBinding;", "checkClick", "", "playVoiceWave", "setInfo", DeviceRequestsHelper.DEVICE_INFO_MODEL, "setVoiceRoomLayoutMode", "layoutMode", "Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;", "showSelfMenu", "stopVoiceWave", "stopVoiceWaveImmediatelysDelayed", "update", "LayoutMode", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomSeatView extends FrameLayout {
    @NotNull
    private final VoiceRoomMainControllerFragment controllerFragment;
    @Nullable
    private VoiceRoomUserOnSeatModel lastSeatModel;
    private int seatIndex;
    @NotNull
    private final LayoutVoiceRoomSeatBinding viewBinding;
    @NotNull
    private final VoiceRoomSeatControllerViewModel viewModel;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/guochao/component/voiceliveroom/view/VoiceRoomSeatView$LayoutMode;", "", "(Ljava/lang/String;I)V", "EIGHT", "TEN", "ELEVEN", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum LayoutMode {
        EIGHT,
        TEN,
        ELEVEN
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutMode.values().length];
            iArr[LayoutMode.EIGHT.ordinal()] = 1;
            iArr[LayoutMode.TEN.ordinal()] = 2;
            iArr[LayoutMode.ELEVEN.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ VoiceRoomSeatView(Context context, AttributeSet attributeSet, VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel, VoiceRoomMainControllerFragment voiceRoomMainControllerFragment, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i9 & 2) != 0 ? null : attributeSet, voiceRoomSeatControllerViewModel, voiceRoomMainControllerFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m329_init_$lambda0(VoiceRoomSeatView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkClick();
    }

    private final void checkClick() {
        String userId;
        String userId2;
        VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel = this.lastSeatModel;
        int seatStatus = voiceRoomUserOnSeatModel != null ? voiceRoomUserOnSeatModel.getSeatStatus() : 0;
        boolean z10 = true;
        GCLiveRoomModel requireGCLiveRoomModel$default = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this.controllerFragment, null, 1, null);
        String str = "";
        final String str2 = (requireGCLiveRoomModel$default == null || (str2 = requireGCLiveRoomModel$default.getLiveRoomId()) == null) ? "" : "";
        VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel2 = this.lastSeatModel;
        String userId3 = voiceRoomUserOnSeatModel2 != null ? voiceRoomUserOnSeatModel2.getUserId() : null;
        UserSessionModel current = UserSessionViewModel.Companion.instance().current();
        boolean equals = Objects.equals(userId3, current != null ? current.getUserId() : null);
        if (seatStatus == 0) {
            GCLiveRoomModel requireGCLiveRoomModel$default2 = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this.controllerFragment, null, 1, null);
            if (!(requireGCLiveRoomModel$default2 != null && requireGCLiveRoomModel$default2.isVoiceRoomOwner())) {
                GCLiveRoomModel requireGCLiveRoomModel$default3 = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this.controllerFragment, null, 1, null);
                if (!((requireGCLiveRoomModel$default3 == null || !requireGCLiveRoomModel$default3.isVoiceRoomAdministrator()) ? false : false)) {
                    new com.tbruyelle.rxpermissions2.a(this.controllerFragment).p("android.permission.RECORD_AUDIO").subscribe(new SimpleObserver<te.a>() { // from class: com.guochao.component.voiceliveroom.view.VoiceRoomSeatView$checkClick$1
                        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                        public void onNext(@NotNull te.a o10) {
                            VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel;
                            Intrinsics.checkNotNullParameter(o10, "o");
                            super.onNext((VoiceRoomSeatView$checkClick$1) o10);
                            if (o10.f58133b) {
                                voiceRoomSeatControllerViewModel = VoiceRoomSeatView.this.viewModel;
                                voiceRoomSeatControllerViewModel.takeSeat(str2, VoiceRoomSeatView.this.getSeatIndex());
                            }
                        }
                    });
                    return;
                }
            }
            VoiceRoomOnSeatMenuAdminEmptyFragment newInstance = VoiceRoomOnSeatMenuAdminEmptyFragment.Companion.newInstance(str2, this.seatIndex, false);
            FragmentManager parentFragmentManager = this.controllerFragment.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "controllerFragment.parentFragmentManager");
            newInstance.show(parentFragmentManager, "menu");
        } else if (seatStatus == 2) {
            if (equals) {
                showSelfMenu();
                return;
            }
            VoiceRoomMainControllerFragment voiceRoomMainControllerFragment = this.controllerFragment;
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel3 = this.lastSeatModel;
            if (voiceRoomUserOnSeatModel3 != null && (userId = voiceRoomUserOnSeatModel3.getUserId()) != null) {
                str = userId;
            }
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel4 = this.lastSeatModel;
            String valueOf = String.valueOf(voiceRoomUserOnSeatModel4 != null ? Integer.valueOf(voiceRoomUserOnSeatModel4.getId()) : null);
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel5 = this.lastSeatModel;
            voiceRoomMainControllerFragment.showPeopleInfoCard(str, valueOf, voiceRoomUserOnSeatModel5 != null ? Integer.valueOf(voiceRoomUserOnSeatModel5.getSeatIndex()) : null);
        } else if (seatStatus == 3) {
            GCLiveRoomModel requireGCLiveRoomModel$default4 = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this.controllerFragment, null, 1, null);
            if (!(requireGCLiveRoomModel$default4 != null && requireGCLiveRoomModel$default4.isVoiceRoomOwner())) {
                GCLiveRoomModel requireGCLiveRoomModel$default5 = BaseGCLiveRoomFragment.requireGCLiveRoomModel$default(this.controllerFragment, null, 1, null);
                if (!((requireGCLiveRoomModel$default5 == null || !requireGCLiveRoomModel$default5.isVoiceRoomAdministrator()) ? false : false)) {
                    ToastUtils.showToast$default(getContext(), R$string.voice_room_seat_locked, 0, 4, null);
                    return;
                }
            }
            GCDialog.Builder builder = new GCDialog.Builder();
            String string = getContext().getString(R$string.voice_room_unlock_seat_title);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.stri…e_room_unlock_seat_title)");
            GCDialog.Builder onClick = builder.contentText(string).onClick(new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.view.VoiceRoomSeatView$checkClick$2
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GCDialog gCDialog) {
                    invoke2(gCDialog);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GCDialog onClick2) {
                    Intrinsics.checkNotNullParameter(onClick2, "$this$onClick");
                    onClick2.dismiss();
                }
            }, new Function1<GCDialog, Unit>() { // from class: com.guochao.component.voiceliveroom.view.VoiceRoomSeatView$checkClick$3
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
                public final void invoke2(@NotNull GCDialog onClick2) {
                    VoiceRoomSeatControllerViewModel voiceRoomSeatControllerViewModel;
                    Intrinsics.checkNotNullParameter(onClick2, "$this$onClick");
                    voiceRoomSeatControllerViewModel = VoiceRoomSeatView.this.viewModel;
                    voiceRoomSeatControllerViewModel.unLockSeat(VoiceRoomSeatView.this.getSeatIndex());
                    onClick2.dismiss();
                }
            });
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            onClick.build(context).show();
        } else if (seatStatus != 4) {
        } else {
            if (equals) {
                showSelfMenu();
                return;
            }
            VoiceRoomMainControllerFragment voiceRoomMainControllerFragment2 = this.controllerFragment;
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel6 = this.lastSeatModel;
            if (voiceRoomUserOnSeatModel6 != null && (userId2 = voiceRoomUserOnSeatModel6.getUserId()) != null) {
                str = userId2;
            }
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel7 = this.lastSeatModel;
            String valueOf2 = String.valueOf(voiceRoomUserOnSeatModel7 != null ? Integer.valueOf(voiceRoomUserOnSeatModel7.getId()) : null);
            VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel8 = this.lastSeatModel;
            voiceRoomMainControllerFragment2.showPeopleInfoCard(str, valueOf2, voiceRoomUserOnSeatModel8 != null ? Integer.valueOf(voiceRoomUserOnSeatModel8.getSeatIndex()) : null);
        }
    }

    private final void setInfo(VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel) {
        this.viewBinding.roomStatus.setImageResource(R$drawable.ic_voice_room_mic);
        TextView textView = this.viewBinding.nickName;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("No. %s", Arrays.copyOf(new Object[]{Integer.valueOf(this.seatIndex)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        textView.setText(format);
        this.viewBinding.coinArea.setVisibility(4);
        this.viewBinding.avatarView.setVisibility(4);
        this.viewBinding.pendantView.setVisibility(4);
        this.viewBinding.roomStatus.setVisibility(4);
        if (voiceRoomUserOnSeatModel == null) {
            this.viewBinding.roomStatus.setVisibility(0);
            this.viewBinding.closeMicroIV.setVisibility(8);
            stopVoiceWave();
            return;
        }
        int seatStatus = voiceRoomUserOnSeatModel.getSeatStatus();
        if (seatStatus == 0) {
            this.viewBinding.roomStatus.setVisibility(0);
            stopVoiceWave();
            this.viewBinding.closeMicroIV.setVisibility(8);
        } else if (seatStatus == 1 || seatStatus == 2) {
            this.viewBinding.nickName.setText(voiceRoomUserOnSeatModel.getNickName());
            this.viewBinding.coinArea.setVisibility(0);
            this.viewBinding.coin.setText(String.valueOf(voiceRoomUserOnSeatModel.getCoinNumber()));
            NormalCircleImageView normalCircleImageView = this.viewBinding.avatarView;
            normalCircleImageView.setVisibility(0);
            hc.a.d(normalCircleImageView, voiceRoomUserOnSeatModel.getSmallAvatarUrl());
            String dressHead = voiceRoomUserOnSeatModel.getDressHead();
            if (dressHead != null) {
                if (dressHead.length() > 0) {
                    ImageView imageView = this.viewBinding.pendantView;
                    imageView.setVisibility(0);
                    hc.a.j(imageView, voiceRoomUserOnSeatModel.getDressHead());
                }
            }
            this.viewBinding.closeMicroIV.setVisibility(8);
        } else if (seatStatus == 3) {
            this.viewBinding.roomStatus.setVisibility(0);
            this.viewBinding.roomStatus.setImageResource(R$mipmap.ic_voice_seat_locked);
            stopVoiceWave();
            this.viewBinding.closeMicroIV.setVisibility(8);
        } else if (seatStatus != 4) {
        } else {
            this.viewBinding.nickName.setText(voiceRoomUserOnSeatModel.getNickName());
            this.viewBinding.coinArea.setVisibility(0);
            this.viewBinding.coin.setText(String.valueOf(voiceRoomUserOnSeatModel.getCoinNumber()));
            NormalCircleImageView normalCircleImageView2 = this.viewBinding.avatarView;
            normalCircleImageView2.setVisibility(0);
            hc.a.d(normalCircleImageView2, voiceRoomUserOnSeatModel.getSmallAvatarUrl());
            String dressHead2 = voiceRoomUserOnSeatModel.getDressHead();
            if (dressHead2 != null) {
                if (dressHead2.length() > 0) {
                    ImageView imageView2 = this.viewBinding.pendantView;
                    imageView2.setVisibility(0);
                    hc.a.j(imageView2, voiceRoomUserOnSeatModel.getDressHead());
                }
            }
            stopVoiceWave();
            this.viewBinding.closeMicroIV.setVisibility(0);
        }
    }

    private final void showSelfMenu() {
        VoiceRoomOnSeatMenuFragment newInstance = VoiceRoomOnSeatMenuFragment.Companion.newInstance(this.lastSeatModel);
        FragmentManager parentFragmentManager = this.controllerFragment.getParentFragmentManager();
        Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "controllerFragment.parentFragmentManager");
        newInstance.show(parentFragmentManager, "menu");
    }

    private final void stopVoiceWave() {
        this.viewBinding.voiceWaveView.m();
    }

    @Nullable
    public final VoiceRoomUserOnSeatModel getLastSeatModel() {
        return this.lastSeatModel;
    }

    public final int getSeatIndex() {
        return this.seatIndex;
    }

    public final void playVoiceWave() {
        this.viewBinding.voiceWaveView.setColor(-1);
        this.viewBinding.voiceWaveView.l();
    }

    public final void setLastSeatModel(@Nullable VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel) {
        this.lastSeatModel = voiceRoomUserOnSeatModel;
    }

    public final void setSeatIndex(int i9) {
        this.seatIndex = i9;
    }

    public final void setVoiceRoomLayoutMode(@NotNull LayoutMode layoutMode) {
        Intrinsics.checkNotNullParameter(layoutMode, "layoutMode");
        int i9 = WhenMappings.$EnumSwitchMapping$0[layoutMode.ordinal()];
        if (i9 == 1) {
            int dp2px = DensityUtil.dp2px(60.0f);
            int dp2px2 = DensityUtil.dp2px(75.0f);
            ViewGroup.LayoutParams layoutParams = this.viewBinding.avatarView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = dp2px;
                layoutParams.height = dp2px;
            }
            ViewGroup.LayoutParams layoutParams2 = this.viewBinding.roomStatus.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams2.width = dp2px;
                layoutParams2.height = dp2px;
            }
            ViewGroup.LayoutParams layoutParams3 = this.viewBinding.pendantView.getLayoutParams();
            if (layoutParams3 != null) {
                layoutParams3.width = dp2px2;
                layoutParams3.height = dp2px2;
            }
        } else if (i9 == 2 || i9 == 3) {
            int dp2px3 = DensityUtil.dp2px(50.0f);
            int dp2px4 = DensityUtil.dp2px(64.0f);
            ViewGroup.LayoutParams layoutParams4 = this.viewBinding.avatarView.getLayoutParams();
            if (layoutParams4 != null) {
                layoutParams4.width = dp2px3;
                layoutParams4.height = dp2px3;
            }
            ViewGroup.LayoutParams layoutParams5 = this.viewBinding.roomStatus.getLayoutParams();
            if (layoutParams5 != null) {
                layoutParams5.width = dp2px3;
                layoutParams5.height = dp2px3;
            }
            ViewGroup.LayoutParams layoutParams6 = this.viewBinding.pendantView.getLayoutParams();
            if (layoutParams6 != null) {
                layoutParams6.width = dp2px4;
                layoutParams6.height = dp2px4;
            }
        }
    }

    public final void stopVoiceWaveImmediatelysDelayed() {
        this.viewBinding.voiceWaveView.n();
    }

    public final void update(@Nullable VoiceRoomUserOnSeatModel voiceRoomUserOnSeatModel) {
        this.lastSeatModel = voiceRoomUserOnSeatModel;
        setInfo(voiceRoomUserOnSeatModel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VoiceRoomSeatView(@NotNull Context context, @Nullable AttributeSet attributeSet, @NotNull VoiceRoomSeatControllerViewModel viewModel, @NotNull VoiceRoomMainControllerFragment controllerFragment) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        Intrinsics.checkNotNullParameter(controllerFragment, "controllerFragment");
        this.viewModel = viewModel;
        this.controllerFragment = controllerFragment;
        this.seatIndex = 1;
        LayoutVoiceRoomSeatBinding inflate = LayoutVoiceRoomSeatBinding.inflate(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context), this, true)");
        this.viewBinding = inflate;
        setInfo(null);
        ViewExtendsKt.onClick$default(this, 0L, new View.OnClickListener() { // from class: com.guochao.component.voiceliveroom.view.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VoiceRoomSeatView.m329_init_$lambda0(VoiceRoomSeatView.this, view);
            }
        }, 1, null);
    }
}
