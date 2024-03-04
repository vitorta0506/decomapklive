package com.guochao.faceshow.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes4.dex */
public class ShapedImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f26742a;

    /* renamed from: b  reason: collision with root package name */
    private float f26743b;

    /* renamed from: c  reason: collision with root package name */
    private float f26744c;

    /* renamed from: d  reason: collision with root package name */
    private float f26745d;

    /* renamed from: e  reason: collision with root package name */
    private float f26746e;

    /* renamed from: f  reason: collision with root package name */
    private Shape f26747f;

    /* renamed from: g  reason: collision with root package name */
    private Paint f26748g;

    public ShapedImageView(Context context) {
        super(context);
        this.f26742a = 0;
        this.f26743b = 0.0f;
        this.f26744c = 0.0f;
        this.f26745d = 0.0f;
        this.f26746e = 0.0f;
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        setLayerType(2, null);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ShapedImageView);
            this.f26742a = obtainStyledAttributes.getInt(5, 0);
            float dimension = obtainStyledAttributes.getDimension(4, 0.0f);
            if (dimension > 0.0f) {
                this.f26743b = dimension;
                this.f26744c = dimension;
                this.f26745d = dimension;
                this.f26746e = dimension;
            } else {
                this.f26743b = obtainStyledAttributes.getDimension(1, 0.0f);
                this.f26744c = obtainStyledAttributes.getDimension(3, 0.0f);
                this.f26745d = obtainStyledAttributes.getDimension(2, 0.0f);
                this.f26746e = obtainStyledAttributes.getDimension(0, 0.0f);
            }
            obtainStyledAttributes.recycle();
        }
        Paint paint = new Paint();
        this.f26748g = paint;
        paint.setAntiAlias(true);
        this.f26748g.setFilterBitmap(true);
        this.f26748g.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f26748g.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Shape shape;
        int saveCount = canvas.getSaveCount();
        canvas.save();
        super.onDraw(canvas);
        int i9 = this.f26742a;
        if ((i9 == 1 || i9 == 2) && (shape = this.f26747f) != null) {
            shape.draw(canvas, this.f26748g);
        }
        canvas.restoreToCount(saveCount);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        if (z10) {
            if (this.f26742a == 2) {
                float min = Math.min(getWidth(), getHeight()) / 2.0f;
                this.f26743b = min;
                this.f26744c = min;
                this.f26745d = min;
                this.f26746e = min;
            }
            if (this.f26747f == null) {
                float f10 = this.f26744c;
                float f11 = this.f26745d;
                float f12 = this.f26746e;
                float f13 = this.f26743b;
                this.f26747f = new RoundRectShape(new float[]{f10, f10, f11, f11, f12, f12, f13, f13}, null, null);
            }
            this.f26747f.resize(getWidth(), getHeight());
        }
    }

    public ShapedImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26742a = 0;
        this.f26743b = 0.0f;
        this.f26744c = 0.0f;
        this.f26745d = 0.0f;
        this.f26746e = 0.0f;
        a(attributeSet);
    }

    public ShapedImageView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26742a = 0;
        this.f26743b = 0.0f;
        this.f26744c = 0.0f;
        this.f26745d = 0.0f;
        this.f26746e = 0.0f;
        a(attributeSet);
    }
}
