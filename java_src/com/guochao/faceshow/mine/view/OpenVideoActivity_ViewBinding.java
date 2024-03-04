package com.guochao.faceshow.mine.view;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes4.dex */
public class OpenVideoActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private OpenVideoActivity f25659c;

    @UiThread
    public OpenVideoActivity_ViewBinding(OpenVideoActivity openVideoActivity, View view) {
        super(openVideoActivity, view);
        this.f25659c = openVideoActivity;
        openVideoActivity.mRecyclerView = (RecyclerView) c.d(view, R.id.gift_grid, "field 'mRecyclerView'", RecyclerView.class);
        openVideoActivity.refreshLayout = (TwinklingRefreshLayout) c.d(view, R.id.refreshLayout, "field 'refreshLayout'", TwinklingRefreshLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        OpenVideoActivity openVideoActivity = this.f25659c;
        if (openVideoActivity != null) {
            this.f25659c = null;
            openVideoActivity.mRecyclerView = null;
            openVideoActivity.refreshLayout = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
