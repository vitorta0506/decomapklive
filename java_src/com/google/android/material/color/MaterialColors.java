package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialAttributes;
/* loaded from: classes2.dex */
public class MaterialColors {
    public static final float ALPHA_DISABLED = 0.38f;
    public static final float ALPHA_DISABLED_LOW = 0.12f;
    public static final float ALPHA_FULL = 1.0f;
    public static final float ALPHA_LOW = 0.32f;
    public static final float ALPHA_MEDIUM = 0.54f;
    private static final int TONE_ACCENT_CONTAINER_DARK = 20;
    private static final int TONE_ACCENT_CONTAINER_LIGHT = 90;
    private static final int TONE_ACCENT_DARK = 70;
    private static final int TONE_ACCENT_LIGHT = 40;
    private static final int TONE_ON_ACCENT_CONTAINER_DARK = 80;
    private static final int TONE_ON_ACCENT_CONTAINER_LIGHT = 10;
    private static final int TONE_ON_ACCENT_DARK = 10;
    private static final int TONE_ON_ACCENT_LIGHT = 100;

    private MaterialColors() {
    }

    @ColorInt
    public static int compositeARGBWithAlpha(@ColorInt int i9, @IntRange(from = 0, to = 255) int i10) {
        return androidx.core.graphics.ColorUtils.setAlphaComponent(i9, (Color.alpha(i9) * i10) / 255);
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int i9) {
        return MaterialAttributes.resolveOrThrow(view, i9);
    }

    @ColorInt
    private static int getColorRole(@ColorInt int i9, @IntRange(from = 0, to = 100) int i10) {
        Hct fromInt = Hct.fromInt(i9);
        fromInt.setTone(i10);
        return fromInt.toInt();
    }

    @NonNull
    public static ColorRoles getColorRoles(@NonNull Context context, @ColorInt int i9) {
        return getColorRoles(i9, MaterialAttributes.resolveBoolean(context, R.attr.isLightTheme, true));
    }

    @ColorInt
    public static int harmonize(@ColorInt int i9, @ColorInt int i10) {
        return Blend.harmonize(i9, i10);
    }

    @ColorInt
    public static int harmonizeWithPrimary(@NonNull Context context, @ColorInt int i9) {
        return harmonize(i9, getColor(context, R.attr.colorPrimary, MaterialColors.class.getCanonicalName()));
    }

    public static boolean isColorLight(@ColorInt int i9) {
        return i9 != 0 && androidx.core.graphics.ColorUtils.calculateLuminance(i9) > 0.5d;
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int i9, @AttrRes int i10) {
        return layer(view, i9, i10, 1.0f);
    }

    @ColorInt
    public static int getColor(Context context, @AttrRes int i9, String str) {
        return MaterialAttributes.resolveOrThrow(context, i9, str);
    }

    @ColorInt
    public static int layer(@NonNull View view, @AttrRes int i9, @AttrRes int i10, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return layer(getColor(view, i9), getColor(view, i10), f10);
    }

    @ColorInt
    public static int getColor(@NonNull View view, @AttrRes int i9, @ColorInt int i10) {
        return getColor(view.getContext(), i9, i10);
    }

    @ColorInt
    public static int getColor(@NonNull Context context, @AttrRes int i9, @ColorInt int i10) {
        TypedValue resolve = MaterialAttributes.resolve(context, i9);
        return resolve != null ? resolve.data : i10;
    }

    @NonNull
    public static ColorRoles getColorRoles(@ColorInt int i9, boolean z10) {
        if (z10) {
            return new ColorRoles(getColorRole(i9, 40), getColorRole(i9, 100), getColorRole(i9, 90), getColorRole(i9, 10));
        }
        return new ColorRoles(getColorRole(i9, 70), getColorRole(i9, 10), getColorRole(i9, 20), getColorRole(i9, 80));
    }

    @ColorInt
    public static int layer(@ColorInt int i9, @ColorInt int i10, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return layer(i9, androidx.core.graphics.ColorUtils.setAlphaComponent(i10, Math.round(Color.alpha(i10) * f10)));
    }

    @ColorInt
    public static int layer(@ColorInt int i9, @ColorInt int i10) {
        return androidx.core.graphics.ColorUtils.compositeColors(i10, i9);
    }
}
