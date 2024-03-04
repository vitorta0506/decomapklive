package com.guochao.faceshow.aaspring.views;

import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes3.dex */
public class w extends r {
    VerticalRangeSeekBar S;
    private int T;

    public w(RangeSeekBar rangeSeekBar, AttributeSet attributeSet, boolean z10) {
        super(rangeSeekBar, attributeSet, z10);
        A(attributeSet);
        this.S = (VerticalRangeSeekBar) rangeSeekBar;
    }

    private void A(AttributeSet attributeSet) {
        try {
            TypedArray obtainStyledAttributes = d().obtainStyledAttributes(attributeSet, R$styleable.VerticalRangeSeekBar);
            this.T = obtainStyledAttributes.getInt(0, 1);
            obtainStyledAttributes.recycle();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.views.r
    public void E(Canvas canvas, Paint paint, String str) {
        if (str == null) {
            return;
        }
        if (this.T == 1) {
            U(canvas, paint, str);
        } else {
            super.E(canvas, paint, str);
        }
    }

    protected void U(Canvas canvas, Paint paint, String str) {
        paint.setTextSize(q());
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(f());
        int i9 = 0;
        paint.getTextBounds(str, 0, str.length(), this.M);
        int height = this.M.height() + j() + k();
        if (r() > height) {
            height = r();
        }
        int width = this.M.width() + l() + i();
        if (g() > width) {
            width = g();
        }
        Rect rect = this.N;
        rect.left = (this.Q / 2) - (height / 2);
        rect.top = ((this.f24461x - width) - this.R) - h();
        Rect rect2 = this.N;
        rect2.right = rect2.left + height;
        int i10 = rect2.top + width;
        rect2.bottom = i10;
        if (this.E == null) {
            int i11 = this.Q / 2;
            int e10 = i11 - e();
            int e11 = i10 - e();
            int e12 = e() + i11;
            this.L.reset();
            this.L.moveTo(i11, i10);
            float f10 = e10;
            float f11 = e11;
            this.L.lineTo(f10, f11);
            this.L.lineTo(e12, f11);
            this.L.close();
            canvas.drawPath(this.L, paint);
            this.N.bottom -= e();
            this.N.top -= e();
        }
        int b10 = t.b(d(), 1.0f);
        int width2 = (((this.N.width() / 2) - ((int) (this.J.getProgressWidth() * this.f24462y))) - this.J.getProgressLeft()) + b10;
        int width3 = (((this.N.width() / 2) - ((int) (this.J.getProgressWidth() * (1.0f - this.f24462y)))) - this.J.getProgressPaddingRight()) + b10;
        if (width2 > 0) {
            Rect rect3 = this.N;
            rect3.left += width2;
            rect3.right += width2;
        } else if (width3 > 0) {
            Rect rect4 = this.N;
            rect4.left -= width3;
            rect4.right -= width3;
        }
        Bitmap bitmap = this.E;
        if (bitmap != null) {
            t.c(canvas, paint, bitmap, this.N);
        } else if (m() > 0.0f) {
            canvas.drawRoundRect(new RectF(this.N), m(), m(), paint);
        } else {
            canvas.drawRect(this.N, paint);
        }
        Rect rect5 = this.N;
        int width4 = ((rect5.left + ((rect5.width() - this.M.width()) / 2)) + j()) - k();
        Rect rect6 = this.N;
        int height2 = ((rect6.bottom - ((rect6.height() - this.M.height()) / 2)) + l()) - i();
        paint.setColor(p());
        float f12 = width4;
        float width5 = (this.M.width() / 2.0f) + f12;
        float f13 = height2;
        float height3 = f13 - (this.M.height() / 2.0f);
        if (this.T == 1) {
            if (this.S.getOrientation() == 1) {
                i9 = 90;
            } else if (this.S.getOrientation() == 2) {
                i9 = -90;
            }
        }
        if (i9 != 0) {
            canvas.rotate(i9, width5, height3);
        }
        canvas.drawText(str, f12, f13, paint);
        if (i9 != 0) {
            canvas.rotate(-i9, width5, height3);
        }
    }
}
