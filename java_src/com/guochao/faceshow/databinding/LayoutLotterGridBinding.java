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
public final class LayoutLotterGridBinding implements ViewBinding {
    @NonNull
    public final FrameLayout center;
    @NonNull
    public final LinearLayout gridViewGroup;
    @NonNull
    private final FrameLayout rootView;

    private LayoutLotterGridBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout) {
        this.rootView = frameLayout;
        this.center = frameLayout2;
        this.gridViewGroup = linearLayout;
    }

    @NonNull
    public static LayoutLotterGridBinding bind(@NonNull View view) {
        int i9 = R.id.center;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.center);
        if (frameLayout != null) {
            i9 = R.id.grid_view_group;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.grid_view_group);
            if (linearLayout != null) {
                return new LayoutLotterGridBinding((FrameLayout) view, frameLayout, linearLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutLotterGridBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLotterGridBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_lotter_grid, viewGroup, false);
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
