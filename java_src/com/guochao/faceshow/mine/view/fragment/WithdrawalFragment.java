package com.guochao.faceshow.mine.view.fragment;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.fragment.e;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.personal.FreezeCauseActivity;
import com.guochao.faceshow.aaspring.modulars.personal.WithdrawalDiamondActivity;
import com.guochao.faceshow.aaspring.modulars.personal.WithdrawalMoneyActivity;
import com.guochao.faceshow.aaspring.utils.FontUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.mine.model.MyWalletBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.ObservableScrollView;
import com.guochao.faceshow.web.WebViewActivity;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class WithdrawalFragment extends BaseFragment implements com.guochao.faceshow.mine.view.fragment.a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f26015a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f26016b = true;
    @BindView
    TextView btnDiamond;
    @BindView
    TextView btnMoney;

    /* renamed from: c  reason: collision with root package name */
    private boolean f26017c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f26018d;
    @BindView
    ImageView ivFreezeBalance;
    @BindView
    LinearLayout llBottom;
    @BindView
    LinearLayout llFreeze;
    @BindView
    LinearLayout llFreezeLayout;
    @BindView
    LinearLayout llFreezeTip;
    @BindView
    ObservableScrollView scrollView;
    @BindView
    ImageView titleBar;
    @BindView
    TextView tvAvailableBalance;
    @BindView
    TextView tvFcontunt1;
    @BindView
    TextView tvFreezeBalance;
    @BindView
    TextView tvFreezeJia;
    @BindView
    TextView tvFreezeTip;
    @BindView
    TextView tvIntro;
    @BindView
    TextView tvWithdrawalOf;

    /* loaded from: classes4.dex */
    class a implements ObservableScrollView.a {

        /* renamed from: a  reason: collision with root package name */
        private int f26019a = 0;

        a() {
        }

        @Override // com.guochao.faceshow.views.ObservableScrollView.a
        public void a(ObservableScrollView observableScrollView, int i9, int i10, int i11, int i12) {
            int i13 = this.f26019a + i10;
            this.f26019a = i13;
            if (i13 > 10) {
                WithdrawalFragment.this.titleBar.setAlpha(1.0f);
                WithdrawalFragment.this.f26017c = true;
                return;
            }
            WithdrawalFragment.this.titleBar.setAlpha(0.0f);
            WithdrawalFragment.this.f26017c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent;
            if (WithdrawalFragment.this.f26016b) {
                intent = new Intent(WithdrawalFragment.this.getActivity(), WithdrawalDiamondActivity.class);
            } else {
                intent = new Intent(WithdrawalFragment.this.getActivity(), com.guochao.faceshow.mine.view.WithdrawalDiamondActivity.class);
            }
            intent.putExtra("isFreeze", WithdrawalFragment.this.f26015a);
            WithdrawalFragment.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent(WithdrawalFragment.this.getActivity(), WithdrawalMoneyActivity.class);
            intent.putExtra("isFreeze", WithdrawalFragment.this.f26015a);
            WithdrawalFragment.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<MyWalletBean> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable MyWalletBean myWalletBean, @NonNull FaceCastBaseResponse<MyWalletBean> faceCastBaseResponse) {
            if (!WithdrawalFragment.this.isAdded() || WithdrawalFragment.this.isDetached()) {
                return;
            }
            WithdrawalFragment.this.f26018d = true;
            if (myWalletBean != null) {
                p9.a.g().t(myWalletBean);
                TextView textView = WithdrawalFragment.this.tvFcontunt1;
                if (textView != null) {
                    textView.setText(String.valueOf(myWalletBean.getAvailableBalance() + myWalletBean.getWithDrawBalance() + myWalletBean.getFreezeNum()));
                }
                WithdrawalFragment.this.tvWithdrawalOf.setText(String.valueOf(myWalletBean.getWithDrawBalance()));
                if (myWalletBean.getAvailableBalance() == myWalletBean.getF()) {
                    WithdrawalFragment.this.f26015a = false;
                } else {
                    WithdrawalFragment.this.f26015a = true;
                }
                if (WithdrawalFragment.this.f26016b) {
                    if (myWalletBean.getFreezeNum() > 0) {
                        WithdrawalFragment.this.llFreeze.setVisibility(0);
                        WithdrawalFragment.this.tvFreezeJia.setVisibility(0);
                        WithdrawalFragment.this.tvFreezeTip.setVisibility(0);
                        WithdrawalFragment.this.tvAvailableBalance.setText(String.valueOf(myWalletBean.getAvailableBalance()));
                        WithdrawalFragment.this.tvFreezeBalance.setText(String.valueOf(myWalletBean.getFreezeNum()));
                        return;
                    }
                    WithdrawalFragment.this.tvFreezeJia.setVisibility(8);
                    WithdrawalFragment.this.tvFreezeTip.setVisibility(8);
                    WithdrawalFragment.this.llFreeze.setVisibility(8);
                    WithdrawalFragment.this.tvAvailableBalance.setText(String.valueOf(myWalletBean.getAvailableBalance()));
                    return;
                }
                WithdrawalFragment.this.llFreeze.setVisibility(8);
                WithdrawalFragment.this.tvFreezeJia.setVisibility(8);
                WithdrawalFragment.this.tvFreezeTip.setVisibility(8);
                WithdrawalFragment.this.llFreeze.setVisibility(8);
                WithdrawalFragment.this.tvAvailableBalance.setText(String.valueOf(myWalletBean.getAvailableBalance()));
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyWalletBean> aVar) {
        }
    }

    private void U1() {
        post(Contants.MY_WALLET_DATA).M(new d());
    }

    private void initListener() {
        this.btnDiamond.setOnClickListener(new b());
        this.btnMoney.setOnClickListener(new c());
    }

    @Override // com.guochao.faceshow.mine.view.fragment.a
    public void E0() {
        i0();
        if (this.f26018d) {
            return;
        }
        U1();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public com.guochao.faceshow.aaspring.base.fragment.e getFragmentConfig() {
        return new e.a().e(true).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_withdrawal;
    }

    @Override // com.guochao.faceshow.mine.view.fragment.a
    public void i0() {
        ImageView imageView = this.titleBar;
        if (imageView != null) {
            imageView.setAlpha(this.f26017c ? 1.0f : 0.0f);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Feature requireFeature = FeatureKt.requireFeature(Feature.F_WITHDRAW_DIAMOND);
        Feature requireFeature2 = FeatureKt.requireFeature(Feature.F_WITHDRAW_MONEY);
        if (requireFeature.isAvailable()) {
            this.btnDiamond.setVisibility(0);
        }
        if (requireFeature2.isAvailable()) {
            this.btnMoney.setVisibility(0);
        }
        initListener();
        FontUtils.setFont(this.tvFcontunt1, 3);
        this.tvIntro.setText(getString(R.string.packintroduceone));
        this.tvIntro.append(IOUtils.LINE_SEPARATOR_UNIX);
        this.tvIntro.append(getString(R.string.packintroducetwo));
        this.tvFcontunt1.setText(String.valueOf(SpUtils.getInt(getActivity(), Contants.FB, 0)));
        this.scrollView.setScrollViewListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @OnClick
    public void onClick(View view) {
        WebViewActivity.createBuilder().e(12).a(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f26018d) {
            U1();
        }
    }

    @OnClick
    public void onViewClicked() {
        startActivity(FreezeCauseActivity.class);
    }
}
