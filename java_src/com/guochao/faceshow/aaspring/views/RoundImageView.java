package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class RoundImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private final RectF f24002a;

    /* renamed from: b  reason: collision with root package name */
    private float f24003b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f24004c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f24005d;

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24002a = new RectF();
        this.f24003b = 40.0f;
        this.f24004c = new Paint();
        this.f24005d = new Paint();
        a();
    }

    private void a() {
        this.f24004c.setAntiAlias(true);
        this.f24004c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f24005d.setAntiAlias(true);
        this.f24005d.setColor(-1);
        this.f24003b *= getResources().getDisplayMetrics().density;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f24002a, this.f24005d, 31);
        RectF rectF = this.f24002a;
        float f10 = this.f24003b;
        canvas.drawRoundRect(rectF, f10, f10, this.f24005d);
        canvas.saveLayer(this.f24002a, this.f24004c, 31);
        super.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        this.f24002a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setRectAdius(float f10) {
        this.f24003b = f10;
        invalidate();
    }

    public RoundImageView(Context context) {
        super(context);
        this.f24002a = new RectF();
        this.f24003b = 40.0f;
        this.f24004c = new Paint();
        this.f24005d = new Paint();
        a();
    }
}
