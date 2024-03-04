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
public class ZZTimeRangeSlider extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f26886a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f26887b;

    /* renamed from: c  reason: collision with root package name */
    private final ThumbView f26888c;

    /* renamed from: d  reason: collision with root package name */
    private final ThumbView f26889d;

    /* renamed from: e  reason: collision with root package name */
    private int f26890e;

    /* renamed from: f  reason: collision with root package name */
    private int f26891f;

    /* renamed from: g  reason: collision with root package name */
    private int f26892g;

    /* renamed from: h  reason: collision with root package name */
    private int f26893h;

    /* renamed from: i  reason: collision with root package name */
    private int f26894i;

    /* renamed from: j  reason: collision with root package name */
    private int f26895j;

    /* renamed from: k  reason: collision with root package name */
    private int f26896k;

    /* renamed from: l  reason: collision with root package name */
    private int f26897l;

    /* renamed from: m  reason: collision with root package name */
    private float f26898m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26899n;

    /* renamed from: o  reason: collision with root package name */
    private a f26900o;

    /* loaded from: classes4.dex */
    public interface a {
        void a(int i9, int i10, int i11);

        void b(int i9);
    }

    public ZZTimeRangeSlider(Context context) {
        this(context, null);
    }

    private boolean b(int i9, int i10) {
        int i11;
        return i9 < 0 || i9 > (i11 = this.f26897l) || i10 < 0 || i10 > i11;
    }

    private boolean c(int i9) {
        return i9 > 1;
    }

    private void d(int i9) {
        float x10 = this.f26888c.getX() + i9;
        float intervalLength = getIntervalLength();
        int i10 = this.f26894i;
        int i11 = this.f26896k;
        float f10 = (this.f26895j / i11) * intervalLength;
        if (x10 <= (i10 / i11) * intervalLength || x10 >= f10 || x10 >= this.f26889d.getX() - this.f26893h) {
            return;
        }
        this.f26888c.setX(x10);
        int a10 = a(x10);
        if (this.f26888c.getRangeIndex() != a10) {
            this.f26888c.setTickIndex(a10);
            g(1);
        }
    }

    private void e(int i9) {
        float x10 = this.f26889d.getX() + i9;
        float intervalLength = getIntervalLength();
        int i10 = this.f26894i;
        int i11 = this.f26896k;
        float f10 = (this.f26895j / i11) * intervalLength;
        if (x10 <= (i10 / i11) * intervalLength || x10 >= f10 || x10 <= this.f26888c.getX() + this.f26893h) {
            return;
        }
        this.f26889d.setX(x10);
        int a10 = a(x10);
        if (this.f26889d.getRangeIndex() != a10) {
            this.f26889d.setTickIndex(a10);
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
        return getRangeLength() / this.f26897l;
    }

    private float getRangeLength() {
        int measuredWidth = getMeasuredWidth();
        int i9 = this.f26893h;
        if (measuredWidth < i9) {
            return 0.0f;
        }
        return measuredWidth - i9;
    }

    private void h() {
        int a10 = a(this.f26888c.getX());
        int rangeIndex = this.f26889d.getRangeIndex();
        if (a10 >= rangeIndex) {
            a10 = rangeIndex - 1;
        }
        if (f(this.f26888c, a10)) {
            g(1);
        }
        this.f26888c.setPressed(false);
    }

    private void i() {
        int a10 = a(this.f26889d.getX());
        int rangeIndex = this.f26888c.getRangeIndex();
        if (a10 <= rangeIndex) {
            a10 = rangeIndex + 1;
        }
        if (f(this.f26889d, a10)) {
            g(2);
        }
        this.f26889d.setPressed(false);
    }

    public int a(float f10) {
        return Math.round(f10 / getIntervalLength());
    }

    public int getLeftIndex() {
        return this.f26888c.getRangeIndex();
    }

    public int getRightIndex() {
        return this.f26889d.getRangeIndex();
    }

    public void j(int i9, int i10) {
        if (this.f26888c.getRangeIndex() != i9) {
            f(this.f26888c, i9);
        }
        if (this.f26889d.getRangeIndex() != i10) {
            f(this.f26889d, i10);
        }
        invalidate();
    }

    public void k(int i9, int i10) {
        if (!b(i9, i10)) {
            if (this.f26888c.getRangeIndex() != i9) {
                this.f26888c.setTickIndex(i9);
            }
            if (this.f26889d.getRangeIndex() != i10) {
                this.f26889d.setTickIndex(i10);
                return;
            }
            return;
        }
        try {
            throw new IllegalArgumentException("Thumb index left " + i9 + ", or right " + i10 + " is out of bounds. Check that it is greater than the minimum (" + this.f26894i + ") and less than the maximum value (" + this.f26895j + ")");
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = this.f26888c.getMeasuredWidth();
        float x10 = this.f26888c.getX();
        float x11 = this.f26889d.getX();
        float f10 = this.f26898m;
        float f11 = (measuredHeight - f10) / 2.0f;
        canvas.drawRect(measuredWidth + x10, f11, x11, f11 + f10, this.f26886a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int measuredWidth = this.f26888c.getMeasuredWidth();
        int measuredHeight = this.f26888c.getMeasuredHeight();
        this.f26888c.layout(0, 0, measuredWidth, measuredHeight);
        this.f26889d.layout(0, 0, measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), BasicMeasure.EXACTLY);
        super.onMeasure(makeMeasureSpec, i10);
        this.f26888c.measure(makeMeasureSpec, i10);
        this.f26889d.measure(makeMeasureSpec, i10);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        ThumbView thumbView = this.f26888c;
        f(thumbView, thumbView.getRangeIndex());
        ThumbView thumbView2 = this.f26889d;
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
                        if (!this.f26899n && Math.abs(x10 - this.f26891f) > this.f26890e) {
                            this.f26899n = true;
                        }
                        if (this.f26899n) {
                            int i9 = x10 - this.f26892g;
                            if (this.f26888c.isPressed()) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                                d(i9);
                                invalidate();
                            } else if (this.f26889d.isPressed()) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                                e(i9);
                                invalidate();
                            }
                            z10 = true;
                        }
                        this.f26892g = x10;
                        return z10;
                    } else if (action != 3) {
                        return false;
                    }
                }
                this.f26899n = false;
                this.f26892g = 0;
                this.f26891f = 0;
                getParent().requestDisallowInterceptTouchEvent(false);
                if (this.f26888c.isPressed()) {
                    h();
                    invalidate();
                    a aVar = this.f26900o;
                    if (aVar != null) {
                        aVar.a(1, this.f26888c.getRangeIndex(), this.f26889d.getRangeIndex());
                    }
                } else if (!this.f26889d.isPressed()) {
                    return false;
                } else {
                    i();
                    invalidate();
                    a aVar2 = this.f26900o;
                    if (aVar2 != null) {
                        aVar2.a(2, this.f26888c.getRangeIndex(), this.f26889d.getRangeIndex());
                    }
                }
            } else {
                int x11 = (int) motionEvent.getX();
                int y10 = (int) motionEvent.getY();
                this.f26891f = x11;
                this.f26892g = x11;
                this.f26899n = false;
                if (!this.f26888c.isPressed() && this.f26888c.a(x11, y10)) {
                    this.f26888c.setPressed(true);
                    a aVar3 = this.f26900o;
                    if (aVar3 != null) {
                        aVar3.b(1);
                    }
                } else if (this.f26889d.isPressed() || !this.f26889d.a(x11, y10)) {
                    return false;
                } else {
                    this.f26889d.setPressed(true);
                    a aVar4 = this.f26900o;
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
        this.f26888c.setThumbDrawable(drawable);
    }

    public void setLineColor(int i9) {
        this.f26886a.setColor(i9);
    }

    public void setLineSize(float f10) {
        this.f26898m = f10;
    }

    public void setMaskColor(int i9) {
        this.f26887b.setColor(i9);
    }

    public void setRangeChangeListener(a aVar) {
        this.f26900o = aVar;
    }

    public void setRightThumbDrawable(Drawable drawable) {
        this.f26889d.setThumbDrawable(drawable);
    }

    public void setThumbWidth(int i9) {
        this.f26893h = i9;
        this.f26888c.setThumbWidth(i9);
        this.f26889d.setThumbWidth(i9);
    }

    public void setTickCount(int i9) {
        int i10 = (i9 - this.f26894i) / this.f26896k;
        if (c(i10)) {
            this.f26895j = i9;
            this.f26897l = i10;
            this.f26889d.setTickIndex(i10);
            return;
        }
        throw new IllegalArgumentException("tickCount less than 2; invalid tickCount.");
    }

    public ZZTimeRangeSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZZTimeRangeSlider(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26894i = 0;
        this.f26895j = 5;
        this.f26896k = 1;
        this.f26897l = (5 - 0) / 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RangeSlider, 0, 0);
        this.f26893h = obtainStyledAttributes.getDimensionPixelOffset(9, 7);
        this.f26898m = obtainStyledAttributes.getDimensionPixelOffset(3, 1);
        Paint paint = new Paint();
        this.f26887b = paint;
        paint.setColor(obtainStyledAttributes.getColor(4, -1610612736));
        Paint paint2 = new Paint();
        this.f26886a = paint2;
        paint2.setColor(obtainStyledAttributes.getColor(2, ViewCompat.MEASURED_STATE_MASK));
        this.f26890e = ViewConfiguration.get(context).getScaledTouchSlop();
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(7);
        ThumbView thumbView = new ThumbView(context, this.f26893h, drawable == null ? new ColorDrawable(ViewCompat.MEASURED_STATE_MASK) : drawable);
        this.f26888c = thumbView;
        ThumbView thumbView2 = new ThumbView(context, this.f26893h, drawable2 == null ? new ColorDrawable(ViewCompat.MEASURED_STATE_MASK) : drawable2);
        this.f26889d = thumbView2;
        setTickCount(obtainStyledAttributes.getInteger(10, 5));
        k(obtainStyledAttributes.getInteger(1, 0), obtainStyledAttributes.getInteger(8, this.f26897l));
        obtainStyledAttributes.recycle();
        addView(thumbView);
        addView(thumbView2);
        setWillNotDraw(false);
    }
}
