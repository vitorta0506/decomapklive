package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.game.luckynumber.pollnumber.DisTouchRecyclerView;
/* loaded from: classes2.dex */
public final class LayoutTagAreaContinentBinding implements ViewBinding {
    @NonNull
    public final DisTouchRecyclerView recyclerView;
    @NonNull
    private final LinearLayout rootView;

    private LayoutTagAreaContinentBinding(@NonNull LinearLayout linearLayout, @NonNull DisTouchRecyclerView disTouchRecyclerView) {
        this.rootView = linearLayout;
        this.recyclerView = disTouchRecyclerView;
    }

    @NonNull
    public static LayoutTagAreaContinentBinding bind(@NonNull View view) {
        DisTouchRecyclerView disTouchRecyclerView = (DisTouchRecyclerView) ViewBindings.findChildViewById(view, R.id.recycler_view);
        if (disTouchRecyclerView != null) {
            return new LayoutTagAreaContinentBinding((LinearLayout) view, disTouchRecyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.recycler_view)));
    }

    @NonNull
    public static LayoutTagAreaContinentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutTagAreaContinentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_tag_area_continent, viewGroup, false);
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
