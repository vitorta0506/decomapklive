package com.scwang.smartrefresh.header.fungame;

import ae.b;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.scwang.smartrefresh.layout.constant.RefreshState;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import wd.e;
import wd.g;
import wd.i;
import wd.j;
/* loaded from: classes4.dex */
public abstract class FunGameBase extends InternalAbstract implements g {

    /* renamed from: d  reason: collision with root package name */
    protected int f29212d;

    /* renamed from: e  reason: collision with root package name */
    protected int f29213e;

    /* renamed from: f  reason: collision with root package name */
    protected int f29214f;

    /* renamed from: g  reason: collision with root package name */
    protected float f29215g;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f29216h;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f29217i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f29218j;

    /* renamed from: k  reason: collision with root package name */
    protected RefreshState f29219k;

    /* renamed from: l  reason: collision with root package name */
    protected i f29220l;

    /* renamed from: m  reason: collision with root package name */
    protected e f29221m;

    public FunGameBase(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        setMinimumHeight(b.b(100.0f));
        this.f29214f = getResources().getDisplayMetrics().heightPixels;
        this.f29434b = SpinnerStyle.MatchLayout;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public int c(@NonNull j jVar, boolean z10) {
        this.f29217i = z10;
        if (!this.f29216h) {
            this.f29216h = true;
            if (this.f29218j) {
                if (this.f29215g == -1.0f) {
                    s();
                    c(jVar, z10);
                    return 0;
                }
                return Integer.MAX_VALUE;
            }
        }
        return 0;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, zd.f
    public void e(@NonNull j jVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        this.f29219k = refreshState2;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void g(@NonNull i iVar, int i9, int i10) {
        this.f29220l = iVar;
        this.f29213e = i9;
        if (isInEditMode()) {
            return;
        }
        setTranslationY(this.f29212d - this.f29213e);
        iVar.a(this, true);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void k(@NonNull j jVar, int i9, int i10) {
        this.f29216h = false;
        setTranslationY(0.0f);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, wd.h
    public void o(boolean z10, float f10, int i9, int i10, int i11) {
        if (this.f29218j) {
            r(f10, i9, i10, i11);
            return;
        }
        this.f29212d = i9;
        setTranslationY(i9 - this.f29213e);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f29219k == RefreshState.Refreshing || super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
        if (r1 != 3) goto L17;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r17) {
        /*
            r16 = this;
            r0 = r16
            com.scwang.smartrefresh.layout.constant.RefreshState r1 = r0.f29219k
            com.scwang.smartrefresh.layout.constant.RefreshState r2 = com.scwang.smartrefresh.layout.constant.RefreshState.Refreshing
            if (r1 == r2) goto L12
            com.scwang.smartrefresh.layout.constant.RefreshState r2 = com.scwang.smartrefresh.layout.constant.RefreshState.RefreshFinish
            if (r1 != r2) goto Ld
            goto L12
        Ld:
            boolean r1 = super.onTouchEvent(r17)
            return r1
        L12:
            boolean r1 = r0.f29218j
            if (r1 != 0) goto L19
            r16.t()
        L19:
            int r1 = r17.getAction()
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L83
            if (r1 == r3) goto L70
            r4 = 3
            r5 = 2
            if (r1 == r5) goto L2c
            if (r1 == r4) goto L70
            goto L8e
        L2c:
            float r1 = r17.getRawY()
            float r6 = r0.f29215g
            float r1 = r1 - r6
            r6 = 0
            int r6 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r6 < 0) goto L6a
            int r6 = r0.f29213e
            int r6 = r6 * 2
            double r6 = (double) r6
            int r8 = r0.f29214f
            int r8 = r8 * 2
            int r8 = r8 / r4
            double r4 = (double) r8
            r8 = 0
            double r10 = (double) r1
            r12 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            double r10 = r10 * r12
            double r8 = java.lang.Math.max(r8, r10)
            r10 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r12 = 4636737291354636288(0x4059000000000000, double:100.0)
            double r14 = -r8
            double r14 = r14 / r4
            double r4 = java.lang.Math.pow(r12, r14)
            double r10 = r10 - r4
            double r6 = r6 * r10
            double r4 = java.lang.Math.min(r6, r8)
            wd.i r1 = r0.f29220l
            int r4 = (int) r4
            int r4 = java.lang.Math.max(r3, r4)
            r1.g(r4, r2)
            goto L8e
        L6a:
            wd.i r1 = r0.f29220l
            r1.g(r3, r2)
            goto L8e
        L70:
            r16.s()
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0.f29215g = r1
            boolean r1 = r0.f29216h
            if (r1 == 0) goto L8e
            wd.i r1 = r0.f29220l
            int r2 = r0.f29213e
            r1.g(r2, r3)
            goto L8e
        L83:
            float r1 = r17.getRawY()
            r0.f29215g = r1
            wd.i r1 = r0.f29220l
            r1.g(r2, r3)
        L8e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.header.fungame.FunGameBase.onTouchEvent(android.view.MotionEvent):boolean");
    }

    protected abstract void r(float f10, int i9, int i10, int i11);

    protected void s() {
        if (this.f29216h) {
            this.f29218j = false;
            if (this.f29215g != -1.0f) {
                c(this.f29220l.k(), this.f29217i);
                this.f29220l.b(RefreshState.RefreshFinish);
                this.f29220l.d(0);
            } else {
                this.f29220l.g(this.f29213e, true);
            }
            View view = this.f29221m.getView();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.topMargin -= this.f29213e;
            view.setLayoutParams(marginLayoutParams);
            return;
        }
        this.f29220l.g(0, true);
    }

    protected void t() {
        if (this.f29218j) {
            return;
        }
        this.f29218j = true;
        e i9 = this.f29220l.i();
        this.f29221m = i9;
        View view = i9.getView();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.topMargin += this.f29213e;
        view.setLayoutParams(marginLayoutParams);
    }
}
