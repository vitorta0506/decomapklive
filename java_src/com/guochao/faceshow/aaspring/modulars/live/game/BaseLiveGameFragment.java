package com.guochao.faceshow.aaspring.modulars.live.game;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameCancelBean;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.BaseGameWinDialogFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameJoinMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameSwitchSeatMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyUserUpdateMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.views.e;
import d9.e;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseLiveGameFragment extends BaseFragment implements d9.k, BaseGameWinDialogFragment.b {

    /* renamed from: a  reason: collision with root package name */
    protected Handler f19369a = new Handler();

    /* renamed from: b  reason: collision with root package name */
    protected LiveGameBean f19370b;

    /* renamed from: c  reason: collision with root package name */
    protected LiveGameConfig f19371c;

    /* renamed from: d  reason: collision with root package name */
    public d9.g f19372d;

    /* renamed from: e  reason: collision with root package name */
    public long f19373e;

    /* renamed from: f  reason: collision with root package name */
    public long f19374f;

    /* loaded from: classes3.dex */
    class a implements e.a {
        a() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                BaseLiveGameFragment.this.P1();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends com.guochao.faceshow.aaspring.base.http.callback.c<List<LiveGameCancelBean>> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<LiveGameCancelBean>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<LiveGameCancelBean> list, @NonNull FaceCastBaseResponse<List<LiveGameCancelBean>> faceCastBaseResponse) {
            LiveMessageModel<LiveLuckyUserUpdateMessage> createLuckyCancelMessage = LiveMessageModelFactory.createLuckyCancelMessage("LIVE_LUCKY_REMOTE_CANCEL", list, BaseLiveGameFragment.this.f19370b.getGameInfoId(), BaseLiveGameFragment.this.f19371c.d(), BaseLiveGameFragment.this.f19370b.getFlag());
            createLuckyCancelMessage.getData().setServerTime(faceCastBaseResponse.getSelectTime());
            BaseLiveGameFragment.this.f19372d.sendLiveMessage(createLuckyCancelMessage, (e.a<Boolean>) null);
            BaseLiveGameFragment.this.f19373e = faceCastBaseResponse.getSelectTime();
            c9.a.i().f1654b = BaseLiveGameFragment.this.f19373e;
        }
    }

    private boolean Q1(boolean z10, FragmentManager fragmentManager) {
        for (Fragment fragment : fragmentManager.getFragments()) {
            if (fragment instanceof DialogFragment) {
                DialogFragment dialogFragment = (DialogFragment) fragment;
                if (dialogFragment.getShowsDialog() && dialogFragment.isAdded() && dialogFragment.getDialog() != null && dialogFragment.getDialog().isShowing()) {
                    dialogFragment.getDialog().hide();
                    z10 = true;
                }
            } else {
                Q1(z10, fragment.getChildFragmentManager());
            }
        }
        return z10;
    }

    private void U1(FragmentManager fragmentManager) {
        for (Fragment fragment : fragmentManager.getFragments()) {
            if (fragment instanceof DialogFragment) {
                DialogFragment dialogFragment = (DialogFragment) fragment;
                if (dialogFragment.getShowsDialog() && dialogFragment.isAdded() && dialogFragment.getDialog() != null) {
                    dialogFragment.getDialog().show();
                }
            } else {
                U1(fragment.getChildFragmentManager());
            }
        }
    }

    @Override // d9.k
    public void B0(d9.g gVar) {
        this.f19372d = gVar;
    }

    @Override // d9.m
    public /* synthetic */ void F0(d9.g gVar, int i9, String str) {
        d9.l.a(this, gVar, i9, str);
    }

    @Override // d9.k
    public void I0() {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity == null || currTopActivity.isDestroyed() || currTopActivity.isFinishing()) {
            return;
        }
        com.guochao.faceshow.views.e eVar = new com.guochao.faceshow.views.e(currTopActivity, new a());
        LiveGameBean liveGameBean = this.f19370b;
        eVar.b(currTopActivity.getString((liveGameBean == null || liveGameBean.getFlag() == 0) ? R.string.minigame_close_alert : R.string.minigame_close_alert_shuijing)).show();
    }

    @Override // d9.k
    public /* synthetic */ void J1(LiveGamePollDetail liveGamePollDetail, long j10) {
        d9.j.d(this, liveGamePollDetail, j10);
    }

    @Override // d9.m
    public /* synthetic */ void N0(d9.g gVar, boolean z10, boolean z11) {
        d9.l.c(this, gVar, z10, z11);
    }

    @Override // d9.k
    public void P() {
        if (getActivity() == null) {
            return;
        }
        getParentFragmentManager().beginTransaction().remove(this).commitNowAllowingStateLoss();
        d9.g gVar = this.f19372d;
        if (!(gVar instanceof BaseLiveRoomFragment) || ((BaseLiveRoomFragment) gVar).smallMiniGameLay == null) {
            return;
        }
        ((BaseLiveRoomFragment) gVar).smallMiniGameLay.setVisibility(8);
        ((BaseLiveRoomFragment) this.f19372d).i4();
    }

    protected void P1() {
        post("tokens/game/v2/round/cancelGame").P(null).y("anchorId", this.f19372d.getCurrentLiveRoom().getBroadCasterUserId()).y("roundId", this.f19371c.d()).y("gameInfoId", Long.valueOf(this.f19370b.getGameInfoId())).M(new b());
        c9.a.i().P();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean R1() {
        if (getActivity() == null) {
            return false;
        }
        return Q1(false, getActivity().getSupportFragmentManager());
    }

    public void S1(LiveGameJoinMessage liveGameJoinMessage) {
    }

    public void T1(LiveGameSwitchSeatMessage liveGameSwitchSeatMessage) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void V1() {
        if (getActivity() == null) {
            return;
        }
        U1(getActivity().getSupportFragmentManager());
    }

    @Override // d9.k
    public /* synthetic */ boolean W() {
        return d9.j.b(this);
    }

    @Override // d9.m
    public /* synthetic */ void Z0(d9.g gVar, LiveInfoResult liveInfoResult) {
        d9.l.b(this, gVar, liveInfoResult);
    }

    @Override // d9.k
    public /* synthetic */ boolean e() {
        return d9.j.c(this);
    }

    @Override // d9.k
    public String o1() {
        return this.f19371c.d();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f19369a.removeCallbacks(null);
    }

    @Override // d9.k
    public LiveGameBean p0() {
        return this.f19370b;
    }

    /* JADX WARN: Type inference failed for: r8v1, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    @Override // d9.m
    public boolean y(d9.g gVar, LiveMessageModel<?> liveMessageModel) {
        long serverTime = liveMessageModel.getData().getServerTime();
        String cmd = liveMessageModel.getCmd();
        cmd.hashCode();
        char c10 = 65535;
        switch (cmd.hashCode()) {
            case -726368331:
                if (cmd.equals("LIVE_GAME_JOIN_V_COIN")) {
                    c10 = 0;
                    break;
                }
                break;
            case -192492829:
                if (cmd.equals("LIVE_GAME_SWITCH_SEAT_V_COIN")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1095117398:
                if (cmd.equals("LIVE_GAME_SWITCH_SEAT")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1397382596:
                if (cmd.equals("LIVE_GAME_JOIN")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 3:
                LiveGameJoinMessage liveGameJoinMessage = (LiveGameJoinMessage) liveMessageModel.getData();
                if (serverTime < this.f19373e) {
                    return false;
                }
                this.f19373e = serverTime;
                S1(liveGameJoinMessage);
                return true;
            case 1:
            case 2:
                LiveGameSwitchSeatMessage liveGameSwitchSeatMessage = (LiveGameSwitchSeatMessage) liveMessageModel.getData();
                if (serverTime < this.f19374f) {
                    return false;
                }
                this.f19374f = serverTime;
                T1(liveGameSwitchSeatMessage);
                return true;
            default:
                return false;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseGameWinDialogFragment.b
    public void y0(BaseGameWinDialogFragment baseGameWinDialogFragment, View view) {
        c9.a.i().l(this.f19372d, this.f19370b, this.f19371c);
    }
}
