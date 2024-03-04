package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutPasterSelectViewBinding implements ViewBinding {
    @NonNull
    public final ImageView ivPaster;
    @NonNull
    private final RelativeLayout rootView;

    private LayoutPasterSelectViewBinding(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView) {
        this.rootView = relativeLayout;
        this.ivPaster = imageView;
    }

    @NonNull
    public static LayoutPasterSelectViewBinding bind(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_paster);
        if (imageView != null) {
            return new LayoutPasterSelectViewBinding((RelativeLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_paster)));
    }

    @NonNull
    public static LayoutPasterSelectViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPasterSelectViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_paster_select_view, viewGroup, false);
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
