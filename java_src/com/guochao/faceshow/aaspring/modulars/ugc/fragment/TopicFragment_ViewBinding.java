package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class TopicFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private TopicFragment f22813b;

    @UiThread
    public TopicFragment_ViewBinding(TopicFragment topicFragment, View view) {
        this.f22813b = topicFragment;
        topicFragment.rcvRecommended = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_recommended, "field 'rcvRecommended'", RecyclerView.class);
        topicFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        topicFragment.MusicLayout = butterknife.internal.c.c(view, R.id.rcv_music_list, "field 'MusicLayout'");
        topicFragment.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        topicFragment.srlRefresh = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.srl_refresh, "field 'srlRefresh'", SmartRefreshLayout.class);
        topicFragment.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        TopicFragment topicFragment = this.f22813b;
        if (topicFragment != null) {
            this.f22813b = null;
            topicFragment.rcvRecommended = null;
            topicFragment.recyclerView = null;
            topicFragment.MusicLayout = null;
            topicFragment.refreshLayout = null;
            topicFragment.srlRefresh = null;
            topicFragment.emptyView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
