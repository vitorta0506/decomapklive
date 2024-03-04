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
/* loaded from: classes2.dex */
public final class LayoutRanklistHeaderBinding implements ViewBinding {
    @NonNull
    public final LinearLayout contentArea;
    @NonNull
    private final LinearLayout rootView;

    private LayoutRanklistHeaderBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.contentArea = linearLayout2;
    }

    @NonNull
    public static LayoutRanklistHeaderBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_area);
        if (linearLayout != null) {
            return new LayoutRanklistHeaderBinding((LinearLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.content_area)));
    }

    @NonNull
    public static LayoutRanklistHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutRanklistHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_ranklist_header, viewGroup, false);
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
