package androidx.databinding.adapters;

import android.widget.Switch;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;
@BindingMethods({@BindingMethod(attribute = "android:thumb", method = "setThumbDrawable", type = Switch.class), @BindingMethod(attribute = "android:track", method = "setTrackDrawable", type = Switch.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class SwitchBindingAdapter {
    @BindingAdapter({"android:switchTextAppearance"})
    public static void setSwitchTextAppearance(Switch r12, int i9) {
        r12.setSwitchTextAppearance(null, i9);
    }
}
