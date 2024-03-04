package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes2.dex */
public final class ActivityLiveAreaMoreBinding implements ViewBinding {
    @NonNull
    public final ImageView emptyView;
    @NonNull
    public final RecyclerView recyclerView;
    @NonNull
    public final SmartRefreshLayout refreshLayout;
    @NonNull
    private final LinearLayout rootView;

    private ActivityLiveAreaMoreBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView, @NonNull SmartRefreshLayout smartRefreshLayout) {
        this.rootView = linearLayout;
        this.emptyView = imageView;
        this.recyclerView = recyclerView;
        this.refreshLayout = smartRefreshLayout;
    }

    @NonNull
    public static ActivityLiveAreaMoreBinding bind(@NonNull View view) {
        int i9 = R.id.empty_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.empty_view);
        if (imageView != null) {
            i9 = R.id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
            if (recyclerView != null) {
                i9 = R.id.refresh_layout;
                SmartRefreshLayout smartRefreshLayout = (SmartRefreshLayout) ViewBindings.findChildViewById(view, R.id.refresh_layout);
                if (smartRefreshLayout != null) {
                    return new ActivityLiveAreaMoreBinding((LinearLayout) view, imageView, recyclerView, smartRefreshLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityLiveAreaMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityLiveAreaMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_live_area_more, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
