package com.google.android.material.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.XmlRes;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class DrawableUtils {
    private DrawableUtils() {
    }

    @NonNull
    public static AttributeSet parseDrawableXml(@NonNull Context context, @XmlRes int i9, @NonNull CharSequence charSequence) {
        int next;
        try {
            XmlResourceParser xml = context.getResources().getXml(i9);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                if (TextUtils.equals(xml.getName(), charSequence)) {
                    return Xml.asAttributeSet(xml);
                }
                throw new XmlPullParserException("Must have a <" + ((Object) charSequence) + "> start tag");
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException | XmlPullParserException e10) {
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i9));
            notFoundException.initCause(e10);
            throw notFoundException;
        }
    }

    public static void setRippleDrawableRadius(@Nullable RippleDrawable rippleDrawable, int i9) {
        if (Build.VERSION.SDK_INT >= 23) {
            rippleDrawable.setRadius(i9);
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod("setMaxRadius", Integer.TYPE).invoke(rippleDrawable, Integer.valueOf(i9));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
            throw new IllegalStateException("Couldn't set RippleDrawable radius", e10);
        }
    }

    @Nullable
    public static PorterDuffColorFilter updateTintFilter(@NonNull Drawable drawable, @Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }
}
