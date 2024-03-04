package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class ComprehensiveFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ComprehensiveFragment f22660b;

    /* renamed from: c  reason: collision with root package name */
    private View f22661c;

    /* renamed from: d  reason: collision with root package name */
    private View f22662d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ComprehensiveFragment f22663a;

        a(ComprehensiveFragment comprehensiveFragment) {
            this.f22663a = comprehensiveFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22663a.onViewClicked();
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ComprehensiveFragment f22665a;

        b(ComprehensiveFragment comprehensiveFragment) {
            this.f22665a = comprehensiveFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22665a.onVoiceRoomViewClicked();
        }
    }

    @UiThread
    public ComprehensiveFragment_ViewBinding(ComprehensiveFragment comprehensiveFragment, View view) {
        this.f22660b = comprehensiveFragment;
        comprehensiveFragment.cdlLayout = (CoordinatorLayout) butterknife.internal.c.d(view, R.id.cdl_layout, "field 'cdlLayout'", CoordinatorLayout.class);
        comprehensiveFragment.mAppBarLayout = (AppBarLayout) butterknife.internal.c.d(view, R.id.appbar_layout, "field 'mAppBarLayout'", AppBarLayout.class);
        comprehensiveFragment.rvDefault = (RecyclerView) butterknife.internal.c.d(view, R.id.tv_default, "field 'rvDefault'", RecyclerView.class);
        comprehensiveFragment.rvHostSearch = (RecyclerView) butterknife.internal.c.d(view, R.id.tv_host_search, "field 'rvHostSearch'", RecyclerView.class);
        comprehensiveFragment.rvHeadView = (RecyclerView) butterknife.internal.c.d(view, R.id.rv_head_view, "field 'rvHeadView'", RecyclerView.class);
        View c10 = butterknife.internal.c.c(view, R.id.rl_related_user_more, "field 'rlRelatedUserMore' and method 'onViewClicked'");
        comprehensiveFragment.rlRelatedUserMore = (RelativeLayout) butterknife.internal.c.a(c10, R.id.rl_related_user_more, "field 'rlRelatedUserMore'", RelativeLayout.class);
        this.f22661c = c10;
        c10.setOnClickListener(new a(comprehensiveFragment));
        comprehensiveFragment.rvVoiceRoomView = (RecyclerView) butterknife.internal.c.d(view, R.id.rv_voice_room_view, "field 'rvVoiceRoomView'", RecyclerView.class);
        View c11 = butterknife.internal.c.c(view, R.id.rl_related_voice_room_more, "field 'rlRelatedVoiceRoom' and method 'onVoiceRoomViewClicked'");
        comprehensiveFragment.rlRelatedVoiceRoom = (RelativeLayout) butterknife.internal.c.a(c11, R.id.rl_related_voice_room_more, "field 'rlRelatedVoiceRoom'", RelativeLayout.class);
        this.f22662d = c11;
        c11.setOnClickListener(new b(comprehensiveFragment));
        comprehensiveFragment.rvItemView = (RecyclerView) butterknife.internal.c.d(view, R.id.rv_item_view, "field 'rvItemView'", RecyclerView.class);
        comprehensiveFragment.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        comprehensiveFragment.tvUserTitle = (TextView) butterknife.internal.c.d(view, R.id.tv_user_title, "field 'tvUserTitle'", TextView.class);
        comprehensiveFragment.tvVoiceRoomTitle = (TextView) butterknife.internal.c.d(view, R.id.tv_voice_room_title, "field 'tvVoiceRoomTitle'", TextView.class);
        comprehensiveFragment.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
        comprehensiveFragment.tvRelatedDynamic = (TextView) butterknife.internal.c.d(view, R.id.tv_related_dynamic, "field 'tvRelatedDynamic'", TextView.class);
        comprehensiveFragment.srlRefresh = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.srl_refresh, "field 'srlRefresh'", SmartRefreshLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComprehensiveFragment comprehensiveFragment = this.f22660b;
        if (comprehensiveFragment != null) {
            this.f22660b = null;
            comprehensiveFragment.cdlLayout = null;
            comprehensiveFragment.mAppBarLayout = null;
            comprehensiveFragment.rvDefault = null;
            comprehensiveFragment.rvHostSearch = null;
            comprehensiveFragment.rvHeadView = null;
            comprehensiveFragment.rlRelatedUserMore = null;
            comprehensiveFragment.rvVoiceRoomView = null;
            comprehensiveFragment.rlRelatedVoiceRoom = null;
            comprehensiveFragment.rvItemView = null;
            comprehensiveFragment.refreshLayout = null;
            comprehensiveFragment.tvUserTitle = null;
            comprehensiveFragment.tvVoiceRoomTitle = null;
            comprehensiveFragment.emptyView = null;
            comprehensiveFragment.tvRelatedDynamic = null;
            comprehensiveFragment.srlRefresh = null;
            this.f22661c.setOnClickListener(null);
            this.f22661c = null;
            this.f22662d.setOnClickListener(null);
            this.f22662d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
