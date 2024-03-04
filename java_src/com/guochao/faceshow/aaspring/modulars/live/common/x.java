package com.guochao.faceshow.aaspring.modulars.live.common;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ApplyPkCountdown;
import com.guochao.faceshow.aaspring.beans.ArenaBean;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.beans.PkRound;
import com.guochao.faceshow.aaspring.beans.RandomPKHearBeat;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.model.PkUser;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.player.GCLivePlayer;
import com.guochao.player.base.ILivePlayer;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class x implements ILivePlayer.PlayEventListener {

    /* renamed from: w  reason: collision with root package name */
    public static final String f19108w = "x";

    /* renamed from: x  reason: collision with root package name */
    private static x f19109x;

    /* renamed from: a  reason: collision with root package name */
    private int f19110a;

    /* renamed from: c  reason: collision with root package name */
    PkRound f19112c;

    /* renamed from: d  reason: collision with root package name */
    public GCLivePlayer f19113d;

    /* renamed from: e  reason: collision with root package name */
    public FrameLayout f19114e;

    /* renamed from: f  reason: collision with root package name */
    public int f19115f;

    /* renamed from: g  reason: collision with root package name */
    public int f19116g;

    /* renamed from: h  reason: collision with root package name */
    public int f19117h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f19118i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f19119j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f19120k;

    /* renamed from: m  reason: collision with root package name */
    long f19122m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f19123n;

    /* renamed from: o  reason: collision with root package name */
    private WeakReference<Context> f19124o;

    /* renamed from: p  reason: collision with root package name */
    BroadCastFragment f19125p;

    /* renamed from: r  reason: collision with root package name */
    private PkUser f19127r;

    /* renamed from: s  reason: collision with root package name */
    String f19128s;

    /* renamed from: t  reason: collision with root package name */
    String f19129t;

    /* renamed from: u  reason: collision with root package name */
    PostRequest f19130u;

    /* renamed from: v  reason: collision with root package name */
    String f19131v;

    /* renamed from: b  reason: collision with root package name */
    g f19111b = new g();

    /* renamed from: l  reason: collision with root package name */
    private int f19121l = 0;

    /* renamed from: q  reason: collision with root package name */
    private boolean f19126q = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveInfoResult> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveInfoResult liveInfoResult, @NonNull FaceCastBaseResponse<LiveInfoResult> faceCastBaseResponse) {
            BroadCastFragment broadCastFragment;
            if (liveInfoResult == null || liveInfoResult.getPk() == null || liveInfoResult.getPk().getRightAnchorMsg() == null) {
                return;
            }
            UserStateHolder.setIsPKPrepare(true);
            x.this.y(liveInfoResult.getPk());
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "加载对方主播的加速流：" + liveInfoResult.getPk().getRightAnchorMsg().getJsUrl());
            x.this.f19131v = liveInfoResult.getPk().getRightAnchorMsg().getUserId();
            x.this.f19125p.W5 = liveInfoResult.getPk().getRightAnchorMsg().getUserId();
            x.this.f19125p.X5 = liveInfoResult.getPk().getRightAnchorMsg().getLiveId();
            x.this.f19125p.f18323a6 = liveInfoResult.getPk().getRightAnchorMsg().getNickName();
            x.this.f19122m = liveInfoResult.getServerTime();
            x.this.K();
            if (x.this.p() != 1 || (broadCastFragment = x.this.f19125p) == null) {
                return;
            }
            broadCastFragment.q5(liveInfoResult.getPk().getRightAnchorMsg().getUserId(), liveInfoResult.getPk().getRightAnchorMsg().getNickName());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveInfoResult> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            if (aVar.a() == 80006) {
                x.this.e();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<ArenaBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable ArenaBean arenaBean, @NonNull FaceCastBaseResponse<ArenaBean> faceCastBaseResponse) {
            BroadCastFragment broadCastFragment;
            x.this.E(0);
            if (x.this.k() == 1) {
                x.this.x(0);
                x.this.e();
                return;
            }
            if (arenaBean != null && (broadCastFragment = x.this.f19125p) != null && broadCastFragment.getCurrentLiveRoom() != null) {
                x.this.f19125p.getCurrentLiveRoom().setIntroductionToPlay(arenaBean.getIntroductionToPlay());
                x.this.f19125p.getCurrentLiveRoom().setAdmitDefeatNum(arenaBean.getAdmitDefeatNum());
                x.this.f19125p.getCurrentLiveRoom().setArenaDurationTime(arenaBean.getArenaDurationTime());
                x.this.f19125p.getCurrentLiveRoom().setArenaPunishmentDurationTime(arenaBean.getArenaPunishmentDurationTime());
                x.this.f19125p.c4(arenaBean.getSelectTime());
            }
            x.this.H();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<ArenaBean> aVar) {
            x.this.E(0);
            UserStateHolder.setIsPKPrepare(false);
            BroadCastFragment broadCastFragment = x.this.f19125p;
            if (broadCastFragment != null) {
                broadCastFragment.p3();
                x.this.f19125p.t2();
            }
            if (aVar.a() == 21009) {
                ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(R.string.random_pk_tip, new Object[]{Formatter.getFormat(aVar.c())}));
            }
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "随机PK start: " + aVar.c() + "--code=" + aVar.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<RandomPKHearBeat> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable RandomPKHearBeat randomPKHearBeat, @NonNull FaceCastBaseResponse<RandomPKHearBeat> faceCastBaseResponse) {
            if (randomPKHearBeat != null) {
                if (randomPKHearBeat.getStatus() == 1) {
                    x xVar = x.this;
                    xVar.f19115f = 2;
                    BroadCastFragment broadCastFragment = xVar.f19125p;
                    if (broadCastFragment != null && broadCastFragment.getCurrentLiveRoom() != null && !TextUtils.isEmpty(x.this.f19125p.getCurrentLiveRoom().getCurrentUserId())) {
                        x xVar2 = x.this;
                        xVar2.A(xVar2.f19125p.getCurrentLiveRoom().getCurrentUserId().equalsIgnoreCase(randomPKHearBeat.getMatchUserInfo().getInviteUserId()));
                        x.this.f19125p.h4(randomPKHearBeat.getTimestamp());
                    }
                    x.this.v();
                    x.this.e();
                    BroadCastFragment broadCastFragment2 = x.this.f19125p;
                    if (broadCastFragment2 != null) {
                        broadCastFragment2.t2();
                    }
                } else if (randomPKHearBeat.getStatus() == 0) {
                    x.this.f19115f = 1;
                } else if (randomPKHearBeat.getStatus() == -1 || randomPKHearBeat.getStatus() == -2) {
                    BroadCastFragment broadCastFragment3 = x.this.f19125p;
                    if (broadCastFragment3 != null) {
                        broadCastFragment3.t2();
                    }
                    if (randomPKHearBeat.getStatus() == -1) {
                        x.this.e();
                        x.this.I();
                        ToastUtils.debugToast(BaseApplication.getInstance(), "随机PK心跳: 匹配无结果 code=-1");
                        return;
                    }
                    ToastUtils.debugToast(BaseApplication.getInstance(), "随机PK心跳: 有人调用了取消PK code=-2");
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<RandomPKHearBeat> aVar) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "随机PK心跳: 接口报错" + aVar.c() + "--code=" + aVar.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<PkRound> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable PkRound pkRound, @NonNull FaceCastBaseResponse<PkRound> faceCastBaseResponse) {
            x xVar = x.this;
            if (xVar.f19125p == null || pkRound == null) {
                return;
            }
            xVar.f19120k = false;
            xVar.f19118i = false;
            xVar.f19112c = pkRound;
            if (xVar.m() == null) {
                x xVar2 = x.this;
                xVar2.y(xVar2.f19125p.M5);
            }
            x xVar3 = x.this;
            xVar3.f19125p.g4(xVar3.f19112c.getSelectTime());
            x xVar4 = x.this;
            xVar4.f19125p.h0(xVar4.m(), x.this.f19112c.getSelectTime(), false);
            x.this.f19125p.k4(pkRound.getSelectTime(), pkRound.getPkIngEndTime(), pkRound.getPkPunishEndTime(), false);
            x xVar5 = x.this;
            xVar5.f19125p.sendC2CLiveMessage(xVar5.f19131v, LiveMessageModelFactory.createPkChangeUiModel(xVar5.f19112c), null);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<PkRound> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    class f extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            x xVar = x.this;
            xVar.f19115f = 0;
            xVar.f19120k = false;
            xVar.f19118i = false;
            xVar.D(0);
            x.this.x(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x xVar = x.this;
            if (xVar.f19113d != null && xVar.m() != null && x.this.m().getRightAnchorMsg() != null) {
                BaseLiveActivity.u0("PkHelper$TimeoutRunnable.run()", false);
                x xVar2 = x.this;
                xVar2.f19113d.stopPlay(xVar2.m().getRightAnchorMsg().getStreamId());
            }
            x xVar3 = x.this;
            xVar3.f19131v = null;
            xVar3.f19118i = false;
            ToastUtils.debugToast(BaseApplication.getInstance(), "TimeoutRunnable：超时");
            x.this.y(null);
            x.this.e();
            x.this.d();
            BroadCastFragment broadCastFragment = x.this.f19125p;
            if (broadCastFragment != null) {
                broadCastFragment.t2();
            }
            x xVar4 = x.this;
            if (xVar4.f19125p != null) {
                ToastUtils.debugToast(xVar4.l(), "30秒拉对方流未成功PK恢复按钮");
                if (x.this.f19121l == 1) {
                    x.this.f19125p.t2();
                } else {
                    x.this.f19125p.p3();
                }
            }
        }
    }

    private x() {
    }

    private void G(String str, String str2, ViewGroup viewGroup) {
        this.f19113d.startPlayAcc(str, str2, viewGroup);
        this.f19113d.setMute(true, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        PostRequest postRequest = this.f19130u;
        if (postRequest != null) {
            postRequest.cancel();
        }
        BroadCastFragment broadCastFragment = this.f19125p;
        if (broadCastFragment == null) {
            return;
        }
        this.f19130u = broadCastFragment.post("tokens/live/randomPk/v2/heartbeat").y("liveId", this.f19125p.getCurrentLiveRoom().getLiveRoomId()).G(5000, new d());
    }

    private void h() {
        if (this.f19126q) {
            LogUtils.e(f19108w, "PkHelper has been destroyed and can not be used until call init first");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context l() {
        Context context = this.f19124o.get();
        return context == null ? BaseApplication.getInstance() : context;
    }

    public static x n() {
        if (f19109x == null) {
            synchronized (x.class) {
                if (f19109x == null) {
                    f19109x = new x();
                }
            }
        }
        return f19109x;
    }

    private void w() {
        ToastUtils.debugToast(BaseApplication.getInstance(), "开始PK混流了");
        h();
        BroadCastFragment broadCastFragment = this.f19125p;
        if (broadCastFragment == null) {
            return;
        }
        broadCastFragment.post("tokens/live/pk/pkMixedFlow").v("inviteliveId", this.f19125p.getCurrentLiveRoom().getLiveRoomId()).v("invitedliveId", m().getRightAnchorMsg().getLiveId()).v("types", Integer.valueOf(this.f19121l)).M(new e());
    }

    public void A(boolean z10) {
        this.f19123n = z10;
    }

    public void B(boolean z10) {
        this.f19119j = z10;
    }

    public void C(int i9) {
        this.f19110a = i9;
    }

    public void D(int i9) {
        this.f19121l = i9;
    }

    public void E(int i9) {
        this.f19117h = i9;
    }

    public void F(String str) {
        h();
        if (!Objects.equals(str, this.f19131v) || this.f19130u == null) {
            e();
            this.f19131v = str;
            this.f19130u = this.f19125p.post("tokens/live/invite/livePkInviteHeartBeat").v("liveInviteId", this.f19125p.getCurrentLiveRoom().getLiveRoomId()).v("invitedUserId", str).G(5000, new b());
        }
    }

    public void I() {
        BroadCastFragment broadCastFragment;
        if (!UserStateHolder.isLiving() || (broadCastFragment = this.f19125p) == null || broadCastFragment.getCurrentLiveRoom() == null) {
            return;
        }
        this.f19118i = false;
        this.f19119j = false;
        this.f19120k = false;
        this.f19125p.getCurrentLiveRoom().setApplyPkState(true);
        D(1);
        ApplyPkCountdown applyPkCountdown = new ApplyPkCountdown();
        applyPkCountdown.setTime(180000L);
        EventBus.getDefault().post(applyPkCountdown);
        E(1);
        UserStateHolder.setIsPKPrepare(true);
        this.f19125p.post("tokens/live/randomPk/v2/start").y("liveId", this.f19125p.getCurrentLiveRoom().getLiveRoomId()).M(new c());
    }

    public void J() {
        this.f19118i = false;
        this.f19119j = false;
        this.f19120k = false;
        D(0);
        UserStateHolder.setIsPKPrepare(false);
        y(null);
        BroadCastFragment broadCastFragment = this.f19125p;
        if (broadCastFragment != null) {
            broadCastFragment.getCurrentLiveRoom().setApplyPkState(false);
            this.f19125p.getCurrentLiveRoom().setInPkPunishmentTime(false);
            this.f19125p.p3();
        }
        this.f19122m = 0L;
        this.f19112c = null;
    }

    public void K() {
        if (this.f19126q) {
            return;
        }
        if (this.f19113d == null) {
            GCLivePlayer player = LivePlayerProvider.player();
            this.f19113d = player;
            player.addPlayEventListener(this);
        }
        if (this.f19114e == null) {
            this.f19114e = new FrameLayout(BaseApplication.getInstance());
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(1, 1);
            layoutParams.width = 1;
            layoutParams.height = 1;
            this.f19114e.setLayoutParams(layoutParams);
        }
        String jsUrl = m().getRightAnchorMsg().getJsUrl();
        this.f19128s = jsUrl;
        this.f19129t = m().getRightAnchorMsg().getStreamId();
        if (p() == 2) {
            HandlerGetter.getMainHandler().postDelayed(this.f19111b, 30000L);
        }
        G(jsUrl, this.f19129t, this.f19114e);
        BaseApplication baseApplication = BaseApplication.getInstance();
        ToastUtils.debugToast(baseApplication, "PK开始拉对方的流" + jsUrl);
    }

    public void d() {
        PostRequest postRequest;
        if (this.f19113d != null) {
            BaseLiveActivity.u0("PkHelper.cancelCurrentPk()", false);
            this.f19113d.stopPlay(this.f19129t);
        }
        e();
        if (p() == 1 && this.f19125p != null && (postRequest = this.f19130u) != null) {
            postRequest.cancel();
        }
        J();
    }

    public void e() {
        PostRequest postRequest = this.f19130u;
        if (postRequest != null) {
            postRequest.cancel();
            this.f19130u = null;
        }
    }

    public void f() {
        D(0);
        BroadCastFragment broadCastFragment = this.f19125p;
        if (broadCastFragment != null) {
            broadCastFragment.post("tokens/live/pk/endPkCancelMixedFlow").I(3).L();
        }
    }

    public void g() {
        BroadCastFragment broadCastFragment = this.f19125p;
        if (broadCastFragment != null) {
            broadCastFragment.post("tokens/live/randomPk/v2/cancel").y("liveId", this.f19125p.getCurrentLiveRoom().getLiveRoomId()).M(new f());
        }
    }

    public void i(PkUser pkUser) {
        if (TextUtils.isEmpty(this.f19128s) || TextUtils.isEmpty(this.f19129t) || pkUser == null || pkUser.getRightAnchorMsg() == null || TextUtils.isEmpty(pkUser.getRightAnchorMsg().getJsUrl())) {
            return;
        }
        if (Objects.equals(this.f19129t, pkUser.getRightAnchorMsg().getStreamId())) {
            return;
        }
        if (this.f19113d == null) {
            GCLivePlayer player = LivePlayerProvider.player();
            this.f19113d = player;
            player.addPlayEventListener(this);
        }
        BaseLiveActivity.u0("PkHelper.checkUrl()", false);
        this.f19113d.stopPlay(this.f19129t);
        this.f19118i = false;
        this.f19128s = pkUser.getRightAnchorMsg().getJsUrl();
        this.f19129t = pkUser.getRightAnchorMsg().getStreamId();
        G(pkUser.getRightAnchorMsg().getJsUrl(), pkUser.getRightAnchorMsg().getStreamId(), this.f19114e);
    }

    public void j() {
        e();
        GCLivePlayer gCLivePlayer = this.f19113d;
        if (gCLivePlayer != null) {
            gCLivePlayer.removePlayEventListener(this);
        }
        this.f19124o = null;
        this.f19125p = null;
        this.f19123n = false;
        this.f19118i = false;
        this.f19120k = false;
        this.f19119j = false;
        this.f19112c = null;
        D(0);
        y(null);
        this.f19114e = null;
        this.f19113d = null;
        this.f19126q = true;
        this.f19129t = null;
        this.f19128s = null;
        HandlerGetter.getMainHandler().removeCallbacks(this.f19111b);
    }

    public int k() {
        return this.f19116g;
    }

    @Nullable
    public PkUser m() {
        return this.f19127r;
    }

    public int o() {
        return this.f19110a;
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onConnectToServer(String str, ILivePlayer iLivePlayer) {
        com.guochao.player.base.a.a(this, str, iLivePlayer);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public void onDrawFirstFrame(@NonNull String str, @NonNull ILivePlayer iLivePlayer) {
        if (this.f19118i) {
            return;
        }
        this.f19118i = true;
        BaseApplication baseApplication = BaseApplication.getInstance();
        ToastUtils.debugToast(baseApplication, "PK我拉对方流成功了 我的状态：" + this.f19118i + "--对方状态：" + this.f19120k);
        HandlerGetter.getMainHandler().removeCallbacks(this.f19111b);
        if (this.f19123n) {
            if (this.f19120k && this.f19118i) {
                w();
            }
            if (this.f19125p == null || m() == null || m().getRightAnchorMsg() == null) {
                return;
            }
            this.f19125p.sendC2CLiveMessage(m().getRightAnchorMsg().getCurrentUserId(), LiveMessageModelFactory.createInviterPlaySuccessMessageModel(), null);
        } else if (this.f19125p == null || m() == null || m().getRightAnchorMsg() == null) {
        } else {
            this.f19125p.sendC2CLiveMessage(m().getRightAnchorMsg().getCurrentUserId(), LiveMessageModelFactory.createInvitedPlaySuccessMessageModel(), null);
        }
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onPlayEvent(String str, int i9, String str2, Throwable th2) {
        com.guochao.player.base.a.c(this, str, i9, str2, th2);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onPlayFirstAudioFrame(String str, ILivePlayer iLivePlayer) {
        com.guochao.player.base.a.d(this, str, iLivePlayer);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onPlayerVolumeUpdate(String str, float f10) {
        com.guochao.player.base.a.e(this, str, f10);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onPublishStreamInfo(String str, List list) {
        com.guochao.player.base.a.f(this, str, list);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onVideoLoading(String str, Bundle bundle) {
        com.guochao.player.base.a.g(this, str, bundle);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onVideoPlaying(String str, Bundle bundle) {
        com.guochao.player.base.a.h(this, str, bundle);
    }

    @Override // com.guochao.player.base.ILivePlayer.PlayEventListener
    public /* synthetic */ void onVideoSizeChanged(String str, int i9, int i10) {
        com.guochao.player.base.a.i(this, str, i9, i10);
    }

    public int p() {
        return this.f19121l;
    }

    public int q() {
        return this.f19117h;
    }

    public BroadCastFragment r() {
        return this.f19125p;
    }

    public void s(Context context, BroadCastFragment broadCastFragment) {
        this.f19124o = new WeakReference<>(context);
        this.f19125p = broadCastFragment;
        if (broadCastFragment.getView() != null) {
            this.f19114e = (FrameLayout) this.f19125p.getView().findViewById(R.id.acc_view);
        }
        this.f19126q = false;
    }

    public boolean t() {
        return this.f19123n;
    }

    public boolean u() {
        return this.f19119j;
    }

    public void v() {
        BroadCastFragment broadCastFragment = this.f19125p;
        if (broadCastFragment == null) {
            return;
        }
        broadCastFragment.get("tokens/live/newLive/getLiveInfo").v("liveId", this.f19125p.getCurrentLiveRoom().getLiveRoomId()).v(Contants.USER_ID, this.f19125p.getCurrentLiveRoom().getBroadCasterUserId()).v("likeNum", Long.valueOf(this.f19125p.f18534z.getLikeNum())).I(3).M(new a());
    }

    public void x(int i9) {
        this.f19116g = i9;
    }

    public void y(@Nullable PkUser pkUser) {
        this.f19127r = pkUser;
    }

    public void z(boolean z10) {
        this.f19120k = z10;
        BaseApplication baseApplication = BaseApplication.getInstance();
        ToastUtils.debugToast(baseApplication, "PK对方拉我的流成功了 我的状态：" + this.f19118i + "--对方状态：" + this.f19120k);
        if (this.f19118i && this.f19120k) {
            ToastUtils.debugToast(BaseApplication.getInstance(), "PK收到对方消息：开始混流");
            w();
        }
    }
}
