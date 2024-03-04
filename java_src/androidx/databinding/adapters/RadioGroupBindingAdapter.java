package androidx.databinding.adapters;

import android.widget.RadioGroup;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethod;
import androidx.databinding.InverseBindingMethods;
@InverseBindingMethods({@InverseBindingMethod(attribute = "android:checkedButton", method = "getCheckedRadioButtonId", type = RadioGroup.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class RadioGroupBindingAdapter {
    @BindingAdapter({"android:checkedButton"})
    public static void setCheckedButton(RadioGroup radioGroup, int i9) {
        if (i9 != radioGroup.getCheckedRadioButtonId()) {
            radioGroup.check(i9);
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onCheckedChanged", "android:checkedButtonAttrChanged"})
    public static void setListeners(RadioGroup radioGroup, final RadioGroup.OnCheckedChangeListener onCheckedChangeListener, final InverseBindingListener inverseBindingListener) {
        if (inverseBindingListener == null) {
            radioGroup.setOnCheckedChangeListener(onCheckedChangeListener);
        } else {
            radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: androidx.databinding.adapters.RadioGroupBindingAdapter.1
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public void onCheckedChanged(RadioGroup radioGroup2, int i9) {
                    RadioGroup.OnCheckedChangeListener onCheckedChangeListener2 = onCheckedChangeListener;
                    if (onCheckedChangeListener2 != null) {
                        onCheckedChangeListener2.onCheckedChanged(radioGroup2, i9);
                    }
                    inverseBindingListener.onChange();
                }
            });
        }
    }
}
