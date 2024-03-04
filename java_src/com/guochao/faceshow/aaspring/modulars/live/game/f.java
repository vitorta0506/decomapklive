package com.guochao.faceshow.aaspring.modulars.live.game;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.JoinGameUser;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameCreateResponse;
import com.guochao.faceshow.aaspring.beans.LiveLaunchResponse;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.DishWheelView;
import com.guochao.faceshow.aaspring.modulars.live.game.g;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyUserUpdateMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveLuckyWinMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.e;
import d9.e;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class f extends g {
    private ImageView A;
    private TextView B;
    private ImageView C;
    @Nullable
    private TextView D;
    private float E;
    private boolean F;
    public View G;
    private View.OnClickListener H;
    public View I;

    /* renamed from: v  reason: collision with root package name */
    private DishWheelView f19462v;

    /* renamed from: w  reason: collision with root package name */
    public TextView f19463w;

    /* renamed from: x  reason: collision with root package name */
    private TextView f19464x;

    /* renamed from: y  reason: collision with root package name */
    private ImageView f19465y;

    /* renamed from: z  reason: collision with root package name */
    private FrameLayout f19466z;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getVisibility() != 0) {
                return;
            }
            f.this.Z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        float f19468a;

        /* renamed from: b  reason: collision with root package name */
        float f19469b;

        /* renamed from: c  reason: collision with root package name */
        float f19470c;

        /* renamed from: d  reason: collision with root package name */
        float f19471d;

        b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x000e, code lost:
            if (r0 != 3) goto L18;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
            /*
                Method dump skipped, instructions count: 331
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.game.f.b.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[2];
            f.this.f19462v.getLocationOnScreen(iArr);
            int i9 = iArr[1];
            int[] iArr2 = new int[2];
            f.this.f19480b.findViewById(R.id.game_layout).getLocationOnScreen(iArr2);
            int i10 = iArr2[1];
            f fVar = f.this;
            fVar.E = (i9 - i10) + (fVar.f19462v.getMeasuredHeight() / 2.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements DishWheelView.f {

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveGameCreateResponse> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f19475a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f19476b;

            a(int i9, long j10) {
                this.f19475a = i9;
                this.f19476b = j10;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(@Nullable LiveGameCreateResponse liveGameCreateResponse, @NonNull FaceCastBaseResponse<LiveGameCreateResponse> faceCastBaseResponse) {
                FragmentActivity activity = ((BaseFragment) f.this.f19482d).getActivity();
                d9.g gVar = f.this.f19482d;
                if (gVar == null || ((BaseFragment) gVar).isDetached() || activity == null || activity.isFinishing() || activity.isDestroyed()) {
                    return;
                }
                if (liveGameCreateResponse == null) {
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                liveGameCreateResponse.setFlag(this.f19475a);
                liveGameCreateResponse.setGameInfoId(this.f19476b);
                f.this.u(liveGameCreateResponse.getIsJoin() == 1);
                f.this.w(liveGameCreateResponse);
                if (liveGameCreateResponse.getFlag() == 0) {
                    f.this.f19480b.findViewById(R.id.game_diamond_bg).setBackgroundResource(R.mipmap.mini_game_diamond_icon);
                } else {
                    f.this.f19480b.findViewById(R.id.game_diamond_bg).setBackgroundResource(R.mipmap.mini_game_cry_icon);
                }
                f.this.s0();
                String roundId = liveGameCreateResponse.getRoundId();
                if (f.this.f19482d != null) {
                    ArrayList arrayList = new ArrayList();
                    if (liveGameCreateResponse.getIsJoin() == 1) {
                        arrayList.add(b8.e.g().c());
                        f fVar = f.this;
                        fVar.r(fVar.f19486h);
                    }
                    f.this.f19482d.sendLiveMessage(LiveMessageModelFactory.createLuckyReadyMessageModel(this.f19475a == 0 ? "LIVE_LUCKY_REMOTE_READY" : "LIVE_LUCKY_REMOTE_READY_V_COIN", b8.e.g().c(), f.this.f19485g, arrayList, liveGameCreateResponse.getGameInfoId(), roundId, f.this.f19486h, this.f19475a), (e.a<Boolean>) null);
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<LiveGameCreateResponse> aVar) {
                ToastUtils.showToast(f.this.f19479a.getContext(), (int) R.string.minigame_create_error);
            }
        }

        d() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelView.f
        public void a() {
            long gameInfoId;
            int flag;
            if (MiniGameDataManager.getInstance().isLuckyRemoteEnable()) {
                f fVar = f.this;
                LiveGameCreateResponse liveGameCreateResponse = fVar.f19494p;
                if (liveGameCreateResponse != null) {
                    gameInfoId = liveGameCreateResponse.getGameInfoId();
                } else {
                    LiveLuckyUserUpdateMessage.GameInfo gameInfo = fVar.f19495q;
                    gameInfoId = gameInfo != null ? gameInfo.getGameInfoId() : 0L;
                }
                f fVar2 = f.this;
                LiveGameCreateResponse liveGameCreateResponse2 = fVar2.f19494p;
                if (liveGameCreateResponse2 != null) {
                    flag = liveGameCreateResponse2.getFlag();
                } else {
                    LiveLuckyUserUpdateMessage.GameInfo gameInfo2 = fVar2.f19495q;
                    flag = gameInfo2 != null ? gameInfo2.getFlag() : 0;
                }
                PostRequest y10 = new PostRequest("tokens/game/v2/round/createGameRound").y("gameInfoId", Long.valueOf(gameInfoId)).y("confUserNum", Integer.valueOf(f.this.f19485g)).y("confDiamondNum", Integer.valueOf(f.this.f19486h)).y("isJoin", Integer.valueOf(f.this.f19488j ? 1 : 0)).y("isContinue", 1).y("liveId", f.this.f19481c.getLiveRoomId());
                LiveRoomModel liveRoomModel = f.this.f19481c;
                if (liveRoomModel instanceof RoomItemData) {
                    y10.y("streamId", ((RoomItemData) liveRoomModel).getStream_id());
                } else if (liveRoomModel instanceof LiveLaunchResponse) {
                    y10.y("streamId", ((LiveLaunchResponse) liveRoomModel).getStreamId());
                }
                y10.M(new a(flag, gameInfoId));
            }
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelView.f
        public void b(int i9, JoinGameUser joinGameUser) {
            f fVar = f.this;
            fVar.f19487i = i9;
            hc.a.d(fVar.A, joinGameUser.getAvatarUrl());
            f.this.B.setText(joinGameUser.getUserName());
            f.this.B.setSelected(true);
            f.this.A.setTag(joinGameUser);
            f.this.f19466z.setVisibility(0);
            String format = String.format("%s/%s", Integer.valueOf(i9), Integer.valueOf(f.this.f19490l.size()));
            f.this.f19463w.setText(format);
            if (f.this.D != null) {
                f.this.D.setText(format);
            }
            f.this.a0();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelView.f
        public void c(JoinGameUser joinGameUser, int i9, int i10) {
            if (i9 <= 0) {
                return;
            }
            f.this.t0();
            f.this.o0(joinGameUser, i9);
            f fVar = f.this;
            d9.g gVar = fVar.f19482d;
            if (!(gVar instanceof BaseFragment) || fVar.f19494p == null) {
                return;
            }
            ((BaseFragment) gVar).post("tokens/game/v2/round/overGame").y("liveId", f.this.f19481c.getLiveRoomId()).y("roundId", f.this.f19494p.getRoundId()).y("gameInfoId", Long.valueOf(f.this.f19494p.getGameInfoId())).L();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelView.f
        public void d() {
            f.this.f();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.live.game.DishWheelView.f
        public void e() {
            f.this.q(b8.e.g().c());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements e.a {
        e() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                f.this.g();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    public f(ViewStub viewStub) {
        super(viewStub);
        this.F = false;
        this.H = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        this.f19492n.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.e
            @Override // java.lang.Runnable
            public final void run() {
                f.this.h0();
            }
        }, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c0(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return point.y;
    }

    private void f0() {
        View findViewById = this.f19480b.findViewById(R.id.game_layout);
        this.G = findViewById;
        ((ViewGroup.MarginLayoutParams) findViewById.getLayoutParams()).topMargin = DensityUtil.dp2px(127.0f) + StatusBarHelper.getStatusbarHeight(this.f19479a.getContext());
        View view = this.I;
        if (view == null || view.getVisibility() == 8) {
            if (d0() && (this.f19487i != 1 || this.f19483e != 1)) {
                this.f19479a.setVisibility(0);
            } else {
                this.f19479a.setVisibility(8);
            }
        }
        this.C = (ImageView) this.f19480b.findViewById(R.id.game_close);
        this.f19466z = (FrameLayout) this.f19480b.findViewById(R.id.layout_lose_result);
        this.A = (ImageView) this.f19480b.findViewById(R.id.lose_img);
        this.B = (TextView) this.f19480b.findViewById(R.id.lose_name);
        this.C.setOnClickListener(this.H);
        this.f19465y = (ImageView) this.f19480b.findViewById(R.id.start_icon);
        y(this.A, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.this.i0(view2);
            }
        });
        y(this.f19465y, new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.this.j0(view2);
            }
        });
        this.G.setOnTouchListener(new b());
        this.f19463w = (TextView) this.f19480b.findViewById(R.id.person_count);
        this.f19464x = (TextView) this.f19480b.findViewById(R.id.diamond_count);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(View view) {
        if (view.getContext() == null || ((Activity) view.getContext()).isDestroyed() || ((Activity) view.getContext()).isFinishing()) {
            return;
        }
        if (this.f19483e == 0 && this.f19481c.isBroadCaster()) {
            com.guochao.faceshow.views.e b10 = new com.guochao.faceshow.views.e(this.f19479a.getContext(), new e()).b(this.f19479a.getContext().getString(j() == 1 ? R.string.minigame_close_alert_shuijing : R.string.minigame_close_alert));
            this.f19496r = b10;
            b10.show();
            return;
        }
        this.I.callOnClick();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0() {
        this.f19466z.setVisibility(4);
        this.f19462v.n();
        t0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(View view) {
        if (this.f19466z.getVisibility() == 0) {
            k0(view);
        } else {
            r0(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(View view) {
        if (this.f19466z.getVisibility() == 0) {
            k0(view);
        } else {
            r0(view);
        }
    }

    private void k0(View view) {
        p7.h hVar = (p7.h) view.getTag();
        if (hVar != null) {
            LivePeopleInfoCardFragment.showPeopleInfo(((FragmentActivity) view.getContext()).getSupportFragmentManager(), hVar.getCurrentUserId(), hVar.getUserName(), this.f19482d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0(JoinGameUser joinGameUser, int i9) {
        if (this.f19482d == null || !this.f19481c.isBroadCaster() || i9 <= 0) {
            return;
        }
        LiveGameCreateResponse liveGameCreateResponse = this.f19494p;
        int flag = liveGameCreateResponse != null ? liveGameCreateResponse.getFlag() : 0;
        LiveLuckyUserUpdateMessage.GameInfo gameInfo = this.f19495q;
        if (gameInfo != null) {
            flag = gameInfo.getFlag();
        }
        int i10 = flag;
        LiveMessageModel<LiveLuckyWinMessage> createLuckyWinMessage = LiveMessageModelFactory.createLuckyWinMessage(i10 == 0 ? "LIVE_LUCKY_REMOTE_WIN" : "LIVE_LUCKY_REMOTE_WIN_V_COIN", b8.e.g().c(), i9, joinGameUser.getCurrentUserId(), joinGameUser.getUserName(), i10);
        this.f19482d.sendLiveMessage(createLuckyWinMessage, (e.a<Boolean>) null);
        d9.g gVar = this.f19482d;
        if (gVar instanceof BaseLiveRoomFragment) {
            gVar.onReceiveLiveMessage(createLuckyWinMessage);
        }
    }

    private void r0(View view) {
        if (!this.f19481c.isBroadCaster()) {
            if (p() || view == null) {
                return;
            }
            if (this.f19483e > 0) {
                ToastUtils.showToast(view.getContext(), (int) R.string.minigame_game_has_start);
            } else {
                q(b8.e.g().c());
            }
        } else if (this.f19483e <= 0) {
            int i9 = 0;
            for (JoinGameUser joinGameUser : this.f19490l) {
                if (!"0".equals(joinGameUser.getCurrentUserId())) {
                    i9++;
                }
            }
            if (i9 >= 2) {
                B();
            } else {
                ToastUtils.showToast(view.getContext(), (int) R.string.minigame_person_limit);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0() {
        this.f19490l.clear();
        this.f19491m.clear();
        A(true);
        u0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t0() {
        if (!(this.f19482d instanceof BaseFragment) || this.f19494p == null || this.f19490l.isEmpty()) {
            return;
        }
        this.f19482d.sendLiveMessage(LiveMessageModelFactory.createLuckyUserRemoveMessage(this.f19494p.getFlag() == 0 ? "LIVE_LUCKY_REMOTE_REMOVE" : "LIVE_LUCKY_REMOTE_REMOVE_V_COIN", b8.e.g().c(), this.f19490l, i(), this.f19490l.size() * h(), this.f19494p.getGameInfoId(), this.f19494p.getRoundId(), this.f19490l.size() - this.f19487i, h(), (int) (h() * this.f19490l.size() * 0.95f), this.f19494p.getFlag()), (e.a<Boolean>) null);
    }

    private void u0() {
        if (this.f19483e == 1) {
            this.f19465y.setImageResource(R.mipmap.icon_mini_game_go_audience);
        } else if (this.f19481c.isBroadCaster()) {
            this.f19465y.setImageResource(R.mipmap.icon_mini_game_go);
        } else if (!p()) {
            this.f19465y.setImageResource(R.mipmap.icon_mini_game_go_join);
        } else {
            this.f19465y.setImageResource(R.mipmap.icon_mini_game_go_audience);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.g
    public void A(boolean z10) {
        p0(z10, null);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.g
    public void D() {
        this.f19483e = 1;
        this.f19465y.setImageResource(R.mipmap.icon_mini_game_go_audience);
        this.C.setImageResource(R.mipmap.icon_mini_game_close);
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        for (JoinGameUser joinGameUser : this.f19490l) {
            if (!"0".equals(joinGameUser.getCurrentUserId())) {
                i9++;
                arrayList.add(joinGameUser);
            }
        }
        this.f19462v.l(arrayList, arrayList, this.f19491m, this.f19481c, this.f19486h);
        String format = String.format("%s/%s", Integer.valueOf(i9), Integer.valueOf(arrayList.size()));
        TextView textView = this.D;
        if (textView != null) {
            textView.setText(format);
        }
        this.f19463w.setText(format);
        this.f19464x.setText(String.valueOf(this.f19486h * arrayList.size()));
        this.f19462v.n();
    }

    public void X(JoinGameUser joinGameUser, boolean z10) {
        if (z10) {
            return;
        }
        if (e(joinGameUser)) {
            ToastUtils.debugToast(BaseApplication.getInstance(), "已加入的人里面包含这个了, 终止加入");
        } else if (this.f19484f) {
            ToastUtils.debugToast(BaseApplication.getInstance(), "人满了, 终止加入");
        } else if (this.f19462v == null) {
            ToastUtils.debugToast(BaseApplication.getInstance(), "dishWheelView == null, 终止加入");
        } else {
            super.b(joinGameUser);
            DishWheelView dishWheelView = this.f19462v;
            List<JoinGameUser> list = this.f19490l;
            dishWheelView.l(list, list, this.f19491m, this.f19481c, this.f19486h);
            int i9 = 0;
            for (JoinGameUser joinGameUser2 : this.f19490l) {
                if (joinGameUser2 != null && !"0".equals(joinGameUser2.getCurrentUserId())) {
                    i9++;
                }
            }
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(i9);
            objArr[1] = Integer.valueOf(this.f19483e == 0 ? this.f19485g : this.f19490l.size());
            String format = String.format("%s/%s", objArr);
            this.f19463w.setText(format);
            TextView textView = this.D;
            if (textView != null) {
                textView.setText(format);
            }
            this.f19464x.setText(String.valueOf(this.f19486h * i9));
            u0();
        }
    }

    public void Y(View view) {
        this.I = view;
        TextView textView = (TextView) view.findViewById(R.id.game_info);
        this.D = textView;
        textView.setText(this.f19463w.getText().toString());
        ImageView imageView = (ImageView) view.findViewById(R.id.game_icon);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.small_mini_game_close);
        ArrayList<LiveGameBean> arrayList = new ArrayList();
        if (this.f19482d.getCurrentLiveRoom().isBroadCaster()) {
            arrayList.addAll(MiniGameDataManager.getInstance().getLiveGameData());
        } else {
            arrayList.addAll(c9.a.i().h());
        }
        boolean z10 = false;
        for (LiveGameBean liveGameBean : arrayList) {
            if (liveGameBean.getFlag() == j() && (liveGameBean.getGameCode() == 1 || liveGameBean.getGameCode() == 4)) {
                hc.a.h(imageView, liveGameBean.getIcon(), R.mipmap.icon_small_mini_game);
                z10 = true;
                break;
            }
        }
        if (!z10) {
            imageView.setImageResource(R.mipmap.icon_small_mini_game);
        }
        imageView2.setImageResource((this.f19483e == 0 && this.f19481c.isBroadCaster()) ? R.mipmap.live_close_ad : R.mipmap.icon_mini_game_open);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.game.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.this.g0(view2);
            }
        });
    }

    public void Z() {
        View view = this.f19480b;
        if (view == null || view.getVisibility() != 0 || this.f19463w == null || !d0()) {
            return;
        }
        A(false);
        g.i iVar = this.f19498t;
        if (iVar != null) {
            iVar.a(this.f19463w.getText());
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.g
    public void b(JoinGameUser joinGameUser) {
        X(joinGameUser, false);
    }

    public View.OnClickListener b0() {
        return this.H;
    }

    public boolean d0() {
        DishWheelView dishWheelView = this.f19462v;
        return dishWheelView == null || !dishWheelView.g();
    }

    public void e0() {
        LiveLuckyUserUpdateMessage.GameInfo gameInfo;
        int i9 = 0;
        for (JoinGameUser joinGameUser : this.f19490l) {
            if (!"0".equals(joinGameUser.getCurrentUserId())) {
                i9++;
            }
        }
        Object[] objArr = new Object[2];
        objArr[0] = Integer.valueOf(i9);
        objArr[1] = Integer.valueOf(this.f19483e == 0 ? this.f19485g : this.f19490l.size());
        String format = String.format("%s/%s", objArr);
        TextView textView = this.D;
        if (textView != null) {
            textView.setText(format);
        }
        this.f19463w.setText(format);
        this.f19464x.setText(String.valueOf(this.f19486h * i9));
        this.C.setImageResource(R.mipmap.icon_mini_game_close);
        LiveGameCreateResponse liveGameCreateResponse = this.f19494p;
        if ((liveGameCreateResponse != null && liveGameCreateResponse.getFlag() == 1) || ((gameInfo = this.f19495q) != null && gameInfo.getFlag() == 1)) {
            this.f19480b.findViewById(R.id.game_diamond_bg).setBackgroundResource(R.mipmap.mini_game_cry_icon);
        } else {
            this.f19480b.findViewById(R.id.game_diamond_bg).setBackgroundResource(R.mipmap.mini_game_diamond_icon);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.g
    public void f() {
        super.f();
        View view = this.I;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void l0() {
        if (this.f19483e >= 0) {
            this.f19497s = true;
            this.f19479a.setVisibility(8);
        }
    }

    public void m0() {
        if (this.f19483e >= 0) {
            this.f19497s = false;
            if (d0()) {
                View view = this.I;
                if (view == null || view.getVisibility() == 8) {
                    this.f19479a.setVisibility(0);
                }
            }
        }
    }

    public void n0() {
        View view = this.f19480b;
        if (view != null && view.getVisibility() == 0 && d0()) {
            A(false);
        }
    }

    public void p0(boolean z10, List<? extends JoinGameUser> list) {
        q0(z10, list, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x0375  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void q0(boolean r10, java.util.List<? extends com.guochao.faceshow.aaspring.beans.JoinGameUser> r11, int r12) {
        /*
            Method dump skipped, instructions count: 956
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.game.f.q0(boolean, java.util.List, int):void");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.g
    public void s() {
        super.s();
        ViewStub viewStub = this.f19479a;
        if (viewStub != null) {
            viewStub.setVisibility(8);
        }
        g.i iVar = this.f19498t;
        if (iVar != null) {
            iVar.c(this.f19480b);
        }
        this.D = null;
        DishWheelView dishWheelView = this.f19462v;
        if (dishWheelView != null) {
            dishWheelView.i();
        }
        ImageView imageView = this.f19465y;
        if (imageView != null) {
            imageView.setImageResource(R.mipmap.icon_mini_game_go_audience);
        }
        View view = this.I;
        if (view != null) {
            view.setVisibility(8);
        }
        FrameLayout frameLayout = this.f19466z;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
        }
        View view2 = this.G;
        if (view2 != null) {
            view2.setTranslationX(0.0f);
            this.G.setY(DensityUtil.dp2px(127.0f) + StatusBarHelper.getStatusbarHeight(this.f19479a.getContext()));
        }
        c9.a.i().d();
    }
}
