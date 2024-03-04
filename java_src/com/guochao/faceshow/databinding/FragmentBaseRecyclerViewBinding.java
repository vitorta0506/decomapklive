package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.FakeFooter;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentBaseRecyclerViewBinding implements ViewBinding {
    @NonNull
    public final FrameLayout recyclerContentArea;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final FakeFooter ugcFooter;

    private FragmentBaseRecyclerViewBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull RecyclerView recyclerView, @NonNull SmartRefreshLayout smartRefreshLayout, @NonNull FakeFooter fakeFooter) {
        this.rootView = frameLayout;
        this.recyclerContentArea = frameLayout2;
        this.recyclerView = recyclerView;
        this.refreshLayout = smartRefreshLayout;
        this.ugcFooter = fakeFooter;
    }

    @NonNull
    public static FragmentBaseRecyclerViewBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i9 = R.id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (recyclerView != null) {
            i9 = R.id.refresh_layout;
            SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
            if (smartRefreshLayout != null) {
                i9 = R.id.ugc_footer;
                FakeFooter fakeFooter = (FakeFooter) ViewBindings.findChildViewById(view, R.id.ugc_footer);
                if (fakeFooter != null) {
                    return new FragmentBaseRecyclerViewBinding(frameLayout, frameLayout, recyclerView, smartRefreshLayout, fakeFooter);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentBaseRecyclerViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentBaseRecyclerViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_base_recycler_view, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
