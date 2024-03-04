package com.guochao.faceshow.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class LayoutUserAvatarBinding implements ViewBinding {
    @NonNull
    public final NormalCircleImageView avatar;
    @NonNull
    public final ImageView avatarPedant;
    @NonNull
    public final NormalCircleImageView flag;
    @NonNull
    private final View rootView;

    private LayoutUserAvatarBinding(@NonNull View view, @NonNull NormalCircleImageView normalCircleImageView, @NonNull ImageView imageView, @NonNull NormalCircleImageView normalCircleImageView2) {
        this.rootView = view;
        this.avatar = normalCircleImageView;
        this.avatarPedant = imageView;
        this.flag = normalCircleImageView2;
    }

    @NonNull
    public static LayoutUserAvatarBinding bind(@NonNull View view) {
        int i9 = R.id.avatar;
        NormalCircleImageView normalCircleImageView = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (normalCircleImageView != null) {
            i9 = R.id.avatar_pedant;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.avatar_pedant);
            if (imageView != null) {
                i9 = R.id.flag;
                NormalCircleImageView normalCircleImageView2 = (NormalCircleImageView) ViewBindings.findChildViewById(view, R.id.flag);
                if (normalCircleImageView2 != null) {
                    return new LayoutUserAvatarBinding(view, normalCircleImageView, imageView, normalCircleImageView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static LayoutUserAvatarBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(R.layout.layout_user_avatar, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.rootView;
    }
}
