package com.rd;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.text.TextUtilsCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.rd.a;
import com.rd.animation.type.AnimationType;
import com.rd.draw.data.Orientation;
import com.rd.draw.data.PositionSavedState;
import com.rd.draw.data.RtlMode;
import jd.b;
/* loaded from: classes4.dex */
public class PageIndicatorView extends View implements ViewPager.OnPageChangeListener, a.InterfaceC0286a, ViewPager.OnAdapterChangeListener, View.OnTouchListener {

    /* renamed from: f  reason: collision with root package name */
    private static final Handler f28984f = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    private com.rd.a f28985a;

    /* renamed from: b  reason: collision with root package name */
    private DataSetObserver f28986b;

    /* renamed from: c  reason: collision with root package name */
    private ViewPager f28987c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f28988d;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f28989e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends DataSetObserver {
        a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PageIndicatorView.this.w();
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PageIndicatorView.this.f28985a.d().H(true);
            PageIndicatorView.this.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f28992a;

        static {
            int[] iArr = new int[RtlMode.values().length];
            f28992a = iArr;
            try {
                iArr[RtlMode.On.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f28992a[RtlMode.Off.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f28992a[RtlMode.Auto.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public PageIndicatorView(Context context) {
        super(context);
        this.f28989e = new b();
        j(null);
    }

    private int e(int i9) {
        int c10 = this.f28985a.d().c() - 1;
        if (i9 < 0) {
            return 0;
        }
        return i9 > c10 ? c10 : i9;
    }

    private void f() {
        animate().cancel();
        animate().alpha(1.0f).setDuration(250L);
    }

    @Nullable
    private ViewPager g(@NonNull ViewGroup viewGroup, int i9) {
        View findViewById;
        if (viewGroup.getChildCount() > 0 && (findViewById = viewGroup.findViewById(i9)) != null && (findViewById instanceof ViewPager)) {
            return (ViewPager) findViewById;
        }
        return null;
    }

    private void h(@Nullable ViewParent viewParent) {
        if (viewParent != null && (viewParent instanceof ViewGroup) && ((ViewGroup) viewParent).getChildCount() > 0) {
            ViewPager g10 = g((ViewGroup) viewParent, this.f28985a.d().u());
            if (g10 != null) {
                setViewPager(g10);
            } else {
                h(viewParent.getParent());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        animate().cancel();
        animate().alpha(0.0f).setDuration(250L);
    }

    private void j(@Nullable AttributeSet attributeSet) {
        s();
        k(attributeSet);
        if (this.f28985a.d().y()) {
            t();
        }
    }

    private void k(@Nullable AttributeSet attributeSet) {
        com.rd.a aVar = new com.rd.a(this);
        this.f28985a = aVar;
        aVar.c().c(getContext(), attributeSet);
        kd.a d10 = this.f28985a.d();
        d10.O(getPaddingLeft());
        d10.Q(getPaddingTop());
        d10.P(getPaddingRight());
        d10.N(getPaddingBottom());
        this.f28988d = d10.z();
    }

    private boolean l() {
        int i9 = c.f28992a[this.f28985a.d().n().ordinal()];
        if (i9 != 1) {
            return i9 == 3 && TextUtilsCompat.getLayoutDirectionFromLocale(getContext().getResources().getConfiguration().locale) == 1;
        }
        return true;
    }

    private boolean m() {
        return (getMeasuredHeight() == 0 && getMeasuredWidth() == 0) ? false : true;
    }

    private void n(int i9, float f10) {
        kd.a d10 = this.f28985a.d();
        if (m() && d10.z() && d10.b() != AnimationType.NONE) {
            Pair<Integer, Float> e10 = nd.a.e(d10, i9, f10, l());
            r(((Integer) e10.first).intValue(), ((Float) e10.second).floatValue());
        }
    }

    private void o(int i9) {
        kd.a d10 = this.f28985a.d();
        boolean m10 = m();
        int c10 = d10.c();
        if (m10) {
            if (l()) {
                i9 = (c10 - 1) - i9;
            }
            setSelection(i9);
        }
    }

    private void p() {
        ViewPager viewPager;
        if (this.f28986b != null || (viewPager = this.f28987c) == null || viewPager.getAdapter() == null) {
            return;
        }
        this.f28986b = new a();
        try {
            this.f28987c.getAdapter().registerDataSetObserver(this.f28986b);
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    private void s() {
        if (getId() == -1) {
            setId(nd.c.a());
        }
    }

    private void t() {
        Handler handler = f28984f;
        handler.removeCallbacks(this.f28989e);
        handler.postDelayed(this.f28989e, this.f28985a.d().e());
    }

    private void u() {
        f28984f.removeCallbacks(this.f28989e);
        f();
    }

    private void v() {
        ViewPager viewPager;
        if (this.f28986b == null || (viewPager = this.f28987c) == null || viewPager.getAdapter() == null) {
            return;
        }
        try {
            this.f28987c.getAdapter().unregisterDataSetObserver(this.f28986b);
            this.f28986b = null;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        ViewPager viewPager = this.f28987c;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        int count = this.f28987c.getAdapter().getCount();
        int currentItem = l() ? (count - 1) - this.f28987c.getCurrentItem() : this.f28987c.getCurrentItem();
        this.f28985a.d().V(currentItem);
        this.f28985a.d().W(currentItem);
        this.f28985a.d().K(currentItem);
        this.f28985a.d().D(count);
        this.f28985a.b().b();
        x();
        requestLayout();
    }

    private void x() {
        if (this.f28985a.d().w()) {
            int c10 = this.f28985a.d().c();
            int visibility = getVisibility();
            if (visibility != 0 && c10 > 1) {
                setVisibility(0);
            } else if (visibility == 4 || c10 > 1) {
            } else {
                setVisibility(4);
            }
        }
    }

    @Override // com.rd.a.InterfaceC0286a
    public void a() {
        invalidate();
    }

    public long getAnimationDuration() {
        return this.f28985a.d().a();
    }

    public int getCount() {
        return this.f28985a.d().c();
    }

    public int getPadding() {
        return this.f28985a.d().h();
    }

    public int getRadius() {
        return this.f28985a.d().m();
    }

    public float getScaleFactor() {
        return this.f28985a.d().o();
    }

    public int getSelectedColor() {
        return this.f28985a.d().p();
    }

    public int getSelection() {
        return this.f28985a.d().q();
    }

    public int getStrokeWidth() {
        return this.f28985a.d().s();
    }

    public int getUnselectedColor() {
        return this.f28985a.d().t();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
    public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
        DataSetObserver dataSetObserver;
        if (this.f28985a.d().x()) {
            if (pagerAdapter != null && (dataSetObserver = this.f28986b) != null) {
                pagerAdapter.unregisterDataSetObserver(dataSetObserver);
                this.f28986b = null;
            }
            p();
        }
        w();
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        h(getParent());
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        v();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f28985a.c().a(canvas);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        Pair<Integer, Integer> d10 = this.f28985a.c().d(i9, i10);
        setMeasuredDimension(((Integer) d10.first).intValue(), ((Integer) d10.second).intValue());
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
        if (i9 == 0) {
            this.f28985a.d().J(this.f28988d);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
        n(i9, f10);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
        o(i9);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof PositionSavedState) {
            kd.a d10 = this.f28985a.d();
            PositionSavedState positionSavedState = (PositionSavedState) parcelable;
            d10.V(positionSavedState.b());
            d10.W(positionSavedState.c());
            d10.K(positionSavedState.a());
            super.onRestoreInstanceState(positionSavedState.getSuperState());
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        kd.a d10 = this.f28985a.d();
        PositionSavedState positionSavedState = new PositionSavedState(super.onSaveInstanceState());
        positionSavedState.e(d10.q());
        positionSavedState.f(d10.r());
        positionSavedState.d(d10.f());
        return positionSavedState;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.f28985a.d().y()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                u();
            } else if (action == 1) {
                t();
            }
            return false;
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f28985a.c().f(motionEvent);
        return true;
    }

    public void q() {
        ViewPager viewPager = this.f28987c;
        if (viewPager != null) {
            viewPager.removeOnPageChangeListener(this);
            this.f28987c.removeOnAdapterChangeListener(this);
            this.f28987c = null;
        }
    }

    public void r(int i9, float f10) {
        kd.a d10 = this.f28985a.d();
        if (d10.z()) {
            int c10 = d10.c();
            if (c10 <= 0 || i9 < 0) {
                i9 = 0;
            } else {
                int i10 = c10 - 1;
                if (i9 > i10) {
                    i9 = i10;
                }
            }
            if (f10 < 0.0f) {
                f10 = 0.0f;
            } else if (f10 > 1.0f) {
                f10 = 1.0f;
            }
            if (f10 == 1.0f) {
                d10.K(d10.q());
                d10.V(i9);
            }
            d10.W(i9);
            this.f28985a.b().c(f10);
        }
    }

    public void setAnimationDuration(long j10) {
        this.f28985a.d().A(j10);
    }

    public void setAnimationType(@Nullable AnimationType animationType) {
        this.f28985a.a(null);
        if (animationType != null) {
            this.f28985a.d().B(animationType);
        } else {
            this.f28985a.d().B(AnimationType.NONE);
        }
        invalidate();
    }

    public void setAutoVisibility(boolean z10) {
        if (!z10) {
            setVisibility(0);
        }
        this.f28985a.d().C(z10);
        x();
    }

    public void setClickListener(@Nullable b.InterfaceC0543b interfaceC0543b) {
        this.f28985a.c().e(interfaceC0543b);
    }

    public void setCount(int i9) {
        if (i9 < 0 || this.f28985a.d().c() == i9) {
            return;
        }
        this.f28985a.d().D(i9);
        x();
        requestLayout();
    }

    public void setDynamicCount(boolean z10) {
        this.f28985a.d().E(z10);
        if (z10) {
            p();
        } else {
            v();
        }
    }

    public void setFadeOnIdle(boolean z10) {
        this.f28985a.d().F(z10);
        if (z10) {
            t();
        } else {
            u();
        }
    }

    public void setIdleDuration(long j10) {
        this.f28985a.d().I(j10);
        if (this.f28985a.d().y()) {
            t();
        } else {
            u();
        }
    }

    public void setInteractiveAnimation(boolean z10) {
        this.f28985a.d().J(z10);
        this.f28988d = z10;
    }

    public void setOrientation(@Nullable Orientation orientation) {
        if (orientation != null) {
            this.f28985a.d().L(orientation);
            requestLayout();
        }
    }

    public void setPadding(int i9) {
        if (i9 < 0) {
            i9 = 0;
        }
        this.f28985a.d().M(nd.b.a(i9));
        invalidate();
    }

    public void setRadius(int i9) {
        if (i9 < 0) {
            i9 = 0;
        }
        this.f28985a.d().R(nd.b.a(i9));
        invalidate();
    }

    public void setRtlMode(@Nullable RtlMode rtlMode) {
        kd.a d10 = this.f28985a.d();
        if (rtlMode == null) {
            d10.S(RtlMode.Off);
        } else {
            d10.S(rtlMode);
        }
        if (this.f28987c == null) {
            return;
        }
        int q10 = d10.q();
        if (l()) {
            q10 = (d10.c() - 1) - q10;
        } else {
            ViewPager viewPager = this.f28987c;
            if (viewPager != null) {
                q10 = viewPager.getCurrentItem();
            }
        }
        d10.K(q10);
        d10.W(q10);
        d10.V(q10);
        invalidate();
    }

    public void setScaleFactor(float f10) {
        if (f10 > 1.0f) {
            f10 = 1.0f;
        } else if (f10 < 0.3f) {
            f10 = 0.3f;
        }
        this.f28985a.d().T(f10);
    }

    public void setSelected(int i9) {
        kd.a d10 = this.f28985a.d();
        AnimationType b10 = d10.b();
        d10.B(AnimationType.NONE);
        setSelection(i9);
        d10.B(b10);
    }

    public void setSelectedColor(int i9) {
        this.f28985a.d().U(i9);
        invalidate();
    }

    public void setSelection(int i9) {
        kd.a d10 = this.f28985a.d();
        int e10 = e(i9);
        if (e10 == d10.q() || e10 == d10.r()) {
            return;
        }
        d10.J(false);
        d10.K(d10.q());
        d10.W(e10);
        d10.V(e10);
        this.f28985a.b().a();
    }

    public void setStrokeWidth(float f10) {
        int m10 = this.f28985a.d().m();
        if (f10 < 0.0f) {
            f10 = 0.0f;
        } else {
            float f11 = m10;
            if (f10 > f11) {
                f10 = f11;
            }
        }
        this.f28985a.d().X((int) f10);
        invalidate();
    }

    public void setUnselectedColor(int i9) {
        this.f28985a.d().Y(i9);
        invalidate();
    }

    public void setViewPager(@Nullable ViewPager viewPager) {
        q();
        if (viewPager == null) {
            return;
        }
        this.f28987c = viewPager;
        viewPager.addOnPageChangeListener(this);
        this.f28987c.addOnAdapterChangeListener(this);
        this.f28987c.setOnTouchListener(this);
        this.f28985a.d().Z(this.f28987c.getId());
        setDynamicCount(this.f28985a.d().x());
        w();
    }

    public PageIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28989e = new b();
        j(attributeSet);
    }

    public void setPadding(float f10) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        this.f28985a.d().M((int) f10);
        invalidate();
    }

    public void setRadius(float f10) {
        if (f10 < 0.0f) {
            f10 = 0.0f;
        }
        this.f28985a.d().R((int) f10);
        invalidate();
    }

    public void setStrokeWidth(int i9) {
        int a10 = nd.b.a(i9);
        int m10 = this.f28985a.d().m();
        if (a10 < 0) {
            a10 = 0;
        } else if (a10 > m10) {
            a10 = m10;
        }
        this.f28985a.d().X(a10);
        invalidate();
    }

    public PageIndicatorView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f28989e = new b();
        j(attributeSet);
    }
}
