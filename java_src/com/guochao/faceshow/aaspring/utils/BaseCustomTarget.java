package com.guochao.faceshow.aaspring.utils;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class BaseCustomTarget<T> extends s0.c<T> {
    ImageView mImageView;

    public BaseCustomTarget(ImageView imageView) {
        this.mImageView = imageView;
    }

    @Override // s0.k
    public void onLoadCleared(@Nullable Drawable drawable) {
        this.mImageView.setImageDrawable(drawable);
    }

    @Override // s0.c, s0.k
    public void onLoadFailed(@Nullable Drawable drawable) {
        super.onLoadFailed(drawable);
        this.mImageView.setImageDrawable(drawable);
    }

    @Override // s0.c, s0.k
    public void onLoadStarted(@Nullable Drawable drawable) {
        super.onLoadStarted(drawable);
        this.mImageView.setImageDrawable(drawable);
    }

    @Override // s0.k
    public void onResourceReady(@NonNull T t10, @Nullable t0.f<? super T> fVar) {
        if (t10 instanceof Bitmap) {
            this.mImageView.setImageBitmap((Bitmap) t10);
        } else if (t10 instanceof Drawable) {
            this.mImageView.setImageDrawable((Drawable) t10);
        }
    }
}
