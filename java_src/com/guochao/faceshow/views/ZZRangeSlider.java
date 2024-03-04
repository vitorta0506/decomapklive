package com.guochao.faceshow.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes4.dex */
public class ZZRangeSlider extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f26861a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f26862b;

    /* renamed from: c  reason: collision with root package name */
    private final ThumbView f26863c;

    /* renamed from: d  reason: collision with root package name */
    private final ThumbView f26864d;

    /* renamed from: e  reason: collision with root package name */
    private int f26865e;

    /* renamed from: f  reason: collision with root package name */
    private int f26866f;

    /* renamed from: g  reason: collision with root package name */
    private int f26867g;

    /* renamed from: h  reason: collision with root package name */
    private int f26868h;

    /* renamed from: i  reason: collision with root package name */
    private int f26869i;

    /* renamed from: j  reason: collision with root package name */
    private int f26870j;

    /* renamed from: k  reason: collision with root package name */
    private int f26871k;

    /* renamed from: l  reason: collision with root package name */
    private int f26872l;

    /* renamed from: m  reason: collision with root package name */
    private float f26873m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26874n;

    /* renamed from: o  reason: collision with root package name */
    private a f26875o;

    /* loaded from: classes4.dex */
    public interface a {
        void a(int i9, int i10, int i11);

        void b(int i9);
    }

    public ZZRangeSlider(Context context) {
        this(context, null);
    }

    private boolean b(int i9, int i10) {
        int i11;
        return i9 < 0 || i9 > (i11 = this.f26872l) || i10 < 0 || i10 > i11;
    }

    private boolean c(int i9) {
        return i9 > 1;
    }

    private void d(int i9) {
        float x10 = this.f26863c.getX() + i9;
        float intervalLength = getIntervalLength();
        int i10 = this.f26869i;
        int i11 = this.f26871k;
        float f10 = (this.f26870j / i11) * intervalLength;
        if (x10 <= (i10 / i11) * intervalLength || x10 >= f10 || x10 >= this.f26864d.getX() - this.f26868h) {
            return;
        }
        this.f26863c.setX(x10);
        int a10 = a(x10);
        if (this.f26863c.getRangeIndex() != a10) {
            this.f26863c.setTickIndex(a10);
            g(1);
        }
    }

    private void e(int i9) {
        float x10 = this.f26864d.getX() + i9;
        float intervalLength = getIntervalLength();
        int i10 = this.f26869i;
        int i11 = this.f26871k;
        float f10 = (this.f26870j / i11) * intervalLength;
        if (x10 <= (i10 / i11) * intervalLength || x10 >= f10 || x10 <= this.f26863c.getX() + this.f26868h) {
            return;
        }
        this.f26864d.setX(x10);
        int a10 = a(x10);
        if (this.f26864d.getRangeIndex() != a10) {
            this.f26864d.setTickIndex(a10);
            g(2);
        }
    }

    private boolean f(ThumbView thumbView, int i9) {
        thumbView.setX(i9 * getIntervalLength());
        if (thumbView.getRangeIndex() != i9) {
            thumbView.setTickIndex(i9);
            return true;
        }
        return false;
    }

    private void g(int i9) {
    }

    private float getIntervalLength() {
        return getRangeLength() / this.f26872l;
    }

    private float getRangeLength() {
        int measuredWidth = getMeasuredWidth();
        int i9 = this.f26868h;
        if (measuredWidth < i9) {
            return 0.0f;
        }
        return measuredWidth - i9;
    }

    private void h() {
        int a10 = a(this.f26863c.getX());
        int rangeIndex = this.f26864d.getRangeIndex();
        if (a10 >= rangeIndex) {
            a10 = rangeIndex - 1;
        }
        if (f(this.f26863c, a10)) {
            g(1);
        }
        this.f26863c.setPressed(false);
    }

    private void i() {
        int a10 = a(this.f26864d.getX());
        int rangeIndex = this.f26863c.getRangeIndex();
        if (a10 <= rangeIndex) {
            a10 = rangeIndex + 1;
        }
        if (f(this.f26864d, a10)) {
            g(2);
        }
        this.f26864d.setPressed(false);
    }

    public int a(float f10) {
        return Math.round(f10 / getIntervalLength());
    }

    public int getLeftIndex() {
        return this.f26863c.getRangeIndex();
    }

    public int getRightIndex() {
        return this.f26864d.getRangeIndex();
    }

    public void j(int i9, int i10) {
        if (!b(i9, i10)) {
            if (this.f26863c.getRangeIndex() != i9) {
                this.f26863c.setTickIndex(i9);
            }
            if (this.f26864d.getRangeIndex() != i10) {
                this.f26864d.setTickIndex(i10);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Thumb index left " + i9 + ", or right " + i10 + " is out of bounds. Check that it is greater than the minimum (" + this.f26869i + ") and less than the maximum value (" + this.f26870j + ")");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int measuredWidth2 = this.f26863c.getMeasuredWidth();
        float x10 = this.f26863c.getX();
        float x11 = this.f26864d.getX();
        float f10 = this.f26873m;
        float f11 = measuredHeight;
        float f12 = measuredWidth2 + x10;
        canvas.drawRect(f12, 0.0f, x11, f10, this.f26861a);
        canvas.drawRect(f12, f11 - f10, x11, f11, this.f26861a);
        int i9 = this.f26868h;
        if (x10 > i9) {
            canvas.drawRect(0.0f, 0.0f, x10 + i9, f11, this.f26862b);
        }
        if (x11 < measuredWidth - this.f26868h) {
            canvas.drawRect(x11, 0.0f, measuredWidth, f11, this.f26862b);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int measuredWidth = this.f26863c.getMeasuredWidth();
        int measuredHeight = this.f26863c.getMeasuredHeight();
        this.f26863c.layout(0, 0, measuredWidth, measuredHeight);
        this.f26864d.layout(0, 0, measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), BasicMeasure.EXACTLY);
        super.onMeasure(makeMeasureSpec, i10);
        this.f26863c.measure(makeMeasureSpec, i10);
        this.f26864d.measure(makeMeasureSpec, i10);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        ThumbView thumbView = this.f26863c;
        f(thumbView, thumbView.getRangeIndex());
        ThumbView thumbView2 = this.f26864d;
        f(thumbView2, thumbView2.getRangeIndex());
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10 = false;
        if (isEnabled()) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1) {
                    if (action == 2) {
                        int x10 = (int) motionEvent.getX();
                        if (!this.f26874n && Math.abs(x10 - this.f26866f) > this.f26865e) {
                            this.f26874n = true;
                        }
                        if (this.f26874n) {
                            int i9 = x10 - this.f26867g;
                            if (this.f26863c.isPressed()) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                                d(i9);
                                invalidate();
                            } else if (this.f26864d.isPressed()) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                                e(i9);
                                invalidate();
                            }
                            z10 = true;
                        }
                        this.f26867g = x10;
                        return z10;
                    } else if (action != 3) {
                        return false;
                    }
                }
                this.f26874n = false;
                this.f26867g = 0;
                this.f26866f = 0;
                getParent().requestDisallowInterceptTouchEvent(false);
                if (this.f26863c.isPressed()) {
                    h();
                    invalidate();
                    a aVar = this.f26875o;
                    if (aVar != null) {
                        aVar.a(1, this.f26863c.getRangeIndex(), this.f26864d.getRangeIndex());
                    }
                } else if (!this.f26864d.isPressed()) {
                    return false;
                } else {
                    i();
                    invalidate();
                    a aVar2 = this.f26875o;
                    if (aVar2 != null) {
                        aVar2.a(2, this.f26863c.getRangeIndex(), this.f26864d.getRangeIndex());
                    }
                }
            } else {
                int x11 = (int) motionEvent.getX();
                int y10 = (int) motionEvent.getY();
                this.f26866f = x11;
                this.f26867g = x11;
                this.f26874n = false;
                if (!this.f26863c.isPressed() && this.f26863c.a(x11, y10)) {
                    this.f26863c.setPressed(true);
                    a aVar3 = this.f26875o;
                    if (aVar3 != null) {
                        aVar3.b(1);
                    }
                } else if (this.f26864d.isPressed() || !this.f26864d.a(x11, y10)) {
                    return false;
                } else {
                    this.f26864d.setPressed(true);
                    a aVar4 = this.f26875o;
                    if (aVar4 != null) {
                        aVar4.b(2);
                    }
                }
            }
            return true;
        }
        return false;
    }

    public void setLeftThumbDrawable(Drawable drawable) {
        this.f26863c.setThumbDrawable(drawable);
    }

    public void setLineColor(int i9) {
        this.f26861a.setColor(i9);
    }

    public void setLineSize(float f10) {
        this.f26873m = f10;
    }

    public void setMaskColor(int i9) {
        this.f26862b.setColor(i9);
    }

    public void setRangeChangeListener(a aVar) {
        this.f26875o = aVar;
    }

    public void setRightThumbDrawable(Drawable drawable) {
        this.f26864d.setThumbDrawable(drawable);
    }

    public void setThumbWidth(int i9) {
        this.f26868h = i9;
        this.f26863c.setThumbWidth(i9);
        this.f26864d.setThumbWidth(i9);
    }

    public void setTickCount(int i9) {
        int i10 = (i9 - this.f26869i) / this.f26871k;
        if (c(i10)) {
            this.f26870j = i9;
            this.f26872l = i10;
            this.f26864d.setTickIndex(i10);
            return;
        }
        throw new IllegalArgumentException("tickCount less than 2; invalid tickCount.");
    }

    public ZZRangeSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZZRangeSlider(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26869i = 0;
        this.f26870j = 5;
        this.f26871k = 1;
        this.f26872l = (5 - 0) / 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RangeSlider, 0, 0);
        this.f26868h = obtainStyledAttributes.getDimensionPixelOffset(9, 7);
        this.f26873m = obtainStyledAttributes.getDimensionPixelOffset(3, 1);
        Paint paint = new Paint();
        this.f26862b = paint;
        paint.setColor(obtainStyledAttributes.getColor(4, -1610612736));
        Paint paint2 = new Paint();
        this.f26861a = paint2;
        paint2.setColor(obtainStyledAttributes.getColor(2, ViewCompat.MEASURED_STATE_MASK));
        this.f26865e = ViewConfiguration.get(context).getScaledTouchSlop();
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(7);
        ThumbView thumbView = new ThumbView(context, this.f26868h, drawable == null ? new ColorDrawable(ViewCompat.MEASURED_STATE_MASK) : drawable);
        this.f26863c = thumbView;
        ThumbView thumbView2 = new ThumbView(context, this.f26868h, drawable2 == null ? new ColorDrawable(ViewCompat.MEASURED_STATE_MASK) : drawable2);
        this.f26864d = thumbView2;
        setTickCount(obtainStyledAttributes.getInteger(10, 5));
        j(obtainStyledAttributes.getInteger(1, 0), obtainStyledAttributes.getInteger(8, this.f26872l));
        obtainStyledAttributes.recycle();
        addView(thumbView);
        addView(thumbView2);
        setWillNotDraw(false);
    }
}
