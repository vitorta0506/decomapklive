package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.R;
import com.guochao.faceshow.R$styleable;
import com.guochao.faceshow.utils.DensityUtil;
/* loaded from: classes3.dex */
public class ShadowLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    RectF f24019a;

    /* renamed from: b  reason: collision with root package name */
    Paint f24020b;

    /* renamed from: c  reason: collision with root package name */
    float f24021c;

    /* renamed from: d  reason: collision with root package name */
    float f24022d;

    /* renamed from: e  reason: collision with root package name */
    float f24023e;

    /* renamed from: f  reason: collision with root package name */
    float f24024f;

    /* renamed from: g  reason: collision with root package name */
    int f24025g;

    /* renamed from: h  reason: collision with root package name */
    Paint f24026h;

    /* renamed from: i  reason: collision with root package name */
    Rect f24027i;

    /* renamed from: j  reason: collision with root package name */
    NinePatchDrawable f24028j;

    public ShadowLayout(@NonNull Context context) {
        this(context, null);
    }

    private void a(AttributeSet attributeSet) {
        setWillNotDraw(false);
        if (Build.VERSION.SDK_INT <= 27) {
            this.f24028j = (NinePatchDrawable) getResources().getDrawable(R.drawable.personal_like_list_bj);
            return;
        }
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ShadowLayout);
            this.f24021c = obtainStyledAttributes.getFloat(1, 0.0f);
            this.f24022d = obtainStyledAttributes.getFloat(2, 7.0f);
            this.f24023e = obtainStyledAttributes.getFloat(3, 15.0f);
            this.f24024f = obtainStyledAttributes.getDimensionPixelOffset(4, 15);
            this.f24025g = obtainStyledAttributes.getColor(0, Color.parseColor("#3bDDDFE0"));
            obtainStyledAttributes.recycle();
        }
        Paint paint = new Paint();
        this.f24020b = paint;
        paint.setColor(-1);
        this.f24019a = new RectF();
        this.f24020b.setShadowLayer(this.f24023e, this.f24021c, this.f24022d, this.f24025g);
        Paint paint2 = new Paint();
        this.f24026h = paint2;
        paint2.setColor(-1);
        this.f24027i = new Rect();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f24028j != null) {
            canvas.save();
            canvas.translate(-DensityUtil.dp2px(10.0f), 0.0f);
            this.f24028j.draw(canvas);
            canvas.restore();
            return;
        }
        this.f24019a.set(0.0f, 0.0f, getWidth(), getHeight());
        RectF rectF = this.f24019a;
        float f10 = this.f24024f;
        canvas.drawRoundRect(rectF, f10, f10, this.f24020b);
        this.f24027i.set(0, 0, getWidth(), (int) (this.f24024f * 2.0f));
        canvas.drawRect(this.f24027i, this.f24026h);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        NinePatchDrawable ninePatchDrawable = this.f24028j;
        if (ninePatchDrawable != null) {
            ninePatchDrawable.setBounds(0, 0, i9 + DensityUtil.dp2px(20.0f), i10 + DensityUtil.dp2px(10.0f));
        }
    }

    public ShadowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a(attributeSet);
    }
}
