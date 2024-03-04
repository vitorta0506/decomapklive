package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class ImageCropView extends GifImageView {

    /* renamed from: h  reason: collision with root package name */
    Paint f23768h;

    /* renamed from: i  reason: collision with root package name */
    int f23769i;

    /* renamed from: j  reason: collision with root package name */
    PorterDuffXfermode f23770j;

    /* renamed from: k  reason: collision with root package name */
    Bitmap f23771k;

    public ImageCropView(Context context) {
        super(context);
        this.f23770j = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
        b();
    }

    private void b() {
        Paint paint = new Paint();
        this.f23768h = paint;
        paint.setColor(-1);
        this.f23768h.setDither(true);
        this.f23768h.setAntiAlias(true);
        this.f23769i = DensityUtil.dp2px(1.0f);
        this.f23768h.setStyle(Paint.Style.STROKE);
        this.f23768h.setStrokeWidth(this.f23769i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.f23771k;
        if (bitmap != null && bitmap.getWidth() == getWidth() && this.f23771k.getHeight() == getHeight()) {
            canvas.drawBitmap(this.f23771k, 0.0f, 0.0f, (Paint) null);
            return;
        }
        this.f23771k = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(this.f23771k);
        this.f23768h.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f23768h.setColor(Color.parseColor("#1a000000"));
        canvas2.drawRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), this.f23768h);
        this.f23768h.setXfermode(this.f23770j);
        this.f23768h.setColor(-1);
        this.f23768h.setStyle(Paint.Style.FILL_AND_STROKE);
        canvas2.drawCircle((getMeasuredWidth() - this.f23769i) / 2.0f, (getMeasuredHeight() - this.f23769i) / 2.0f, (getMeasuredWidth() - this.f23769i) / 2.0f, this.f23768h);
        this.f23768h.setXfermode(null);
        this.f23768h.setStyle(Paint.Style.STROKE);
        this.f23768h.setColor(-1);
        canvas2.drawCircle((getMeasuredWidth() - this.f23769i) / 2.0f, (getMeasuredHeight() - this.f23769i) / 2.0f, (getMeasuredWidth() - this.f23769i) / 2.0f, this.f23768h);
        canvas.drawBitmap(this.f23771k, 0.0f, 0.0f, (Paint) null);
    }

    public ImageCropView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f23770j = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
        b();
    }

    public ImageCropView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23770j = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
        b();
    }
}
