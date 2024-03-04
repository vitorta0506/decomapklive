package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutRankListBinding implements ViewBinding {
    @NonNull
    public final LinearLayout hourRank;
    @NonNull
    public final FrameLayout rankArea;
    @NonNull
    private final LinearLayout rootView;

    private LayoutRankListBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FrameLayout frameLayout) {
        this.rootView = linearLayout;
        this.hourRank = linearLayout2;
        this.rankArea = frameLayout;
    }

    @NonNull
    public static LayoutRankListBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.rank_area);
        if (frameLayout != null) {
            return new LayoutRankListBinding(linearLayout, linearLayout, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rank_area)));
    }

    @NonNull
    public static LayoutRankListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRankListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_rank_list, viewGroup, false);
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
