package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TintTypedArray;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class MaterialResources {
    private static final float FONT_SCALE_1_3 = 1.3f;
    private static final float FONT_SCALE_2_0 = 2.0f;

    private MaterialResources() {
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i9) {
        int resourceId;
        ColorStateList colorStateList;
        return (!typedArray.hasValue(i9) || (resourceId = typedArray.getResourceId(i9, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(context, resourceId)) == null) ? typedArray.getColorStateList(i9) : colorStateList;
    }

    public static int getDimensionPixelSize(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i9, int i10) {
        TypedValue typedValue = new TypedValue();
        if (typedArray.getValue(i9, typedValue) && typedValue.type == 2) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i10);
            obtainStyledAttributes.recycle();
            return dimensionPixelSize;
        }
        return typedArray.getDimensionPixelSize(i9, i10);
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i9) {
        int resourceId;
        Drawable drawable;
        return (!typedArray.hasValue(i9) || (resourceId = typedArray.getResourceId(i9, 0)) == 0 || (drawable = AppCompatResources.getDrawable(context, resourceId)) == null) ? typedArray.getDrawable(i9) : drawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @StyleableRes
    public static int getIndexWithValue(@NonNull TypedArray typedArray, @StyleableRes int i9, @StyleableRes int i10) {
        return typedArray.hasValue(i9) ? i9 : i10;
    }

    @Nullable
    public static TextAppearance getTextAppearance(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i9) {
        int resourceId;
        if (!typedArray.hasValue(i9) || (resourceId = typedArray.getResourceId(i9, 0)) == 0) {
            return null;
        }
        return new TextAppearance(context, resourceId);
    }

    public static boolean isFontScaleAtLeast1_3(@NonNull Context context) {
        return context.getResources().getConfiguration().fontScale >= FONT_SCALE_1_3;
    }

    public static boolean isFontScaleAtLeast2_0(@NonNull Context context) {
        return context.getResources().getConfiguration().fontScale >= FONT_SCALE_2_0;
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Context context, @NonNull TintTypedArray tintTypedArray, @StyleableRes int i9) {
        int resourceId;
        ColorStateList colorStateList;
        return (!tintTypedArray.hasValue(i9) || (resourceId = tintTypedArray.getResourceId(i9, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(context, resourceId)) == null) ? tintTypedArray.getColorStateList(i9) : colorStateList;
    }
}
