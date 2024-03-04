package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.OldFooter;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentUgcComprehensiveBinding implements ViewBinding {
    @NonNull
    public final AppBarLayout appbarLayout;
    @NonNull
    public final CoordinatorLayout cdlLayout;
    @NonNull
    public final LayoutSearchEmptyViewBinding emptyView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    public final RelativeLayout rlRelatedUserMore;
    @NonNull
    public final RelativeLayout rlRelatedVoiceRoomMore;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final RecyclerView rvHeadView;
    @NonNull
    public final RecyclerView rvItemView;
    @NonNull
    public final RecyclerView rvVoiceRoomView;
    @NonNull
    public final SmartRefreshLayout srlRefresh;
    @NonNull
    public final RecyclerView tvDefault;
    @NonNull
    public final RecyclerView tvHostSearch;
    @NonNull
    public final TextView tvRelatedDynamic;
    @NonNull
    public final TextView tvUserTitle;
    @NonNull
    public final TextView tvVoiceRoomTitle;
    @NonNull
    public final OldFooter ugcFooter;

    private FragmentUgcComprehensiveBinding(@NonNull RelativeLayout relativeLayout, @NonNull AppBarLayout appBarLayout, @NonNull CoordinatorLayout coordinatorLayout, @NonNull LayoutSearchEmptyViewBinding layoutSearchEmptyViewBinding, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2, @NonNull RecyclerView recyclerView3, @NonNull SmartRefreshLayout smartRefreshLayout2, @NonNull RecyclerView recyclerView4, @NonNull RecyclerView recyclerView5, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull OldFooter oldFooter) {
        this.rootView = relativeLayout;
        this.appbarLayout = appBarLayout;
        this.cdlLayout = coordinatorLayout;
        this.emptyView = layoutSearchEmptyViewBinding;
        this.refreshLayout = smartRefreshLayout;
        this.rlRelatedUserMore = relativeLayout2;
        this.rlRelatedVoiceRoomMore = relativeLayout3;
        this.rvHeadView = recyclerView;
        this.rvItemView = recyclerView2;
        this.rvVoiceRoomView = recyclerView3;
        this.srlRefresh = smartRefreshLayout2;
        this.tvDefault = recyclerView4;
        this.tvHostSearch = recyclerView5;
        this.tvRelatedDynamic = textView;
        this.tvUserTitle = textView2;
        this.tvVoiceRoomTitle = textView3;
        this.ugcFooter = oldFooter;
    }

    @NonNull
    public static FragmentUgcComprehensiveBinding bind(@NonNull View view) {
        int i9 = R.id.appbar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar_layout);
        if (appBarLayout != null) {
            i9 = R.id.cdl_layout;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.cdl_layout);
            if (coordinatorLayout != null) {
                i9 = R.id.empty_view;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty_view);
                if (findChildViewById != null) {
                    LayoutSearchEmptyViewBinding bind = LayoutSearchEmptyViewBinding.bind(findChildViewById);
                    i9 = R.id.refresh_layout;
                    SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                    if (smartRefreshLayout != null) {
                        i9 = R.id.rl_related_user_more;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_related_user_more);
                        if (relativeLayout != null) {
                            i9 = R.id.rl_related_voice_room_more;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_related_voice_room_more);
                            if (relativeLayout2 != null) {
                                i9 = R.id.rv_head_view;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_head_view);
                                if (recyclerView != null) {
                                    i9 = R.id.rv_item_view;
                                    RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_item_view);
                                    if (recyclerView2 != null) {
                                        i9 = R.id.rv_voice_room_view;
                                        RecyclerView recyclerView3 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_voice_room_view);
                                        if (recyclerView3 != null) {
                                            i9 = R.id.srl_refresh;
                                            SmartRefreshLayout smartRefreshLayout2 = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.srl_refresh);
                                            if (smartRefreshLayout2 != null) {
                                                i9 = R.id.tv_default;
                                                RecyclerView recyclerView4 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.tv_default);
                                                if (recyclerView4 != null) {
                                                    i9 = R.id.tv_host_search;
                                                    RecyclerView recyclerView5 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.tv_host_search);
                                                    if (recyclerView5 != null) {
                                                        i9 = R.id.tv_related_dynamic;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_related_dynamic);
                                                        if (textView != null) {
                                                            i9 = R.id.tv_user_title;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_user_title);
                                                            if (textView2 != null) {
                                                                i9 = R.id.tv_voice_room_title;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_voice_room_title);
                                                                if (textView3 != null) {
                                                                    i9 = R.id.ugc_footer;
                                                                    OldFooter oldFooter = (OldFooter) ViewBindings.findChildViewById(view, R.id.ugc_footer);
                                                                    if (oldFooter != null) {
                                                                        return new FragmentUgcComprehensiveBinding((RelativeLayout) view, appBarLayout, coordinatorLayout, bind, smartRefreshLayout, relativeLayout, relativeLayout2, recyclerView, recyclerView2, recyclerView3, smartRefreshLayout2, recyclerView4, recyclerView5, textView, textView2, textView3, oldFooter);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentUgcComprehensiveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentUgcComprehensiveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_ugc_comprehensive, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
