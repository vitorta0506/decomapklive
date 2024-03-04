package com.guochao.faceshow.aaspring.modulars.live.activity;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class ContributionListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ContributionListActivity f18065c;

    @UiThread
    public ContributionListActivity_ViewBinding(ContributionListActivity contributionListActivity, View view) {
        super(contributionListActivity, view);
        this.f18065c = contributionListActivity;
        contributionListActivity.tablayout = (TabLayout) c.d(view, R.id.tablayout, "field 'tablayout'", TabLayout.class);
        contributionListActivity.viewpager = (ViewPager) c.d(view, R.id.viewpager, "field 'viewpager'", ViewPager.class);
        contributionListActivity.titleHelp = (ImageView) c.d(view, R.id.title_help, "field 'titleHelp'", ImageView.class);
        contributionListActivity.backIV = (ImageView) c.d(view, R.id.backIV, "field 'backIV'", ImageView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ContributionListActivity contributionListActivity = this.f18065c;
        if (contributionListActivity != null) {
            this.f18065c = null;
            contributionListActivity.tablayout = null;
            contributionListActivity.viewpager = null;
            contributionListActivity.titleHelp = null;
            contributionListActivity.backIV = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
