package com.guochao.faceshow.aaspring.utils;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.core.graphics.drawable.DrawableCompat;
/* loaded from: classes3.dex */
public class ColorUtils {
    public static Drawable tintDrawable(Drawable drawable, @ColorInt int i9) {
        Drawable mutate = DrawableCompat.wrap(drawable).mutate();
        DrawableCompat.setTint(mutate, i9);
        return mutate;
    }

    public static Drawable tintDrawable(Drawable drawable, ColorStateList colorStateList) {
        Drawable mutate = DrawableCompat.wrap(drawable).mutate();
        DrawableCompat.setTintList(mutate, colorStateList);
        return mutate;
    }
}
