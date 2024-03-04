package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.gms.base.R$color;
import com.google.android.gms.base.R$drawable;
import com.google.android.gms.base.R$string;
/* loaded from: classes2.dex */
public final class zaaa extends Button {
    public zaaa(Context context, @Nullable AttributeSet attributeSet) {
        super(context, null, 16842824);
    }

    private static final int b(int i9, int i10, int i11, int i12) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 == 2) {
                    return i12;
                }
                throw new IllegalStateException("Unknown color scheme: " + i9);
            }
            return i11;
        }
        return i10;
    }

    public final void a(Resources resources, int i9, int i10) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i11 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i11);
        setMinWidth(i11);
        int i12 = R$drawable.common_google_signin_btn_icon_dark;
        int i13 = R$drawable.common_google_signin_btn_icon_light;
        int b10 = b(i10, i12, i13, i13);
        int i14 = R$drawable.common_google_signin_btn_text_dark;
        int i15 = R$drawable.common_google_signin_btn_text_light;
        int b11 = b(i10, i14, i15, i15);
        if (i9 == 0 || i9 == 1) {
            b10 = b11;
        } else if (i9 != 2) {
            throw new IllegalStateException("Unknown button size: " + i9);
        }
        Drawable wrap = DrawableCompat.wrap(resources.getDrawable(b10));
        DrawableCompat.setTintList(wrap, resources.getColorStateList(R$color.common_google_signin_btn_tint));
        DrawableCompat.setTintMode(wrap, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(wrap);
        int i16 = R$color.common_google_signin_btn_text_dark;
        int i17 = R$color.common_google_signin_btn_text_light;
        setTextColor((ColorStateList) p.j(resources.getColorStateList(b(i10, i16, i17, i17))));
        if (i9 == 0) {
            setText(resources.getString(R$string.common_signin_button_text));
        } else if (i9 == 1) {
            setText(resources.getString(R$string.common_signin_button_text_long));
        } else if (i9 == 2) {
            setText((CharSequence) null);
        } else {
            throw new IllegalStateException("Unknown button size: " + i9);
        }
        setTransformationMethod(null);
        if (e4.h.c(getContext())) {
            setGravity(19);
        }
    }
}
