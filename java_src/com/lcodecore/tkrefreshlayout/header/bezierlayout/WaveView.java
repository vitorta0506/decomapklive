package com.lcodecore.tkrefreshlayout.header.bezierlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
/* loaded from: classes4.dex */
public class WaveView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f28014a;

    /* renamed from: b  reason: collision with root package name */
    private int f28015b;

    /* renamed from: c  reason: collision with root package name */
    Path f28016c;

    /* renamed from: d  reason: collision with root package name */
    Paint f28017d;

    public WaveView(Context context) {
        this(context, null, 0);
    }

    private void a() {
        this.f28016c = new Path();
        Paint paint = new Paint();
        this.f28017d = paint;
        paint.setColor(-14736346);
        this.f28017d.setAntiAlias(true);
    }

    public int getHeadHeight() {
        return this.f28015b;
    }

    public int getWaveHeight() {
        return this.f28014a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f28016c.reset();
        this.f28016c.lineTo(0.0f, this.f28015b);
        this.f28016c.quadTo(getMeasuredWidth() / 2, this.f28015b + this.f28014a, getMeasuredWidth(), this.f28015b);
        this.f28016c.lineTo(getMeasuredWidth(), 0.0f);
        canvas.drawPath(this.f28016c, this.f28017d);
    }

    public void setHeadHeight(int i9) {
        this.f28015b = i9;
    }

    public void setWaveColor(@ColorInt int i9) {
        Paint paint = this.f28017d;
        if (paint != null) {
            paint.setColor(i9);
        }
    }

    public void setWaveHeight(int i9) {
        this.f28014a = i9;
    }

    public WaveView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaveView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a();
    }
}
