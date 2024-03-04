package com.guochao.faceshow.views.wheelview;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.wheelview.a;
import java.util.LinkedList;
import java.util.List;
import lb.d;
import lb.e;
import mb.c;
/* loaded from: classes4.dex */
public class WheelView extends View {

    /* renamed from: a  reason: collision with root package name */
    private int[] f27076a;

    /* renamed from: b  reason: collision with root package name */
    private int f27077b;

    /* renamed from: c  reason: collision with root package name */
    private int f27078c;

    /* renamed from: d  reason: collision with root package name */
    private int f27079d;

    /* renamed from: e  reason: collision with root package name */
    private Drawable f27080e;

    /* renamed from: f  reason: collision with root package name */
    private int f27081f;

    /* renamed from: g  reason: collision with root package name */
    private int f27082g;

    /* renamed from: h  reason: collision with root package name */
    private GradientDrawable f27083h;

    /* renamed from: i  reason: collision with root package name */
    private GradientDrawable f27084i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f27085j;

    /* renamed from: k  reason: collision with root package name */
    private com.guochao.faceshow.views.wheelview.a f27086k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27087l;

    /* renamed from: m  reason: collision with root package name */
    private int f27088m;

    /* renamed from: n  reason: collision with root package name */
    boolean f27089n;

    /* renamed from: o  reason: collision with root package name */
    private LinearLayout f27090o;

    /* renamed from: p  reason: collision with root package name */
    private int f27091p;

    /* renamed from: q  reason: collision with root package name */
    private c f27092q;

    /* renamed from: r  reason: collision with root package name */
    private e f27093r;

    /* renamed from: s  reason: collision with root package name */
    private List<lb.b> f27094s;

    /* renamed from: t  reason: collision with root package name */
    private List<d> f27095t;

    /* renamed from: u  reason: collision with root package name */
    private List<lb.c> f27096u;

    /* renamed from: v  reason: collision with root package name */
    String f27097v;

    /* renamed from: w  reason: collision with root package name */
    a.c f27098w;

    /* renamed from: x  reason: collision with root package name */
    private DataSetObserver f27099x;

    /* renamed from: y  reason: collision with root package name */
    int f27100y;

    /* loaded from: classes4.dex */
    class a implements a.c {
        a() {
        }

        @Override // com.guochao.faceshow.views.wheelview.a.c
        public void a() {
            if (Math.abs(WheelView.this.f27088m) > 1) {
                WheelView.this.f27086k.l(WheelView.this.f27088m, 0);
            }
        }

        @Override // com.guochao.faceshow.views.wheelview.a.c
        public void b() {
            WheelView.this.f27087l = true;
            WheelView.this.z();
        }

        @Override // com.guochao.faceshow.views.wheelview.a.c
        public void c(int i9) {
            WheelView.this.k(i9);
            int height = WheelView.this.getHeight();
            if (WheelView.this.f27088m > height) {
                WheelView.this.f27088m = height;
                WheelView.this.f27086k.p();
                return;
            }
            int i10 = -height;
            if (WheelView.this.f27088m < i10) {
                WheelView.this.f27088m = i10;
                WheelView.this.f27086k.p();
            }
        }

        @Override // com.guochao.faceshow.views.wheelview.a.c
        public void onFinished() {
            if (WheelView.this.f27087l) {
                WheelView.this.y();
                WheelView.this.f27087l = false;
            }
            WheelView.this.f27088m = 0;
            WheelView.this.invalidate();
        }
    }

    /* loaded from: classes4.dex */
    class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            WheelView.this.s(false);
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            WheelView.this.s(true);
        }
    }

    public WheelView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f27076a = new int[]{ViewCompat.MEASURED_SIZE_MASK, ViewCompat.MEASURED_SIZE_MASK, ViewCompat.MEASURED_SIZE_MASK};
        this.f27077b = 0;
        this.f27078c = 3;
        this.f27079d = 0;
        this.f27081f = R.drawable.wheel_bg;
        this.f27082g = R.drawable.wheel_val;
        this.f27085j = true;
        this.f27089n = false;
        this.f27093r = new e(this);
        this.f27094s = new LinkedList();
        this.f27095t = new LinkedList();
        this.f27096u = new LinkedList();
        this.f27097v = "";
        this.f27098w = new a();
        this.f27099x = new b();
        this.f27100y = 0;
        q(context);
    }

    private boolean A() {
        boolean z10;
        lb.a itemsRange = getItemsRange();
        LinearLayout linearLayout = this.f27090o;
        if (linearLayout != null) {
            int f10 = this.f27093r.f(linearLayout, this.f27091p, itemsRange);
            z10 = this.f27091p != f10;
            this.f27091p = f10;
        } else {
            j();
            z10 = true;
        }
        if (!z10) {
            z10 = (this.f27091p == itemsRange.c() && this.f27090o.getChildCount() == itemsRange.b()) ? false : true;
        }
        if (this.f27091p > itemsRange.c() && this.f27091p <= itemsRange.d()) {
            for (int i9 = this.f27091p - 1; i9 >= itemsRange.c() && g(i9, true); i9--) {
                this.f27091p = i9;
            }
        } else {
            this.f27091p = itemsRange.c();
        }
        int i10 = this.f27091p;
        for (int childCount = this.f27090o.getChildCount(); childCount < itemsRange.b(); childCount++) {
            if (!g(this.f27091p + childCount, false) && this.f27090o.getChildCount() == 0) {
                i10++;
            }
        }
        this.f27091p = i10;
        return z10;
    }

    private void D() {
        if (A()) {
            i(getWidth(), BasicMeasure.EXACTLY);
            v(getWidth(), getHeight());
        }
    }

    private boolean g(int i9, boolean z10) {
        View p10 = p(i9);
        if (p10 != null) {
            if (z10) {
                this.f27090o.addView(p10, 0);
                return true;
            }
            this.f27090o.addView(p10);
            return true;
        }
        return false;
    }

    private int getItemHeight() {
        int i9 = this.f27079d;
        if (i9 != 0) {
            return i9;
        }
        LinearLayout linearLayout = this.f27090o;
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            int height = this.f27090o.getChildAt(0).getHeight();
            this.f27079d = height;
            return height;
        }
        return getHeight() / this.f27078c;
    }

    private lb.a getItemsRange() {
        if (getItemHeight() == 0) {
            return null;
        }
        int i9 = this.f27077b;
        int i10 = 1;
        while (getItemHeight() * i10 < getHeight()) {
            i9--;
            i10 += 2;
        }
        int i11 = this.f27088m;
        if (i11 != 0) {
            if (i11 > 0) {
                i9--;
            }
            int itemHeight = i11 / getItemHeight();
            i9 -= itemHeight;
            i10 = (int) (i10 + 1 + Math.asin(itemHeight));
        }
        return new lb.a(i9, i10);
    }

    private void h() {
        LinearLayout linearLayout = this.f27090o;
        if (linearLayout != null) {
            this.f27093r.f(linearLayout, this.f27091p, new lb.a());
        } else {
            j();
        }
        int i9 = this.f27078c / 2;
        for (int i10 = this.f27077b + i9; i10 >= this.f27077b - i9; i10--) {
            if (g(i10, true)) {
                this.f27091p = i10;
            }
        }
    }

    private int i(int i9, int i10) {
        r();
        this.f27090o.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.f27090o.measure(View.MeasureSpec.makeMeasureSpec(i9, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = this.f27090o.getMeasuredWidth();
        if (i10 != 1073741824) {
            int max = Math.max(measuredWidth + 20, getSuggestedMinimumWidth());
            if (i10 != Integer.MIN_VALUE || i9 >= max) {
                i9 = max;
            }
        }
        this.f27090o.measure(View.MeasureSpec.makeMeasureSpec(i9 - 20, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(0, 0));
        return i9;
    }

    private void j() {
        if (this.f27090o == null) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.f27090o = linearLayout;
            linearLayout.setOrientation(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i9) {
        this.f27088m += i9;
        int itemHeight = getItemHeight();
        int i10 = this.f27088m / itemHeight;
        int i11 = this.f27077b - i10;
        int b10 = this.f27092q.b();
        int i12 = this.f27088m % itemHeight;
        if (Math.abs(i12) <= itemHeight / 2) {
            i12 = 0;
        }
        if (this.f27089n && b10 > 0) {
            if (i12 > 0) {
                i11--;
                i10++;
            } else if (i12 < 0) {
                i11++;
                i10--;
            }
            while (i11 < 0) {
                i11 += b10;
            }
            i11 %= b10;
        } else if (i11 < 0) {
            i10 = this.f27077b;
            i11 = 0;
        } else if (i11 >= b10) {
            i10 = (this.f27077b - b10) + 1;
            i11 = b10 - 1;
        } else if (i11 > 0 && i12 > 0) {
            i11--;
            i10++;
        } else if (i11 < b10 - 1 && i12 < 0) {
            i11++;
            i10--;
        }
        int i13 = this.f27088m;
        if (i11 != this.f27077b) {
            C(i11, false);
        } else {
            invalidate();
        }
        int i14 = i13 - (i10 * itemHeight);
        this.f27088m = i14;
        if (i14 > getHeight()) {
            this.f27088m = (this.f27088m % getHeight()) + getHeight();
        }
    }

    private void l(Canvas canvas) {
        int height = getHeight() / 2;
        int itemHeight = getItemHeight() / 2;
        Paint paint = new Paint();
        if (this.f27100y != 0) {
            paint.setColor(getResources().getColor(R.color.yellow1000));
        } else {
            paint.setColor(getResources().getColor(R.color.province_line_border));
        }
        paint.setStrokeWidth(0.0f);
    }

    private void m(Canvas canvas) {
        canvas.save();
        canvas.translate(10.0f, (-(((this.f27077b - this.f27091p) * getItemHeight()) + ((getItemHeight() - getHeight()) / 2))) + this.f27088m);
        this.f27090o.draw(canvas);
        canvas.restore();
    }

    private void n(Canvas canvas) {
        getItemHeight();
        this.f27083h.setBounds(0, 0, getWidth(), getHeight());
        this.f27083h.draw(canvas);
        this.f27084i.setBounds(0, 0, getWidth(), getHeight());
        this.f27084i.draw(canvas);
    }

    private int o(LinearLayout linearLayout) {
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            this.f27079d = linearLayout.getChildAt(0).getMeasuredHeight();
        }
        int i9 = this.f27079d;
        return Math.max((this.f27078c * i9) - ((i9 * 0) / 50), getSuggestedMinimumHeight());
    }

    private View p(int i9) {
        c cVar = this.f27092q;
        if (cVar == null || cVar.b() == 0) {
            return null;
        }
        int b10 = this.f27092q.b();
        if (!u(i9)) {
            return this.f27092q.c(this.f27093r.d(), this.f27090o);
        }
        while (i9 < 0) {
            i9 += b10;
        }
        return this.f27092q.a(i9 % b10, this.f27093r.e(), this.f27090o);
    }

    private void q(Context context) {
        this.f27086k = new com.guochao.faceshow.views.wheelview.a(getContext(), this.f27098w);
    }

    private void r() {
        if (this.f27080e == null) {
            this.f27080e = getContext().getResources().getDrawable(this.f27082g);
        }
        if (this.f27083h == null) {
            this.f27083h = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, this.f27076a);
        }
        if (this.f27084i == null) {
            this.f27084i = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, this.f27076a);
        }
        setBackgroundResource(this.f27081f);
    }

    private boolean u(int i9) {
        c cVar = this.f27092q;
        return cVar != null && cVar.b() > 0 && (this.f27089n || (i9 >= 0 && i9 < this.f27092q.b()));
    }

    private void v(int i9, int i10) {
        this.f27090o.layout(0, 0, i9 - 20, i10);
    }

    public void B(int i9, int i10) {
        this.f27086k.l((i9 * getItemHeight()) - this.f27088m, i10);
    }

    public void C(int i9, boolean z10) {
        int min;
        c cVar = this.f27092q;
        if (cVar == null || cVar.b() == 0) {
            return;
        }
        int b10 = this.f27092q.b();
        if (i9 < 0 || i9 >= b10) {
            if (!this.f27089n) {
                return;
            }
            while (i9 < 0) {
                i9 += b10;
            }
            i9 %= b10;
        }
        int i10 = this.f27077b;
        if (i9 != i10) {
            if (z10) {
                int i11 = i9 - i10;
                if (this.f27089n && (min = (b10 + Math.min(i9, i10)) - Math.max(i9, this.f27077b)) < Math.abs(i11)) {
                    i11 = i11 < 0 ? min : -min;
                }
                B(i11, 0);
                return;
            }
            this.f27088m = 0;
            this.f27077b = i9;
            w(i10, i9);
            invalidate();
        }
    }

    public void addChangingListener(lb.b bVar) {
        this.f27094s.add(bVar);
    }

    public void addClickingListener(lb.c cVar) {
        this.f27096u.add(cVar);
    }

    public void addScrollingListener(d dVar) {
        this.f27095t.add(dVar);
    }

    public int getCurrentItem() {
        return this.f27077b;
    }

    public c getViewAdapter() {
        return this.f27092q;
    }

    public int getVisibleItems() {
        return this.f27078c;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c cVar = this.f27092q;
        if (cVar != null && cVar.b() > 0) {
            D();
            m(canvas);
            l(canvas);
        }
        if (this.f27085j) {
            n(canvas);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        v(i11 - i9, i12 - i10);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i9);
        int size2 = View.MeasureSpec.getSize(i10);
        h();
        int i11 = i(size, mode);
        if (mode2 != 1073741824) {
            int o10 = o(this.f27090o);
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(o10, size2) : o10;
        }
        setMeasuredDimension(i11, size2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
        if (r0 != 2) goto L10;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            boolean r0 = r3.isEnabled()
            r1 = 1
            if (r0 == 0) goto L63
            mb.c r0 = r3.getViewAdapter()
            if (r0 != 0) goto Le
            goto L63
        Le:
            int r0 = r4.getAction()
            if (r0 == 0) goto L4f
            r2 = 2
            if (r0 == r1) goto L1a
            if (r0 == r2) goto L4f
            goto L5c
        L1a:
            boolean r0 = r3.f27087l
            if (r0 != 0) goto L5c
            float r0 = r4.getY()
            int r0 = (int) r0
            int r1 = r3.getHeight()
            int r1 = r1 / r2
            int r0 = r0 - r1
            if (r0 <= 0) goto L32
            int r1 = r3.getItemHeight()
            int r1 = r1 / r2
            int r0 = r0 + r1
            goto L38
        L32:
            int r1 = r3.getItemHeight()
            int r1 = r1 / r2
            int r0 = r0 - r1
        L38:
            int r1 = r3.getItemHeight()
            int r0 = r0 / r1
            if (r0 == 0) goto L5c
            int r1 = r3.f27077b
            int r1 = r1 + r0
            boolean r1 = r3.u(r1)
            if (r1 == 0) goto L5c
            int r1 = r3.f27077b
            int r1 = r1 + r0
            r3.x(r1)
            goto L5c
        L4f:
            android.view.ViewParent r0 = r3.getParent()
            if (r0 == 0) goto L5c
            android.view.ViewParent r0 = r3.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
        L5c:
            com.guochao.faceshow.views.wheelview.a r0 = r3.f27086k
            boolean r4 = r0.k(r4)
            return r4
        L63:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.views.wheelview.WheelView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void removeChangingListener(lb.b bVar) {
        this.f27094s.remove(bVar);
    }

    public void removeClickingListener(lb.c cVar) {
        this.f27096u.remove(cVar);
    }

    public void removeScrollingListener(d dVar) {
        this.f27095t.remove(dVar);
    }

    public void s(boolean z10) {
        if (z10) {
            this.f27093r.b();
            LinearLayout linearLayout = this.f27090o;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.f27088m = 0;
        } else {
            LinearLayout linearLayout2 = this.f27090o;
            if (linearLayout2 != null) {
                this.f27093r.f(linearLayout2, this.f27091p, new lb.a());
            }
        }
        invalidate();
    }

    public void setCurrentItem(int i9) {
        C(i9, false);
    }

    public void setCyclic(boolean z10) {
        this.f27089n = z10;
        s(false);
    }

    public void setDrawShadows(boolean z10) {
        this.f27085j = z10;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f27086k.m(interpolator);
    }

    public void setLineColor(int i9) {
        this.f27100y = i9;
    }

    public void setViewAdapter(c cVar) {
        c cVar2 = this.f27092q;
        if (cVar2 != null) {
            cVar2.unregisterDataSetObserver(this.f27099x);
        }
        this.f27092q = cVar;
        if (cVar != null) {
            cVar.registerDataSetObserver(this.f27099x);
        }
        s(true);
    }

    public void setVisibleItems(int i9) {
        this.f27078c = i9;
    }

    public void setWheelBackground(int i9) {
        this.f27081f = i9;
        setBackgroundResource(i9);
    }

    public void setWheelForeground(int i9) {
        this.f27082g = i9;
        this.f27080e = getContext().getResources().getDrawable(this.f27082g);
    }

    public boolean t() {
        return this.f27089n;
    }

    protected void w(int i9, int i10) {
        for (lb.b bVar : this.f27094s) {
            bVar.a(this, i9, i10);
        }
    }

    protected void x(int i9) {
        for (lb.c cVar : this.f27096u) {
            cVar.a(this, i9);
        }
    }

    protected void y() {
        for (d dVar : this.f27095t) {
            dVar.a(this);
        }
    }

    protected void z() {
        for (d dVar : this.f27095t) {
            dVar.b(this);
        }
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27076a = new int[]{ViewCompat.MEASURED_SIZE_MASK, ViewCompat.MEASURED_SIZE_MASK, ViewCompat.MEASURED_SIZE_MASK};
        this.f27077b = 0;
        this.f27078c = 3;
        this.f27079d = 0;
        this.f27081f = R.drawable.wheel_bg;
        this.f27082g = R.drawable.wheel_val;
        this.f27085j = true;
        this.f27089n = false;
        this.f27093r = new e(this);
        this.f27094s = new LinkedList();
        this.f27095t = new LinkedList();
        this.f27096u = new LinkedList();
        this.f27097v = "";
        this.f27098w = new a();
        this.f27099x = new b();
        this.f27100y = 0;
        q(context);
    }

    public WheelView(Context context) {
        super(context);
        this.f27076a = new int[]{ViewCompat.MEASURED_SIZE_MASK, ViewCompat.MEASURED_SIZE_MASK, ViewCompat.MEASURED_SIZE_MASK};
        this.f27077b = 0;
        this.f27078c = 3;
        this.f27079d = 0;
        this.f27081f = R.drawable.wheel_bg;
        this.f27082g = R.drawable.wheel_val;
        this.f27085j = true;
        this.f27089n = false;
        this.f27093r = new e(this);
        this.f27094s = new LinkedList();
        this.f27095t = new LinkedList();
        this.f27096u = new LinkedList();
        this.f27097v = "";
        this.f27098w = new a();
        this.f27099x = new b();
        this.f27100y = 0;
        q(context);
    }
}
