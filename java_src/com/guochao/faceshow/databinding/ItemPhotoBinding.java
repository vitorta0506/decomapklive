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
import com.guochao.faceshow.aaspring.views.RatioHeightImageView;
/* loaded from: classes2.dex */
public final class ItemPhotoBinding implements ViewBinding {
    @NonNull
    public final TextView duration;
    @NonNull
    public final RatioHeightImageView img;
    @NonNull
    public final ImageView play;
    @NonNull
    private final FrameLayout rootView;

    private ItemPhotoBinding(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull RatioHeightImageView ratioHeightImageView, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.duration = textView;
        this.img = ratioHeightImageView;
        this.play = imageView;
    }

    @NonNull
    public static ItemPhotoBinding bind(@NonNull View view) {
        int i9 = R.id.duration;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.duration);
        if (textView != null) {
            i9 = R.id.img;
            RatioHeightImageView ratioHeightImageView = (RatioHeightImageView) ViewBindings.findChildViewById(view, R.id.img);
            if (ratioHeightImageView != null) {
                i9 = R.id.play;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.play);
                if (imageView != null) {
                    return new ItemPhotoBinding((FrameLayout) view, textView, ratioHeightImageView, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemPhotoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPhotoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_photo, viewGroup, false);
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
