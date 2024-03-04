package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.modulars.live.fragment.AllContributionListFragment;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.adapter.ViewPagerAdapter;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ContributionListActivity extends BaseActivity {
    @BindView
    public ImageView backIV;

    /* renamed from: d  reason: collision with root package name */
    private String f18063d;
    @BindView
    TabLayout tablayout;
    @BindView
    ImageView titleHelp;
    @BindView
    ViewPager viewpager;

    /* renamed from: a  reason: collision with root package name */
    List<String> f18060a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    List<Fragment> f18061b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    String f18062c = "";

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ContributionListActivity.this.finish();
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_live_contribution_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (!BaseConfig.isChinese()) {
            this.titleHelp.setVisibility(4);
        }
        this.f18062c = getIntent().getStringExtra("live_id");
        this.f18063d = getIntent().getStringExtra("ownerid");
        this.f18060a.add(getString(R.string.live_contribution_title_day));
        this.f18060a.add(getString(R.string.live_contribution_title_week));
        this.f18060a.add(getString(R.string.live_contribution_title_total));
        AllContributionListFragment allContributionListFragment = new AllContributionListFragment();
        AllContributionListFragment allContributionListFragment2 = new AllContributionListFragment();
        AllContributionListFragment allContributionListFragment3 = new AllContributionListFragment();
        allContributionListFragment2.c2(this.f18063d, 1);
        allContributionListFragment.c2(this.f18063d, 2);
        allContributionListFragment3.c2(this.f18063d, 3);
        this.f18061b.add(allContributionListFragment2);
        this.f18061b.add(allContributionListFragment);
        this.f18061b.add(allContributionListFragment3);
        this.viewpager.setAdapter(new ViewPagerAdapter(getSupportFragmentManager(), this.f18061b, this.f18060a));
        this.tablayout.setupWithViewPager(this.viewpager);
        setLeftBackIcon(R.drawable.icon_left_back_sign_center);
        this.backIV.setOnClickListener(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }
}
