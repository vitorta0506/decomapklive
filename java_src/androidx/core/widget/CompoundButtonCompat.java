package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public final class CompoundButtonCompat {
    private static final String TAG = "CompoundButtonCompat";
    private static Field sButtonDrawableField;
    private static boolean sButtonDrawableFieldFetched;

    private CompoundButtonCompat() {
    }

    @Nullable
    public static Drawable getButtonDrawable(@NonNull CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!sButtonDrawableFieldFetched) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                sButtonDrawableField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.i(TAG, "Failed to retrieve mButtonDrawable field", e10);
            }
            sButtonDrawableFieldFetched = true;
        }
        Field field = sButtonDrawableField;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException e11) {
                Log.i(TAG, "Failed to get button drawable via reflection", e11);
                sButtonDrawableField = null;
            }
        }
        return null;
    }

    @Nullable
    public static ColorStateList getButtonTintList(@NonNull CompoundButton compoundButton) {
        return compoundButton.getButtonTintList();
    }

    @Nullable
    public static PorterDuff.Mode getButtonTintMode(@NonNull CompoundButton compoundButton) {
        return compoundButton.getButtonTintMode();
    }

    public static void setButtonTintList(@NonNull CompoundButton compoundButton, @Nullable ColorStateList colorStateList) {
        compoundButton.setButtonTintList(colorStateList);
    }

    public static void setButtonTintMode(@NonNull CompoundButton compoundButton, @Nullable PorterDuff.Mode mode) {
        compoundButton.setButtonTintMode(mode);
    }
}
