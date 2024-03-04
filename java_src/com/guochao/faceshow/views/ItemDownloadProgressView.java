package com.guochao.faceshow.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes4.dex */
public class ItemDownloadProgressView extends View {

    /* renamed from: a  reason: collision with root package name */
    Paint f26646a;

    /* renamed from: b  reason: collision with root package name */
    Paint f26647b;

    /* renamed from: c  reason: collision with root package name */
    private int f26648c;

    /* renamed from: d  reason: collision with root package name */
    RectF f26649d;

    /* renamed from: e  reason: collision with root package name */
    int f26650e;

    public ItemDownloadProgressView(Context context) {
        super(context);
        this.f26646a = new Paint();
        this.f26647b = new Paint();
        this.f26648c = 100;
        a();
    }

    private void a() {
        this.f26646a.setColor(Color.parseColor("#C7C7C7"));
        this.f26646a.setAntiAlias(true);
        this.f26647b.setColor(Color.parseColor("#ffffff"));
        this.f26647b.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f26649d == null) {
            this.f26649d = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        }
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, getWidth() / 2, this.f26646a);
        canvas.drawArc(this.f26649d, 0.0f, (this.f26650e * 360) / this.f26648c, true, this.f26647b);
    }

    public void setMax(int i9) {
        this.f26648c = i9;
    }

    public void setProgress(int i9) {
        this.f26650e = i9;
        invalidate();
    }

    public ItemDownloadProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26646a = new Paint();
        this.f26647b = new Paint();
        this.f26648c = 100;
        a();
    }

    public ItemDownloadProgressView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26646a = new Paint();
        this.f26647b = new Paint();
        this.f26648c = 100;
        a();
    }
}
