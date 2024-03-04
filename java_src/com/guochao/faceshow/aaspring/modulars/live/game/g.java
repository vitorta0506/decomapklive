package com.guochao.faceshow.aaspring.modulars.live.game;

import android.app.Dialog;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.JoinGameUser;
import com.guochao.faceshow.aaspring.beans.LiveGameCancelBean;
import com.guochao.faceshow.aaspring.beans.LiveGameCreateResponse;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.beans.LiveGameStartBean;
import com.guochao.faceshow.aaspring.beans.LiveLaunchResponse;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.JoinGameDialog;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyUserUpdateMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.views.e;
import d9.e;
import java.util.ArrayList;
import java.util.List;
import p9.a;
/* loaded from: classes3.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    public ViewStub f19479a;

    /* renamed from: b  reason: collision with root package name */
    public View f19480b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    protected LiveRoomModel f19481c;

    /* renamed from: d  reason: collision with root package name */
    protected d9.g f19482d;

    /* renamed from: g  reason: collision with root package name */
    protected int f19485g;

    /* renamed from: h  reason: collision with root package name */
    protected int f19486h;

    /* renamed from: i  reason: collision with root package name */
    protected int f19487i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f19488j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f19489k;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    protected LiveGameCreateResponse f19494p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    protected LiveLuckyUserUpdateMessage.GameInfo f19495q;

    /* renamed from: r  reason: collision with root package name */
    protected com.guochao.faceshow.views.e f19496r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f19497s;

    /* renamed from: t  reason: collision with root package name */
    protected i f19498t;

    /* renamed from: e  reason: collision with root package name */
    protected int f19483e = -1;

    /* renamed from: f  reason: collision with root package name */
    protected boolean f19484f = false;

    /* renamed from: l  reason: collision with root package name */
    protected List<JoinGameUser> f19490l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    protected List<Integer> f19491m = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    protected Handler f19492n = new Handler(Looper.getMainLooper());

    /* renamed from: o  reason: collision with root package name */
    protected Handler f19493o = new Handler(Looper.getMainLooper());

    /* renamed from: u  reason: collision with root package name */
    public List<h> f19499u = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ JoinGameUser f19500a;

        a(JoinGameUser joinGameUser) {
            this.f19500a = joinGameUser;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num != null && num.intValue() == 0) {
                if (g.this.j() == 1) {
                    p9.a.g().e().setTokenNum(Math.max(p9.a.g().e().getTokenNum() - g.this.f19486h, 0));
                } else {
                    Integer diamond = p9.a.g().e().getDiamond();
                    if (diamond == null) {
                        diamond = 0;
                    }
                    p9.a.g().B(Math.max(diamond.intValue() - g.this.f19486h, 0));
                }
                g.this.b(this.f19500a);
                return;
            }
            if (num != null && (num.intValue() == 4 || num.intValue() == 3)) {
                ToastUtils.showToast(g.this.f19479a.getContext(), (int) R.string.minigame_seat_isfull);
            }
            if (num != null && num.intValue() == 2) {
                g.this.o();
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements e.a {
        b() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                Intent e02 = MyWalletActivity.e0(g.this.f19479a.getContext(), 1, com.guochao.faceshow.aaspring.modulars.googlepay.d.X(g.this.f19482d.getCurrentLiveRoom().getBroadCasterUserId()));
                e02.putExtra("isToken", g.this.j() == 1 ? "1" : "0");
                g.this.f19479a.getContext().startActivity(e02);
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewStub viewStub = g.this.f19479a;
            if (viewStub == null) {
                return;
            }
            ToastUtils.showToast(viewStub.getContext(), (int) R.string.minigame_time_auto_start);
            g.this.B();
        }
    }

    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewStub viewStub = g.this.f19479a;
            if (viewStub == null) {
                return;
            }
            ToastUtils.showToast(viewStub.getContext(), (int) R.string.minigame_full_auto_start);
            g.this.B();
        }
    }

    /* loaded from: classes3.dex */
    class e implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ JoinGameUser f19505a;

        /* loaded from: classes3.dex */
        class a implements JoinGameDialog.a {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.live.game.JoinGameDialog.a
            public void onConfirm() {
                e eVar = e.this;
                g.this.c(eVar.f19505a);
            }
        }

        e(JoinGameUser joinGameUser) {
            this.f19505a = joinGameUser;
        }

        @Override // p9.a.f
        public void onCustomRecharge() {
            g.this.o();
        }

        @Override // p9.a.f
        public void onResponse() {
            JoinGameDialog.W1(((BaseActivity) g.this.f19479a.getContext()).getSupportFragmentManager(), g.this.f19486h, new a(), g.this.j());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<List<LiveGameStartBean>> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<LiveGameStartBean>> aVar) {
            ToastUtils.showToast(g.this.f19479a.getContext(), (int) R.string.minigame_start_error);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<LiveGameStartBean> list, @NonNull FaceCastBaseResponse<List<LiveGameStartBean>> faceCastBaseResponse) {
            LiveGameCreateResponse liveGameCreateResponse;
            if (list != null && !list.isEmpty()) {
                com.guochao.faceshow.views.e eVar = g.this.f19496r;
                if (eVar != null && eVar.isShowing()) {
                    g.this.f19496r.dismiss();
                }
                g.this.f19491m.clear();
                int i9 = 0;
                for (int i10 = 0; i10 < list.size(); i10++) {
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (list.get(i11).getIdx() == i10) {
                            g.this.f19491m.add(Integer.valueOf(i11));
                        }
                    }
                    int diamond = list.get(i10).getDiamond();
                    if (i9 < diamond) {
                        i9 = diamond;
                    }
                }
                g.this.f19490l.clear();
                g.this.f19490l.addAll(list);
                g gVar = g.this;
                d9.g gVar2 = gVar.f19482d;
                if (gVar2 != null && (liveGameCreateResponse = gVar.f19494p) != null) {
                    String str = liveGameCreateResponse.getFlag() == 0 ? "LIVE_LUCKY_REMOTE_START" : "LIVE_LUCKY_REMOTE_START_V_COIN";
                    UserBean c10 = b8.e.g().c();
                    List<JoinGameUser> list2 = g.this.f19490l;
                    int size = list2.size();
                    g gVar3 = g.this;
                    int size2 = gVar3.f19486h * gVar3.f19490l.size();
                    long gameInfoId = g.this.f19494p.getGameInfoId();
                    String roundId = g.this.f19494p.getRoundId();
                    g gVar4 = g.this;
                    gVar2.sendLiveMessage(LiveMessageModelFactory.createLuckyStartMessageModel(str, c10, list2, size, size2, gameInfoId, roundId, gVar4.f19486h, i9, gVar4.f19494p.getFlag()), (e.a<Boolean>) null);
                }
                ToastUtils.debugToast(BaseApplication.getInstance(), "取消之前的任务，准备开始转了");
                g.this.f19492n.removeCallbacksAndMessages(null);
                g.this.D();
                return;
            }
            onFailure(new g7.a<>(new Exception(""), -1));
        }
    }

    /* renamed from: com.guochao.faceshow.aaspring.modulars.live.game.g$g  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0185g extends com.guochao.faceshow.aaspring.base.http.callback.c<List<LiveGameCancelBean>> {
        C0185g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<LiveGameCancelBean>> aVar) {
            ToastUtils.showToast(g.this.f19479a.getContext(), (int) R.string.minigame_cancel_error);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<LiveGameCancelBean> list, @NonNull FaceCastBaseResponse<List<LiveGameCancelBean>> faceCastBaseResponse) {
            g gVar = g.this;
            if (gVar.f19482d != null && gVar.f19481c.isBroadCaster()) {
                ((BaseFragment) g.this.f19482d).getCurrentUser();
                long gameInfoId = g.this.f19494p.getGameInfoId();
                String roundId = g.this.f19494p.getRoundId();
                g gVar2 = g.this;
                gVar2.f19482d.sendLiveMessage(LiveMessageModelFactory.createLuckyCancelMessage("LIVE_LUCKY_REMOTE_CANCEL", list, gameInfoId, roundId, gVar2.f19494p.getFlag()), (e.a<Boolean>) null);
                if (g.this.f19489k && list != null && !list.isEmpty()) {
                    if (g.this.j() == 0) {
                        if (p9.a.g().e().getDiamond() != null) {
                            p9.a.g().B(p9.a.g().e().getDiamond().intValue() + list.get(0).getBackDiamond());
                        }
                    } else {
                        p9.a.g().e().setTokenNum(p9.a.g().e().getTokenNum() + list.get(0).getBackDiamond());
                    }
                }
            }
            g.this.f();
        }
    }

    /* loaded from: classes3.dex */
    public static class h {

        /* renamed from: a  reason: collision with root package name */
        public View.OnClickListener f19510a;

        /* renamed from: b  reason: collision with root package name */
        public View f19511b;

        public h(View.OnClickListener onClickListener, View view) {
            this.f19510a = onClickListener;
            this.f19511b = view;
        }
    }

    /* loaded from: classes3.dex */
    public interface i {
        void a(CharSequence charSequence);

        void b(View view);

        void c(View view);
    }

    public g(ViewStub viewStub) {
        this.f19479a = viewStub;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (j() == 0 && (this.f19479a.getContext() instanceof FragmentActivity)) {
            RechargeDialog.showDialog(((FragmentActivity) this.f19479a.getContext()).getSupportFragmentManager(), 1, 3);
        } else {
            new com.guochao.faceshow.views.e(this.f19479a.getContext(), new b()).b(this.f19479a.getContext().getString(j() == 1 ? R.string.shuijing_not_enough : R.string.charge_notifi)).l().show();
        }
    }

    protected abstract void A(boolean z10);

    /* JADX INFO: Access modifiers changed from: protected */
    public void B() {
        d9.g gVar = this.f19482d;
        if (!(gVar instanceof BaseFragment) || this.f19494p == null) {
            return;
        }
        PostRequest y10 = ((BaseFragment) gVar).post("tokens/game/v2/round/startGameNew").y("liveId", this.f19481c.getLiveRoomId());
        LiveRoomModel liveRoomModel = this.f19481c;
        if (liveRoomModel instanceof RoomItemData) {
            y10.y("streamId", ((RoomItemData) liveRoomModel).getStream_id());
        } else if (liveRoomModel instanceof LiveLaunchResponse) {
            y10.y("streamId", ((LiveLaunchResponse) liveRoomModel).getStreamId());
        }
        y10.y("gameInfoId", Long.valueOf(this.f19494p.getGameInfoId())).y("roundId", this.f19494p.getRoundId()).M(new f());
    }

    public void C(d9.g gVar, @NonNull LiveRoomModel liveRoomModel) {
        this.f19482d = gVar;
        this.f19481c = liveRoomModel;
    }

    protected abstract void D();

    /* JADX INFO: Access modifiers changed from: protected */
    public h E(float f10, float f11) {
        for (int i9 = 0; i9 < this.f19499u.size(); i9++) {
            h hVar = this.f19499u.get(i9);
            int[] iArr = new int[2];
            View view = hVar.f19511b;
            view.getLocationInWindow(iArr);
            int width = iArr[0] + view.getWidth();
            int height = iArr[1] + view.getHeight();
            if (iArr[0] < f10 && width > f10 && iArr[1] < f11 && height > f11) {
                return hVar;
            }
        }
        return null;
    }

    public void b(JoinGameUser joinGameUser) {
        boolean z10;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f19490l.size()) {
                z10 = false;
                break;
            } else if ("0".equals(this.f19490l.get(i10).getCurrentUserId()) && joinGameUser.getCurrentUserId().equals(b8.e.g().getUserId())) {
                this.f19490l.set(i10, joinGameUser);
                this.f19484f = this.f19490l.size() == this.f19485g;
                z10 = true;
            } else if ("0".equals(this.f19490l.get(i10).getCurrentUserId()) && this.f19485g == this.f19490l.size()) {
                this.f19490l.set(i10, joinGameUser);
                z10 = joinGameUser.getCurrentUserId().equals(b8.e.g().getUserId());
                this.f19484f = true;
                break;
            } else {
                i10++;
            }
        }
        if (!z10 && !this.f19484f && !e(joinGameUser)) {
            if (!this.f19490l.isEmpty()) {
                List<JoinGameUser> list = this.f19490l;
                if ("0".equals(list.get(list.size() - 1).getCurrentUserId())) {
                    List<JoinGameUser> list2 = this.f19490l;
                    list2.add(list2.size() - 1, joinGameUser);
                }
            }
            this.f19490l.add(joinGameUser);
        }
        if (!b8.e.g().getUserId().equals(joinGameUser.getCurrentUserId()) || this.f19482d == null) {
            return;
        }
        LiveGameCreateResponse liveGameCreateResponse = this.f19494p;
        if (liveGameCreateResponse != null) {
            i9 = liveGameCreateResponse.getFlag();
        } else {
            LiveLuckyUserUpdateMessage.GameInfo gameInfo = this.f19495q;
            if (gameInfo != null) {
                i9 = gameInfo.getFlag();
            }
        }
        this.f19482d.sendLiveMessage(LiveMessageModel.getBaseModel(i9 == 1 ? "LIVE_LUCKY_REMOTE_JOIN_V_COIN" : "LIVE_LUCKY_REMOTE_JOIN", this.f19481c), (e.a<Boolean>) null);
    }

    public void c(JoinGameUser joinGameUser) {
        d9.g gVar = this.f19482d;
        if (gVar instanceof BaseFragment) {
            PostRequest post = ((BaseFragment) gVar).post("tokens/game/v2/round/joinGame");
            LiveGameCreateResponse liveGameCreateResponse = this.f19494p;
            if (liveGameCreateResponse != null) {
                post.y("roundId", liveGameCreateResponse.getRoundId());
                post.y("gameInfoId", Long.valueOf(this.f19494p.getGameInfoId()));
            } else {
                LiveLuckyUserUpdateMessage.GameInfo gameInfo = this.f19495q;
                if (gameInfo != null) {
                    post.y("roundId", gameInfo.getRoundId());
                    post.y("gameInfoId", Long.valueOf(this.f19495q.getGameInfoId()));
                }
            }
            LiveRoomModel liveRoomModel = this.f19481c;
            if (liveRoomModel instanceof RoomItemData) {
                post.y("streamId", ((RoomItemData) liveRoomModel).getStream_id());
            } else if (liveRoomModel instanceof LiveLaunchResponse) {
                post.y("streamId", ((LiveLaunchResponse) liveRoomModel).getStreamId());
            }
            post.y("liveId", this.f19481c.getLiveRoomId());
            post.M(new a(joinGameUser));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        int i9 = 0;
        for (JoinGameUser joinGameUser : this.f19490l) {
            if (joinGameUser != null && !"0".equals(joinGameUser.getCurrentUserId())) {
                i9++;
            }
        }
        if (this.f19481c.isBroadCaster() && i9 >= 2) {
            ToastUtils.debugToast(BaseApplication.getInstance(), "取消之前的任务，10s后开始弹框， 启动了定时任务");
            this.f19492n.removeCallbacksAndMessages(null);
            this.f19492n.postDelayed(new c(), 10000L);
        }
        if (this.f19481c.isBroadCaster() && i9 == this.f19485g) {
            ToastUtils.debugToast(BaseApplication.getInstance(), "取消之前的任务，5s后开始弹框， 启动了定时任务");
            this.f19492n.removeCallbacksAndMessages(null);
            this.f19492n.postDelayed(new d(), 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean e(JoinGameUser joinGameUser) {
        for (JoinGameUser joinGameUser2 : this.f19490l) {
            if (joinGameUser2.getCurrentUserId().equals(joinGameUser.getCurrentUserId())) {
                return true;
            }
        }
        return false;
    }

    public void f() {
        View view = this.f19480b;
        if (view != null && view.getVisibility() == 0) {
            A(false);
        }
        s();
    }

    public void g() {
        d9.g gVar = this.f19482d;
        if (!(gVar instanceof BaseFragment) || this.f19494p == null) {
            return;
        }
        ((BaseFragment) gVar).post("tokens/game/v2/round/cancelGame").y("anchorId", ((BaseFragment) this.f19482d).getCurrentUser().getUserId()).y("roundId", this.f19494p.getRoundId()).M(new C0185g());
    }

    public int h() {
        return this.f19486h;
    }

    public int i() {
        return this.f19485g;
    }

    public int j() {
        LiveGameCreateResponse liveGameCreateResponse = this.f19494p;
        if (liveGameCreateResponse != null) {
            return liveGameCreateResponse.getFlag();
        }
        LiveLuckyUserUpdateMessage.GameInfo gameInfo = this.f19495q;
        if (gameInfo != null) {
            return gameInfo.getFlag();
        }
        return 0;
    }

    @Nullable
    public LiveGameCreateResponse k() {
        return this.f19494p;
    }

    @Nullable
    public LiveLuckyUserUpdateMessage.GameInfo l() {
        return this.f19495q;
    }

    public int m() {
        return this.f19483e;
    }

    public List<JoinGameUser> n() {
        return this.f19490l;
    }

    public boolean p() {
        for (JoinGameUser joinGameUser : this.f19490l) {
            if (b8.e.g().getUserId().equals(joinGameUser.getCurrentUserId())) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q(JoinGameUser joinGameUser) {
        int i9 = 0;
        for (JoinGameUser joinGameUser2 : this.f19490l) {
            if (!"0".equals(joinGameUser2.getCurrentUserId())) {
                i9++;
            }
        }
        if (i9 >= this.f19485g) {
            ToastUtils.showToast(this.f19479a.getContext(), (int) R.string.minigame_seat_isfull);
        } else if (BaseApplication.getInstance().getCurrTopActivity() instanceof BaseActivity) {
            p9.a.g().q((BaseActivity) BaseApplication.getInstance().getCurrTopActivity(), this.f19486h, j() == 1, true, new e(joinGameUser));
        }
    }

    public void r(int i9) {
        if (j() == 0) {
            Integer diamond = p9.a.g().e().getDiamond();
            if (diamond == null) {
                return;
            }
            Integer valueOf = Integer.valueOf(diamond.intValue() - i9);
            if (valueOf.intValue() < 0) {
                valueOf = 0;
            }
            p9.a.g().e().setDiamond(valueOf);
            return;
        }
        p9.a.g().e().setTokenNum(p9.a.g().e().getTokenNum() - i9);
    }

    public void s() {
        ToastUtils.debugToast(BaseApplication.getInstance(), "取消之前的任务，因为被释放了");
        this.f19483e = -1;
        this.f19484f = false;
        this.f19492n.removeCallbacksAndMessages(null);
        this.f19493o.removeCallbacksAndMessages(null);
        this.f19490l.clear();
        this.f19491m.clear();
    }

    public void setOnListener(i iVar) {
        this.f19498t = iVar;
    }

    public void t(List<LiveGamePollDetail.LiveGameRoundDetail> list) {
        this.f19490l.clear();
        this.f19490l.addAll(list);
    }

    public void u(boolean z10) {
        this.f19489k = z10;
    }

    public void v(int i9, int i10, boolean z10) {
        this.f19485g = i9;
        this.f19486h = i10;
        this.f19488j = z10;
    }

    public void w(LiveGameCreateResponse liveGameCreateResponse) {
        this.f19494p = liveGameCreateResponse;
    }

    public void x(LiveLuckyUserUpdateMessage.GameInfo gameInfo) {
        this.f19495q = gameInfo;
    }

    public void y(View view, View.OnClickListener onClickListener) {
        this.f19499u.add(new h(onClickListener, view));
    }

    public void z(List<Integer> list) {
        if (list == null) {
            return;
        }
        this.f19491m.clear();
        this.f19491m.addAll(list);
    }
}
