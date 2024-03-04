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
public final class LayoutFloatFaceToFaceBinding implements ViewBinding {
    @NonNull
    public final ImageView ivClose;
    @NonNull
    public final FrameLayout oneVOneFloatArea;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final ImageView txCloudVideoViewLay;

    private LayoutFloatFaceToFaceBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.ivClose = imageView;
        this.oneVOneFloatArea = frameLayout2;
        this.txCloudVideoViewLay = imageView2;
    }

    @NonNull
    public static LayoutFloatFaceToFaceBinding bind(@NonNull View view) {
        int i9 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.txCloudVideoViewLay);
            if (imageView2 != null) {
                return new LayoutFloatFaceToFaceBinding(frameLayout, imageView, frameLayout, imageView2);
            }
            i9 = R.id.txCloudVideoViewLay;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutFloatFaceToFaceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutFloatFaceToFaceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.layout_float_face_to_face, viewGroup, false);
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
