package com.guochao.faceshow.aaspring.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.R$styleable;
/* loaded from: classes3.dex */
public class ZaiMeSwipeMenuLayout extends ViewGroup {

    /* renamed from: t  reason: collision with root package name */
    private static ZaiMeSwipeMenuLayout f24165t;

    /* renamed from: u  reason: collision with root package name */
    private static boolean f24166u;

    /* renamed from: a  reason: collision with root package name */
    private int f24167a;

    /* renamed from: b  reason: collision with root package name */
    private int f24168b;

    /* renamed from: c  reason: collision with root package name */
    private int f24169c;

    /* renamed from: d  reason: collision with root package name */
    private int f24170d;

    /* renamed from: e  reason: collision with root package name */
    private int f24171e;

    /* renamed from: f  reason: collision with root package name */
    private int f24172f;

    /* renamed from: g  reason: collision with root package name */
    private View f24173g;

    /* renamed from: h  reason: collision with root package name */
    private PointF f24174h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f24175i;

    /* renamed from: j  reason: collision with root package name */
    private PointF f24176j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f24177k;

    /* renamed from: l  reason: collision with root package name */
    private VelocityTracker f24178l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f24179m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f24180n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f24181o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f24182p;

    /* renamed from: q  reason: collision with root package name */
    private ValueAnimator f24183q;

    /* renamed from: r  reason: collision with root package name */
    private ValueAnimator f24184r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f24185s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ZaiMeSwipeMenuLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ZaiMeSwipeMenuLayout.this.f24185s = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ZaiMeSwipeMenuLayout.this.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends AnimatorListenerAdapter {
        d() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ZaiMeSwipeMenuLayout.this.f24185s = false;
        }
    }

    public ZaiMeSwipeMenuLayout(Context context) {
        this(context, null);
    }

    private void b(MotionEvent motionEvent) {
        if (this.f24178l == null) {
            this.f24178l = VelocityTracker.obtain();
        }
        this.f24178l.addMovement(motionEvent);
    }

    private void c() {
        ValueAnimator valueAnimator = this.f24184r;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f24184r.cancel();
        }
        ValueAnimator valueAnimator2 = this.f24183q;
        if (valueAnimator2 == null || !valueAnimator2.isRunning()) {
            return;
        }
        this.f24183q.cancel();
    }

    private void d(int i9, int i10) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY);
        for (int i11 = 0; i11 < i9; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                if (marginLayoutParams.height == -1) {
                    int i12 = marginLayoutParams.width;
                    marginLayoutParams.width = childAt.getMeasuredWidth();
                    measureChildWithMargins(childAt, i10, 0, makeMeasureSpec, 0);
                    marginLayoutParams.width = i12;
                }
            }
        }
    }

    private void e(Context context, AttributeSet attributeSet, int i9) {
        this.f24167a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f24168b = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
        this.f24179m = true;
        this.f24180n = true;
        this.f24182p = true;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.ZaiMeSwipeMenuLayout, i9, 0);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = obtainStyledAttributes.getIndex(i10);
            if (index == 2) {
                this.f24179m = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == 0) {
                this.f24180n = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == 1) {
                this.f24182p = obtainStyledAttributes.getBoolean(index, true);
            }
        }
        obtainStyledAttributes.recycle();
    }

    private void f() {
        VelocityTracker velocityTracker = this.f24178l;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.f24178l.recycle();
            this.f24178l = null;
        }
    }

    public static ZaiMeSwipeMenuLayout getViewCache() {
        return f24165t;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        if (r1 != 3) goto L67;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r6) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.ZaiMeSwipeMenuLayout.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public void g() {
        f24165t = null;
        View view = this.f24173g;
        if (view != null) {
            view.setLongClickable(true);
        }
        c();
        ValueAnimator ofInt = ValueAnimator.ofInt(getScrollX(), 0);
        this.f24184r = ofInt;
        ofInt.addUpdateListener(new c());
        this.f24184r.setInterpolator(new AccelerateInterpolator());
        this.f24184r.addListener(new d());
        this.f24184r.setDuration(300L).start();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public void h() {
        f24165t = this;
        View view = this.f24173g;
        if (view != null) {
            view.setLongClickable(false);
        }
        c();
        int[] iArr = new int[2];
        iArr[0] = getScrollX();
        iArr[1] = this.f24182p ? this.f24171e : -this.f24171e;
        ValueAnimator ofInt = ValueAnimator.ofInt(iArr);
        this.f24183q = ofInt;
        ofInt.addUpdateListener(new a());
        this.f24183q.setInterpolator(new OvershootInterpolator());
        this.f24183q.addListener(new b());
        this.f24183q.setDuration(300L).start();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ZaiMeSwipeMenuLayout zaiMeSwipeMenuLayout = f24165t;
        if (this == zaiMeSwipeMenuLayout) {
            zaiMeSwipeMenuLayout.g();
            f24165t = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f24179m) {
            int action = motionEvent.getAction();
            if (action != 1) {
                if (action == 2 && Math.abs(motionEvent.getRawX() - this.f24176j.x) > this.f24167a) {
                    return true;
                }
            } else {
                if (this.f24182p) {
                    if (getScrollX() > this.f24167a && motionEvent.getX() < getWidth() - getScrollX()) {
                        if (this.f24175i) {
                            g();
                        }
                        return true;
                    }
                } else if ((-getScrollX()) > this.f24167a && motionEvent.getX() > (-getScrollX())) {
                    if (this.f24175i) {
                        g();
                    }
                    return true;
                }
                if (this.f24177k) {
                    return true;
                }
            }
            if (this.f24181o) {
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int measuredWidth;
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft() + 0;
        int paddingLeft2 = getPaddingLeft() + 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                if (i13 == 0) {
                    childAt.layout(paddingLeft, getPaddingTop(), childAt.getMeasuredWidth() + paddingLeft, getPaddingTop() + childAt.getMeasuredHeight());
                    measuredWidth = childAt.getMeasuredWidth();
                } else if (this.f24182p) {
                    childAt.layout(paddingLeft, getPaddingTop(), childAt.getMeasuredWidth() + paddingLeft, getPaddingTop() + childAt.getMeasuredHeight());
                    measuredWidth = childAt.getMeasuredWidth();
                } else {
                    childAt.layout(paddingLeft2 - childAt.getMeasuredWidth(), getPaddingTop(), paddingLeft2, getPaddingTop() + childAt.getMeasuredHeight());
                    paddingLeft2 -= childAt.getMeasuredWidth();
                }
                paddingLeft += measuredWidth;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, i10);
        setClickable(true);
        this.f24171e = 0;
        this.f24170d = 0;
        int childCount = getChildCount();
        boolean z10 = View.MeasureSpec.getMode(i10) != 1073741824;
        int i11 = 0;
        boolean z11 = false;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            childAt.setClickable(true);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i9, i10);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                this.f24170d = Math.max(this.f24170d, childAt.getMeasuredHeight());
                if (z10 && marginLayoutParams.height == -1) {
                    z11 = true;
                }
                if (i12 > 0) {
                    this.f24171e += childAt.getMeasuredWidth();
                } else {
                    this.f24173g = childAt;
                    i11 = childAt.getMeasuredWidth();
                }
            }
        }
        setMeasuredDimension(getPaddingLeft() + getPaddingRight() + i11, this.f24170d + getPaddingTop() + getPaddingBottom());
        this.f24172f = (this.f24171e * 4) / 10;
        if (z11) {
            d(childCount, i9);
        }
    }

    @Override // android.view.View
    public boolean performLongClick() {
        if (Math.abs(getScrollX()) > this.f24167a) {
            return false;
        }
        return super.performLongClick();
    }

    public void setSwipeEnable(boolean z10) {
        this.f24179m = z10;
    }

    public ZaiMeSwipeMenuLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZaiMeSwipeMenuLayout(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f24174h = new PointF();
        this.f24175i = true;
        this.f24176j = new PointF();
        e(context, attributeSet, i9);
    }
}
