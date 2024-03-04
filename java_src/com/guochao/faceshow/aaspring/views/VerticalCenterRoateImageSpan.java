package com.guochao.faceshow.aaspring.views;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
import androidx.annotation.Keep;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class VerticalCenterRoateImageSpan extends ImageSpan {

    /* renamed from: a  reason: collision with root package name */
    private float f24099a;

    public VerticalCenterRoateImageSpan(Drawable drawable) {
        super(drawable, 1);
        this.f24099a = 0.0f;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i9, int i10, float f10, int i11, int i12, int i13, Paint paint) {
        Drawable drawable = getDrawable();
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() == null || bitmapDrawable.getBitmap().isRecycled()) {
                return;
            }
        }
        canvas.save();
        canvas.translate(f10, (((i13 - i11) - drawable.getBounds().bottom) / 2) + i11);
        float dp2px = DensityUtil.dp2px(20.0f) / 2;
        canvas.rotate(this.f24099a, dp2px, dp2px);
        drawable.draw(canvas);
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

    @Keep
    public void setRoateX(float f10) {
        this.f24099a = f10;
    }
}
