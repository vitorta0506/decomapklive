package com.guochao.faceshow.aaspring.utils;

import android.text.InputFilter;
import android.text.Spanned;
/* loaded from: classes3.dex */
public class LengthFilter implements InputFilter {
    private final int mMax;

    public LengthFilter(int i9) {
        this.mMax = i9;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i9, int i10, Spanned spanned, int i11, int i12) {
        return TextViewUtils.length(charSequence.toString()) + TextViewUtils.length(spanned.toString()) > this.mMax ? "" : charSequence;
    }
}
