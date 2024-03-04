package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LutTransformation extends com.bumptech.glide.load.resource.bitmap.f {
    private static LutTransformation lutTransformation;
    private Context context;

    public LutTransformation(Context context) {
        this.context = context;
    }

    public static LutTransformation getInstance(Context context) {
        synchronized (jc.g.class) {
            if (lutTransformation == null) {
                lutTransformation = new LutTransformation(context);
            }
        }
        return lutTransformation;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.f
    protected Bitmap transform(@NonNull @NotNull g0.d dVar, @NonNull @NotNull Bitmap bitmap, int i9, int i10) {
        return LutUtils.applyLutToBitmap(this.context, bitmap, 2);
    }

    @Override // e0.b
    public void updateDiskCacheKey(@NonNull @NotNull MessageDigest messageDigest) {
    }
}
