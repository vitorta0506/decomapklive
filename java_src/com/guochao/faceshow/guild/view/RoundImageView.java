package com.guochao.faceshow.guild.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes4.dex */
public class RoundImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private final RectF f25414a;

    /* renamed from: b  reason: collision with root package name */
    private float f25415b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f25416c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f25417d;

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f25414a = new RectF();
        this.f25415b = 5.0f;
        this.f25416c = new Paint();
        this.f25417d = new Paint();
        a();
    }

    private void a() {
        this.f25416c.setAntiAlias(true);
        this.f25416c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.f25417d.setAntiAlias(true);
        this.f25417d.setColor(-1);
        this.f25415b *= getResources().getDisplayMetrics().density;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f25414a, this.f25417d, 31);
        RectF rectF = this.f25414a;
        float f10 = this.f25415b;
        canvas.drawRoundRect(rectF, f10, f10, this.f25417d);
        canvas.saveLayer(this.f25414a, this.f25416c, 31);
        super.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        this.f25414a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public void setRectAdius(float f10) {
        this.f25415b = f10;
        invalidate();
    }

    public RoundImageView(Context context) {
        super(context);
        this.f25414a = new RectF();
        this.f25415b = 5.0f;
        this.f25416c = new Paint();
        this.f25417d = new Paint();
        a();
    }
}
