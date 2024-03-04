package c9;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameCreateResponse;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.modulars.game.WebGameFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.GameBackDiamondDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGameConfig;
import com.guochao.faceshow.aaspring.modulars.live.game.MiniGameDataManager;
import com.guochao.faceshow.aaspring.modulars.live.game.f;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberRecordDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGamePrepareMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameUpdateMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveGameMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyUserUpdateMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.web.WebViewActivity;
import d9.e;
import d9.g;
import d9.j;
import d9.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class a implements k {

    /* renamed from: g  reason: collision with root package name */
    private static a f1652g;

    /* renamed from: a  reason: collision with root package name */
    private g f1653a;

    /* renamed from: b  reason: collision with root package name */
    public long f1654b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1655c;

    /* renamed from: d  reason: collision with root package name */
    private String f1656d;

    /* renamed from: e  reason: collision with root package name */
    k f1657e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f1658f;

    /* renamed from: c9.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0027a extends c<LiveGameCreateResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveGameBean f1659a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LiveGameConfig f1660b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g f1661c;

        C0027a(LiveGameBean liveGameBean, LiveGameConfig liveGameConfig, g gVar) {
            this.f1659a = liveGameBean;
            this.f1660b = liveGameConfig;
            this.f1661c = gVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveGameCreateResponse liveGameCreateResponse, @NonNull FaceCastBaseResponse<LiveGameCreateResponse> faceCastBaseResponse) {
            if (liveGameCreateResponse == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            liveGameCreateResponse.setGameInfoId(this.f1659a.getGameInfoId());
            LiveGameConfig liveGameConfig = new LiveGameConfig();
            liveGameConfig.g(this.f1660b.a());
            liveGameConfig.h(this.f1660b.b());
            liveGameConfig.j(liveGameCreateResponse.getIsJoin() == 1);
            liveGameConfig.i(liveGameCreateResponse.getRoundId());
            a.this.r(this.f1661c, liveGameCreateResponse, this.f1659a, liveGameConfig, null, null, 0L);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveGameCreateResponse> aVar) {
            ToastUtils.showToast(BaseApplication.getInstance(), (int) R.string.minigame_create_error);
        }
    }

    private void a(Fragment fragment, g gVar) {
        if (MiniGameDataManager.getInstance().isGameEnable() && (gVar instanceof Fragment)) {
            Fragment fragment2 = (Fragment) gVar;
            View view = fragment2.getView();
            if (view != null) {
                View findViewById = view.findViewById(R.id.live_game_area);
                if (findViewById != null) {
                    findViewById.setVisibility(0);
                }
                this.f1658f = true;
            }
            fragment2.getChildFragmentManager().beginTransaction().replace(R.id.live_game_area, fragment).commitNowAllowingStateLoss();
        }
    }

    private boolean c(g gVar, List<LiveGamePollDetail> list, long j10) {
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            if (j10 < this.f1654b) {
                return true;
            }
            for (int i9 = 0; i9 < list.size(); i9++) {
                LiveGamePollDetail liveGamePollDetail = list.get(i9);
                if (liveGamePollDetail.getStatus() != 0 && liveGamePollDetail.getStatus() != 1) {
                    if (q(liveGamePollDetail)) {
                        P();
                    }
                } else {
                    k kVar = this.f1657e;
                    if (kVar != null && Objects.equals(kVar.o1(), liveGamePollDetail.getRoundId())) {
                        this.f1657e.J1(liveGamePollDetail, j10);
                    } else if (!q(liveGamePollDetail)) {
                        LiveGameBean liveGameBean = new LiveGameBean();
                        liveGameBean.setFlag(liveGamePollDetail.getFlag());
                        liveGameBean.setGameCode(liveGamePollDetail.getGameCode());
                        liveGameBean.setGameInfoId(liveGamePollDetail.getGameInfoId());
                        liveGameBean.setAndroidVersion(liveGamePollDetail.getAndroidVersion());
                        liveGameBean.setIcon(liveGamePollDetail.getIcon());
                        liveGameBean.setShareUrl(liveGamePollDetail.getShareUrl());
                        liveGameBean.setH5Url(liveGamePollDetail.getH5Url());
                        LiveGameConfig liveGameConfig = new LiveGameConfig();
                        liveGameConfig.k(liveGamePollDetail.getStatus() == 1);
                        liveGameConfig.g(liveGamePollDetail.getConfDiamondNum());
                        liveGameConfig.h(liveGamePollDetail.getConfUserNum());
                        liveGameConfig.i(liveGamePollDetail.getRoundId());
                        r(gVar, null, liveGameBean, liveGameConfig, liveGamePollDetail.getGameRoundVo(), liveGamePollDetail, j10);
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public static a i() {
        if (f1652g == null) {
            synchronized (a.class) {
                if (f1652g == null) {
                    f1652g = new a();
                }
            }
        }
        return f1652g;
    }

    private void m(g gVar) {
        Fragment findFragmentById;
        BaseLiveRoomFragment baseLiveRoomFragment = (BaseLiveRoomFragment) gVar;
        if (baseLiveRoomFragment.getActivity() == null || !baseLiveRoomFragment.isAdded() || (findFragmentById = baseLiveRoomFragment.getChildFragmentManager().findFragmentById(R.id.web_live_game_area)) == null || !findFragmentById.isAdded()) {
            return;
        }
        baseLiveRoomFragment.getChildFragmentManager().beginTransaction().remove(findFragmentById).commitAllowingStateLoss();
    }

    @Override // d9.k
    public void B0(g gVar) {
        k kVar;
        if (MiniGameDataManager.getInstance().isGameEnable() && (kVar = this.f1657e) != null) {
            kVar.B0(gVar);
        }
    }

    @Override // d9.m
    public void F0(g gVar, int i9, String str) {
        m(gVar);
    }

    @Override // d9.k
    public void I0() {
        k kVar = this.f1657e;
        if (kVar != null) {
            kVar.I0();
        }
    }

    @Override // d9.k
    public /* synthetic */ void J1(LiveGamePollDetail liveGamePollDetail, long j10) {
        j.d(this, liveGamePollDetail, j10);
    }

    @Override // d9.m
    public void N0(g gVar, boolean z10, boolean z11) {
        m(gVar);
    }

    @Override // d9.k
    public void P() {
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            this.f1658f = false;
            k kVar = this.f1657e;
            if (kVar != null) {
                this.f1656d = kVar.o1();
                g gVar = this.f1653a;
                if (gVar != null) {
                    gVar.C1(this.f1657e);
                }
                this.f1657e.P();
                this.f1657e = null;
            }
        }
    }

    @Override // d9.k
    public void V() {
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            this.f1658f = true;
            k kVar = this.f1657e;
            if (kVar != null) {
                kVar.V();
            }
        }
    }

    @Override // d9.k
    public boolean W() {
        k kVar = this.f1657e;
        return kVar != null && kVar.W();
    }

    @Override // d9.m
    public void Z0(g gVar, LiveInfoResult liveInfoResult) {
        if (MiniGameDataManager.getInstance().isGameEnable() && liveInfoResult.getServerTime() >= this.f1654b) {
            List<LiveGamePollDetail> gameInfoListV2 = liveInfoResult.getGameInfoListV2();
            c(gVar, gameInfoListV2, liveInfoResult.getServerTime());
            g gVar2 = this.f1653a;
            if (gVar2 != null && gVar2.getCurrentLiveRoom().isBroadCaster() && !gameInfoListV2.isEmpty()) {
                this.f1653a.sendLiveMessage(LiveMessageModelFactory.createLiveGameUpdateMessage(gameInfoListV2, liveInfoResult.getServerTime()), (e.a<Boolean>) null);
            }
            k kVar = this.f1657e;
            if (kVar != null) {
                kVar.Z0(gVar, liveInfoResult);
            }
        }
    }

    public void b(g gVar) {
        this.f1653a = gVar;
    }

    public void d() {
        this.f1653a = null;
        this.f1657e = null;
        this.f1658f = false;
        v(false);
    }

    @Override // d9.k
    public /* synthetic */ boolean e() {
        return j.c(this);
    }

    public void f() {
        BaseLiveRoomFragment baseLiveRoomFragment;
        f fVar;
        View view;
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            if (this.f1658f && g() != null && !g().W()) {
                m1();
                return;
            }
            g gVar = this.f1653a;
            if (!(gVar instanceof BaseLiveRoomFragment) || (fVar = (baseLiveRoomFragment = (BaseLiveRoomFragment) gVar).P4) == null || (view = fVar.f19480b) == null || view.getVisibility() != 0) {
                return;
            }
            baseLiveRoomFragment.P4.Z();
        }
    }

    public k g() {
        return this.f1657e;
    }

    public List<LiveGameBean> h() {
        return MiniGameDataManager.getInstance().getLiveGameData();
    }

    public boolean j() {
        return this.f1658f;
    }

    public boolean k() {
        f fVar;
        g gVar = this.f1653a;
        return ((gVar instanceof BaseLiveRoomFragment) && (fVar = ((BaseLiveRoomFragment) gVar).P4) != null && fVar.m() > 0) || this.f1655c;
    }

    public void l(g gVar, LiveGameBean liveGameBean, LiveGameConfig liveGameConfig) {
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            new PostRequest("tokens/game/v2/round/createGameRound").y("gameInfoId", Long.valueOf(liveGameBean.getGameInfoId())).y("confUserNum", Integer.valueOf(liveGameConfig.b())).y("confDiamondNum", Integer.valueOf(liveGameConfig.a())).y("isJoin", Integer.valueOf(liveGameConfig.e() ? 1 : 0)).y("isContinue", 1).y("liveId", gVar.getCurrentLiveRoom().getLiveRoomId()).y("streamId", gVar.getCurrentLiveRoom().getStreamId()).M(new C0027a(liveGameBean, liveGameConfig, gVar));
        }
    }

    @Override // d9.k
    public void m1() {
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            this.f1658f = false;
            k kVar = this.f1657e;
            if (kVar != null) {
                kVar.m1();
            }
        }
    }

    public void n(k kVar) {
        this.f1657e = kVar;
    }

    public void o(FragmentActivity fragmentActivity, LiveGameBean liveGameBean) {
        LuckyNumberRecordDialog.V1(fragmentActivity.getSupportFragmentManager(), liveGameBean);
    }

    @Override // d9.k
    public /* synthetic */ String o1() {
        return j.a(this);
    }

    public void p(FragmentActivity fragmentActivity, LiveGameBean liveGameBean) {
        WebViewActivity.createBuilder().m(liveGameBean.getH5Url()).a(fragmentActivity);
    }

    @Override // d9.k
    public LiveGameBean p0() {
        k kVar = this.f1657e;
        if (kVar != null) {
            return kVar.p0();
        }
        return null;
    }

    @Override // d9.k
    public boolean q(LiveGamePollDetail liveGamePollDetail) {
        k kVar = this.f1657e;
        if (kVar != null) {
            return kVar.q(liveGamePollDetail);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
        if (r5 != 5) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void r(d9.g r18, @androidx.annotation.Nullable com.guochao.faceshow.aaspring.beans.LiveGameCreateResponse r19, com.guochao.faceshow.aaspring.beans.LiveGameBean r20, com.guochao.faceshow.aaspring.modulars.live.game.LiveGameConfig r21, @androidx.annotation.Nullable java.util.List<? extends com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer> r22, @androidx.annotation.Nullable com.guochao.faceshow.aaspring.beans.LiveGamePollDetail r23, long r24) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c9.a.r(d9.g, com.guochao.faceshow.aaspring.beans.LiveGameCreateResponse, com.guochao.faceshow.aaspring.beans.LiveGameBean, com.guochao.faceshow.aaspring.modulars.live.game.LiveGameConfig, java.util.List, com.guochao.faceshow.aaspring.beans.LiveGamePollDetail, long):void");
    }

    public void s(g gVar, LiveGameBean liveGameBean) {
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            BaseLiveRoomFragment baseLiveRoomFragment = (BaseLiveRoomFragment) gVar;
            if (!baseLiveRoomFragment.isAdded() || baseLiveRoomFragment.getActivity() == null) {
                return;
            }
            baseLiveRoomFragment.getChildFragmentManager().beginTransaction().setCustomAnimations(R.anim.pop_in_bottom_to_top, R.anim.pop_in_bottom_to_top, R.anim.pop_in_bottom_to_top, R.anim.pop_in_bottom_to_top).replace(R.id.web_live_game_area, new WebGameFragment.d().a(liveGameBean).c(WebGameFragment.LiveInfo.a(gVar.getCurrentLiveRoom())).b()).commitAllowingStateLoss();
        }
    }

    public void t() {
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            if (this.f1658f) {
                m1();
            } else {
                V();
            }
        }
    }

    public void u() {
        this.f1653a = null;
    }

    public void v(boolean z10) {
        this.f1655c = z10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // d9.m
    public boolean y(g gVar, LiveMessageModel<?> liveMessageModel) {
        if (MiniGameDataManager.getInstance().isGameEnable()) {
            Object data = liveMessageModel.getData();
            if (!(data instanceof BaseLiveGameMessage) || ((BaseLiveGameMessage) data).isValid()) {
                String cmd = liveMessageModel.getCmd();
                cmd.hashCode();
                char c10 = 65535;
                switch (cmd.hashCode()) {
                    case -1454151955:
                        if (cmd.equals("LIVE_LUCKY_REMOTE_UPDATE_V2_COIN")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -580709875:
                        if (cmd.equals("LIVE_GAME_PREPARE")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 817200739:
                        if (cmd.equals("LIVE_LUCKY_REMOTE_UPDATE_V2")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 845092684:
                        if (cmd.equals("LIVE_GAME_PREPARE_V_COIN")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 2039248777:
                        if (cmd.equals("LIVE_LUCKY_REMOTE_CANCEL")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                    case 2:
                        LiveGameUpdateMessage liveGameUpdateMessage = (LiveGameUpdateMessage) liveMessageModel.getData();
                        return c(gVar, liveGameUpdateMessage.getGameInfoList(), liveGameUpdateMessage.getServerTime());
                    case 1:
                    case 3:
                        LiveGamePrepareMessage liveGamePrepareMessage = (LiveGamePrepareMessage) liveMessageModel.getData();
                        LiveGameBean liveGameBean = liveGamePrepareMessage.getLiveGameBean();
                        if (liveGamePrepareMessage.getLiveGameConfig().e()) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(liveGamePrepareMessage.getLiveGameUserInfo());
                            r(gVar, null, liveGameBean, liveGamePrepareMessage.getLiveGameConfig(), arrayList, null, 0L);
                        } else {
                            r(gVar, null, liveGameBean, liveGamePrepareMessage.getLiveGameConfig(), null, null, 0L);
                        }
                        return true;
                    case 4:
                        if (this.f1657e != null) {
                            LiveLuckyUserUpdateMessage liveLuckyUserUpdateMessage = (LiveLuckyUserUpdateMessage) liveMessageModel.getData();
                            LiveLuckyUserUpdateMessage liveLuckyUserUpdateMessage2 = (LiveLuckyUserUpdateMessage) liveMessageModel.getData();
                            this.f1654b = liveLuckyUserUpdateMessage2.getServerTime();
                            if (liveLuckyUserUpdateMessage2.getGameInfo() != null && liveLuckyUserUpdateMessage2.getGameInfo().getLuckyUsers() != null) {
                                Iterator<LiveGamePollDetail.LiveGameRoundDetail> it = liveLuckyUserUpdateMessage2.getGameInfo().getLuckyUsers().iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        LiveGamePollDetail.LiveGameRoundDetail next = it.next();
                                        if (b8.e.g().c().getUserId().equals(String.valueOf(next.getUserId()))) {
                                            FragmentManager fragmentManager = null;
                                            g gVar2 = this.f1653a;
                                            if (gVar2 instanceof BaseLiveRoomFragment) {
                                                fragmentManager = ((BaseLiveRoomFragment) gVar2).getChildFragmentManager();
                                            } else if (BaseApplication.getInstance().getCurrTopActivity() instanceof BaseActivity) {
                                                fragmentManager = ((BaseActivity) BaseApplication.getInstance().getCurrTopActivity()).getSupportFragmentManager();
                                            }
                                            if (fragmentManager != null) {
                                                GameBackDiamondDialog.T1(fragmentManager, next.getBackDiamond(), liveLuckyUserUpdateMessage2.getGameInfo().getFlag());
                                                if (liveLuckyUserUpdateMessage2.getGameInfo() != null && liveLuckyUserUpdateMessage2.getGameInfo().getFlag() != 0) {
                                                    p9.a.g().e().setTokenNum(p9.a.g().e().getTokenNum() + next.getBackDiamond());
                                                } else {
                                                    p9.a.g().b(next.getBackDiamond());
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            if (liveLuckyUserUpdateMessage.getGameInfo() == null || Objects.equals(this.f1657e.o1(), liveLuckyUserUpdateMessage.getRoundId()) || Objects.equals(this.f1657e.o1(), liveLuckyUserUpdateMessage.getGameInfo().getRoundId())) {
                                if (!this.f1657e.e()) {
                                    P();
                                } else {
                                    ToastUtils.debugToast(BaseApplication.getInstance(), "有胜利弹框，不去调结束游戏");
                                }
                                return true;
                            }
                        }
                        break;
                }
                k kVar = this.f1657e;
                if (kVar != null) {
                    return kVar.y(gVar, liveMessageModel);
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
