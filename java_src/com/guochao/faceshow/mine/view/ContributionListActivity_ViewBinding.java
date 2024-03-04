package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes4.dex */
public class ContributionListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ContributionListActivity f25571c;

    @UiThread
    public ContributionListActivity_ViewBinding(ContributionListActivity contributionListActivity, View view) {
        super(contributionListActivity, view);
        this.f25571c = contributionListActivity;
        contributionListActivity.title = (TextView) c.d(view, 16908310, "field 'title'", TextView.class);
        contributionListActivity.mRecyclerView = (RecyclerView) c.d(view, R.id.mRecyclerView, "field 'mRecyclerView'", RecyclerView.class);
        contributionListActivity.refreshLayout = (TwinklingRefreshLayout) c.d(view, R.id.refreshLayout, "field 'refreshLayout'", TwinklingRefreshLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ContributionListActivity contributionListActivity = this.f25571c;
        if (contributionListActivity != null) {
            this.f25571c = null;
            contributionListActivity.title = null;
            contributionListActivity.mRecyclerView = null;
            contributionListActivity.refreshLayout = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
