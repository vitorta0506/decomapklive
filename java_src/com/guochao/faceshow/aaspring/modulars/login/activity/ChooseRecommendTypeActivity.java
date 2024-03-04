package com.guochao.faceshow.aaspring.modulars.login.activity;

import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.beans.FriendSettingBean;
import com.guochao.faceshow.aaspring.beans.RecommendUser;
import com.guochao.faceshow.aaspring.manager.im.b;
import com.guochao.faceshow.aaspring.modulars.login.cloud.view.SoulPlanetsView;
import com.guochao.faceshow.aaspring.modulars.login.fragment.ChooseRecommendTypeFragment;
import com.guochao.faceshow.aaspring.modulars.login.fragment.RecommendUserFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ChooseRecommendTypeActivity extends BaseActivity implements ChooseRecommendTypeFragment.d, RecommendUserFragment.e {

    /* renamed from: a  reason: collision with root package name */
    ChooseRecommendTypeFragment f20203a;

    /* renamed from: b  reason: collision with root package name */
    RecommendUserFragment f20204b;

    /* renamed from: c  reason: collision with root package name */
    public List<FriendSettingBean> f20205c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    boolean f20206d;

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_choose_recommend_type;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.RecommendUserFragment.e
    public void i(SoulPlanetsView soulPlanetsView) {
        dismissProgressDialog();
        this.f20206d = true;
        findViewById(R.id.float_title_back).setVisibility(8);
        setLightStatusBar(false);
        EventTrackingUtils.getInstance().track("online_page");
        getSupportFragmentManager().beginTransaction().remove(this.f20203a).show(this.f20204b).setCustomAnimations(R.anim.fragment_enter, R.anim.fragment_exit, R.anim.fragment_pop_enter, R.anim.fragment_pop_exist).commitAllowingStateLoss();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("data");
        if (parcelableArrayListExtra != null) {
            this.f20205c.addAll(parcelableArrayListExtra);
        }
        EventTrackingUtils.getInstance().track("want_page");
        this.f20203a = new ChooseRecommendTypeFragment();
        this.f20204b = new RecommendUserFragment();
        getSupportFragmentManager().beginTransaction().add(R.id.content, this.f20204b).add(R.id.content, this.f20203a).commitAllowingStateLoss();
        setLightStatusBar(true);
        b.l0().Z();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.fragment.ChooseRecommendTypeFragment.d
    public void m(RecommendUser recommendUser) {
        this.f20204b.P1(recommendUser);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f20206d) {
            EventTrackingUtils.getInstance().track("skip_click");
            this.f20204b.skip(null);
        }
    }
}
