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
public final class LayoutItemDishWheelBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView imageWheel;
    @NonNull
    private final LinearLayout rootView;

    private LayoutItemDishWheelBinding(@NonNull LinearLayout linearLayout, @NonNull NormalCircleImageView normalCircleImageView) {
        this.rootView = linearLayout;
        this.imageWheel = normalCircleImageView;
    }

    @NonNull
    public static LayoutItemDishWheelBinding bind(@NonNull View view) {
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.image_wheel);
        if (normalCircleImageView != null) {
            return new LayoutItemDishWheelBinding((LinearLayout) view, normalCircleImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.image_wheel)));
    }

    @NonNull
    public static LayoutItemDishWheelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutItemDishWheelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_item_dish_wheel, viewGroup, false);
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
