package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentUgcMusicBinding implements ViewBinding {
    @NonNull
    public final LayoutSearchEmptyViewBinding emptyView;
    @NonNull
    public final FragmentBaseSearchRecyclerViewBinding rcvMusicList;
    @NonNull
    public final RecyclerView rcvRecommended;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final SmartRefreshLayout srlRefresh;

    private FragmentUgcMusicBinding(@NonNull RelativeLayout relativeLayout, @NonNull LayoutSearchEmptyViewBinding layoutSearchEmptyViewBinding, @NonNull FragmentBaseSearchRecyclerViewBinding fragmentBaseSearchRecyclerViewBinding, @NonNull RecyclerView recyclerView, @NonNull SmartRefreshLayout smartRefreshLayout) {
        this.rootView = relativeLayout;
        this.emptyView = layoutSearchEmptyViewBinding;
        this.rcvMusicList = fragmentBaseSearchRecyclerViewBinding;
        this.rcvRecommended = recyclerView;
        this.srlRefresh = smartRefreshLayout;
    }

    @NonNull
    public static FragmentUgcMusicBinding bind(@NonNull View view) {
        int i9 = R.id.empty_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.empty_view);
        if (findChildViewById != null) {
            LayoutSearchEmptyViewBinding bind = LayoutSearchEmptyViewBinding.bind(findChildViewById);
            i9 = R.id.rcv_music_list;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.rcv_music_list);
            if (findChildViewById2 != null) {
                FragmentBaseSearchRecyclerViewBinding bind2 = FragmentBaseSearchRecyclerViewBinding.bind(findChildViewById2);
                i9 = R.id.rcv_recommended;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcv_recommended);
                if (recyclerView != null) {
                    i9 = R.id.srl_refresh;
                    SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.srl_refresh);
                    if (smartRefreshLayout != null) {
                        return new FragmentUgcMusicBinding((RelativeLayout) view, bind, bind2, recyclerView, smartRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentUgcMusicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentUgcMusicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_ugc_music, viewGroup, false);
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
