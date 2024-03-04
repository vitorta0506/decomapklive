package com.yalantis.ucrop.view.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.core.content.ContextCompat;
import com.yalantis.ucrop.R$color;
import com.yalantis.ucrop.R$dimen;
/* loaded from: classes5.dex */
public class HorizontalProgressWheelView extends View {

    /* renamed from: a  reason: collision with root package name */
    private final Rect f37754a;

    /* renamed from: b  reason: collision with root package name */
    private a f37755b;

    /* renamed from: c  reason: collision with root package name */
    private float f37756c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f37757d;

    /* renamed from: e  reason: collision with root package name */
    private Paint f37758e;

    /* renamed from: f  reason: collision with root package name */
    private int f37759f;

    /* renamed from: g  reason: collision with root package name */
    private int f37760g;

    /* renamed from: h  reason: collision with root package name */
    private int f37761h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f37762i;

    /* renamed from: j  reason: collision with root package name */
    private float f37763j;

    /* renamed from: k  reason: collision with root package name */
    private int f37764k;

    /* loaded from: classes5.dex */
    public interface a {
        void a();

        void b();

        void c(float f10, float f11);
    }

    public HorizontalProgressWheelView(Context context) {
        this(context, null);
    }

    private void a() {
        this.f37764k = ContextCompat.getColor(getContext(), R$color.ucrop_color_widget_rotate_mid_line);
        this.f37759f = getContext().getResources().getDimensionPixelSize(R$dimen.ucrop_width_horizontal_wheel_progress_line);
        this.f37760g = getContext().getResources().getDimensionPixelSize(R$dimen.ucrop_height_horizontal_wheel_progress_line);
        this.f37761h = getContext().getResources().getDimensionPixelSize(R$dimen.ucrop_margin_horizontal_wheel_progress_line);
        Paint paint = new Paint(1);
        this.f37757d = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f37757d.setStrokeWidth(this.f37759f);
        this.f37757d.setColor(getResources().getColor(R$color.ucrop_color_progress_wheel_line));
        Paint paint2 = new Paint(this.f37757d);
        this.f37758e = paint2;
        paint2.setColor(this.f37764k);
        this.f37758e.setStrokeCap(Paint.Cap.ROUND);
        this.f37758e.setStrokeWidth(getContext().getResources().getDimensionPixelSize(R$dimen.ucrop_width_middle_wheel_progress_line));
    }

    private void b(MotionEvent motionEvent, float f10) {
        this.f37763j -= f10;
        postInvalidate();
        this.f37756c = motionEvent.getX();
        a aVar = this.f37755b;
        if (aVar != null) {
            aVar.c(-f10, this.f37763j);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.getClipBounds(this.f37754a);
        int width = this.f37754a.width();
        int i9 = this.f37759f;
        int i10 = this.f37761h;
        int i11 = width / (i9 + i10);
        float f10 = this.f37763j % (i10 + i9);
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i11 / 4;
            if (i12 < i13) {
                this.f37757d.setAlpha((int) ((i12 / i13) * 255.0f));
            } else if (i12 > (i11 * 3) / 4) {
                this.f37757d.setAlpha((int) (((i11 - i12) / i13) * 255.0f));
            } else {
                this.f37757d.setAlpha(255);
            }
            float f11 = -f10;
            Rect rect = this.f37754a;
            float f12 = rect.left + f11 + ((this.f37759f + this.f37761h) * i12);
            float centerY = rect.centerY() - (this.f37760g / 4.0f);
            Rect rect2 = this.f37754a;
            canvas.drawLine(f12, centerY, f11 + rect2.left + ((this.f37759f + this.f37761h) * i12), rect2.centerY() + (this.f37760g / 4.0f), this.f37757d);
        }
        canvas.drawLine(this.f37754a.centerX(), this.f37754a.centerY() - (this.f37760g / 2.0f), this.f37754a.centerX(), (this.f37760g / 2.0f) + this.f37754a.centerY(), this.f37758e);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f37756c = motionEvent.getX();
        } else if (action == 1) {
            a aVar = this.f37755b;
            if (aVar != null) {
                this.f37762i = false;
                aVar.a();
            }
        } else if (action == 2) {
            float x10 = motionEvent.getX() - this.f37756c;
            if (x10 != 0.0f) {
                if (!this.f37762i) {
                    this.f37762i = true;
                    a aVar2 = this.f37755b;
                    if (aVar2 != null) {
                        aVar2.b();
                    }
                }
                b(motionEvent, x10);
            }
        }
        return true;
    }

    public void setMiddleLineColor(@ColorInt int i9) {
        this.f37764k = i9;
        this.f37758e.setColor(i9);
        invalidate();
    }

    public void setScrollingListener(a aVar) {
        this.f37755b = aVar;
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public HorizontalProgressWheelView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f37754a = new Rect();
        a();
    }
}
