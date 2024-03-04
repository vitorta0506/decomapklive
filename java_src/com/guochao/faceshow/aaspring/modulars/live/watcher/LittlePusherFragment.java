package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.utils.Foreground;
import com.guochao.pusher.GCLivePusher;
import com.guochao.pusher.base.ILivePusher;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LittlePusherFragment extends BaseLiveInfoFragment implements Foreground.OnForegroundStateChangedListener, ILivePusher.PushEventListener {

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f19978c = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE"};

    /* renamed from: a  reason: collision with root package name */
    GCLivePusher f19979a;

    /* renamed from: b  reason: collision with root package name */
    LiveMicApplyResult f19980b;
    @BindView
    FrameLayout mTXCloudVideoView;

    public static LittlePusherFragment P1(LiveMicApplyResult liveMicApplyResult) {
        LittlePusherFragment littlePusherFragment = new LittlePusherFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", liveMicApplyResult);
        littlePusherFragment.setArguments(bundle);
        return littlePusherFragment;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_little_pusher;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        LiveMicApplyResult liveMicApplyResult;
        super.initView(view);
        if (this.f19979a == null && (getParentFragment() instanceof WatcherLiveRoomFragment)) {
            this.f19979a = ((WatcherLiveRoomFragment) getParentFragment()).y2(true);
        }
        GCLivePusher gCLivePusher = this.f19979a;
        if (gCLivePusher == null) {
            return;
        }
        gCLivePusher.getBeautyManager().reInit();
        this.f19979a.enableThirdBeauty(true);
        this.f19979a.startPreview(this.mTXCloudVideoView);
        this.f19979a.setMirror(true);
        if (!this.f19979a.isPushing() && (liveMicApplyResult = this.f19980b) != null) {
            this.f19979a.startPush(liveMicApplyResult.getPushUrl(), this.f19980b.getStreamId(), getCurrentLiveRoom().buildRoomInfo());
        }
        this.mILiveRoomManager.X(getCurrentLiveRoom().getBroadCasterUserId());
        Foreground.get().registerStateChangedListener(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getParentFragment() instanceof WatcherLiveRoomFragment) {
            GCLivePusher y22 = ((WatcherLiveRoomFragment) getParentFragment()).y2(true);
            this.f19979a = y22;
            if (y22 != null) {
                y22.addPushEventListener(this);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f19980b = (LiveMicApplyResult) getArguments().getParcelable("data");
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        Foreground.get().unregisterStateChangedListener(this);
        GCLivePusher gCLivePusher = this.f19979a;
        if (gCLivePusher != null) {
            gCLivePusher.stopAll();
            this.f19979a.getBeautyManager().destroyOnMainThread();
            this.f19979a.removePushEventListener(this);
        }
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterBackground() {
        GCLivePusher gCLivePusher = this.f19979a;
        if (gCLivePusher != null) {
            gCLivePusher.onPause();
        }
    }

    @Override // com.guochao.faceshow.utils.Foreground.OnForegroundStateChangedListener
    public void onEnterForeground() {
        GCLivePusher gCLivePusher = this.f19979a;
        if (gCLivePusher != null) {
            gCLivePusher.onResume();
        }
    }

    @Override // com.guochao.pusher.base.ILivePusher.PushEventListener
    public void onGetPushIp(@Nullable String str) {
        LiveRoomModel currentLiveRoom = getCurrentLiveRoom();
        if (str == null) {
            str = "";
        }
        currentLiveRoom.setLivePushIP(str);
    }

    @Override // com.guochao.pusher.base.ILivePusher.PushEventListener
    public void onPushSuccess(@NotNull ILivePusher iLivePusher) {
    }
}
