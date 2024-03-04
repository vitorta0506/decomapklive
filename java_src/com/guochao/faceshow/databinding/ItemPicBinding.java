package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ItemPicBinding implements ViewBinding {
    @NonNull
    public final ImageView bgIV;
    @NonNull
    public final ImageView imgageView;
    @NonNull
    public final FrameLayout item;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView selectImg;

    private ItemPicBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView3) {
        this.rootView = frameLayout;
        this.bgIV = imageView;
        this.imgageView = imageView2;
        this.item = frameLayout2;
        this.selectImg = imageView3;
    }

    @NonNull
    public static ItemPicBinding bind(@NonNull View view) {
        int i9 = R.id.bgIV;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bgIV);
        if (imageView != null) {
            i9 = R.id.imgage_view;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imgage_view);
            if (imageView2 != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                i9 = R.id.select_img;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.select_img);
                if (imageView3 != null) {
                    return new ItemPicBinding(frameLayout, imageView, imageView2, frameLayout, imageView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPicBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPicBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_pic, viewGroup, false);
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
