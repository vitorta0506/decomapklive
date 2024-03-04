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
public final class ActivityEditBigImageBinding implements ViewBinding {
    @NonNull
    public final FrameLayout editBigImageLy;
    @NonNull
    public final ImageView editBigTitleBack;
    @NonNull
    public final ImageView editBigTitleMore;
    @NonNull
    private final RelativeLayout rootView;

    private ActivityEditBigImageBinding(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.rootView = relativeLayout;
        this.editBigImageLy = frameLayout;
        this.editBigTitleBack = imageView;
        this.editBigTitleMore = imageView2;
    }

    @NonNull
    public static ActivityEditBigImageBinding bind(@NonNull View view) {
        int i9 = R.id.edit_big_image_ly;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.edit_big_image_ly);
        if (frameLayout != null) {
            i9 = R.id.edit_big_title_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_big_title_back);
            if (imageView != null) {
                i9 = R.id.edit_big_title_more;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.edit_big_title_more);
                if (imageView2 != null) {
                    return new ActivityEditBigImageBinding((RelativeLayout) view, frameLayout, imageView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ActivityEditBigImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityEditBigImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_edit_big_image, viewGroup, false);
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
