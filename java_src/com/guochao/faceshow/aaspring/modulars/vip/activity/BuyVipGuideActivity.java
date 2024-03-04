package com.guochao.faceshow.aaspring.modulars.vip.activity;

import android.view.View;
import androidx.fragment.app.FragmentTransaction;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipGuideParentFragment;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.views.VipSwitcherView;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.systemassistant.act.SystemAssistantAct;
import com.guochao.faceshow.systemassistant.data.AssistantUserInfo;
/* loaded from: classes3.dex */
public class BuyVipGuideActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    BuyVipGuideParentFragment f23302a;

    /* renamed from: b  reason: collision with root package name */
    private int f23303b;
    @BindView
    public View bgTitleLay;
    @BindView
    public VipSwitcherView mVipSwitcherView;

    /* loaded from: classes3.dex */
    class a extends v.d {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            AssistantUserInfo.OfficialUserData officialUserData = new AssistantUserInfo.OfficialUserData();
            officialUserData.userId = Integer.parseInt(fb.a.c());
            SystemAssistantAct.A0(BuyVipGuideActivity.this.getActivity(), officialUserData, 2);
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BuyVipGuideActivity buyVipGuideActivity = BuyVipGuideActivity.this;
            buyVipGuideActivity.mVipSwitcherView.setCurrentItem(buyVipGuideActivity.f23303b);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_buy_vip_guide;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        GCEventUtils.track(GCEventUtils.OPEN_VIP);
        this.f23303b = getIntent().getIntExtra("currentItem", 2);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        BuyVipGuideParentFragment buyVipGuideParentFragment = new BuyVipGuideParentFragment();
        this.f23302a = buyVipGuideParentFragment;
        beginTransaction.replace(R.id.buy_vip_view, buyVipGuideParentFragment).commitAllowingStateLoss();
        this.mVipSwitcherView.c(this.f23302a);
        setTitle(getString(R.string.to_be_vip), R.color.black_222222);
        findViewById(R.id.float_title_back).setBackground(null);
        if (this.mTitleBarHelper != null) {
            setEndIcon(R.mipmap.vip_service);
            setLeftBackIcon(R.mipmap.icon_little_back);
            this.mTitleBarHelper.setOnRightIconClickListener(new a());
        }
        setStatusBarTextBlack(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        if (this.f23303b == 1) {
            this.mVipSwitcherView.post(new b());
        }
    }
}
