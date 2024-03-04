package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public abstract class LiveRoomScrollView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    protected Scroller f23787a;

    /* renamed from: b  reason: collision with root package name */
    protected int f23788b;

    /* renamed from: c  reason: collision with root package name */
    protected int f23789c;

    /* renamed from: d  reason: collision with root package name */
    boolean f23790d;

    /* renamed from: e  reason: collision with root package name */
    boolean f23791e;

    /* renamed from: f  reason: collision with root package name */
    int f23792f;

    /* renamed from: g  reason: collision with root package name */
    int f23793g;

    /* renamed from: h  reason: collision with root package name */
    boolean f23794h;

    /* renamed from: i  reason: collision with root package name */
    e f23795i;

    /* renamed from: j  reason: collision with root package name */
    d f23796j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f23797k;

    /* renamed from: l  reason: collision with root package name */
    private int f23798l;

    /* renamed from: m  reason: collision with root package name */
    private int f23799m;

    /* renamed from: n  reason: collision with root package name */
    boolean f23800n;

    /* renamed from: o  reason: collision with root package name */
    boolean f23801o;

    /* renamed from: p  reason: collision with root package name */
    private long f23802p;

    /* renamed from: q  reason: collision with root package name */
    float f23803q;

    /* renamed from: r  reason: collision with root package name */
    float f23804r;

    /* renamed from: s  reason: collision with root package name */
    float f23805s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends Scroller {
        a(Context context) {
            super(context);
        }

        @Override // android.widget.Scroller
        public void startScroll(int i9, int i10, int i11, int i12) {
            super.startScroll(i9, i10, i11, i12, 100);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            LiveRoomScrollView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            LiveRoomScrollView liveRoomScrollView = LiveRoomScrollView.this;
            if (liveRoomScrollView.f23789c != -1) {
                liveRoomScrollView.l(false);
                LiveRoomScrollView liveRoomScrollView2 = LiveRoomScrollView.this;
                liveRoomScrollView2.j(liveRoomScrollView2.f23789c);
                LiveRoomScrollView liveRoomScrollView3 = LiveRoomScrollView.this;
                e eVar = liveRoomScrollView3.f23795i;
                if (eVar != null) {
                    eVar.a(-1, liveRoomScrollView3.f23789c);
                }
                LiveRoomScrollView liveRoomScrollView4 = LiveRoomScrollView.this;
                liveRoomScrollView4.f23788b = liveRoomScrollView4.f23789c;
                liveRoomScrollView4.f23789c = -1;
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        int getItemCount();
    }

    /* loaded from: classes3.dex */
    public static abstract class d implements c {

        /* renamed from: a  reason: collision with root package name */
        LiveRoomScrollView f23808a;

        public void a() {
            b(this.f23808a.f23788b);
        }

        public void b(int i9) {
            if (this.f23808a.f23798l > getItemCount()) {
                i9 = 0;
            }
            this.f23808a.f23799m = -1;
            this.f23808a.setCurrentItem(i9);
        }

        public void c(int i9) {
            this.f23808a.f23799m = i9;
        }

        public void d(LiveRoomScrollView liveRoomScrollView) {
            this.f23808a = liveRoomScrollView;
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void a(int i9, int i10);

        void b(int i9, int i10);
    }

    public LiveRoomScrollView(Context context) {
        this(context, null);
    }

    private int getItemCount() {
        d dVar = this.f23796j;
        if (dVar == null) {
            this.f23798l = 0;
            return 0;
        }
        int itemCount = dVar.getItemCount();
        this.f23798l = itemCount;
        return itemCount;
    }

    private void k(boolean z10) {
        float height;
        int i9 = this.f23788b;
        int i10 = this.f23789c;
        if (i10 == -1) {
            if (z10) {
                i10 = i9 - 1;
            } else {
                i10 = this.f23799m == -1 ? i9 + 1 : i9;
            }
        }
        if (i10 >= 0 && i10 < getItemCount()) {
            this.f23790d = true;
            float scrollY = getScrollY();
            if (scrollY < getHeight() / 3.0f) {
                height = 0.0f;
            } else if (scrollY > (getHeight() / 3.0f) * 2.0f) {
                height = getHeight();
            } else {
                height = (getHeight() / 3.0f) * 2.0f;
            }
            e eVar = this.f23795i;
            if (eVar != null) {
                eVar.b(i9, i10);
            }
            this.f23791e = z10;
            this.f23787a.startScroll(0, getScrollY(), 0, (int) (height - getScrollY()));
            invalidate();
            return;
        }
        this.f23789c = -1;
        l(false);
    }

    public void c(boolean z10) {
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.f23787a.computeScrollOffset()) {
            scrollTo(0, this.f23787a.getCurrY());
            postInvalidateOnAnimation();
        }
        if (this.f23790d && this.f23787a.isFinished()) {
            this.f23790d = false;
            l(false);
            int i9 = this.f23788b;
            int i10 = this.f23789c;
            if (i10 != -1) {
                this.f23788b = i10;
                this.f23789c = -1;
            } else if (this.f23791e) {
                this.f23788b = i9 - 1;
            } else if (this.f23799m == -1) {
                this.f23788b = i9 + 1;
            }
            this.f23799m = -1;
            e eVar = this.f23795i;
            if (eVar != null) {
                eVar.a(i9, this.f23788b);
            }
            j(this.f23788b);
            postInvalidateOnAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        setOrientation(1);
        this.f23792f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f23793g = getResources().getDisplayMetrics().heightPixels / 8;
        FrameLayout frameLayout = new FrameLayout(getContext());
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        frameLayout.addView(imageView);
        addView(frameLayout, new LinearLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout2.setId(R.id.real_content);
        addView(frameLayout2, new LinearLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout3 = new FrameLayout(getContext());
        ImageView imageView2 = new ImageView(getContext());
        imageView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        frameLayout3.addView(imageView2);
        addView(frameLayout3, new LinearLayout.LayoutParams(-1, -1));
        this.f23787a = new a(getContext());
        getViewTreeObserver().addOnGlobalLayoutListener(new b());
    }

    public abstract boolean e();

    public boolean f() {
        return this.f23791e;
    }

    public abstract boolean g();

    public d getAdapter() {
        return this.f23796j;
    }

    public int getCurrentItem() {
        return this.f23788b;
    }

    public e getOnScrollCallback() {
        return this.f23795i;
    }

    public int getRoomContainerId() {
        return R.id.real_content;
    }

    public boolean h() {
        return this.f23790d;
    }

    public abstract boolean i(MotionEvent motionEvent);

    protected abstract void j(int i9);

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(boolean z10) {
        if (z10) {
            this.f23787a.startScroll(0, getScrollY(), 0, (int) ((getHeight() / 3.0f) - getScrollY()), 100);
            postInvalidateOnAnimation();
            return;
        }
        scrollTo(0, (int) (getHeight() / 3.0f));
    }

    public void m(int i9, boolean z10) {
        if (z10 || this.f23788b != i9) {
            boolean z11 = this.f23788b > i9;
            this.f23789c = i9;
            if (getMeasuredWidth() != 0) {
                k(z11);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f23797k && motionEvent.getPointerCount() < 2) {
            float y10 = motionEvent.getY();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f23794h = false;
                if (!this.f23787a.isFinished()) {
                    this.f23787a.abortAnimation();
                }
                this.f23804r = y10;
                this.f23805s = motionEvent.getX();
                this.f23800n = false;
                this.f23801o = false;
                this.f23803q = y10;
                this.f23802p = motionEvent.getPointerId(0);
            } else if (actionMasked != 2) {
                if (this.f23800n) {
                    return true;
                }
                if (this.f23801o || this.f23794h) {
                    return false;
                }
            } else if (this.f23802p != motionEvent.getPointerId(0)) {
                return false;
            } else {
                float abs = Math.abs(this.f23804r - y10);
                float abs2 = Math.abs(this.f23805s - motionEvent.getX());
                int i9 = this.f23792f;
                if (abs > i9 && abs > abs2) {
                    this.f23800n = true;
                } else if (abs2 > i9) {
                    this.f23801o = true;
                    return false;
                }
            }
            return this.f23800n;
        }
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        int childCount = getChildCount();
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            int size = View.MeasureSpec.getSize(i10);
            i11 += size;
            childAt.measure(i9, View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY));
        }
        setMeasuredDimension(i9, View.MeasureSpec.makeMeasureSpec(i11, BasicMeasure.EXACTLY));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001f, code lost:
        if (r3 != 3) goto L13;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            boolean r0 = r9.f23794h
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            int r0 = r10.getPointerCount()
            r2 = 2
            if (r0 < r2) goto Le
            return r1
        Le:
            float r0 = r10.getY()
            int r3 = r10.getActionMasked()
            r4 = 1077936128(0x40400000, float:3.0)
            r5 = 0
            r6 = 1
            if (r3 == r6) goto L7c
            if (r3 == r2) goto L23
            r2 = 3
            if (r3 == r2) goto L7c
            goto Lca
        L23:
            boolean r2 = r9.f23800n
            if (r2 == 0) goto Lca
            float r2 = r9.f23803q
            float r2 = r2 - r0
            int r3 = r9.f23788b
            if (r3 > 0) goto L45
            int r3 = r9.getScrollY()
            float r3 = (float) r3
            int r7 = r9.getHeight()
            float r7 = (float) r7
            float r7 = r7 / r4
            int r3 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r3 > 0) goto L45
            int r3 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r3 >= 0) goto L45
            r9.l(r1)
            return r6
        L45:
            int r3 = r9.getItemCount()
            int r3 = r3 - r6
            int r7 = r9.f23799m
            r8 = -1
            if (r7 == r8) goto L51
            int r3 = r3 + 1
        L51:
            int r7 = r9.f23788b
            if (r7 < r3) goto L77
            int r3 = r9.getScrollY()
            float r3 = (float) r3
            int r7 = r9.getHeight()
            float r7 = (float) r7
            float r7 = r7 / r4
            int r3 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r3 < 0) goto L77
            int r3 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r3 <= 0) goto L77
            boolean r0 = r9.e()
            if (r0 == 0) goto L73
            boolean r10 = r9.i(r10)
            return r10
        L73:
            r9.l(r1)
            return r6
        L77:
            int r10 = (int) r2
            r9.scrollBy(r1, r10)
            goto Lca
        L7c:
            boolean r2 = r9.g()
            if (r2 == 0) goto L89
            r9.f23803q = r5
            boolean r10 = r9.i(r10)
            return r10
        L89:
            boolean r10 = r9.f23800n
            if (r10 != 0) goto L90
            r9.f23803q = r5
            return r1
        L90:
            float r10 = r9.f23804r
            float r10 = r0 - r10
            float r10 = java.lang.Math.abs(r10)
            int r2 = r9.f23793g
            float r2 = (float) r2
            int r10 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r10 >= 0) goto Lba
            android.widget.Scroller r10 = r9.f23787a
            int r0 = r9.getScrollY()
            int r2 = r9.getHeight()
            float r2 = (float) r2
            float r2 = r2 / r4
            int r2 = (int) r2
            int r3 = r9.getScrollY()
            int r2 = r2 - r3
            r10.startScroll(r1, r0, r1, r2)
            r9.invalidate()
            r9.f23803q = r5
            return r1
        Lba:
            float r10 = r9.f23804r
            float r10 = r10 - r0
            int r10 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r10 <= 0) goto Lc5
            r9.k(r1)
            goto Lc8
        Lc5:
            r9.k(r6)
        Lc8:
            r9.f23794h = r1
        Lca:
            r9.f23803q = r0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.views.LiveRoomScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        super.requestDisallowInterceptTouchEvent(z10);
        this.f23794h = z10;
    }

    public void setAdapter(d dVar) {
        d dVar2 = this.f23796j;
        if (dVar2 != null) {
            dVar2.d(null);
        }
        this.f23796j = dVar;
        dVar.d(this);
    }

    public void setCurrentItem(int i9) {
        m(i9, false);
    }

    public abstract void setEnableLoadMore(boolean z10);

    public void setIndexOnly(int i9) {
        this.f23788b = i9;
    }

    public void setOnScrollCallback(e eVar) {
        this.f23795i = eVar;
    }

    public void setScrolling(boolean z10) {
        this.f23790d = z10;
    }

    public void setUserInputEnabled(boolean z10) {
        this.f23797k = z10;
    }

    public LiveRoomScrollView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LiveRoomScrollView(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f23789c = 0;
        this.f23790d = false;
        this.f23791e = false;
        this.f23797k = true;
        this.f23799m = -1;
        d();
    }
}
