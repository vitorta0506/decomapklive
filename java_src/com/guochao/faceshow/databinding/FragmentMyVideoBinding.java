package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
/* loaded from: classes2.dex */
public final class FragmentMyVideoBinding implements ViewBinding {
    @NonNull
    public final RecyclerView giftGrid;
    @NonNull
    public final LinearLayout llBg;
    @NonNull
    public final TwinklingRefreshLayout refreshLayout;
    @NonNull
    private final LinearLayout rootView;

    private FragmentMyVideoBinding(@NonNull LinearLayout linearLayout, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout2, @NonNull TwinklingRefreshLayout twinklingRefreshLayout) {
        this.rootView = linearLayout;
        this.giftGrid = recyclerView;
        this.llBg = linearLayout2;
        this.refreshLayout = twinklingRefreshLayout;
    }

    @NonNull
    public static FragmentMyVideoBinding bind(@NonNull View view) {
        int i9 = R.id.gift_grid;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.gift_grid);
        if (recyclerView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TwinklingRefreshLayout twinklingRefreshLayout = (TwinklingRefreshLayout) ViewBindings.findChildViewById(view, R.id.refreshLayout);
            if (twinklingRefreshLayout != null) {
                return new FragmentMyVideoBinding(linearLayout, recyclerView, linearLayout, twinklingRefreshLayout);
            }
            i9 = R.id.refreshLayout;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static FragmentMyVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentMyVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.fragment_my_video, viewGroup, false);
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
