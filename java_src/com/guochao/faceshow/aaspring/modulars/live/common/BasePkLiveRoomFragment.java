package com.guochao.faceshow.aaspring.modulars.live.common;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.modulars.live.adapter.LiveLinkMicPlayAdapter;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.PkFCoinMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.PkUser;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.views.MultiLivePlayView;
import com.guochao.faceshow.utils.DensityUtil;
import d9.e;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public abstract class BasePkLiveRoomFragment extends BaseLiveRoomFragment {
    public PkUser M5;
    long N5;

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void Z2(int i9) {
        super.Z2(i9);
        PKLiveInfoFragment pKLiveInfoFragment = this.C4;
        if (pKLiveInfoFragment != null) {
            pKLiveInfoFragment.l2(i9);
        }
    }

    @Override // d9.g
    public void d(int i9, boolean z10) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        if (this.f18526v) {
            com.guochao.faceshow.aaspring.debug.a.b().a("LiveRoom", "离开PK了");
            UserStateHolder.setIsPkingInLive(false);
            if (z10) {
                getCurrentLiveRoom().setInPkMode(false);
            }
            getCurrentLiveRoom().setApplyPkState(false);
            getCurrentLiveRoom().setPkWaiting(false);
            Z3(R.id.pk_info_area);
            this.C4 = null;
            View view = this.mAdsAndActivityView;
            if (view != null) {
                view.setVisibility(0);
            }
            if (this.giftAndAdsView != null && !getCurrentLiveRoom().isInPkMode()) {
                this.giftAndAdsView.setVisibility(0);
            }
            R3();
            View view2 = this.mViewGiftBox;
            if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                marginLayoutParams.topMargin = DensityUtil.dp2px(10.0f);
                this.mViewGiftBox.setLayoutParams(marginLayoutParams);
            }
            LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
            if (liveLinkMicPlayAdapter != null) {
                liveLinkMicPlayAdapter.o();
            }
            this.f18526v = false;
            x.n().J();
            this.N = 0L;
            this.O = 0L;
            l4(false, z10);
            if (getCurrentLiveRoom().canRequestLinkMic()) {
                this.mRequestLink.setVisibility(0);
                if (this instanceof BroadCastFragment) {
                    sendLiveMessage(LiveMessageModelFactory.createLinkMicStatusChangeModel(getCurrentLiveRoom(), true), (e.a<Boolean>) null);
                }
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    void g3(LiveMessageModel<PkFCoinMessage> liveMessageModel) {
        PkFCoinMessage data = liveMessageModel.getData();
        PKLiveInfoFragment pKLiveInfoFragment = this.C4;
        if (pKLiveInfoFragment != null) {
            pKLiveInfoFragment.z2(data.getFCoin());
        }
    }

    @Override // d9.g
    public void h0(@Nullable PkUser pkUser, long j10, boolean z10) {
        if (this.F4 > j10) {
            return;
        }
        this.F4 = j10;
        if (pkUser == null) {
            return;
        }
        if ("0".equals(pkUser.getPkStage())) {
            this.M5 = pkUser;
            return;
        }
        this.M5 = pkUser;
        PKLiveInfoFragment pKLiveInfoFragment = this.C4;
        if (pKLiveInfoFragment != null && pKLiveInfoFragment.isAdded()) {
            this.C4.y2(pkUser, j10);
        }
        x.n().i(pkUser);
        if (!this.f18526v && getCurrentLiveRoom().isBroadCaster() && ("1".equals(pkUser.getPkStage()) || "2".equals(pkUser.getPkStage()))) {
            try {
                this.N = this.M5.getLeftAnchorMsg().getFCoinCount();
                k4(j10, TextUtils.isEmpty(this.M5.getPkingEndTime()) ? 0L : Long.parseLong(this.M5.getPkingEndTime()), TextUtils.isEmpty(this.M5.getPkPunishEndTime()) ? 0L : Long.parseLong(this.M5.getPkPunishEndTime()), z10);
            } catch (Exception unused) {
                LogUtils.e("updatePkUserInfo", "（仅测试）服务器返回的PK时间和惩罚时间有误   " + this.M5.getPkingEndTime() + "     " + this.M5.getPkPunishEndTime());
            }
        }
        if (getCurrentLiveRoom().isBroadCaster() && x.n().m() == null) {
            x.n().f19122m = j10;
            FragmentActivity activity = getActivity();
            ToastUtils.debugToast(activity, "updatePkUserInfo对方加速流地址：" + this.M5.getRightAnchorMsg().getJsUrl());
            x.n().y(this.M5);
            x.n().K();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment
    public void j3(int i9) {
        super.j3(i9);
        PKLiveInfoFragment pKLiveInfoFragment = this.C4;
        if (pKLiveInfoFragment != null) {
            pKLiveInfoFragment.m2(i9);
        }
    }

    public void j4(long j10, long j11, long j12, boolean z10) {
        if (this.C4 != null) {
            return;
        }
        PKLiveInfoFragment h22 = PKLiveInfoFragment.h2(j10, j11, j12, z10);
        this.C4 = h22;
        u3(R.id.pk_info_area, h22);
        this.mRequestLink.setVisibility(8);
        if (this instanceof BroadCastFragment) {
            sendLiveMessage(LiveMessageModelFactory.createLinkMicStatusChangeModel(getCurrentLiveRoom(), false), (e.a<Boolean>) null);
        }
    }

    public void k4(long j10, long j11, long j12, boolean z10) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        View view;
        if (this.f18526v) {
            return;
        }
        this.C4 = null;
        if (this.f18484a2 && (view = this.mPkInfoAreaView) != null) {
            view.setVisibility(0);
        }
        this.f18526v = true;
        UserStateHolder.setIsPkingInLive(true);
        UserStateHolder.setIsPKPrepare(false);
        MultiLivePlayView multiLivePlayView = this.mVideoRecyclerView;
        if (multiLivePlayView != null) {
            u.h(multiLivePlayView, -1);
        }
        j4(j10, j11, j12, false);
        View view2 = this.mAdsAndActivityView;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        ViewGroup viewGroup = this.firstRechargeLay;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        View view3 = this.mViewGiftBox;
        if (view3 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view3.getLayoutParams()) != null) {
            marginLayoutParams.topMargin = DensityUtil.dp2px(37.0f);
            this.mViewGiftBox.setLayoutParams(marginLayoutParams);
        }
        LiveLinkMicPlayAdapter liveLinkMicPlayAdapter = this.X4;
        if (liveLinkMicPlayAdapter != null) {
            liveLinkMicPlayAdapter.H(this.M5);
        }
        l4(true, false);
        i4();
    }

    public void l4(boolean z10, boolean z11) {
        if (z10) {
            getCurrentLiveRoom().setInPkMode(true);
        } else if (z11) {
            getCurrentLiveRoom().setInPkMode(false);
        }
        getCurrentLiveRoom().setApplyPkState(false);
        getCurrentLiveRoom().setPkWaiting(false);
        LiveUserInfoFragment liveUserInfoFragment = this.f18534z;
        if (liveUserInfoFragment != null && liveUserInfoFragment.isAdded()) {
            this.f18534z.switchPkMode(z10);
        }
        if (z10) {
            w2();
            LiveChatFragment liveChatFragment = this.f18532y;
            if (liveChatFragment != null) {
                liveChatFragment.dismissInvite();
            }
        }
        LiveChatFragment liveChatFragment2 = this.f18532y;
        if (liveChatFragment2 != null) {
            if (z10) {
                liveChatFragment2.setPkLoadingState(true);
                ToastUtils.debugToast(getContext(), "布局变换 按钮P上状态");
            } else {
                liveChatFragment2.setPkState(true);
                ToastUtils.debugToast(getContext(), "布局变换 按钮恢复状态");
            }
        }
        k2(getView());
        if (getCurrentLiveRoom().isBroadCaster() || this.f18484a2) {
            A3(true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        UserStateHolder.setIsPkingInLive(false);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPkUserEvent(LiveInfoResult liveInfoResult) {
        if (liveInfoResult != null) {
            sendLiveMessage(LiveMessageModelFactory.createPkMergeStreamSuccessModel(liveInfoResult.getPk(), liveInfoResult.getServerTime()), (e.a<Boolean>) null);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment, d9.e
    public void onQuitLiveRoom(boolean z10, boolean z11) {
        super.onQuitLiveRoom(z10, z11);
        if (this.C4 != null) {
            d(0, false);
        }
    }

    @Override // d9.g
    public void y1(long j10) {
        PkUser pkUser;
        LogUtils.i("LiveRoom", "onPkRivalFCoinChanged: " + j10);
        if (!getCurrentLiveRoom().isInPkMode() || getCurrentLiveRoom().isInPkPunishmentTime() || (pkUser = this.M5) == null || pkUser.getRightAnchorMsg() == null) {
            return;
        }
        PKLiveInfoFragment pKLiveInfoFragment = this.C4;
        if (pKLiveInfoFragment != null) {
            pKLiveInfoFragment.A2(j10);
        }
        if (getCurrentLiveRoom().isBroadCaster() && System.currentTimeMillis() - this.N5 >= 2000) {
            this.N5 = System.currentTimeMillis();
            sendC2CLiveMessage(this.M5.getRightAnchorMsg().getCurrentUserId(), LiveMessageModelFactory.createPkFCoinMessageModel(j10), null);
        }
    }
}
