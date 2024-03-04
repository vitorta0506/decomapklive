package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class UserFragMent_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private UserFragMent f22858b;

    @UiThread
    public UserFragMent_ViewBinding(UserFragMent userFragMent, View view) {
        this.f22858b = userFragMent;
        userFragMent.rcvRecommended = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_recommended, "field 'rcvRecommended'", RecyclerView.class);
        userFragMent.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        userFragMent.MusicLayout = butterknife.internal.c.c(view, R.id.rcv_music_list, "field 'MusicLayout'");
        userFragMent.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        userFragMent.srlRefresh = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.srl_refresh, "field 'srlRefresh'", SmartRefreshLayout.class);
        userFragMent.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UserFragMent userFragMent = this.f22858b;
        if (userFragMent != null) {
            this.f22858b = null;
            userFragMent.rcvRecommended = null;
            userFragMent.recyclerView = null;
            userFragMent.MusicLayout = null;
            userFragMent.refreshLayout = null;
            userFragMent.srlRefresh = null;
            userFragMent.emptyView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
