package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutLivingStatusBinding implements ViewBinding {
    @NonNull
    public final LinearLayout living;
    @NonNull
    public final ImageView livingStatus;
    @NonNull
    private final LinearLayout rootView;

    private LayoutLivingStatusBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.living = linearLayout2;
        this.livingStatus = imageView;
    }

    @NonNull
    public static LayoutLivingStatusBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.living_status);
        if (imageView != null) {
            return new LayoutLivingStatusBinding(linearLayout, linearLayout, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.living_status)));
    }

    @NonNull
    public static LayoutLivingStatusBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLivingStatusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_living_status, viewGroup, false);
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
