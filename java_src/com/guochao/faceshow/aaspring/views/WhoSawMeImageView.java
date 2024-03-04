package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class WhoSawMeImageView extends NewCircleImageView {

    /* renamed from: c  reason: collision with root package name */
    private boolean f24143c;

    /* renamed from: d  reason: collision with root package name */
    private int[] f24144d;

    /* renamed from: e  reason: collision with root package name */
    private int[] f24145e;

    /* renamed from: f  reason: collision with root package name */
    Paint f24146f;

    /* renamed from: g  reason: collision with root package name */
    RectF f24147g;

    /* renamed from: h  reason: collision with root package name */
    int f24148h;

    public WhoSawMeImageView(Context context) {
        super(context);
        this.f24143c = true;
        this.f24146f = new Paint();
        this.f24147g = new RectF();
        b();
    }

    void b() {
        this.f24144d = new int[]{Color.parseColor("#C5C6FF"), Color.parseColor("#C5C6FF")};
        this.f24145e = new int[]{Color.parseColor("#9259FE"), Color.parseColor("#6365FF")};
        setStrokeColor(-1);
        setStrokeWidth(DensityUtil.dp2px(2.5f));
        this.f24146f.setDither(true);
        this.f24146f.setAntiAlias(true);
        this.f24146f.setStyle(Paint.Style.STROKE);
        Paint paint = this.f24146f;
        int dp2px = DensityUtil.dp2px(2.5f);
        this.f24148h = dp2px;
        paint.setStrokeWidth(dp2px);
        hc.a.j(this, b8.e.g().c().getAvatarUrl());
    }

    public void c(int i9, int i10) {
        int[] iArr = this.f24144d;
        iArr[0] = i9;
        iArr[1] = i10;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.imageview.ShapeableImageView, android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f24146f.setColor(-1);
        super.onDraw(canvas);
        if (!this.f24143c) {
            canvas.drawCircle(measuredWidth / 2.0f, measuredHeight / 2.0f, (measuredWidth - this.f24148h) / 2.0f, this.f24146f);
            return;
        }
        this.f24146f.setColor(-1);
        float f10 = measuredWidth;
        float f11 = measuredHeight;
        this.f24147g.set(0.0f, 0.0f, f10, f11);
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.f24144d, (float[]) null, Shader.TileMode.MIRROR);
        LinearGradient linearGradient2 = new LinearGradient(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.f24145e, (float[]) null, Shader.TileMode.MIRROR);
        Paint paint = this.f24146f;
        int dp2px = DensityUtil.dp2px(10.0f);
        this.f24148h = dp2px;
        paint.setStrokeWidth(dp2px);
        this.f24146f.setShader(linearGradient2);
        float f12 = (measuredWidth - this.f24148h) / 2.0f;
        float f13 = f10 / 2.0f;
        float f14 = f11 / 2.0f;
        canvas.drawCircle(f13, f14, f12, this.f24146f);
        Paint paint2 = this.f24146f;
        int dp2px2 = DensityUtil.dp2px(2.5f);
        this.f24148h = dp2px2;
        paint2.setStrokeWidth(dp2px2);
        this.f24146f.setShader(linearGradient);
        canvas.drawCircle(f13, f14, f12 - (this.f24148h * 2), this.f24146f);
        this.f24146f.setShader(null);
    }

    public void setDrawEnabled(boolean z10) {
        this.f24143c = z10;
        invalidate();
    }

    public WhoSawMeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24143c = true;
        this.f24146f = new Paint();
        this.f24147g = new RectF();
        b();
    }

    public WhoSawMeImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24143c = true;
        this.f24146f = new Paint();
        this.f24147g = new RectF();
        b();
    }
}
