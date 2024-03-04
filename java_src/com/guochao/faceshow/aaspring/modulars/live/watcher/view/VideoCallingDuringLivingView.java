package com.guochao.faceshow.aaspring.modulars.live.watcher.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import b8.e;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.material.badge.BadgeDrawable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.viewmodel.VideoCallDuringLivingViewModel;
import com.guochao.faceshow.aaspring.modulars.live.common.LiveChatFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.modulars.live.common.a;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.watcher.model.CallingDuringLivingModel;
import com.guochao.faceshow.aaspring.modulars.live.watcher.view.VideoCallingDuringLivingView;
import com.guochao.faceshow.aaspring.modulars.trtc.call.CallingActivity;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import com.guochao.faceshow.databinding.LayoutCallingInfoDuringLivingBinding;
import com.guochao.faceshow.views.SvgaImageViewV2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u0011\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/watcher/view/VideoCallingDuringLivingView;", "", "viewStub", "Landroid/view/ViewStub;", "liveRoomFragment", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;", "viewModel", "Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;", "(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/viewmodel/VideoCallDuringLivingViewModel;)V", "callingBtn", "Lcom/guochao/faceshow/views/SvgaImageViewV2;", "viewBinding", "Lcom/guochao/faceshow/databinding/LayoutCallingInfoDuringLivingBinding;", "bindCallingBtn", "", "liveChatFragment", "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;", "hide", "show", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "startCallActivity", DeviceRequestsHelper.DEVICE_INFO_MODEL, "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoCallingDuringLivingView {
    @Nullable
    private SvgaImageViewV2 callingBtn;
    @NotNull
    private final WatcherLiveRoomFragment liveRoomFragment;
    private LayoutCallingInfoDuringLivingBinding viewBinding;
    @Nullable
    private final VideoCallDuringLivingViewModel viewModel;
    @NotNull
    private final ViewStub viewStub;

    public VideoCallingDuringLivingView(@NotNull ViewStub viewStub, @NotNull WatcherLiveRoomFragment liveRoomFragment, @Nullable VideoCallDuringLivingViewModel videoCallDuringLivingViewModel) {
        LiveData<CallingDuringLivingModel> lastCallStatusRoomItemData;
        LiveData<CallingDuringLivingModel.StartCallModel> lastCallingRoomItemData;
        Intrinsics.checkNotNullParameter(viewStub, "viewStub");
        Intrinsics.checkNotNullParameter(liveRoomFragment, "liveRoomFragment");
        this.viewStub = viewStub;
        this.liveRoomFragment = liveRoomFragment;
        this.viewModel = videoCallDuringLivingViewModel;
        if (videoCallDuringLivingViewModel != null && (lastCallingRoomItemData = videoCallDuringLivingViewModel.getLastCallingRoomItemData()) != null) {
            lastCallingRoomItemData.observe(liveRoomFragment, new Observer() { // from class: j9.b
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    VideoCallingDuringLivingView.m494_init_$lambda0(VideoCallingDuringLivingView.this, (CallingDuringLivingModel.StartCallModel) obj);
                }
            });
        }
        if (videoCallDuringLivingViewModel == null || (lastCallStatusRoomItemData = videoCallDuringLivingViewModel.getLastCallStatusRoomItemData()) == null) {
            return;
        }
        lastCallStatusRoomItemData.observe(liveRoomFragment, new Observer() { // from class: j9.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VideoCallingDuringLivingView.m495_init_$lambda1(VideoCallingDuringLivingView.this, (CallingDuringLivingModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-0  reason: not valid java name */
    public static final void m494_init_$lambda0(VideoCallingDuringLivingView this$0, CallingDuringLivingModel.StartCallModel startCallModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (startCallModel != null) {
            this$0.show(startCallModel.getRoomItemData());
        } else {
            this$0.hide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: _init_$lambda-1  reason: not valid java name */
    public static final void m495_init_$lambda1(VideoCallingDuringLivingView this$0, CallingDuringLivingModel callingDuringLivingModel) {
        LiveMicApplyResult liveMicApplyResult;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (callingDuringLivingModel == null || !(callingDuringLivingModel instanceof CallingDuringLivingModel.AcceptedCallModel)) {
            return;
        }
        this$0.startCallActivity(this$0.liveRoomFragment, (CallingDuringLivingModel.AcceptedCallModel) callingDuringLivingModel);
        if (this$0.liveRoomFragment.z1() && (liveMicApplyResult = a.m().f18998h) != null) {
            this$0.liveRoomFragment.c0(liveMicApplyResult.getStreamId(), e.g().getUserId());
        }
        LivePlayerProvider.player().freezeAllPlayers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindCallingBtn$lambda-7  reason: not valid java name */
    public static final void m496bindCallingBtn$lambda7(SvgaImageViewV2 callingBtn, Boolean bool) {
        Intrinsics.checkNotNullParameter(callingBtn, "$callingBtn");
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            callingBtn.clearPlay();
            callingBtn.setImageResource(R.mipmap.icon_call_btn_new);
            callingBtn.setVisibility(0);
            return;
        }
        callingBtn.clearPlay();
        callingBtn.setVisibility(8);
    }

    private final void hide() {
        LayoutCallingInfoDuringLivingBinding layoutCallingInfoDuringLivingBinding = this.viewBinding;
        if (layoutCallingInfoDuringLivingBinding != null) {
            if (layoutCallingInfoDuringLivingBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
                layoutCallingInfoDuringLivingBinding = null;
            }
            layoutCallingInfoDuringLivingBinding.getRoot().setVisibility(8);
        }
        SvgaImageViewV2 svgaImageViewV2 = this.callingBtn;
        if (svgaImageViewV2 != null) {
            svgaImageViewV2.clearPlay();
            svgaImageViewV2.setImageResource(R.mipmap.icon_call_btn_new);
        }
    }

    private final void show(RoomItemData roomItemData) {
        if (this.viewBinding == null) {
            LayoutCallingInfoDuringLivingBinding bind = LayoutCallingInfoDuringLivingBinding.bind(this.viewStub.inflate());
            Intrinsics.checkNotNullExpressionValue(bind, "bind(viewStub.inflate())");
            bind.cancelBtn.setOnClickListener(new View.OnClickListener() { // from class: j9.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VideoCallingDuringLivingView.m497show$lambda3$lambda2(VideoCallingDuringLivingView.this, view);
                }
            });
            this.liveRoomFragment.mLiveScrollToClearScreenView.d(bind.getRoot());
            ViewGroup.LayoutParams layoutParams = bind.getRoot().getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.gravity = BadgeDrawable.TOP_START;
            layoutParams2.setMargins(0, (int) (bind.getRoot().getResources().getDisplayMetrics().heightPixels * 0.3f), 0, 0);
            this.viewBinding = bind;
        }
        LayoutCallingInfoDuringLivingBinding layoutCallingInfoDuringLivingBinding = this.viewBinding;
        if (layoutCallingInfoDuringLivingBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
            layoutCallingInfoDuringLivingBinding = null;
        }
        layoutCallingInfoDuringLivingBinding.getRoot().setVisibility(0);
        hc.a.d(layoutCallingInfoDuringLivingBinding.avatar, roomItemData.getAvatarUrl());
        SvgaImageViewV2 svgaImageViewV2 = this.callingBtn;
        if (svgaImageViewV2 != null) {
            svgaImageViewV2.playRaw(R.raw.video_call_during_living_calling);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: show$lambda-3$lambda-2  reason: not valid java name */
    public static final void m497show$lambda3$lambda2(VideoCallingDuringLivingView this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        VideoCallDuringLivingViewModel videoCallDuringLivingViewModel = this$0.viewModel;
        if (videoCallDuringLivingViewModel != null) {
            videoCallDuringLivingViewModel.endLastCalling(1);
        }
    }

    private final void startCallActivity(WatcherLiveRoomFragment watcherLiveRoomFragment, CallingDuringLivingModel.AcceptedCallModel acceptedCallModel) {
        int type = acceptedCallModel.getType();
        int i9 = 6;
        if (type != 1 && type == 2) {
            i9 = 5;
        }
        FragmentActivity activity = watcherLiveRoomFragment.getActivity();
        RoomItemData roomItemData = acceptedCallModel.getRoomItemData();
        CallModel messageModel = acceptedCallModel.getMessageModel();
        if (messageModel != null) {
            messageModel.setFromLiveRoom(true);
            Unit unit = Unit.INSTANCE;
        } else {
            messageModel = null;
        }
        CallingActivity.A0(activity, i9, roomItemData, messageModel);
    }

    public final void bindCallingBtn(@NotNull LiveChatFragment liveChatFragment, @NotNull final SvgaImageViewV2 callingBtn) {
        LiveData<Boolean> hasCallingPermission;
        Intrinsics.checkNotNullParameter(liveChatFragment, "liveChatFragment");
        Intrinsics.checkNotNullParameter(callingBtn, "callingBtn");
        this.callingBtn = callingBtn;
        VideoCallDuringLivingViewModel videoCallDuringLivingViewModel = this.viewModel;
        if (videoCallDuringLivingViewModel == null || (hasCallingPermission = videoCallDuringLivingViewModel.getHasCallingPermission()) == null) {
            return;
        }
        hasCallingPermission.observe(liveChatFragment, new Observer() { // from class: j9.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                VideoCallingDuringLivingView.m496bindCallingBtn$lambda7(SvgaImageViewV2.this, (Boolean) obj);
            }
        });
    }
}
