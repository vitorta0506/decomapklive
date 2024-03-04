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
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes2.dex */
public final class LayoutBackToLastBinding implements ViewBinding {
    @NonNull
    public final LinearLayout backToLast;
    @NonNull
    public final NormalCircleImageView littleAvatar;
    @NonNull
    private final LinearLayout rootView;

    private LayoutBackToLastBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NormalCircleImageView normalCircleImageView) {
        this.rootView = linearLayout;
        this.backToLast = linearLayout2;
        this.littleAvatar = normalCircleImageView;
    }

    @NonNull
    public static LayoutBackToLastBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.little_avatar);
        if (normalCircleImageView != null) {
            return new LayoutBackToLastBinding(linearLayout, linearLayout, normalCircleImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.little_avatar)));
    }

    @NonNull
    public static LayoutBackToLastBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBackToLastBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_back_to_last, viewGroup, false);
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
