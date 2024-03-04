package com.tencent.rtmp.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.ScaleAnimation;
/* loaded from: classes4.dex */
public class FocusIndicatorView extends View {

    /* renamed from: a  reason: collision with root package name */
    final ScaleAnimation f33429a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f33430b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33431c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f33432d;

    public FocusIndicatorView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i9 = this.f33431c / 2;
        Rect rect = this.f33432d;
        rect.left = i9;
        rect.top = i9;
        rect.right = getWidth() - i9;
        this.f33432d.bottom = getHeight() - i9;
        canvas.drawRect(this.f33432d, this.f33430b);
    }

    public FocusIndicatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FocusIndicatorView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f33432d = new Rect();
        int i10 = (int) ((getResources().getDisplayMetrics().density * 1.0f) + 0.5f);
        this.f33431c = i10;
        Paint paint = new Paint();
        this.f33430b = paint;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(i10);
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.3f, 1.0f, 1.3f, 1.0f, 1, 0.5f, 1, 0.5f);
        this.f33429a = scaleAnimation;
        scaleAnimation.setDuration(200L);
    }
}
