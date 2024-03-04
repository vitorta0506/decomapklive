package androidx.databinding.adapters;

import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import androidx.databinding.BindingConversion;
/* loaded from: classes.dex */
public class Converters {
    @BindingConversion
    public static ColorStateList convertColorToColorStateList(int i9) {
        return ColorStateList.valueOf(i9);
    }

    @BindingConversion
    public static ColorDrawable convertColorToDrawable(int i9) {
        return new ColorDrawable(i9);
    }
}
