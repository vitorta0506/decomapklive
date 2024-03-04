package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
/* loaded from: classes2.dex */
public final class LayoutChooseTypeBinding implements ViewBinding {
    @NonNull
    public final ImageView checkIcon;
    @NonNull
    public final ImageView img;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final TextView subTitle;

    private LayoutChooseTypeBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.rootView = frameLayout;
        this.checkIcon = imageView;
        this.img = imageView2;
        this.subTitle = textView;
    }

    @NonNull
    public static LayoutChooseTypeBinding bind(@NonNull View view) {
        int i9 = R.id.check_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.check_icon);
        if (imageView != null) {
            i9 = R.id.img;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
            if (imageView2 != null) {
                i9 = R.id.sub_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.sub_title);
                if (textView != null) {
                    return new LayoutChooseTypeBinding((FrameLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutChooseTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutChooseTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_choose_type, viewGroup, false);
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
