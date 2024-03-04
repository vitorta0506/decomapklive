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
public final class ItemBeautyBinding implements ViewBinding {
    @NonNull
    public final LinearLayout item;
    @NonNull
    public final ImageView liftIv;
    @NonNull
    private final LinearLayout rootView;

    private ItemBeautyBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView) {
        this.rootView = linearLayout;
        this.item = linearLayout2;
        this.liftIv = imageView;
    }

    @NonNull
    public static ItemBeautyBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lift_iv);
        if (imageView != null) {
            return new ItemBeautyBinding(linearLayout, linearLayout, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.lift_iv)));
    }

    @NonNull
    public static ItemBeautyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemBeautyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_beauty, viewGroup, false);
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
