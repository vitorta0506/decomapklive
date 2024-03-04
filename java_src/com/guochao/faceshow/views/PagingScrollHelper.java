package com.guochao.faceshow.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes4.dex */
public class PagingScrollHelper {

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f26667a = null;

    /* renamed from: b  reason: collision with root package name */
    private MyOnScrollListener f26668b = new MyOnScrollListener();

    /* renamed from: c  reason: collision with root package name */
    private MyOnFlingListener f26669c = new MyOnFlingListener();

    /* renamed from: d  reason: collision with root package name */
    private int f26670d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f26671e = 0;

    /* renamed from: f  reason: collision with root package name */
    int f26672f = 0;

    /* renamed from: g  reason: collision with root package name */
    int f26673g = 0;

    /* renamed from: h  reason: collision with root package name */
    private b f26674h = b.HORIZONTAL;

    /* renamed from: i  reason: collision with root package name */
    ValueAnimator f26675i = null;

    /* renamed from: j  reason: collision with root package name */
    private a f26676j = new a();

    /* renamed from: k  reason: collision with root package name */
    private boolean f26677k = true;

    /* renamed from: l  reason: collision with root package name */
    c f26678l;

    /* loaded from: classes4.dex */
    public class MyOnFlingListener extends RecyclerView.OnFlingListener {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class a implements ValueAnimator.AnimatorUpdateListener {
            a() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                if (PagingScrollHelper.this.f26674h == b.VERTICAL) {
                    PagingScrollHelper.this.f26667a.scrollBy(0, intValue - PagingScrollHelper.this.f26670d);
                    return;
                }
                PagingScrollHelper.this.f26667a.scrollBy(intValue - PagingScrollHelper.this.f26671e, 0);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public class b extends AnimatorListenerAdapter {
            b() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                PagingScrollHelper pagingScrollHelper = PagingScrollHelper.this;
                c cVar = pagingScrollHelper.f26678l;
                if (cVar != null) {
                    cVar.a(pagingScrollHelper.k());
                }
                PagingScrollHelper.this.f26667a.stopScroll();
                PagingScrollHelper pagingScrollHelper2 = PagingScrollHelper.this;
                pagingScrollHelper2.f26672f = pagingScrollHelper2.f26670d;
                PagingScrollHelper pagingScrollHelper3 = PagingScrollHelper.this;
                pagingScrollHelper3.f26673g = pagingScrollHelper3.f26671e;
            }
        }

        public MyOnFlingListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnFlingListener
        public boolean onFling(int i9, int i10) {
            int width;
            int i11;
            if (PagingScrollHelper.this.f26674h == b.NULL) {
                return false;
            }
            int l10 = PagingScrollHelper.this.l();
            if (PagingScrollHelper.this.f26674h == b.VERTICAL) {
                i11 = PagingScrollHelper.this.f26670d;
                if (i10 < 0) {
                    l10--;
                } else if (i10 > 0) {
                    l10++;
                }
                width = l10 * PagingScrollHelper.this.f26667a.getHeight();
            } else {
                int i12 = PagingScrollHelper.this.f26671e;
                if (i9 < 0) {
                    l10--;
                } else if (i9 > 0) {
                    l10++;
                }
                width = l10 * PagingScrollHelper.this.f26667a.getWidth();
                i11 = i12;
            }
            if (width < 0) {
                width = 0;
            }
            PagingScrollHelper pagingScrollHelper = PagingScrollHelper.this;
            ValueAnimator valueAnimator = pagingScrollHelper.f26675i;
            if (valueAnimator == null) {
                new ValueAnimator();
                pagingScrollHelper.f26675i = ValueAnimator.ofInt(i11, width);
                PagingScrollHelper.this.f26675i.setDuration(300L);
                PagingScrollHelper.this.f26675i.addUpdateListener(new a());
                PagingScrollHelper.this.f26675i.addListener(new b());
            } else {
                valueAnimator.cancel();
                PagingScrollHelper.this.f26675i.setIntValues(i11, width);
            }
            PagingScrollHelper.this.f26675i.start();
            return true;
        }
    }

    /* loaded from: classes4.dex */
    public class MyOnScrollListener extends RecyclerView.OnScrollListener {
        public MyOnScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i9) {
            if (i9 != 0 || PagingScrollHelper.this.f26674h == b.NULL) {
                return;
            }
            int i10 = 0;
            if (PagingScrollHelper.this.f26674h == b.VERTICAL) {
                if (Math.abs(PagingScrollHelper.this.f26670d - PagingScrollHelper.this.f26672f) > recyclerView.getHeight() / 2) {
                    if (PagingScrollHelper.this.f26670d - PagingScrollHelper.this.f26672f >= 0) {
                        r1 = 1000;
                    }
                    PagingScrollHelper.this.f26669c.onFling(i10, r1);
                }
            } else {
                if (Math.abs(PagingScrollHelper.this.f26671e - PagingScrollHelper.this.f26673g) > recyclerView.getWidth() / 2) {
                    i10 = PagingScrollHelper.this.f26671e - PagingScrollHelper.this.f26673g >= 0 ? 1000 : -1000;
                }
            }
            r1 = 0;
            PagingScrollHelper.this.f26669c.onFling(i10, r1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i9, int i10) {
            PagingScrollHelper.d(PagingScrollHelper.this, i10);
            PagingScrollHelper.f(PagingScrollHelper.this, i9);
        }
    }

    /* loaded from: classes4.dex */
    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (PagingScrollHelper.this.f26677k) {
                PagingScrollHelper.this.f26677k = false;
                PagingScrollHelper pagingScrollHelper = PagingScrollHelper.this;
                pagingScrollHelper.f26672f = pagingScrollHelper.f26670d;
                PagingScrollHelper pagingScrollHelper2 = PagingScrollHelper.this;
                pagingScrollHelper2.f26673g = pagingScrollHelper2.f26671e;
            }
            if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                PagingScrollHelper.this.f26677k = true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum b {
        HORIZONTAL,
        VERTICAL,
        NULL
    }

    /* loaded from: classes4.dex */
    public interface c {
        void a(int i9);
    }

    static /* synthetic */ int d(PagingScrollHelper pagingScrollHelper, int i9) {
        int i10 = pagingScrollHelper.f26670d + i9;
        pagingScrollHelper.f26670d = i10;
        return i10;
    }

    static /* synthetic */ int f(PagingScrollHelper pagingScrollHelper, int i9) {
        int i10 = pagingScrollHelper.f26671e + i9;
        pagingScrollHelper.f26671e = i10;
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int k() {
        if (this.f26667a.getHeight() == 0 || this.f26667a.getWidth() == 0) {
            return 0;
        }
        if (this.f26674h == b.VERTICAL) {
            return this.f26670d / this.f26667a.getHeight();
        }
        return this.f26671e / this.f26667a.getWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int l() {
        if (this.f26667a.getHeight() == 0 || this.f26667a.getWidth() == 0) {
            return 0;
        }
        if (this.f26674h == b.VERTICAL) {
            return this.f26672f / this.f26667a.getHeight();
        }
        return this.f26673g / this.f26667a.getWidth();
    }

    public void m(RecyclerView recyclerView) {
        if (recyclerView != null) {
            this.f26667a = recyclerView;
            recyclerView.setOnFlingListener(this.f26669c);
            recyclerView.setOnScrollListener(this.f26668b);
            recyclerView.setOnTouchListener(this.f26676j);
            n();
            return;
        }
        throw new IllegalArgumentException("recycleView must be not null");
    }

    public void n() {
        RecyclerView.LayoutManager layoutManager = this.f26667a.getLayoutManager();
        if (layoutManager != null) {
            if (layoutManager.canScrollVertically()) {
                this.f26674h = b.VERTICAL;
            } else if (layoutManager.canScrollHorizontally()) {
                this.f26674h = b.HORIZONTAL;
            } else {
                this.f26674h = b.NULL;
            }
            ValueAnimator valueAnimator = this.f26675i;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.f26673g = 0;
            this.f26672f = 0;
            this.f26671e = 0;
            this.f26670d = 0;
        }
    }
}
