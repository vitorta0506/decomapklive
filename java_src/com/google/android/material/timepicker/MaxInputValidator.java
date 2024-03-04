package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;
/* loaded from: classes2.dex */
class MaxInputValidator implements InputFilter {
    private int max;

    public MaxInputValidator(int i9) {
        this.max = i9;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i9, int i10, Spanned spanned, int i11, int i12) {
        try {
            StringBuilder sb2 = new StringBuilder(spanned);
            sb2.replace(i11, i12, charSequence.subSequence(i9, i10).toString());
            if (Integer.parseInt(sb2.toString()) <= this.max) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }

    public int getMax() {
        return this.max;
    }

    public void setMax(int i9) {
        this.max = i9;
    }
}
