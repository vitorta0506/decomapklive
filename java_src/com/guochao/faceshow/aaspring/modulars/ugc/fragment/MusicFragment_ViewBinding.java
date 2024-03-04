package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class MusicFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private MusicFragment f22739b;

    /* renamed from: c  reason: collision with root package name */
    private View f22740c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MusicFragment f22741a;

        a(MusicFragment musicFragment) {
            this.f22741a = musicFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22741a.onViewClicked();
        }
    }

    @UiThread
    public MusicFragment_ViewBinding(MusicFragment musicFragment, View view) {
        this.f22739b = musicFragment;
        musicFragment.rcvRecommended = (RecyclerView) butterknife.internal.c.d(view, R.id.rcv_recommended, "field 'rcvRecommended'", RecyclerView.class);
        musicFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        musicFragment.MusicLayout = butterknife.internal.c.c(view, R.id.rcv_music_list, "field 'MusicLayout'");
        musicFragment.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView' and method 'onViewClicked'");
        musicFragment.emptyView = c10;
        this.f22740c = c10;
        c10.setOnClickListener(new a(musicFragment));
        musicFragment.srlRefresh = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.srl_refresh, "field 'srlRefresh'", SmartRefreshLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MusicFragment musicFragment = this.f22739b;
        if (musicFragment != null) {
            this.f22739b = null;
            musicFragment.rcvRecommended = null;
            musicFragment.recyclerView = null;
            musicFragment.MusicLayout = null;
            musicFragment.refreshLayout = null;
            musicFragment.emptyView = null;
            musicFragment.srlRefresh = null;
            this.f22740c.setOnClickListener(null);
            this.f22740c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
