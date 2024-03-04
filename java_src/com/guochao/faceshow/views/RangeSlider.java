package com.guochao.faceshow.views;

import android.animation.ValueAnimator;
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
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes4.dex */
public class RangeSlider extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f26688a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f26689b;

    /* renamed from: c  reason: collision with root package name */
    private final ThumbView f26690c;

    /* renamed from: d  reason: collision with root package name */
    private final ThumbView f26691d;

    /* renamed from: e  reason: collision with root package name */
    private int f26692e;

    /* renamed from: f  reason: collision with root package name */
    private int f26693f;

    /* renamed from: g  reason: collision with root package name */
    private int f26694g;

    /* renamed from: h  reason: collision with root package name */
    private int f26695h;

    /* renamed from: i  reason: collision with root package name */
    private int f26696i;

    /* renamed from: j  reason: collision with root package name */
    private int f26697j;

    /* renamed from: k  reason: collision with root package name */
    private int f26698k;

    /* renamed from: l  reason: collision with root package name */
    private int f26699l;

    /* renamed from: m  reason: collision with root package name */
    private float f26700m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f26701n;

    /* renamed from: o  reason: collision with root package name */
    private c f26702o;

    /* loaded from: classes4.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() - RangeSlider.this.f26690c.getX());
            if (floatValue != 0) {
                RangeSlider.this.h(floatValue);
                RangeSlider.this.invalidate();
            }
        }
    }

    /* loaded from: classes4.dex */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() - RangeSlider.this.f26691d.getX());
            if (floatValue != 0) {
                RangeSlider.this.i(floatValue);
                RangeSlider.this.invalidate();
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(int i9, int i10, int i11);

        void b(int i9);
    }

    public RangeSlider(Context context) {
        this(context, null);
    }

    private boolean f(int i9, int i10) {
        int i11;
        return i9 < 0 || i9 > (i11 = this.f26699l) || i10 < 0 || i10 > i11;
    }

    private boolean g(int i9) {
        return i9 > 1;
    }

    private float getIntervalLength() {
        return getRangeLength() / this.f26699l;
    }

    private float getRangeLength() {
        int measuredWidth = getMeasuredWidth();
        int i9 = this.f26695h;
        if (measuredWidth < i9) {
            return 0.0f;
        }
        return measuredWidth - i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i9) {
        float x10 = this.f26690c.getX() + i9;
        float intervalLength = getIntervalLength();
        int i10 = this.f26696i;
        int i11 = this.f26698k;
        float f10 = (this.f26697j / i11) * intervalLength;
        if (x10 <= (i10 / i11) * intervalLength || x10 >= f10 || x10 >= this.f26691d.getX() - this.f26695h) {
            return;
        }
        this.f26690c.setX(x10);
        int e10 = e(x10);
        if (this.f26690c.getRangeIndex() != e10) {
            this.f26690c.setTickIndex(e10);
            k(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(int i9) {
        float x10 = this.f26691d.getX() + i9;
        float intervalLength = getIntervalLength();
        int i10 = this.f26696i;
        int i11 = this.f26698k;
        float f10 = (this.f26697j / i11) * intervalLength;
        if (x10 <= (i10 / i11) * intervalLength || x10 >= f10 || x10 <= this.f26690c.getX() + this.f26695h) {
            return;
        }
        this.f26691d.setX(x10);
        int e10 = e(x10);
        if (this.f26691d.getRangeIndex() != e10) {
            this.f26691d.setTickIndex(e10);
            k(2);
        }
    }

    private boolean j(ThumbView thumbView, int i9) {
        thumbView.setX(i9 * getIntervalLength());
        if (thumbView.getRangeIndex() != i9) {
            thumbView.setTickIndex(i9);
            return true;
        }
        return false;
    }

    private void k(int i9) {
    }

    private void l() {
        int e10 = e(this.f26690c.getX());
        int rangeIndex = this.f26691d.getRangeIndex();
        if (e10 >= rangeIndex) {
            e10 = rangeIndex - 1;
        }
        if (j(this.f26690c, e10)) {
            k(1);
        }
        this.f26690c.setPressed(false);
    }

    private void m() {
        int e10 = e(this.f26691d.getX());
        int rangeIndex = this.f26690c.getRangeIndex();
        if (e10 <= rangeIndex) {
            e10 = rangeIndex + 1;
        }
        if (j(this.f26691d, e10)) {
            k(2);
        }
        this.f26691d.setPressed(false);
    }

    public int e(float f10) {
        return Math.round(f10 / getIntervalLength());
    }

    public int getLeftIndex() {
        return this.f26690c.getRangeIndex();
    }

    public int getRightIndex() {
        return this.f26691d.getRangeIndex();
    }

    public void n() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f26690c.getX(), 0.0f);
        ofFloat.setDuration(200L);
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(this.f26691d.getX(), getMeasuredWidth());
        ofFloat2.setDuration(200L);
        ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addUpdateListener(new a());
        ofFloat2.addUpdateListener(new b());
        ofFloat.start();
        ofFloat2.start();
    }

    public void o(int i9, int i10) {
        if (!f(i9, i10)) {
            if (this.f26690c.getRangeIndex() != i9) {
                this.f26690c.setTickIndex(i9);
            }
            if (this.f26691d.getRangeIndex() != i10) {
                this.f26691d.setTickIndex(i10);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Thumb index left " + i9 + ", or right " + i10 + " is out of bounds. Check that it is greater than the minimum (" + this.f26696i + ") and less than the maximum value (" + this.f26697j + ")");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int measuredWidth2 = this.f26690c.getMeasuredWidth();
        float x10 = this.f26690c.getX();
        float x11 = this.f26691d.getX();
        float f10 = this.f26700m;
        float f11 = measuredHeight;
        float f12 = measuredWidth2 + x10;
        canvas.drawRect(f12, 0.0f, x11, f10, this.f26688a);
        canvas.drawRect(f12, f11 - f10, x11, f11, this.f26688a);
        int i9 = this.f26695h;
        if (x10 > i9) {
            canvas.drawRect(0.0f, 0.0f, x10 + i9, f11, this.f26689b);
        }
        if (x11 < measuredWidth - this.f26695h) {
            canvas.drawRect(x11, 0.0f, measuredWidth, f11, this.f26689b);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int measuredWidth = this.f26690c.getMeasuredWidth();
        int measuredHeight = this.f26690c.getMeasuredHeight();
        this.f26690c.layout(0, 0, measuredWidth, measuredHeight);
        this.f26691d.layout(0, 0, measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), BasicMeasure.EXACTLY);
        super.onMeasure(makeMeasureSpec, i10);
        this.f26690c.measure(makeMeasureSpec, i10);
        this.f26691d.measure(makeMeasureSpec, i10);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        ThumbView thumbView = this.f26690c;
        j(thumbView, thumbView.getRangeIndex());
        ThumbView thumbView2 = this.f26691d;
        j(thumbView2, thumbView2.getRangeIndex());
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
                        if (!this.f26701n && Math.abs(x10 - this.f26693f) > this.f26692e) {
                            this.f26701n = true;
                        }
                        if (this.f26701n) {
                            int i9 = x10 - this.f26694g;
                            if (this.f26690c.isPressed()) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                                h(i9);
                                invalidate();
                            } else if (this.f26691d.isPressed()) {
                                getParent().requestDisallowInterceptTouchEvent(true);
                                i(i9);
                                invalidate();
                            }
                            z10 = true;
                        }
                        this.f26694g = x10;
                        return z10;
                    } else if (action != 3) {
                        return false;
                    }
                }
                this.f26701n = false;
                this.f26694g = 0;
                this.f26693f = 0;
                getParent().requestDisallowInterceptTouchEvent(false);
                if (this.f26690c.isPressed()) {
                    l();
                    invalidate();
                    c cVar = this.f26702o;
                    if (cVar != null) {
                        cVar.a(1, this.f26690c.getRangeIndex(), this.f26691d.getRangeIndex());
                    }
                } else if (!this.f26691d.isPressed()) {
                    return false;
                } else {
                    m();
                    invalidate();
                    c cVar2 = this.f26702o;
                    if (cVar2 != null) {
                        cVar2.a(2, this.f26690c.getRangeIndex(), this.f26691d.getRangeIndex());
                    }
                }
            } else {
                int x11 = (int) motionEvent.getX();
                int y10 = (int) motionEvent.getY();
                this.f26693f = x11;
                this.f26694g = x11;
                this.f26701n = false;
                if (!this.f26690c.isPressed() && this.f26690c.a(x11, y10)) {
                    this.f26690c.setPressed(true);
                    c cVar3 = this.f26702o;
                    if (cVar3 != null) {
                        cVar3.b(1);
                    }
                } else if (this.f26691d.isPressed() || !this.f26691d.a(x11, y10)) {
                    return false;
                } else {
                    this.f26691d.setPressed(true);
                    c cVar4 = this.f26702o;
                    if (cVar4 != null) {
                        cVar4.b(2);
                    }
                }
            }
            return true;
        }
        return false;
    }

    public void setLeftThumbDrawable(Drawable drawable) {
        this.f26690c.setThumbDrawable(drawable);
    }

    public void setLineColor(int i9) {
        this.f26688a.setColor(i9);
    }

    public void setLineSize(float f10) {
        this.f26700m = f10;
    }

    public void setMaskColor(int i9) {
        this.f26689b.setColor(i9);
    }

    public void setRangeChangeListener(c cVar) {
        this.f26702o = cVar;
    }

    public void setRightThumbDrawable(Drawable drawable) {
        this.f26691d.setThumbDrawable(drawable);
    }

    public void setThumbWidth(int i9) {
        this.f26695h = i9;
        this.f26690c.setThumbWidth(i9);
        this.f26691d.setThumbWidth(i9);
    }

    public void setTickCount(int i9) {
        int i10 = (i9 - this.f26696i) / this.f26698k;
        if (g(i10)) {
            this.f26697j = i9;
            this.f26699l = i10;
            this.f26691d.setTickIndex(i10);
            return;
        }
        throw new IllegalArgumentException("tickCount less than 2; invalid tickCount.");
    }

    public RangeSlider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RangeSlider(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26696i = 0;
        this.f26697j = 5;
        this.f26698k = 1;
        this.f26699l = (5 - 0) / 1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RangeSlider, 0, 0);
        this.f26695h = obtainStyledAttributes.getDimensionPixelOffset(9, 7);
        this.f26700m = obtainStyledAttributes.getDimensionPixelOffset(3, 1);
        Paint paint = new Paint();
        this.f26689b = paint;
        paint.setColor(obtainStyledAttributes.getColor(4, -1610612736));
        Paint paint2 = new Paint();
        this.f26688a = paint2;
        paint2.setColor(obtainStyledAttributes.getColor(2, ViewCompat.MEASURED_STATE_MASK));
        this.f26692e = ViewConfiguration.get(context).getScaledTouchSlop();
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        Drawable drawable2 = obtainStyledAttributes.getDrawable(7);
        ThumbView thumbView = new ThumbView(context, this.f26695h, drawable == null ? new ColorDrawable(ViewCompat.MEASURED_STATE_MASK) : drawable);
        this.f26690c = thumbView;
        ThumbView thumbView2 = new ThumbView(context, this.f26695h, drawable2 == null ? new ColorDrawable(ViewCompat.MEASURED_STATE_MASK) : drawable2);
        this.f26691d = thumbView2;
        setTickCount(obtainStyledAttributes.getInteger(10, 5));
        o(obtainStyledAttributes.getInteger(1, 0), obtainStyledAttributes.getInteger(8, this.f26699l));
        obtainStyledAttributes.recycle();
        addView(thumbView);
        addView(thumbView2);
        setWillNotDraw(false);
    }
}
