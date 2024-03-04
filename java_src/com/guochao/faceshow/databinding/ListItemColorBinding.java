package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class ListItemColorBinding implements ViewBinding {
    @NonNull
    public final FrameLayout flContent;
    @NonNull
    public final ImageView ivColor;
    @NonNull
    public final ImageView ivMosaic;
    @NonNull
    public final ImageView ivSelect;
    @NonNull
    private final RelativeLayout rootView;

    private ListItemColorBinding(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3) {
        this.rootView = relativeLayout;
        this.flContent = frameLayout;
        this.ivColor = imageView;
        this.ivMosaic = imageView2;
        this.ivSelect = imageView3;
    }

    @NonNull
    public static ListItemColorBinding bind(@NonNull View view) {
        int i9 = R.id.fl_content;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fl_content);
        if (frameLayout != null) {
            i9 = R.id.iv_color;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_color);
            if (imageView != null) {
                i9 = R.id.iv_mosaic;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_mosaic);
                if (imageView2 != null) {
                    i9 = R.id.iv_select;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_select);
                    if (imageView3 != null) {
                        return new ListItemColorBinding((RelativeLayout) view, frameLayout, imageView, imageView2, imageView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ListItemColorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ListItemColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.list_item_color, viewGroup, false);
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
