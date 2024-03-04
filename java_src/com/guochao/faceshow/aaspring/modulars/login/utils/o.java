package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class o extends ReplacementSpan {

    /* renamed from: a  reason: collision with root package name */
    int f20584a;

    @Override // android.text.style.ReplacementSpan
    public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, @NonNull Paint paint) {
        canvas.drawText(charSequence, i9, i10, f10, i12, paint);
        float strokeWidth = paint.getStrokeWidth();
        paint.setStrokeWidth(DensityUtil.dp2px(0.5f));
        canvas.drawLine(f10, DensityUtil.dp2px(2.0f) + i12, this.f20584a + f10, i12 + DensityUtil.dp2px(2.0f), paint);
        paint.setStrokeWidth(strokeWidth);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NonNull Paint paint, CharSequence charSequence, int i9, int i10, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        int measureText = (int) paint.measureText(charSequence.subSequence(i9, i10).toString());
        this.f20584a = measureText;
        return measureText;
    }
}
