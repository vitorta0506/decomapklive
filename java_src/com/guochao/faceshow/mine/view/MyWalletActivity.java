package com.guochao.faceshow.mine.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.googlepay.f;
import com.guochao.faceshow.aaspring.modulars.personal.record.NewRecordFragment;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.adapter.ViewPagerAdapter;
import com.guochao.faceshow.mine.view.fragment.RechargeBuzzCoinFragment;
import com.guochao.faceshow.mine.view.fragment.RechargeFragment;
import com.guochao.faceshow.mine.view.fragment.WithdrawalFragment;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import java.util.ArrayList;
import java.util.List;
@Route(path = RouterPath.ROUTER_GC_MY_WALLET)
/* loaded from: classes4.dex */
public class MyWalletActivity extends BaseActivity implements d.x {

    /* renamed from: c  reason: collision with root package name */
    private boolean f25642c;

    /* renamed from: d  reason: collision with root package name */
    private String f25643d;
    @BindView
    ViewGroup floatTitleLay;
    @BindView
    TabLayout tablayout;
    @BindView
    RtlViewPager viewpager;

    /* renamed from: a  reason: collision with root package name */
    private List<String> f25640a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private List<Fragment> f25641b = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private int f25644e = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
            Fragment fragment = (Fragment) MyWalletActivity.this.f25641b.get(i9);
            if (fragment instanceof com.guochao.faceshow.mine.view.fragment.a) {
                ((com.guochao.faceshow.mine.view.fragment.a) fragment).i0();
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            Fragment fragment = (Fragment) MyWalletActivity.this.f25641b.get(i9);
            if (fragment instanceof com.guochao.faceshow.mine.view.fragment.a) {
                ((com.guochao.faceshow.mine.view.fragment.a) fragment).E0();
            }
            if (!(fragment instanceof NewRecordFragment) && (i9 != 0 || !(fragment instanceof RechargeFragment) || !((RechargeFragment) fragment).f25993n)) {
                MyWalletActivity.this.k0();
            } else {
                MyWalletActivity.this.i0();
            }
        }
    }

    public static Intent d0(Context context, int i9) {
        return e0(context, i9, null);
    }

    public static Intent e0(Context context, int i9, @Nullable String str) {
        Intent intent = new Intent(context, MyWalletActivity.class);
        intent.putExtra("scene", i9);
        intent.putExtra("extData", str);
        return intent;
    }

    private void l0() {
        this.viewpager.setAdapter(new ViewPagerAdapter(getSupportFragmentManager(), this.f25641b, this.f25640a));
        this.tablayout.setupWithViewPager(this.viewpager);
        this.viewpager.setOnPageChangeListener(new a());
        this.viewpager.setOffscreenPageLimit(this.f25641b.size() - 1);
    }

    public static void m0(Context context, int i9) {
        context.startActivity(d0(context, i9));
    }

    public static void start(Context context) {
        m0(context, 0);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        setResult(-1, getIntent());
        d.Z().I0(this);
    }

    public int g0() {
        return this.f25644e;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        a.C0147a c0147a = new a.C0147a(this);
        c0147a.b(true);
        return c0147a.a();
    }

    public int getCurrentPage() {
        RtlViewPager rtlViewPager = this.viewpager;
        if (rtlViewPager == null) {
            return 0;
        }
        return rtlViewPager.getCurrentItem();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_my_wallet;
    }

    public void i0() {
        getWindow();
        this.tablayout.setTextColor(Color.parseColor("#B2222222"));
        this.tablayout.setSelectTextColor(Color.parseColor("#222222"));
        this.tablayout.C(this.viewpager.getCurrentItem(), false);
        setLeftBackIcon(R.drawable.icon_left_back);
        setStatusBarTextBlack(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle((CharSequence) null);
        int intExtra = getIntent().getIntExtra("scene", 0);
        this.f25644e = intExtra;
        if (intExtra == -1) {
            alert("(仅测试可见)，本次进入钱包页面没有定义场景，请将进入入口告知开发...");
            return;
        }
        this.f25642c = getIntent().getBooleanExtra("interceptClick", false);
        this.f25643d = getIntent().getStringExtra("isToken");
        this.f25640a.add(getResources().getString(R.string.recharge_buzzcoin));
        RechargeFragment rechargeFragment = new RechargeFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("interceptClick", this.f25642c);
        bundle.putString("isToken", this.f25643d);
        bundle.putInt("scene", this.f25644e);
        rechargeFragment.setArguments(bundle);
        this.f25641b.add(rechargeFragment);
        Feature requireFeature = FeatureKt.requireFeature(Feature.F_WITHDRAW_DIAMOND);
        Feature requireFeature2 = FeatureKt.requireFeature(Feature.F_WITHDRAW_MONEY);
        if (!this.f25642c) {
            if (requireFeature.isAvailable() || requireFeature2.isAvailable()) {
                this.f25640a.add(getString(R.string.my_vallet_withdrawal));
                this.f25641b.add(new WithdrawalFragment());
            }
            this.f25640a.add(getString(R.string.transaction_record));
            this.f25641b.add(new NewRecordFragment());
        } else {
            ((ViewGroup.MarginLayoutParams) this.tablayout.getLayoutParams()).setMarginEnd(DensityUtil.dp2px(48.0f));
        }
        l0();
        d.Z().u0(this);
        d.Z().z0(false, 0);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            ((ImageButton) vVar.d()).setImageResource(R.drawable.icon_ugc_back_white);
            this.mTitleBarHelper.d().setTranslationY(DensityUtil.dp2px(4.5f));
        }
    }

    public void k0() {
        getWindow();
        this.tablayout.setTextColor(Color.parseColor("#B2ffffff"));
        this.tablayout.setSelectTextColor(Color.parseColor("#ffffff"));
        this.tablayout.C(this.viewpager.getCurrentItem(), false);
        setLeftBackIcon(R.drawable.icon_ugc_back_white);
        setStatusBarTextBlack(false);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onConsumeResponse() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        int intExtra = intent.getIntExtra("scene", 0);
        this.f25644e = intExtra;
        if (intExtra == -1) {
            alert("(仅测试可见)，本次进入钱包页面没有定义场景，请将进入入口告知开发...");
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onPayError(Throwable th2) {
        dismissProgressDialog();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onPayResponse() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onSetupResponse(boolean z10) {
        if (this.f25641b.isEmpty() || !(this.f25641b.get(0) instanceof RechargeFragment)) {
            return;
        }
        RechargeBuzzCoinFragment rechargeBuzzCoinFragment = ((RechargeFragment) this.f25641b.get(0)).f25986g;
        if (rechargeBuzzCoinFragment != null) {
            rechargeBuzzCoinFragment.onSetupResponse(z10);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("onSetupResponse", z10);
        bundle.putBoolean("interceptClick", this.f25642c);
        bundle.putString("isToken", this.f25643d);
        bundle.putInt("scene", this.f25644e);
        ((RechargeFragment) this.f25641b.get(0)).setArguments(bundle);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* synthetic */ void onSubscribeFailed() {
        f.d(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* synthetic */ void onSubscribeSuccess() {
        f.e(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* synthetic */ void startSubscribe() {
        f.f(this);
    }
}
