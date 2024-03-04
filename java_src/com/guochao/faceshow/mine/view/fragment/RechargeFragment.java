package com.guochao.faceshow.mine.view.fragment;

import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.googlepay.ui.RechargeHeader;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.mine.model.MyWalletBean;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.views.ObservableScrollView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.util.HashMap;
import p9.a;
import wd.j;
/* loaded from: classes4.dex */
public class RechargeFragment extends BaseFragment implements com.guochao.faceshow.mine.view.fragment.a, a.e {

    /* renamed from: a  reason: collision with root package name */
    private RechargeHeader f25980a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f25981b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f25982c;

    /* renamed from: d  reason: collision with root package name */
    private View f25983d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f25984e;

    /* renamed from: f  reason: collision with root package name */
    private View f25985f;

    /* renamed from: g  reason: collision with root package name */
    public RechargeBuzzCoinFragment f25986g;

    /* renamed from: h  reason: collision with root package name */
    private RechargeGameCoinFragment f25987h;

    /* renamed from: i  reason: collision with root package name */
    private SmartRefreshLayout f25988i;

    /* renamed from: j  reason: collision with root package name */
    private ObservableScrollView f25989j;

    /* renamed from: k  reason: collision with root package name */
    private String f25990k;

    /* renamed from: l  reason: collision with root package name */
    public int f25991l;

    /* renamed from: m  reason: collision with root package name */
    private int f25992m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f25993n;

    /* renamed from: o  reason: collision with root package name */
    public MyWalletBean f25994o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f25995p;
    @BindView
    ImageView titleBar;

    /* loaded from: classes4.dex */
    class a implements zd.d {
        a() {
        }

        @Override // zd.d
        public void a(@NonNull j jVar) {
            if (RechargeFragment.this.f25992m == 0) {
                return;
            }
            RechargeFragment.this.f25987h.loadData(1);
        }
    }

    /* loaded from: classes4.dex */
    class b implements ObservableScrollView.a {
        b() {
        }

        @Override // com.guochao.faceshow.views.ObservableScrollView.a
        public void a(ObservableScrollView observableScrollView, int i9, int i10, int i11, int i12) {
            FragmentActivity activity = RechargeFragment.this.getActivity();
            if ((activity instanceof MyWalletActivity) && RechargeFragment.this.isVisible() && ((MyWalletActivity) activity).getCurrentPage() == 0) {
                if (i10 > 10) {
                    RechargeFragment.this.titleBar.setAlpha(1.0f);
                    RechargeFragment.this.f25993n = true;
                } else {
                    RechargeFragment.this.titleBar.setAlpha(0.0f);
                    RechargeFragment.this.f25993n = false;
                }
                if (RechargeFragment.this.getActivity() instanceof MyWalletActivity) {
                    RechargeFragment rechargeFragment = RechargeFragment.this;
                    if (rechargeFragment.f25993n) {
                        ((MyWalletActivity) rechargeFragment.getActivity()).i0();
                    } else {
                        ((MyWalletActivity) rechargeFragment.getActivity()).k0();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<MyWalletBean> {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(MyWalletBean myWalletBean, @NonNull FaceCastBaseResponse<MyWalletBean> faceCastBaseResponse) {
            if (myWalletBean == null) {
                return;
            }
            if (myWalletBean.getDiamond() == null) {
                myWalletBean.setDiamond(0);
            }
            RechargeFragment.this.f25994o = myWalletBean;
            int intValue = myWalletBean.getDiamond().intValue();
            if (RechargeFragment.this.U1() != null) {
                RechargeFragment.this.U1().b(intValue);
            }
            p9.a.g().t(myWalletBean);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            RechargeFragment.this.f25995p = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<MyWalletBean> aVar) {
            LogUtils.e("zune", String.format("%s...%s", Integer.valueOf(aVar.a()), aVar.c()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X1(View view) {
        Z1(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y1(View view) {
        Z1(1);
    }

    @Override // com.guochao.faceshow.mine.view.fragment.a
    public void E0() {
    }

    public RechargeHeader U1() {
        return this.f25980a;
    }

    public SmartRefreshLayout V1() {
        return this.f25988i;
    }

    public void W1() {
        if (this.f25995p) {
            return;
        }
        this.f25995p = true;
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, getCurrentUser().getUserId());
        getHttpClient().b(this, Contants.MY_WALLET_DATA, hashMap, new c());
    }

    public void Z1(int i9) {
        if (getContext() == null) {
            return;
        }
        this.f25992m = i9;
        if (i9 == 0) {
            this.f25982c.setTextSize(2, 16.0f);
            TextViewUtils.setCustomBold(R.dimen.text_bold_level_4, this.f25982c);
            this.f25984e.setTextSize(2, 14.0f);
            TextViewUtils.setCustomBold(R.dimen.text_bold_level_1, this.f25984e);
            this.f25983d.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(getContext(), R.color.color_app_primary)));
            this.f25985f.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(getContext(), R.color.record_time_zone_tip_color)));
            this.f25983d.setVisibility(8);
            this.f25985f.setVisibility(8);
            getChildFragmentManager().beginTransaction().replace(R.id.fragment_container, this.f25986g).commitAllowingStateLoss();
        } else if (i9 != 1) {
        } else {
            this.f25982c.setTextSize(2, 14.0f);
            TextViewUtils.setCustomBold(R.dimen.text_bold_level_1, this.f25982c);
            this.f25984e.setTextSize(2, 16.0f);
            TextViewUtils.setCustomBold(R.dimen.text_bold_level_4, this.f25984e);
            this.f25983d.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(getContext(), R.color.record_time_zone_tip_color)));
            this.f25985f.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(getContext(), R.color.color_app_primary)));
            this.f25983d.setVisibility(8);
            this.f25985f.setVisibility(8);
            getChildFragmentManager().beginTransaction().replace(R.id.fragment_container, this.f25987h).commitAllowingStateLoss();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().e(true).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_recharge;
    }

    @Override // com.guochao.faceshow.mine.view.fragment.a
    public void i0() {
        ImageView imageView = this.titleBar;
        if (imageView != null) {
            imageView.setAlpha(this.f25993n ? 1.0f : 0.0f);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f25981b = arguments.getBoolean("interceptClick", false);
            this.f25990k = arguments.getString("isToken");
            this.f25991l = arguments.getInt("scene");
        }
        this.f25982c = (TextView) view.findViewById(R.id.tv_normal_coin);
        this.f25983d = view.findViewById(R.id.normal_icon_indicator);
        ((ViewGroup) this.f25982c.getParent()).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.mine.view.fragment.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RechargeFragment.this.X1(view2);
            }
        });
        this.f25984e = (TextView) view.findViewById(R.id.tv_game_coin);
        this.f25985f = view.findViewById(R.id.game_coin_indicator);
        ((ViewGroup) this.f25984e.getParent()).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.mine.view.fragment.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RechargeFragment.this.Y1(view2);
            }
        });
        TextViewUtils.setCustomBold(this.f25984e, this.f25982c);
        SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) view.findViewById(R.id.refresh_layout);
        this.f25988i = smartRefreshLayout;
        smartRefreshLayout.f(false);
        this.f25988i.L(false);
        this.f25980a = new RechargeHeader(view.findViewById(R.id.recharge_header), this.f25981b);
        Z1("1".equals(this.f25990k) ? 1 : 0);
        if (V1() != null) {
            V1().T(new a());
        }
        ObservableScrollView observableScrollView = (ObservableScrollView) view.findViewById(R.id.scroll_view);
        this.f25989j = observableScrollView;
        observableScrollView.setScrollViewListener(new b());
        i0();
        ((TextView) view.findViewById(R.id.game_coin_number)).setText(String.valueOf(p9.a.g().e().getTokenNum()));
        ImageView imageView = this.titleBar;
        if (imageView != null) {
            imageView.getLayoutParams().height = (DensityUtil.dp2px(80.0f) - DensityUtil.dp2px(32.0f)) + StatusBarHelper.getStatusbarHeight(view.getContext());
        }
        p9.a.g().c(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f25986g = new RechargeBuzzCoinFragment();
        this.f25987h = RechargeGameCoinFragment.a2();
        if (getArguments() != null) {
            this.f25986g.onSetupResponse(getArguments().getBoolean("onSetupResponse"));
        }
    }

    @Override // p9.a.e
    public /* synthetic */ void onCrystalsChanged(int i9) {
        p9.b.a(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        p9.a.g().r(this);
    }

    @Override // p9.a.e
    public void onDiamondsChanged(int i9) {
        RechargeHeader rechargeHeader = this.f25980a;
        if (rechargeHeader != null) {
            rechargeHeader.b(i9);
        }
    }
}
