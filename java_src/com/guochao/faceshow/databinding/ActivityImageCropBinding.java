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
import com.guochao.faceshow.aaspring.views.ImageCropView;
/* loaded from: classes2.dex */
public final class ActivityImageCropBinding implements ViewBinding {
    @NonNull
    public final ImageCropView photoView;
    @NonNull
    private final LinearLayout rootView;

    private ActivityImageCropBinding(@NonNull LinearLayout linearLayout, @NonNull ImageCropView imageCropView) {
        this.rootView = linearLayout;
        this.photoView = imageCropView;
    }

    @NonNull
    public static ActivityImageCropBinding bind(@NonNull View view) {
        ImageCropView imageCropView = (ImageCropView) ViewBindings.findChildViewById(view, R.id.photo_view);
        if (imageCropView != null) {
            return new ActivityImageCropBinding((LinearLayout) view, imageCropView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.photo_view)));
    }

    @NonNull
    public static ActivityImageCropBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityImageCropBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.activity_image_crop, viewGroup, false);
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
