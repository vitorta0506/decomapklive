package com.yanzhenjie.recyclerview.swipe;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.TextView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import bg.g;
import com.yanzhenjie.recyclerview.swipe.a;
/* loaded from: classes5.dex */
public class SwipeMenuLayout extends FrameLayout implements g {

    /* renamed from: a  reason: collision with root package name */
    private int f37779a;

    /* renamed from: b  reason: collision with root package name */
    private int f37780b;

    /* renamed from: c  reason: collision with root package name */
    private int f37781c;

    /* renamed from: d  reason: collision with root package name */
    private float f37782d;

    /* renamed from: e  reason: collision with root package name */
    private int f37783e;

    /* renamed from: f  reason: collision with root package name */
    private int f37784f;

    /* renamed from: g  reason: collision with root package name */
    private int f37785g;

    /* renamed from: h  reason: collision with root package name */
    private int f37786h;

    /* renamed from: i  reason: collision with root package name */
    private int f37787i;

    /* renamed from: j  reason: collision with root package name */
    private int f37788j;

    /* renamed from: k  reason: collision with root package name */
    private View f37789k;

    /* renamed from: l  reason: collision with root package name */
    private b f37790l;

    /* renamed from: m  reason: collision with root package name */
    private d f37791m;

    /* renamed from: n  reason: collision with root package name */
    private a f37792n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f37793o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f37794p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f37795q;

    /* renamed from: r  reason: collision with root package name */
    private OverScroller f37796r;

    /* renamed from: s  reason: collision with root package name */
    private VelocityTracker f37797s;

    /* renamed from: t  reason: collision with root package name */
    private int f37798t;

    /* renamed from: u  reason: collision with root package name */
    private int f37799u;

    public SwipeMenuLayout(Context context) {
        this(context, null);
    }

    private int c(MotionEvent motionEvent, int i9) {
        int abs;
        int x10 = (int) (motionEvent.getX() - getScrollX());
        int g10 = this.f37792n.g();
        int i10 = g10 / 2;
        float f10 = g10;
        float f11 = i10;
        float b10 = f11 + (b(Math.min(1.0f, (Math.abs(x10) * 1.0f) / f10)) * f11);
        if (i9 > 0) {
            abs = Math.round(Math.abs(b10 / i9) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(x10) / f10) + 1.0f) * 100.0f);
        }
        return Math.min(abs, this.f37783e);
    }

    private void n(int i9, int i10) {
        if (this.f37792n != null) {
            if (Math.abs(getScrollX()) >= this.f37792n.f().getWidth() * this.f37782d) {
                if (Math.abs(i9) <= this.f37784f && Math.abs(i10) <= this.f37784f) {
                    if (a()) {
                        o();
                        return;
                    } else {
                        q();
                        return;
                    }
                } else if (i()) {
                    o();
                    return;
                } else {
                    q();
                    return;
                }
            }
            o();
        }
    }

    private void r(int i9) {
        a aVar = this.f37792n;
        if (aVar != null) {
            aVar.b(this.f37796r, getScrollX(), i9);
            invalidate();
        }
    }

    @Override // bg.g
    public boolean a() {
        return g() || k();
    }

    float b(float f10) {
        return (float) Math.sin((float) ((f10 - 0.5f) * 0.4712389167638204d));
    }

    @Override // android.view.View
    public void computeScroll() {
        a aVar;
        if (!this.f37796r.computeScrollOffset() || (aVar = this.f37792n) == null) {
            return;
        }
        if (aVar instanceof d) {
            scrollTo(Math.abs(this.f37796r.getCurrX()), 0);
            invalidate();
            return;
        }
        scrollTo(-Math.abs(this.f37796r.getCurrX()), 0);
        invalidate();
    }

    public boolean d() {
        b bVar = this.f37790l;
        return bVar != null && bVar.c();
    }

    public boolean e() {
        d dVar = this.f37791m;
        return dVar != null && dVar.c();
    }

    public boolean f() {
        b bVar = this.f37790l;
        return (bVar == null || bVar.i(getScrollX())) ? false : true;
    }

    public boolean g() {
        b bVar = this.f37790l;
        return bVar != null && bVar.j(getScrollX());
    }

    public float getOpenPercent() {
        return this.f37782d;
    }

    public boolean h() {
        b bVar = this.f37790l;
        return bVar != null && bVar.k(getScrollX());
    }

    public boolean i() {
        return h() || l();
    }

    public boolean j() {
        d dVar = this.f37791m;
        return (dVar == null || dVar.i(getScrollX())) ? false : true;
    }

    public boolean k() {
        d dVar = this.f37791m;
        return dVar != null && dVar.j(getScrollX());
    }

    public boolean l() {
        d dVar = this.f37791m;
        return dVar != null && dVar.k(getScrollX());
    }

    public boolean m() {
        return this.f37795q;
    }

    public void o() {
        p(this.f37783e);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i9 = this.f37779a;
        if (i9 != 0 && this.f37790l == null) {
            this.f37790l = new b(findViewById(i9));
        }
        int i10 = this.f37781c;
        if (i10 != 0 && this.f37791m == null) {
            this.f37791m = new d(findViewById(i10));
        }
        int i11 = this.f37780b;
        if (i11 != 0 && this.f37789k == null) {
            this.f37789k = findViewById(i11);
            return;
        }
        TextView textView = new TextView(getContext());
        textView.setClickable(true);
        textView.setGravity(17);
        textView.setTextSize(16.0f);
        textView.setText("You may not have set the ContentView.");
        this.f37789k = textView;
        addView(textView);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            int x10 = (int) motionEvent.getX();
            this.f37785g = x10;
            this.f37787i = x10;
            this.f37788j = (int) motionEvent.getY();
            return false;
        } else if (action == 1) {
            a aVar = this.f37792n;
            boolean z10 = aVar != null && aVar.h(getWidth(), motionEvent.getX());
            if (a() && z10) {
                o();
                return true;
            }
            return false;
        } else if (action == 2) {
            int x11 = (int) (motionEvent.getX() - this.f37787i);
            return Math.abs(x11) > this.f37784f && Math.abs(x11) > Math.abs((int) (motionEvent.getY() - ((float) this.f37788j)));
        } else if (action != 3) {
            return onInterceptTouchEvent;
        } else {
            if (!this.f37796r.isFinished()) {
                this.f37796r.abortAnimation();
            }
            return false;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        View view = this.f37789k;
        if (view != null) {
            int measuredWidthAndState = view.getMeasuredWidthAndState();
            int measuredHeightAndState = this.f37789k.getMeasuredHeightAndState();
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop() + ((FrameLayout.LayoutParams) this.f37789k.getLayoutParams()).topMargin;
            this.f37789k.layout(paddingLeft, paddingTop, measuredWidthAndState + paddingLeft, measuredHeightAndState + paddingTop);
        }
        b bVar = this.f37790l;
        if (bVar != null) {
            View f10 = bVar.f();
            int measuredWidthAndState2 = f10.getMeasuredWidthAndState();
            int measuredHeightAndState2 = f10.getMeasuredHeightAndState();
            int paddingTop2 = getPaddingTop() + ((FrameLayout.LayoutParams) f10.getLayoutParams()).topMargin;
            f10.layout(-measuredWidthAndState2, paddingTop2, 0, measuredHeightAndState2 + paddingTop2);
        }
        d dVar = this.f37791m;
        if (dVar != null) {
            View f11 = dVar.f();
            int measuredWidthAndState3 = f11.getMeasuredWidthAndState();
            int measuredHeightAndState3 = f11.getMeasuredHeightAndState();
            int paddingTop3 = getPaddingTop() + ((FrameLayout.LayoutParams) f11.getLayoutParams()).topMargin;
            int measuredWidthAndState4 = getMeasuredWidthAndState();
            f11.layout(measuredWidthAndState4, paddingTop3, measuredWidthAndState3 + measuredWidthAndState4, measuredHeightAndState3 + paddingTop3);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        int i11;
        super.onMeasure(i9, i10);
        View view = this.f37789k;
        if (view != null) {
            measureChildWithMargins(view, i9, 0, i10, 0);
            i11 = this.f37789k.getMeasuredHeight();
        } else {
            i11 = 0;
        }
        b bVar = this.f37790l;
        if (bVar != null) {
            View f10 = bVar.f();
            f10.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i11 == 0 ? f10.getMeasuredHeightAndState() : i11, BasicMeasure.EXACTLY));
        }
        d dVar = this.f37791m;
        if (dVar != null) {
            View f11 = dVar.f();
            f11.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i9), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i11 == 0 ? f11.getMeasuredHeightAndState() : i11, BasicMeasure.EXACTLY));
        }
        if (i11 > 0) {
            setMeasuredDimension(View.MeasureSpec.getSize(i9), i11);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f37797s == null) {
            this.f37797s = VelocityTracker.obtain();
        }
        this.f37797s.addMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f37785g = (int) motionEvent.getX();
            this.f37786h = (int) motionEvent.getY();
        } else if (action == 1) {
            int x10 = (int) (this.f37787i - motionEvent.getX());
            int y10 = (int) (this.f37788j - motionEvent.getY());
            this.f37794p = false;
            this.f37797s.computeCurrentVelocity(1000, this.f37799u);
            int xVelocity = (int) this.f37797s.getXVelocity();
            int abs = Math.abs(xVelocity);
            if (abs > this.f37798t) {
                if (this.f37792n != null) {
                    int c10 = c(motionEvent, abs);
                    if (this.f37792n instanceof d) {
                        if (xVelocity < 0) {
                            r(c10);
                        } else {
                            p(c10);
                        }
                    } else if (xVelocity > 0) {
                        r(c10);
                    } else {
                        p(c10);
                    }
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            } else {
                n(x10, y10);
            }
            this.f37797s.clear();
            this.f37797s.recycle();
            this.f37797s = null;
            if (Math.abs(this.f37787i - motionEvent.getX()) > this.f37784f || Math.abs(this.f37788j - motionEvent.getY()) > this.f37784f || g() || k()) {
                motionEvent.setAction(3);
                super.onTouchEvent(motionEvent);
                return true;
            }
        } else if (action != 2) {
            if (action == 3) {
                this.f37794p = false;
                if (!this.f37796r.isFinished()) {
                    this.f37796r.abortAnimation();
                } else {
                    n((int) (this.f37787i - motionEvent.getX()), (int) (this.f37788j - motionEvent.getY()));
                }
            }
        } else if (m()) {
            int x11 = (int) (this.f37785g - motionEvent.getX());
            int y11 = (int) (this.f37786h - motionEvent.getY());
            if (!this.f37794p && Math.abs(x11) > this.f37784f && Math.abs(x11) > Math.abs(y11)) {
                this.f37794p = true;
            }
            if (this.f37794p) {
                if (this.f37792n == null || this.f37793o) {
                    if (x11 < 0) {
                        b bVar = this.f37790l;
                        if (bVar != null) {
                            this.f37792n = bVar;
                        } else {
                            this.f37792n = this.f37791m;
                        }
                    } else {
                        d dVar = this.f37791m;
                        if (dVar != null) {
                            this.f37792n = dVar;
                        } else {
                            this.f37792n = this.f37790l;
                        }
                    }
                }
                scrollBy(x11, 0);
                this.f37785g = (int) motionEvent.getX();
                this.f37786h = (int) motionEvent.getY();
                this.f37793o = false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void p(int i9) {
        a aVar = this.f37792n;
        if (aVar != null) {
            aVar.a(this.f37796r, getScrollX(), i9);
            invalidate();
        }
    }

    public void q() {
        r(this.f37783e);
    }

    @Override // android.view.View
    public void scrollTo(int i9, int i10) {
        a aVar = this.f37792n;
        if (aVar == null) {
            super.scrollTo(i9, i10);
            return;
        }
        a.C0373a d10 = aVar.d(i9, i10);
        this.f37793o = d10.f37842c;
        if (d10.f37840a != getScrollX()) {
            super.scrollTo(d10.f37840a, d10.f37841b);
        }
    }

    public void setOpenPercent(float f10) {
        this.f37782d = f10;
    }

    public void setScrollerDuration(int i9) {
        this.f37783e = i9;
    }

    public void setSwipeEnable(boolean z10) {
        this.f37795q = z10;
    }

    public SwipeMenuLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SwipeMenuLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f37779a = 0;
        this.f37780b = 0;
        this.f37781c = 0;
        this.f37782d = 0.5f;
        this.f37783e = 200;
        this.f37795q = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.recycler_swipe_SwipeMenuLayout);
        this.f37779a = obtainStyledAttributes.getResourceId(R$styleable.recycler_swipe_SwipeMenuLayout_leftViewId, this.f37779a);
        this.f37780b = obtainStyledAttributes.getResourceId(R$styleable.recycler_swipe_SwipeMenuLayout_contentViewId, this.f37780b);
        this.f37781c = obtainStyledAttributes.getResourceId(R$styleable.recycler_swipe_SwipeMenuLayout_rightViewId, this.f37781c);
        obtainStyledAttributes.recycle();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f37784f = viewConfiguration.getScaledTouchSlop();
        this.f37798t = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f37799u = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f37796r = new OverScroller(getContext());
    }
}
