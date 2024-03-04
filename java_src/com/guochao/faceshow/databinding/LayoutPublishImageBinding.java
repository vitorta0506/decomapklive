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
/* loaded from: classes2.dex */
public final class LayoutPublishImageBinding implements ViewBinding {
    @NonNull
    public final LinearLayout publishImageLay;
    @NonNull
    private final LinearLayout rootView;
    @NonNull
    public final RecyclerView rvContent;

    private LayoutPublishImageBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView) {
        this.rootView = linearLayout;
        this.publishImageLay = linearLayout2;
        this.rvContent = recyclerView;
    }

    @NonNull
    public static LayoutPublishImageBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_content);
        if (recyclerView != null) {
            return new LayoutPublishImageBinding(linearLayout, linearLayout, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.rv_content)));
    }

    @NonNull
    public static LayoutPublishImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPublishImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_publish_image, viewGroup, false);
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
