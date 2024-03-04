package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes2.dex */
public final class ActivityUserCenterContributionBinding implements ViewBinding {
    @NonNull
    public final RecyclerView mRecyclerView;
    @NonNull
    public final TwinklingRefreshLayout refreshLayout;
    @NonNull
    private final RelativeLayout rootView;
    @NonNull
    public final TextView title;
    @NonNull
    public final Toolbar toolbar;

    private ActivityUserCenterContributionBinding(@NonNull RelativeLayout relativeLayout, @NonNull RecyclerView recyclerView, @NonNull TwinklingRefreshLayout twinklingRefreshLayout, @NonNull TextView textView, @NonNull Toolbar toolbar) {
        this.rootView = relativeLayout;
        this.mRecyclerView = recyclerView;
        this.refreshLayout = twinklingRefreshLayout;
        this.title = textView;
        this.toolbar = toolbar;
    }

    @NonNull
    public static ActivityUserCenterContributionBinding bind(@NonNull View view) {
        int i9 = R.id.mRecyclerView;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.mRecyclerView);
        if (recyclerView != null) {
            i9 = R.id.refreshLayout;
            TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
            if (twinklingRefreshLayout != null) {
                i9 = 16908310;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, 16908310);
                if (textView != null) {
                    i9 = R.id.toolbar;
                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                    if (toolbar != null) {
                        return new ActivityUserCenterContributionBinding((RelativeLayout) view, recyclerView, twinklingRefreshLayout, textView, toolbar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityUserCenterContributionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserCenterContributionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_user_center_contribution, viewGroup, false);
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
