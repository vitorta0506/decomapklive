package com.guochao.faceshow.guild.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$layout;
/* loaded from: classes4.dex */
public final class GuildUploadDataCoverBinding implements ViewBinding {
    @NonNull
    public final ShapeableImageView cover;
    @NonNull
    public final ImageView deleteCover;
    @NonNull
    public final ProgressBar progressBar;
    @NonNull
    private final ConstraintLayout rootView;

    private GuildUploadDataCoverBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ShapeableImageView shapeableImageView, @NonNull ImageView imageView, @NonNull ProgressBar progressBar) {
        this.rootView = constraintLayout;
        this.cover = shapeableImageView;
        this.deleteCover = imageView;
        this.progressBar = progressBar;
    }

    @NonNull
    public static GuildUploadDataCoverBinding bind(@NonNull View view) {
        int i9 = R$id.cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i9);
        if (shapeableImageView != null) {
            i9 = R$id.delete_cover;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i9);
            if (imageView != null) {
                i9 = R$id.progressBar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i9);
                if (progressBar != null) {
                    return new GuildUploadDataCoverBinding((ConstraintLayout) view, shapeableImageView, imageView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i9)));
    }

    @NonNull
    public static GuildUploadDataCoverBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static GuildUploadDataCoverBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R$layout.guild_upload_data_cover, viewGroup, false);
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
