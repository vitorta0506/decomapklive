package com.guochao.faceshow.aaspring.modulars.live.game.luckynumber;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveGameBean;
import com.guochao.faceshow.aaspring.beans.LiveGameExtras;
import com.guochao.faceshow.aaspring.beans.LiveGamePollDetail;
import com.guochao.faceshow.aaspring.beans.LiveGameUserInfo;
import com.guochao.faceshow.aaspring.beans.LuckyNumberStartGameBean;
import com.guochao.faceshow.aaspring.beans.ShareContentBean;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.BaseLiveGameFragment;
import com.guochao.faceshow.aaspring.modulars.live.game.JoinGameDialog;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGameConfig;
import com.guochao.faceshow.aaspring.modulars.live.game.LiveGamePlayer;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberGameView;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.PollNumberLayout;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameJoinMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameLuckyResultMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.model.LiveGameSwitchSeatMessage;
import com.guochao.faceshow.aaspring.modulars.live.game.p;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.IMEUtils;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.SoundPoolManager;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.utils.UrlUtils;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.SoftKeyBoardUtils;
import com.guochao.faceshow.views.e;
import com.opensource.svgaplayer.SVGADrawable;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import d9.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.jetbrains.annotations.NotNull;
import p9.a;
import vh.o;
/* loaded from: classes3.dex */
public class LuckyNumberFragment extends BaseLiveGameFragment {

    /* renamed from: g  reason: collision with root package name */
    GameShareFragment f19531g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f19532h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f19533i;
    @BindView
    ImageView ivNumberCoin;

    /* renamed from: j  reason: collision with root package name */
    PollNumberLayout f19534j;

    /* renamed from: k  reason: collision with root package name */
    PollNumberLayout f19535k;

    /* renamed from: l  reason: collision with root package name */
    private LuckyNumberStartGameBean f19536l;
    @BindView
    View mContentView;
    @BindView
    EditText mEditText;
    @BindView
    View mFloatInputView;
    @BindView
    View mFloatInputView2;
    @BindView
    LuckyNumberGameView mRecyclerView;
    @BindView
    TextView mTextDiamondsCount;
    @BindView
    TextView mTextViewInputSubmit;
    @BindView
    TextView mTextViewInputTitle;
    @BindView
    TextView mTextViewUserCount;
    @BindView
    View mViewBg;
    @BindView
    View mViewInputArea;
    @BindView
    View mViewStartGame;

    /* renamed from: n  reason: collision with root package name */
    private boolean f19538n;

    /* renamed from: p  reason: collision with root package name */
    private ImageView f19540p;

    /* renamed from: q  reason: collision with root package name */
    private SVGAImageView f19541q;

    /* renamed from: r  reason: collision with root package name */
    p f19542r;

    /* renamed from: s  reason: collision with root package name */
    private LuckyNumberWinDialog f19543s;

    /* renamed from: t  reason: collision with root package name */
    private List<? extends LiveGamePlayer> f19544t;

    /* renamed from: u  reason: collision with root package name */
    private int f19545u;

    /* renamed from: v  reason: collision with root package name */
    private int f19546v;

    /* renamed from: m  reason: collision with root package name */
    boolean f19537m = false;

    /* renamed from: o  reason: collision with root package name */
    private Runnable f19539o = new e();

    /* renamed from: w  reason: collision with root package name */
    boolean f19547w = false;

    /* renamed from: x  reason: collision with root package name */
    int f19548x = 15;

    /* renamed from: y  reason: collision with root package name */
    Runnable f19549y = new l();

    /* renamed from: z  reason: collision with root package name */
    View.OnClickListener f19550z = new d();

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<LuckyNumberStartGameBean> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LuckyNumberStartGameBean luckyNumberStartGameBean, @NonNull FaceCastBaseResponse<LuckyNumberStartGameBean> faceCastBaseResponse) {
            LuckyNumberFragment.this.f19373e = faceCastBaseResponse.getSelectTime();
            LuckyNumberFragment.this.l2(luckyNumberStartGameBean, null, false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LuckyNumberStartGameBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements SVGAParser.ParseCompletion {
        b() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            LuckyNumberFragment.this.f19540p.setVisibility(4);
            LuckyNumberFragment.this.f19541q.setVisibility(0);
            SVGADrawable sVGADrawable = new SVGADrawable(sVGAVideoEntity);
            SvgaImageViewUtils.fitScreenWidth(sVGAVideoEntity, LuckyNumberFragment.this.f19541q);
            LuckyNumberFragment.this.f19541q.setImageDrawable(sVGADrawable);
            LuckyNumberFragment.this.f19541q.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements o<Integer, Object> {
        c() {
        }

        @Override // vh.o
        /* renamed from: a */
        public Object apply(Integer num) throws Exception {
            LuckyNumberFragment.this.f19541q.getMVideoItem().release();
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LuckyNumberFragment.this.m2(view);
        }
    }

    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LuckyNumberFragment luckyNumberFragment = LuckyNumberFragment.this;
            luckyNumberFragment.m2(luckyNumberFragment.mViewStartGame);
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c9.a.i().f();
        }
    }

    /* loaded from: classes3.dex */
    class g implements OnApplyWindowInsetsListener {
        g() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) LuckyNumberFragment.this.mViewInputArea.getLayoutParams();
            if (systemWindowInsetBottom == 0) {
                LuckyNumberFragment.this.f19537m = false;
                layoutParams.gravity = 17;
                layoutParams.bottomMargin = 0;
            } else {
                LuckyNumberFragment.this.f19537m = true;
                layoutParams.gravity = 81;
                layoutParams.bottomMargin = systemWindowInsetBottom + DensityUtil.dp2px(15.0f);
            }
            LuckyNumberFragment.this.mViewInputArea.setLayoutParams(layoutParams);
            return windowInsetsCompat;
        }
    }

    /* loaded from: classes3.dex */
    class h implements InputFilter {
        h() {
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i9, int i10, Spanned spanned, int i11, int i12) {
            if (charSequence == null) {
                return charSequence;
            }
            char[] charArray = charSequence.toString().toCharArray();
            StringBuilder sb2 = new StringBuilder();
            for (char c10 : charArray) {
                if (c10 <= '9' && c10 >= '0') {
                    sb2.append(c10);
                }
            }
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19559a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements JoinGameDialog.a {

            /* renamed from: com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.LuckyNumberFragment$i$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class C0186a extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
                C0186a() {
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                /* renamed from: a */
                public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
                    if (num == null) {
                        num = -1;
                    }
                    if (num.intValue() != 0) {
                        if (num.intValue() != 4 && num.intValue() != 3) {
                            if (num.intValue() == 6) {
                                LuckyNumberFragment.this.showToast(R.string.minigame_position_has_been_used);
                            } else if (num.intValue() == 2) {
                                LuckyNumberFragment.this.o2();
                            }
                        } else {
                            LuckyNumberFragment.this.showToast(R.string.minigame_seat_isfull);
                        }
                        onFailure(new g7.a<>(new Exception(""), -1));
                        return;
                    }
                    i iVar = i.this;
                    LuckyNumberFragment.this.mRecyclerView.n(iVar.f19559a);
                    if (((BaseLiveGameFragment) LuckyNumberFragment.this).f19370b.getFlag() == 1) {
                        p9.a.g().e().setTokenNum(Math.max(0, p9.a.g().e().getTokenNum() - ((BaseLiveGameFragment) LuckyNumberFragment.this).f19371c.a()));
                    } else {
                        p9.a.g().e().getDiamond();
                        p9.a.g().d(((BaseLiveGameFragment) LuckyNumberFragment.this).f19371c.a());
                    }
                    LuckyNumberFragment luckyNumberFragment = LuckyNumberFragment.this;
                    d9.g gVar = luckyNumberFragment.f19372d;
                    LiveGameBean liveGameBean = ((BaseLiveGameFragment) luckyNumberFragment).f19370b;
                    i iVar2 = i.this;
                    gVar.sendLiveMessage(LiveMessageModelFactory.createLiveGameJoinMessage(liveGameBean, iVar2.f19559a, ((BaseLiveGameFragment) LuckyNumberFragment.this).f19371c, faceCastBaseResponse.getSelectTime()), (e.a<Boolean>) null);
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
                public void onCompleted() {
                    super.onCompleted();
                    LuckyNumberFragment.this.f19547w = false;
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<Integer> aVar) {
                }
            }

            a() {
            }

            @Override // com.guochao.faceshow.aaspring.modulars.live.game.JoinGameDialog.a
            public void onConfirm() {
                LuckyNumberFragment luckyNumberFragment = LuckyNumberFragment.this;
                if (luckyNumberFragment.f19547w) {
                    return;
                }
                luckyNumberFragment.f19547w = true;
                luckyNumberFragment.post("tokens/game/v2/round/joinGame").y("position", Integer.valueOf(i.this.f19559a)).M(new C0186a());
            }
        }

        i(int i9) {
            this.f19559a = i9;
        }

        @Override // p9.a.f
        public void onCustomRecharge() {
            LuckyNumberFragment.this.o2();
        }

        @Override // p9.a.f
        public void onResponse() {
            JoinGameDialog.W1(((BaseActivity) LuckyNumberFragment.this.getActivity()).getSupportFragmentManager(), ((BaseLiveGameFragment) LuckyNumberFragment.this).f19371c.a(), new a(), ((BaseLiveGameFragment) LuckyNumberFragment.this).f19370b.getFlag());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements e.a {
        j() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (!z10 || LuckyNumberFragment.this.getActivity() == null) {
                return;
            }
            Intent e02 = MyWalletActivity.e0(LuckyNumberFragment.this.getActivity(), 1, com.guochao.faceshow.aaspring.modulars.googlepay.d.X(LuckyNumberFragment.this.f19372d.getCurrentLiveRoom().getBroadCasterUserId()));
            e02.putExtra("isToken", String.valueOf(((BaseLiveGameFragment) LuckyNumberFragment.this).f19370b.getFlag()));
            LuckyNumberFragment.this.getActivity().startActivity(e02);
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends com.guochao.faceshow.aaspring.base.http.callback.c<LuckyNumberStartGameBean> {
        k() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LuckyNumberStartGameBean luckyNumberStartGameBean, @NonNull FaceCastBaseResponse<LuckyNumberStartGameBean> faceCastBaseResponse) {
            if (luckyNumberStartGameBean == null || luckyNumberStartGameBean.getAppNumGameJoin() == null) {
                return;
            }
            LuckyNumberFragment.this.f19373e = faceCastBaseResponse.getSelectTime();
            LuckyNumberFragment.this.l2(luckyNumberStartGameBean, null, false);
            d9.g gVar = LuckyNumberFragment.this.f19372d;
            if (gVar instanceof BaseLiveRoomFragment) {
                ((BaseLiveRoomFragment) gVar).d4();
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            LuckyNumberFragment.this.f19532h = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LuckyNumberStartGameBean> aVar) {
        }
    }

    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (LuckyNumberFragment.this.getActivity() == null) {
                return;
            }
            LuckyNumberFragment luckyNumberFragment = LuckyNumberFragment.this;
            int i9 = luckyNumberFragment.f19548x - 1;
            luckyNumberFragment.f19548x = i9;
            if (i9 <= 0) {
                if (luckyNumberFragment.getActivity() != null) {
                    LuckyNumberFragment luckyNumberFragment2 = LuckyNumberFragment.this;
                    if (luckyNumberFragment2.f19537m) {
                        SoftKeyBoardUtils.closeSoftKeyBoardNow(luckyNumberFragment2.getActivity(), LuckyNumberFragment.this.mEditText);
                    }
                }
                LuckyNumberFragment.this.p2();
                return;
            }
            TextView textView = LuckyNumberFragment.this.mTextViewInputSubmit;
            textView.setText(String.format(LuckyNumberFragment.this.getString(R.string.submit) + "%s", "(" + LuckyNumberFragment.this.f19548x + "s)"));
            ((BaseLiveGameFragment) LuckyNumberFragment.this).f19369a.postDelayed(LuckyNumberFragment.this.f19549y, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LuckyNumberFragment luckyNumberFragment = LuckyNumberFragment.this;
            if (luckyNumberFragment.mEditText == null || luckyNumberFragment.getActivity() == null || LuckyNumberFragment.this.getActivity().isFinishing() || LuckyNumberFragment.this.getActivity().isDestroyed()) {
                return;
            }
            LuckyNumberFragment luckyNumberFragment2 = LuckyNumberFragment.this;
            if (luckyNumberFragment2.f19537m) {
                return;
            }
            d9.g gVar = luckyNumberFragment2.f19372d;
            if ((gVar instanceof BaseLiveRoomFragment) && ((BaseLiveRoomFragment) gVar).mLiveScrollToClearScreenView != null && ((BaseLiveRoomFragment) gVar).mLiveScrollToClearScreenView.f23817c) {
                return;
            }
            luckyNumberFragment2.mEditText.requestFocus();
            LuckyNumberFragment.this.mEditText.requestFocusFromTouch();
            IMEUtils.showIME(LuckyNumberFragment.this.mEditText);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l2(@Nullable LuckyNumberStartGameBean luckyNumberStartGameBean, @Nullable LiveGameUserInfo liveGameUserInfo, boolean z10) {
        if (luckyNumberStartGameBean == null) {
            return;
        }
        LuckyNumberStartGameBean luckyNumberStartGameBean2 = this.f19536l;
        if (luckyNumberStartGameBean2 == null || luckyNumberStartGameBean2.getEndNum() == 0 || (this.f19536l.getStartNum() <= luckyNumberStartGameBean.getStartNum() && this.f19536l.getEndNum() >= luckyNumberStartGameBean.getEndNum())) {
            this.f19536l = luckyNumberStartGameBean;
            v2();
            if (luckyNumberStartGameBean.getGuessResult() == 1) {
                if (Objects.equals(luckyNumberStartGameBean.getUserId(), b8.e.g().c().getUserId())) {
                    LiveGameUserInfo self = LiveGameUserInfo.self();
                    if (!c9.a.i().j() && !this.f19372d.getCurrentLiveRoom().isBroadCaster()) {
                        P();
                    } else {
                        this.f19543s = LuckyNumberWinDialog.a2(getChildFragmentManager(), this.f19372d.getCurrentLiveRoom(), self, luckyNumberStartGameBean.getPrizeNum(), luckyNumberStartGameBean.getRateNum(), luckyNumberStartGameBean.getInputNum(), this.f19370b.getFlag());
                    }
                    int prizeNum = luckyNumberStartGameBean.getPrizeNum();
                    if (p0() != null && p0().getFlag() != 0) {
                        p9.a.g().e().setTokenNum(p9.a.g().e().getTokenNum() + prizeNum);
                    } else {
                        p9.a.g().b(prizeNum);
                    }
                    if (this.f19372d.getCurrentLiveRoom().isBroadCaster()) {
                        try {
                            int parseInt = Integer.parseInt(luckyNumberStartGameBean.getRateNum());
                            if (p0() != null && p0().getFlag() != 0) {
                                p9.a.g().e().setTokenNum(p9.a.g().e().getTokenNum() + parseInt);
                            }
                            p9.a.g().b(parseInt);
                        } catch (Exception unused) {
                        }
                    }
                    LiveMessageModel<LiveGameLuckyResultMessage> createLuckyNumberResultMessage = LiveMessageModelFactory.createLuckyNumberResultMessage(this.f19370b, luckyNumberStartGameBean, self, this.f19373e);
                    if (z10) {
                        return;
                    }
                    this.f19372d.sendLiveMessage(createLuckyNumberResultMessage, (e.a<Boolean>) null);
                    this.f19372d.onReceiveLiveMessage(createLuckyNumberResultMessage);
                    return;
                } else if (!c9.a.i().j() && !this.f19372d.getCurrentLiveRoom().isBroadCaster()) {
                    P();
                    return;
                } else {
                    this.f19543s = LuckyNumberWinDialog.a2(getChildFragmentManager(), this.f19372d.getCurrentLiveRoom(), liveGameUserInfo, luckyNumberStartGameBean.getPrizeNum(), luckyNumberStartGameBean.getRateNum(), luckyNumberStartGameBean.getInputNum(), this.f19370b.getFlag());
                    return;
                }
            }
            this.f19534j.i(luckyNumberStartGameBean.getStartNum(), true, true);
            this.f19535k.i(luckyNumberStartGameBean.getEndNum(), true, true);
            this.mRecyclerView.t(luckyNumberStartGameBean, 15);
            if (Objects.equals(luckyNumberStartGameBean.getAppNumGameJoin().getUserId(), b8.e.g().c().getUserId())) {
                u2(luckyNumberStartGameBean.getStartNum(), luckyNumberStartGameBean.getEndNum(), 15);
            } else if (this.mViewInputArea.getVisibility() == 0) {
                p2();
                LuckyNumberGameView luckyNumberGameView = this.mRecyclerView;
                LuckyNumberGameView.LuckyNumberPlayerHolder g10 = luckyNumberGameView.g(luckyNumberGameView.f19579i);
                if (g10 != null) {
                    g10.d();
                }
            }
            if (z10) {
                return;
            }
            this.f19372d.sendLiveMessage(LiveMessageModelFactory.createLuckyNumberResultMessage(this.f19370b, luckyNumberStartGameBean, liveGameUserInfo, this.f19373e), (e.a<Boolean>) null);
        }
    }

    public static LuckyNumberFragment n2(LiveGameBean liveGameBean, LiveGameConfig liveGameConfig, @Nullable List<? extends LiveGamePlayer> list) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", liveGameBean);
        bundle.putParcelable("config", liveGameConfig);
        bundle.putParcelableArrayList("players", (ArrayList) list);
        LuckyNumberFragment luckyNumberFragment = new LuckyNumberFragment();
        luckyNumberFragment.setArguments(bundle);
        return luckyNumberFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o2() {
        if (this.f19370b.getFlag() != 0 || getActivity() == null) {
            new com.guochao.faceshow.views.e(getActivity(), new j()).b(getActivity().getString(this.f19370b.getFlag() == 1 ? R.string.shuijing_not_enough : R.string.charge_notifi)).l().show();
        } else {
            RechargeDialog.showDialog(getActivity().getSupportFragmentManager(), 1, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p2() {
        this.mViewInputArea.setVisibility(8);
        this.f19542r.c(true);
        V1();
    }

    private LiveGameExtras r2() {
        LiveGameExtras liveGameExtras = new LiveGameExtras();
        liveGameExtras.setStarted(this.f19533i);
        liveGameExtras.setTotalCount(this.f19371c.b());
        liveGameExtras.setCurrentCount(this.mRecyclerView.f());
        return liveGameExtras;
    }

    private void s2(View view, int... iArr) {
        for (int i9 : iArr) {
            view.findViewById(i9).setTag(R.id.click_view, this.f19550z);
        }
    }

    private void t2(int i9, int i10) {
        TextView textView = this.mTextViewInputTitle;
        if (textView != null) {
            textView.setText(getString(R.string.minigame_please_input_middle, String.valueOf(i9), String.valueOf(i10)));
        }
    }

    private void u2(int i9, int i10, int i11) {
        if (this.mViewInputArea.getVisibility() == 0) {
            return;
        }
        if (this.f19545u == i9 && this.f19546v == i10) {
            return;
        }
        this.f19545u = i9;
        this.f19546v = i10;
        R1();
        this.f19542r.c(false);
        this.mViewInputArea.setVisibility(0);
        this.f19548x = i11;
        this.mEditText.setText("");
        t2(i9, i10);
        this.f19369a.removeCallbacks(this.f19549y);
        if (!this.f19537m && c9.a.i().j()) {
            this.mEditText.requestFocus();
            this.mEditText.requestFocusFromTouch();
            BaseLiveActivity baseLiveActivity = (BaseLiveActivity) getActivity();
            if (baseLiveActivity != null && baseLiveActivity.k0()) {
                baseLiveActivity.i0();
            }
            this.f19369a.postDelayed(new m(), 200L);
        }
        this.f19549y.run();
        GameShareFragment gameShareFragment = this.f19531g;
        if (gameShareFragment == null || !gameShareFragment.isAdded()) {
            return;
        }
        this.f19531g.dismissAllowingStateLoss();
    }

    private void x2(boolean z10) {
        if (z10) {
            if (!isAdded() || isDetached()) {
                return;
            }
            SvgaImageViewUtils.getParser().decodeFromInputStream(getResources().openRawResource(R.raw.poll_number), "lottery", new b(), true);
            return;
        }
        this.f19541q.setVisibility(8);
        this.f19540p.setVisibility(0);
        if (this.f19541q.getMVideoItem() != null) {
            io.reactivex.k.just(1).map(new c()).subscribeOn(di.a.b()).subscribe();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseLiveGameFragment, d9.k
    public void J1(LiveGamePollDetail liveGamePollDetail, long j10) {
        if (j10 < this.f19373e) {
            return;
        }
        this.f19373e = j10;
        w2(liveGamePollDetail.getGameRoundVo());
        LuckyNumberStartGameBean luckyNumberStartGameBean = this.f19536l;
        if (luckyNumberStartGameBean != null) {
            if (luckyNumberStartGameBean.getEndNum() != 0 && (this.f19536l.getStartNum() < liveGamePollDetail.getStartNum() || this.f19536l.getEndNum() > liveGamePollDetail.getEndNum())) {
                this.f19536l.setStartNum(liveGamePollDetail.getStartNum());
                this.f19536l.setEndNum(liveGamePollDetail.getEndNum());
                t2(this.f19536l.getStartNum(), this.f19536l.getEndNum());
                PollNumberLayout pollNumberLayout = this.f19535k;
                if (pollNumberLayout != null && this.f19534j != null) {
                    pollNumberLayout.i(liveGamePollDetail.getEndNum(), true, true);
                    this.f19534j.i(liveGamePollDetail.getStartNum(), true, true);
                }
            }
        } else {
            LuckyNumberStartGameBean luckyNumberStartGameBean2 = new LuckyNumberStartGameBean();
            this.f19536l = luckyNumberStartGameBean2;
            luckyNumberStartGameBean2.setStartNum(liveGamePollDetail.getStartNum());
            this.f19536l.setEndNum(liveGamePollDetail.getEndNum());
            if (this.f19534j != null && liveGamePollDetail.getStartNum() != 0) {
                this.f19534j.i(liveGamePollDetail.getStartNum(), true, false);
            }
            if (this.f19535k != null && liveGamePollDetail.getEndNum() != 0) {
                this.f19535k.i(liveGamePollDetail.getEndNum(), true, false);
            }
            t2(this.f19536l.getStartNum(), this.f19536l.getEndNum());
        }
        for (int i9 = 0; i9 < liveGamePollDetail.getGameRoundVo().size(); i9++) {
            LiveGamePollDetail.LiveGameRoundDetail liveGameRoundDetail = liveGamePollDetail.getGameRoundVo().get(i9);
            if (liveGameRoundDetail != null && Objects.equals(b8.e.g().c().getUserId(), liveGameRoundDetail.getCurrentUserId()) && liveGameRoundDetail.isActive()) {
                u2(liveGamePollDetail.getStartNum(), liveGamePollDetail.getEndNum(), (int) ((((float) (15000 - liveGameRoundDetail.getRestActiveTime())) / 1000.0f) + 1.0f));
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseLiveGameFragment
    public void S1(LiveGameJoinMessage liveGameJoinMessage) {
        super.S1(liveGameJoinMessage);
        this.mRecyclerView.v(liveGameJoinMessage.getPosition(), liveGameJoinMessage.getLiveGameUserInfo());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseLiveGameFragment
    public void T1(LiveGameSwitchSeatMessage liveGameSwitchSeatMessage) {
        super.T1(liveGameSwitchSeatMessage);
        this.mRecyclerView.m(liveGameSwitchSeatMessage);
    }

    @Override // d9.k
    public void V() {
        d9.g gVar = this.f19372d;
        if (gVar != null) {
            gVar.c1(this.f19370b, this, r2(), true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseLiveGameFragment, d9.k
    public boolean W() {
        View view = this.mViewInputArea;
        return view != null && view.getVisibility() == 0;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseLiveGameFragment, d9.k
    public boolean e() {
        LuckyNumberWinDialog luckyNumberWinDialog = this.f19543s;
        return luckyNumberWinDialog != null && luckyNumberWinDialog.P1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_lucky_number;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        s2(view, R.id.rule, R.id.record, R.id.invite, R.id.mini_game, R.id.start_game);
        this.f19542r = new p(view.findViewById(R.id.content), view.findViewById(R.id.parent), this.mEditText);
        d9.g gVar = this.f19372d;
        if ((gVar instanceof BaseLiveRoomFragment) && ((BaseLiveRoomFragment) gVar).mLiveScrollToClearScreenView != null) {
            ((BaseLiveRoomFragment) gVar).mLiveScrollToClearScreenView.j(view.findViewById(R.id.parent), new f());
        }
        view.findViewById(R.id.content).setOnTouchListener(this.f19542r);
        View findViewById = view.findViewById(R.id.first_number);
        View findViewById2 = view.findViewById(R.id.second_number);
        this.f19540p = (ImageView) view.findViewById(R.id.normal_poll_number);
        this.f19541q = (SVGAImageView) view.findViewById(R.id.svga_poll_number);
        PollNumberLayout pollNumberLayout = new PollNumberLayout(findViewById);
        this.f19534j = pollNumberLayout;
        pollNumberLayout.i(0, false, false);
        PollNumberLayout pollNumberLayout2 = new PollNumberLayout(findViewById2);
        this.f19535k = pollNumberLayout2;
        pollNumberLayout2.i(0, false, false);
        this.mRecyclerView.setLiveGameHandler(this);
        this.mRecyclerView.s(this.f19371c);
        this.mRecyclerView.o(this.mFloatInputView, this.mFloatInputView2);
        if (this.f19372d != null && this.f19371c.e()) {
            if (this.f19372d.getCurrentLiveRoom().isBroadCaster()) {
                this.mRecyclerView.u(Collections.singletonList(getCurrentUser()));
            } else {
                List<? extends LiveGamePlayer> list = this.f19544t;
                if (list != null && !list.isEmpty()) {
                    this.mRecyclerView.u(this.f19544t);
                }
            }
        }
        d9.g gVar2 = this.f19372d;
        if (gVar2 != null && gVar2.getCurrentLiveRoom().isBroadCaster()) {
            this.mViewStartGame.setVisibility(0);
            this.mViewBg.setBackgroundResource(R.mipmap.lucky_number_bg_unstart);
            this.mViewBg.setPadding(DensityUtil.dp2px(15.0f), DensityUtil.dp2px(25.0f), DensityUtil.dp2px(15.0f), DensityUtil.dp2px(15.0f));
        } else {
            this.mViewStartGame.setVisibility(8);
            this.mViewBg.setBackgroundResource(R.mipmap.lucky_number_bg);
        }
        ViewCompat.setOnApplyWindowInsetsListener(view, new g());
        d9.g gVar3 = this.f19372d;
        if (gVar3 != null) {
            gVar3.c1(this.f19370b, this, r2(), true);
        }
        this.mEditText.setFilters(new InputFilter[]{new h()});
        if (this.f19371c.f()) {
            v2();
        }
        this.ivNumberCoin.setImageResource(this.f19370b.getFlag() == 1 ? R.mipmap.icon_gamecoin : R.mipmap.lucky_number_diamonds);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // d9.k
    public void m1() {
        d9.g gVar = this.f19372d;
        if (gVar != null) {
            gVar.c1(this.f19370b, this, r2(), false);
        }
    }

    public void m2(View view) {
        d9.g gVar;
        switch (view.getId()) {
            case R.id.invite /* 2131363163 */:
                if (this.mViewInputArea.getVisibility() == 0) {
                    return;
                }
                SoundPoolManager.getInstance().playDefaultButtonSound();
                ShareContentBean shareContentBean = new ShareContentBean();
                shareContentBean.setShareType(0);
                shareContentBean.setContent(getString(R.string.live_game_hare_text));
                shareContentBean.setImgUrl(null);
                shareContentBean.setShortUrl(UrlUtils.appendInviter(this.f19370b.getShareUrl()));
                shareContentBean.setTitle(getString(R.string.live_game_share_title));
                GameShareFragment T1 = GameShareFragment.T1(shareContentBean, this.f19372d.getCurrentLiveRoom(), this.f19370b);
                T1.show(getChildFragmentManager(), "gameShare");
                this.f19531g = T1;
                return;
            case R.id.mini_game /* 2131363720 */:
                SoundPoolManager.getInstance().playDefaultButtonSound();
                c9.a.i().f();
                return;
            case R.id.record /* 2131364171 */:
                if (this.mViewInputArea.getVisibility() == 0) {
                    return;
                }
                c9.a.i().o(getActivity(), this.f19370b);
                return;
            case R.id.rule /* 2131364322 */:
                if (this.mViewInputArea.getVisibility() == 0) {
                    return;
                }
                c9.a.i().p(getActivity(), this.f19370b);
                return;
            case R.id.start_game /* 2131364563 */:
                if (!DisableDoubleClickUtils.canClick(view) || this.f19532h || this.f19533i || (gVar = this.f19372d) == null || !gVar.getCurrentLiveRoom().isBroadCaster()) {
                    return;
                }
                if (this.mRecyclerView.f() < 2) {
                    showToast(R.string.minigame_person_limit);
                    return;
                }
                this.f19369a.removeCallbacks(this.f19539o);
                this.f19532h = true;
                post("tokens/game/v2/round/startNumberGameNew").M(new k());
                return;
            default:
                return;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getParentFragment() instanceof d9.g) {
            this.f19372d = (d9.g) getParentFragment();
        }
        if (getActivity() instanceof d9.g) {
            this.f19372d = (d9.g) getActivity();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f19370b = (LiveGameBean) getArguments().getParcelable("data");
            this.f19371c = (LiveGameConfig) getArguments().getParcelable("config");
            this.f19544t = getArguments().getParcelableArrayList("players");
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseLiveGameFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (getView() != null) {
            d9.g gVar = this.f19372d;
            if ((gVar instanceof BaseLiveRoomFragment) && ((BaseLiveRoomFragment) gVar).mLiveScrollToClearScreenView != null) {
                ((BaseLiveRoomFragment) gVar).mLiveScrollToClearScreenView.e(getView().findViewById(R.id.parent));
            }
        }
        x2(false);
        PollNumberLayout pollNumberLayout = this.f19534j;
        if (pollNumberLayout != null) {
            pollNumberLayout.h();
        }
        PollNumberLayout pollNumberLayout2 = this.f19535k;
        if (pollNumberLayout2 != null) {
            pollNumberLayout2.h();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public PostRequest post(String str) {
        d9.g gVar = this.f19372d;
        if (gVar == null) {
            return super.post(str);
        }
        LiveRoomModel currentLiveRoom = gVar.getCurrentLiveRoom();
        return super.post(str).y("liveId", currentLiveRoom.getLiveRoomId()).y("gameInfoId", Long.valueOf(this.f19370b.getGameInfoId())).y("roundId", this.f19371c.d()).y("streamId", currentLiveRoom.getStreamId());
    }

    @Override // d9.k
    public boolean q(LiveGamePollDetail liveGamePollDetail) {
        LiveGameConfig liveGameConfig;
        return this.f19370b != null && liveGamePollDetail.getGameInfoId() == this.f19370b.getGameInfoId() && (liveGameConfig = this.f19371c) != null && Objects.equals(liveGameConfig.d(), liveGamePollDetail.getRoundId());
    }

    public void q2(int i9) {
        if (getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed()) {
            return;
        }
        p9.a.g().q(this, this.f19371c.a(), this.f19370b.getFlag() == 1, true, new i(i9));
    }

    @OnClick
    public void submitNumber(View view) {
        SoundPoolManager.getInstance().playDefaultButtonSound();
        String obj = this.mEditText.getText().toString();
        try {
            int parseInt = Integer.parseInt(obj);
            if (parseInt < this.f19536l.getEndNum() && parseInt > this.f19536l.getStartNum()) {
                this.f19548x = 0;
                this.f19549y.run();
                this.f19369a.removeCallbacks(this.f19549y);
                post("tokens/game/v2/round/guessNum").y("inputNum", obj).y("startNum", Integer.valueOf(this.f19536l.getStartNum())).y("endNum", Integer.valueOf(this.f19536l.getEndNum())).M(new a());
                return;
            }
            showToast(R.string.minigame_number_error);
        } catch (Exception unused) {
        }
    }

    public void v2() {
        if (this.f19533i) {
            return;
        }
        this.f19533i = true;
        this.mViewBg.setPadding(DensityUtil.dp2px(10.0f), DensityUtil.dp2px(25.0f), DensityUtil.dp2px(10.0f), DensityUtil.dp2px(10.0f));
        c9.a.i().v(true);
        this.mViewStartGame.setVisibility(8);
        this.mRecyclerView.setGamedStarted(this.f19533i);
        x2(true);
        this.mViewBg.setBackgroundResource(R.mipmap.lucky_number_bg);
    }

    public void w2(List<? extends LiveGamePlayer> list) {
        LuckyNumberGameView luckyNumberGameView = this.mRecyclerView;
        if (luckyNumberGameView == null || list == null) {
            return;
        }
        if (luckyNumberGameView.f() != list.size()) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                LiveGamePlayer liveGamePlayer = list.get(i9);
                int gameSeatCurrentPlayerPosition = liveGamePlayer.getGameSeatCurrentPlayerPosition();
                if (this.mRecyclerView.i(liveGamePlayer.getCurrentUserId()) == -1) {
                    this.mRecyclerView.p(gameSeatCurrentPlayerPosition, liveGamePlayer);
                }
            }
        }
        y2();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage] */
    @Override // com.guochao.faceshow.aaspring.modulars.live.game.BaseLiveGameFragment, d9.m
    public boolean y(d9.g gVar, LiveMessageModel<?> liveMessageModel) {
        if (!isAdded() || getActivity() == null || liveMessageModel == null || liveMessageModel.getData() == null) {
            return false;
        }
        long serverTime = liveMessageModel.getData().getServerTime();
        String cmd = liveMessageModel.getCmd();
        cmd.hashCode();
        if (!cmd.equals("LIVE_LUCKY_NUMBER_RESULT") && !cmd.equals("LIVE_LUCKY_NUMBER_RESULT_V_COIN")) {
            return super.y(gVar, liveMessageModel);
        }
        LiveGameLuckyResultMessage liveGameLuckyResultMessage = (LiveGameLuckyResultMessage) liveMessageModel.getData();
        if (serverTime < this.f19373e) {
            return false;
        }
        this.f19373e = serverTime;
        l2(liveGameLuckyResultMessage.getLiveGameStartBean(), liveGameLuckyResultMessage.getWinner(), true);
        if (liveGameLuckyResultMessage.getWinner() != null) {
            this.f19372d.onReceiveLiveMessage(liveMessageModel);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y2() {
        d9.g gVar = this.f19372d;
        if (gVar == null || gVar.getCurrentLiveRoom() == null) {
            return;
        }
        int f10 = this.mRecyclerView.f();
        this.mTextViewUserCount.setText(String.format("%s/%s", Integer.valueOf(f10), Integer.valueOf(this.f19371c.b())));
        this.mTextDiamondsCount.setText(String.valueOf(this.f19371c.a() * f10));
        this.f19372d.M(f10, this.f19371c.b());
        if (this.f19372d.getCurrentLiveRoom().isBroadCaster()) {
            if (f10 >= 2 && f10 < this.f19371c.b() && !this.f19538n) {
                this.f19369a.postDelayed(this.f19539o, 120000L);
                this.f19538n = true;
            } else if (f10 == this.f19371c.b()) {
                this.f19369a.removeCallbacks(this.f19539o);
                this.f19369a.postDelayed(this.f19539o, 3000L);
                this.f19538n = true;
            }
        }
    }
}
