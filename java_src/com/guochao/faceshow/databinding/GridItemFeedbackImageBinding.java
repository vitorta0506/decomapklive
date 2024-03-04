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
import com.guochao.faceshow.aaspring.views.SquareImageView;
/* loaded from: classes2.dex */
public final class GridItemFeedbackImageBinding implements ViewBinding {
    @NonNull
    public final ImageView btnRemove;
    @NonNull
    private final FrameLayout rootView;
    @NonNull
    public final SquareImageView thumb;
    @NonNull
    public final ImageView video;

    private GridItemFeedbackImageBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull SquareImageView squareImageView, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.btnRemove = imageView;
        this.thumb = squareImageView;
        this.video = imageView2;
    }

    @NonNull
    public static GridItemFeedbackImageBinding bind(@NonNull View view) {
        int i9 = R.id.btnRemove;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.btnRemove);
        if (imageView != null) {
            i9 = R.id.thumb;
            SquareImageView squareImageView = (SquareImageView) ViewBindings.findChildViewById(view, R.id.thumb);
            if (squareImageView != null) {
                i9 = R.id.video;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.video);
                if (imageView2 != null) {
                    return new GridItemFeedbackImageBinding((FrameLayout) view, imageView, squareImageView, imageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static GridItemFeedbackImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GridItemFeedbackImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.grid_item_feedback_image, viewGroup, false);
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
