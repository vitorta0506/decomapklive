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
public final class ItemGridImgBinding implements ViewBinding {
    @NonNull
    public final ImageView delete;
    @NonNull
    public final LinearLayout item;
    @NonNull
    public final ImageView liftIv;
    @NonNull
    private final LinearLayout rootView;

    private ItemGridImgBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2) {
        this.rootView = linearLayout;
        this.delete = imageView;
        this.item = linearLayout2;
        this.liftIv = imageView2;
    }

    @NonNull
    public static ItemGridImgBinding bind(@NonNull View view) {
        int i9 = R.id.delete;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.delete);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.lift_iv);
            if (imageView2 != null) {
                return new ItemGridImgBinding(linearLayout, imageView, linearLayout, imageView2);
            }
            i9 = R.id.lift_iv;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemGridImgBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemGridImgBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_grid_img, viewGroup, false);
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
