package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes2.dex */
public final class ActivityMyFriendsBinding implements ViewBinding {
    @NonNull
    public final RelativeLayout emptyLl;
    @NonNull
    public final RecyclerView mRecyclerView;
    @NonNull
    public final LinearLayout mainLayout;
    @NonNull
    public final TwinklingRefreshLayout refreshLayout;
    @NonNull
    private final LinearLayout rootView;

    private ActivityMyFriendsBinding(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout2, @NonNull TwinklingRefreshLayout twinklingRefreshLayout) {
        this.rootView = linearLayout;
        this.emptyLl = relativeLayout;
        this.mRecyclerView = recyclerView;
        this.mainLayout = linearLayout2;
        this.refreshLayout = twinklingRefreshLayout;
    }

    @NonNull
    public static ActivityMyFriendsBinding bind(@NonNull View view) {
        int i9 = R.id.empty_ll;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.empty_ll);
        if (relativeLayout != null) {
            i9 = R.id.mRecyclerView;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.mRecyclerView);
            if (recyclerView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i9 = R.id.refreshLayout;
                TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
                if (twinklingRefreshLayout != null) {
                    return new ActivityMyFriendsBinding(linearLayout, relativeLayout, recyclerView, linearLayout, twinklingRefreshLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityMyFriendsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityMyFriendsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_my_friends, viewGroup, false);
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
