package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes3.dex */
public class VerticalRangeSeekBar extends RangeSeekBar {
    private int D4;
    private int E4;
    private int F4;

    public VerticalRangeSeekBar(Context context) {
        this(context, null);
    }

    private void e(AttributeSet attributeSet) {
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.VerticalRangeSeekBar);
            this.D4 = obtainStyledAttributes.getInt(1, 1);
            this.E4 = obtainStyledAttributes.getInt(2, 1);
            obtainStyledAttributes.recycle();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar
    protected float c(MotionEvent motionEvent) {
        if (this.D4 == 1) {
            return getHeight() - motionEvent.getY();
        }
        return motionEvent.getY();
    }

    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar
    protected float d(MotionEvent motionEvent) {
        if (this.D4 == 1) {
            return motionEvent.getX();
        }
        return (-motionEvent.getX()) + getWidth();
    }

    public int getOrientation() {
        return this.D4;
    }

    public int getTickMarkDirection() {
        return this.E4;
    }

    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar
    protected int getTickMarkRawHeight() {
        int tickMarkTextMargin;
        int i9;
        if (this.F4 > 0) {
            tickMarkTextMargin = getTickMarkTextMargin();
            i9 = this.F4;
        } else if (getTickMarkTextArray() == null || getTickMarkTextArray().length <= 0) {
            return 0;
        } else {
            int length = getTickMarkTextArray().length;
            this.F4 = t.g(String.valueOf(getTickMarkTextArray()[0]), getTickMarkTextSize()).width();
            for (int i10 = 1; i10 < length; i10++) {
                int width = t.g(String.valueOf(getTickMarkTextArray()[i10]), getTickMarkTextSize()).width();
                if (this.F4 < width) {
                    this.F4 = width;
                }
            }
            tickMarkTextMargin = getTickMarkTextMargin();
            i9 = this.F4;
        }
        return tickMarkTextMargin + i9;
    }

    protected void h(AttributeSet attributeSet) {
        this.R = new w(this, attributeSet, true);
        w wVar = new w(this, attributeSet, false);
        this.f23946a1 = wVar;
        wVar.S(getSeekBarMode() != 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011d A[SYNTHETIC] */
    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void m(android.graphics.Canvas r13, android.graphics.Paint r14) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.VerticalRangeSeekBar.m(android.graphics.Canvas, android.graphics.Paint):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.D4 == 1) {
            canvas.rotate(-90.0f);
            canvas.translate(-getHeight(), 0.0f);
        } else {
            canvas.rotate(90.0f);
            canvas.translate(0.0f, -getWidth());
        }
        super.onDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar, android.view.View
    public void onMeasure(int i9, int i10) {
        int rawHeight;
        int makeMeasureSpec;
        int size = View.MeasureSpec.getSize(i9);
        int mode = View.MeasureSpec.getMode(i9);
        if (mode == 1073741824) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY);
        } else if (mode == Integer.MIN_VALUE && (getParent() instanceof ViewGroup) && size == -1) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(((ViewGroup) getParent()).getMeasuredHeight(), Integer.MIN_VALUE);
        } else {
            if (getGravity() == 2) {
                rawHeight = (getProgressTop() * 2) + getProgressHeight();
            } else {
                rawHeight = (int) getRawHeight();
            }
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(rawHeight, BasicMeasure.EXACTLY);
        }
        super.onMeasure(makeMeasureSpec, i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar, android.view.View
    public void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i10, i9, i12, i11);
    }

    public void setOrientation(int i9) {
        this.D4 = i9;
    }

    public void setTickMarkDirection(int i9) {
        this.E4 = i9;
    }

    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar
    public void setTickMarkTextArray(CharSequence[] charSequenceArr) {
        super.setTickMarkTextArray(charSequenceArr);
        this.F4 = 0;
    }

    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar
    public void setTickMarkTextSize(int i9) {
        super.setTickMarkTextSize(i9);
        this.F4 = 0;
    }

    public VerticalRangeSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.D4 = 1;
        this.E4 = 1;
        e(attributeSet);
        h(attributeSet);
    }

    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar
    public w getLeftSeekBar() {
        return (w) this.R;
    }

    @Override // com.guochao.faceshow.aaspring.views.RangeSeekBar
    public w getRightSeekBar() {
        return (w) this.f23946a1;
    }
}
