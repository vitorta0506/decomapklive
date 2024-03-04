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
public final class ItemUserAvatarImgBinding implements ViewBinding {
    @NonNull
    public final View bgImageView;
    @NonNull
    public final ImageView imageView;
    @NonNull
    private final FrameLayout rootView;

    private ItemUserAvatarImgBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull ImageView imageView) {
        this.rootView = frameLayout;
        this.bgImageView = view;
        this.imageView = imageView;
    }

    @NonNull
    public static ItemUserAvatarImgBinding bind(@NonNull View view) {
        int i9 = R.id.bg_image_view;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bg_image_view);
        if (findChildViewById != null) {
            i9 = R.id.image_view;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_view);
            if (imageView != null) {
                return new ItemUserAvatarImgBinding((FrameLayout) view, findChildViewById, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static ItemUserAvatarImgBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemUserAvatarImgBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.item_user_avatar_img, viewGroup, false);
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
