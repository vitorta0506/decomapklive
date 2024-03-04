package com.guochao.component.voiceliveroom.helper;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: com.guochao.component.voiceliveroom.helper.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0145a extends ImageSpan {
        public C0145a(Drawable drawable) {
            super(drawable);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, Paint paint) {
            Drawable drawable = getDrawable();
            canvas.save();
            canvas.translate(f10, (((i13 - i11) - drawable.getBounds().bottom) / 2) + i11);
            try {
                drawable.draw(canvas);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            canvas.restore();
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i9, int i10, Paint.FontMetricsInt fontMetricsInt) {
            Rect bounds = getDrawable().getBounds();
            if (fontMetricsInt != null) {
                Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
                int i11 = fontMetricsInt2.bottom - fontMetricsInt2.top;
                int i12 = (bounds.bottom - bounds.top) / 2;
                int i13 = i11 / 4;
                int i14 = i12 - i13;
                int i15 = -(i12 + i13);
                fontMetricsInt.ascent = i15;
                fontMetricsInt.top = i15;
                fontMetricsInt.bottom = i14;
                fontMetricsInt.descent = i14;
            }
            return bounds.right;
        }
    }

    public static Integer a(String str, String str2) {
        if (!str.toUpperCase().contains(str2.toUpperCase())) {
            return -1;
        }
        return Integer.valueOf(str.toUpperCase().indexOf(str2.toUpperCase()));
    }

    public static SpannableStringBuilder b(SpannableStringBuilder spannableStringBuilder, String str, ImageSpan imageSpan) {
        int intValue = a(str, "{icon}").intValue();
        if (intValue >= 0) {
            spannableStringBuilder.setSpan(imageSpan, intValue, intValue + 6, 17);
        } else {
            spannableStringBuilder.setSpan(imageSpan, 0, 0, 18);
        }
        return spannableStringBuilder;
    }

    public static void c(int i9, SpannableStringBuilder spannableStringBuilder, String str) {
        int indexOf = spannableStringBuilder.toString().indexOf(str);
        if (indexOf >= 0) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i9), indexOf, str.length() + indexOf, 33);
        }
    }
}
