package com.guochao.faceshow.views;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class r extends ImageSpan {
    public r(Drawable drawable) {
        super(drawable, 1);
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, @NonNull Paint paint) {
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        Drawable drawable = getDrawable();
        canvas.save();
        canvas.translate(f10, ((((fontMetricsInt.descent + i12) + i12) + fontMetricsInt.ascent) / 2) - (drawable.getBounds().bottom / 2));
        drawable.draw(canvas);
        canvas.restore();
    }
}
