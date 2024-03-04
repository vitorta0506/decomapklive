package com.guochao.faceshow.views;

import android.content.Context;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatEditText;
/* loaded from: classes4.dex */
public class JudgeEditText extends AppCompatEditText {

    /* renamed from: a  reason: collision with root package name */
    private int f26651a;

    /* loaded from: classes4.dex */
    class a implements InputFilter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f26652a;

        a(int i9) {
            this.f26652a = i9;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i9, int i10, Spanned spanned, int i11, int i12) {
            if ("".equals(charSequence.toString())) {
                return null;
            }
            String obj = spanned.toString();
            String[] split = obj.split("\\.");
            if (split.length > 1) {
                if (split[0].length() >= this.f26652a) {
                    return "";
                }
                int length = (split[1].length() + 1) - JudgeEditText.this.f26651a;
                if (length > 0) {
                    try {
                        return charSequence.subSequence(i9, i10 - length);
                    } catch (Exception unused) {
                    }
                }
            } else if (split[0].length() >= this.f26652a && !obj.contains(".") && !".".contentEquals(charSequence)) {
                return "";
            }
            return null;
        }
    }

    public JudgeEditText(Context context) {
        super(context);
        this.f26651a = 1;
    }

    public void b(int i9, int i10, int i11) {
        if (i11 > 0) {
            a aVar = new a(i9);
            this.f26651a = i10;
            setFilters(new InputFilter[]{aVar, new InputFilter.LengthFilter(i11)});
        }
    }

    public JudgeEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26651a = 1;
    }
}
