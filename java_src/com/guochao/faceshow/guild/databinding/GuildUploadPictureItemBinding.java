package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
/* loaded from: classes4.dex */
public final class GuildUploadPictureItemBinding implements ViewBinding {
    @NonNull
    public final ShapeableImageView cover;
    @NonNull
    public final ImageView deleteCover;
    @NonNull
    private final ConstraintLayout rootView;

    private GuildUploadPictureItemBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ShapeableImageView shapeableImageView, @NonNull ImageView imageView) {
        this.rootView = constraintLayout;
        this.cover = shapeableImageView;
        this.deleteCover = imageView;
    }

    @NonNull
    public static GuildUploadPictureItemBinding bind(@NonNull View view) {
        int i9 = R$id.cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i9);
        if (shapeableImageView != null) {
            i9 = R$id.delete_cover;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                return new GuildUploadPictureItemBinding((ConstraintLayout) view, shapeableImageView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static GuildUploadPictureItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GuildUploadPictureItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.guild_upload_picture_item, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
