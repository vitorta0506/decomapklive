package com.yalantis.ucrop.view.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.R$color;
import com.yalantis.ucrop.R$dimen;
import com.yalantis.ucrop.R$styleable;
import com.yalantis.ucrop.model.AspectRatio;
import java.util.Locale;
/* loaded from: classes5.dex */
public class AspectRatioTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private final float f37746a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f37747b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f37748c;

    /* renamed from: d  reason: collision with root package name */
    private int f37749d;

    /* renamed from: e  reason: collision with root package name */
    private float f37750e;

    /* renamed from: f  reason: collision with root package name */
    private String f37751f;

    /* renamed from: g  reason: collision with root package name */
    private float f37752g;

    /* renamed from: h  reason: collision with root package name */
    private float f37753h;

    public AspectRatioTextView(Context context) {
        this(context, null);
    }

    private void a(@ColorInt int i9) {
        Paint paint = this.f37748c;
        if (paint != null) {
            paint.setColor(i9);
        }
        setTextColor(new ColorStateList(new int[][]{new int[]{16842913}, new int[]{0}}, new int[]{i9, ContextCompat.getColor(getContext(), R$color.ucrop_color_widget)}));
    }

    private void c(@NonNull TypedArray typedArray) {
        setGravity(1);
        this.f37751f = typedArray.getString(R$styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_title);
        this.f37752g = typedArray.getFloat(R$styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_x, 0.0f);
        float f10 = typedArray.getFloat(R$styleable.ucrop_AspectRatioTextView_ucrop_artv_ratio_y, 0.0f);
        this.f37753h = f10;
        float f11 = this.f37752g;
        if (f11 != 0.0f && f10 != 0.0f) {
            this.f37750e = f11 / f10;
        } else {
            this.f37750e = 0.0f;
        }
        this.f37749d = getContext().getResources().getDimensionPixelSize(R$dimen.ucrop_size_dot_scale_text_view);
        Paint paint = new Paint(1);
        this.f37748c = paint;
        paint.setStyle(Paint.Style.FILL);
        d();
        a(getResources().getColor(R$color.ucrop_color_widget_active));
        typedArray.recycle();
    }

    private void d() {
        if (TextUtils.isEmpty(this.f37751f)) {
            setText(String.format(Locale.US, "%d:%d", Integer.valueOf((int) this.f37752g), Integer.valueOf((int) this.f37753h)));
        } else {
            setText(this.f37751f);
        }
    }

    private void e() {
        if (this.f37750e != 0.0f) {
            float f10 = this.f37752g;
            float f11 = this.f37753h;
            this.f37752g = f11;
            this.f37753h = f10;
            this.f37750e = f11 / f10;
        }
    }

    public float b(boolean z10) {
        if (z10) {
            e();
            d();
        }
        return this.f37750e;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isSelected()) {
            canvas.getClipBounds(this.f37747b);
            Rect rect = this.f37747b;
            float f10 = rect.bottom - (rect.top / 2.0f);
            int i9 = this.f37749d;
            canvas.drawCircle((rect.right - rect.left) / 2.0f, f10 - (i9 * 1.5f), i9 / 2.0f, this.f37748c);
        }
    }

    public void setActiveColor(@ColorInt int i9) {
        a(i9);
        invalidate();
    }

    public void setAspectRatio(@NonNull AspectRatio aspectRatio) {
        this.f37751f = aspectRatio.a();
        this.f37752g = aspectRatio.b();
        float c10 = aspectRatio.c();
        this.f37753h = c10;
        float f10 = this.f37752g;
        if (f10 != 0.0f && c10 != 0.0f) {
            this.f37750e = f10 / c10;
        } else {
            this.f37750e = 0.0f;
        }
        d();
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AspectRatioTextView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f37746a = 1.5f;
        this.f37747b = new Rect();
        c(context.obtainStyledAttributes(attributeSet, R$styleable.ucrop_AspectRatioTextView));
    }
}
