package com.guochao.faceshow.mine.view;

import android.view.View;
import android.widget.ListView;
import androidx.annotation.UiThread;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes4.dex */
public class BlackListActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private BlackListActivity f25545c;

    @UiThread
    public BlackListActivity_ViewBinding(BlackListActivity blackListActivity, View view) {
        super(blackListActivity, view);
        this.f25545c = blackListActivity;
        blackListActivity.lvPeople = (ListView) c.d(view, R.id.lvPeople, "field 'lvPeople'", ListView.class);
        blackListActivity.refreshLayout = (SwipeRefreshLayout) c.d(view, R.id.refreshLayout, "field 'refreshLayout'", SwipeRefreshLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        BlackListActivity blackListActivity = this.f25545c;
        if (blackListActivity != null) {
            this.f25545c = null;
            blackListActivity.lvPeople = null;
            blackListActivity.refreshLayout = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
