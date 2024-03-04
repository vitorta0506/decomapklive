package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class PlaceFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PlaceFragment f22795b;

    @UiThread
    public PlaceFragment_ViewBinding(PlaceFragment placeFragment, View view) {
        this.f22795b = placeFragment;
        placeFragment.rcvRecommended = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_recommended, "field 'rcvRecommended'", RecyclerView.class);
        placeFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        placeFragment.MusicLayout = butterknife.internal.c.c(view, R.id.rcv_music_list, "field 'MusicLayout'");
        placeFragment.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        placeFragment.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
        placeFragment.srlRefresh = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.srl_refresh, "field 'srlRefresh'", SmartRefreshLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PlaceFragment placeFragment = this.f22795b;
        if (placeFragment != null) {
            this.f22795b = null;
            placeFragment.rcvRecommended = null;
            placeFragment.recyclerView = null;
            placeFragment.MusicLayout = null;
            placeFragment.refreshLayout = null;
            placeFragment.emptyView = null;
            placeFragment.srlRefresh = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
