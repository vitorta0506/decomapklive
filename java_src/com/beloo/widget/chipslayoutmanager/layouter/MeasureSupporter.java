package com.beloo.widget.chipslayoutmanager.layouter;

import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.RecyclerView;
import u.k;
/* loaded from: classes.dex */
public class MeasureSupporter extends RecyclerView.AdapterDataObserver implements k {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.LayoutManager f4116a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f4117b;

    /* renamed from: c  reason: collision with root package name */
    private int f4118c;

    /* renamed from: d  reason: collision with root package name */
    private int f4119d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4120e;

    /* renamed from: f  reason: collision with root package name */
    private Integer f4121f = null;

    /* renamed from: g  reason: collision with root package name */
    private int f4122g = 0;

    /* renamed from: h  reason: collision with root package name */
    private Integer f4123h = null;

    /* renamed from: i  reason: collision with root package name */
    private int f4124i = 0;

    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView f4125a;

        /* renamed from: com.beloo.widget.chipslayoutmanager.layouter.MeasureSupporter$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0061a implements RecyclerView.ItemAnimator.ItemAnimatorFinishedListener {
            C0061a() {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorFinishedListener
            public void onAnimationsFinished() {
                a.this.c();
            }
        }

        a(RecyclerView recyclerView) {
            this.f4125a = recyclerView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            MeasureSupporter.this.f4117b = false;
            MeasureSupporter.this.f4116a.requestLayout();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4125a.getItemAnimator() != null) {
                this.f4125a.getItemAnimator().isRunning(new C0061a());
            } else {
                c();
            }
        }
    }

    public MeasureSupporter(RecyclerView.LayoutManager layoutManager) {
        this.f4116a = layoutManager;
    }

    private void j(int i9) {
        this.f4119d = i9;
    }

    private void k(int i9) {
        this.f4118c = i9;
    }

    @Override // u.k
    public boolean O() {
        return this.f4120e;
    }

    @Override // u.k
    public int a() {
        return this.f4119d;
    }

    @Override // u.k
    public void b() {
        this.f4122g = this.f4116a.getWidth();
        this.f4124i = this.f4116a.getHeight();
    }

    @Override // u.k
    public void c(RecyclerView recyclerView) {
        this.f4116a.postOnAnimation(new a(recyclerView));
    }

    @Override // u.k
    public void d(boolean z10) {
        this.f4120e = z10;
    }

    @Override // u.k
    public int e() {
        return this.f4118c;
    }

    @Override // u.k
    @CallSuper
    public void f(int i9, int i10) {
        if (i()) {
            k(Math.max(i9, this.f4121f.intValue()));
            j(Math.max(i10, this.f4123h.intValue()));
            return;
        }
        k(i9);
        j(i10);
    }

    boolean i() {
        return this.f4117b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    @CallSuper
    public void onItemRangeRemoved(int i9, int i10) {
        super.onItemRangeRemoved(i9, i10);
        this.f4117b = true;
        this.f4121f = Integer.valueOf(this.f4122g);
        this.f4123h = Integer.valueOf(this.f4124i);
    }
}
