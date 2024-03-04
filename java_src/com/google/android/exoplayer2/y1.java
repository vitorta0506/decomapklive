package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import v2.q;
/* loaded from: classes.dex */
final class y1 {

    /* renamed from: a  reason: collision with root package name */
    public final v2.n f7302a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f7303b;

    /* renamed from: c  reason: collision with root package name */
    public final v2.i0[] f7304c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7305d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7306e;

    /* renamed from: f  reason: collision with root package name */
    public z1 f7307f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7308g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f7309h;

    /* renamed from: i  reason: collision with root package name */
    private final w2[] f7310i;

    /* renamed from: j  reason: collision with root package name */
    private final h3.b0 f7311j;

    /* renamed from: k  reason: collision with root package name */
    private final e2 f7312k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private y1 f7313l;

    /* renamed from: m  reason: collision with root package name */
    private v2.q0 f7314m;

    /* renamed from: n  reason: collision with root package name */
    private h3.c0 f7315n;

    /* renamed from: o  reason: collision with root package name */
    private long f7316o;

    public y1(w2[] w2VarArr, long j10, h3.b0 b0Var, j3.b bVar, e2 e2Var, z1 z1Var, h3.c0 c0Var) {
        this.f7310i = w2VarArr;
        this.f7316o = j10;
        this.f7311j = b0Var;
        this.f7312k = e2Var;
        q.b bVar2 = z1Var.f7319a;
        this.f7303b = bVar2.f58906a;
        this.f7307f = z1Var;
        this.f7314m = v2.q0.f58918d;
        this.f7315n = c0Var;
        this.f7304c = new v2.i0[w2VarArr.length];
        this.f7309h = new boolean[w2VarArr.length];
        this.f7302a = e(bVar2, e2Var, bVar, z1Var.f7320b, z1Var.f7322d);
    }

    private void c(v2.i0[] i0VarArr) {
        int i9 = 0;
        while (true) {
            w2[] w2VarArr = this.f7310i;
            if (i9 >= w2VarArr.length) {
                return;
            }
            if (w2VarArr[i9].f() == -2 && this.f7315n.c(i9)) {
                i0VarArr[i9] = new v2.g();
            }
            i9++;
        }
    }

    private static v2.n e(q.b bVar, e2 e2Var, j3.b bVar2, long j10, long j11) {
        v2.n h10 = e2Var.h(bVar, bVar2, j10);
        return j11 != -9223372036854775807L ? new v2.c(h10, true, 0L, j11) : h10;
    }

    private void f() {
        if (!r()) {
            return;
        }
        int i9 = 0;
        while (true) {
            h3.c0 c0Var = this.f7315n;
            if (i9 >= c0Var.f40383a) {
                return;
            }
            boolean c10 = c0Var.c(i9);
            h3.s sVar = this.f7315n.f40385c[i9];
            if (c10 && sVar != null) {
                sVar.e();
            }
            i9++;
        }
    }

    private void g(v2.i0[] i0VarArr) {
        int i9 = 0;
        while (true) {
            w2[] w2VarArr = this.f7310i;
            if (i9 >= w2VarArr.length) {
                return;
            }
            if (w2VarArr[i9].f() == -2) {
                i0VarArr[i9] = null;
            }
            i9++;
        }
    }

    private void h() {
        if (!r()) {
            return;
        }
        int i9 = 0;
        while (true) {
            h3.c0 c0Var = this.f7315n;
            if (i9 >= c0Var.f40383a) {
                return;
            }
            boolean c10 = c0Var.c(i9);
            h3.s sVar = this.f7315n.f40385c[i9];
            if (c10 && sVar != null) {
                sVar.j();
            }
            i9++;
        }
    }

    private boolean r() {
        return this.f7313l == null;
    }

    private static void u(e2 e2Var, v2.n nVar) {
        try {
            if (nVar instanceof v2.c) {
                e2Var.z(((v2.c) nVar).f58696a);
            } else {
                e2Var.z(nVar);
            }
        } catch (RuntimeException e10) {
            com.google.android.exoplayer2.util.r.d("MediaPeriodHolder", "Period release failed.", e10);
        }
    }

    public void A() {
        v2.n nVar = this.f7302a;
        if (nVar instanceof v2.c) {
            long j10 = this.f7307f.f7322d;
            if (j10 == -9223372036854775807L) {
                j10 = Long.MIN_VALUE;
            }
            ((v2.c) nVar).o(0L, j10);
        }
    }

    public long a(h3.c0 c0Var, long j10, boolean z10) {
        return b(c0Var, j10, z10, new boolean[this.f7310i.length]);
    }

    public long b(h3.c0 c0Var, long j10, boolean z10, boolean[] zArr) {
        int i9 = 0;
        while (true) {
            boolean z11 = true;
            if (i9 >= c0Var.f40383a) {
                break;
            }
            boolean[] zArr2 = this.f7309h;
            if (z10 || !c0Var.b(this.f7315n, i9)) {
                z11 = false;
            }
            zArr2[i9] = z11;
            i9++;
        }
        g(this.f7304c);
        f();
        this.f7315n = c0Var;
        h();
        long g10 = this.f7302a.g(c0Var.f40385c, this.f7309h, this.f7304c, zArr, j10);
        c(this.f7304c);
        this.f7306e = false;
        int i10 = 0;
        while (true) {
            v2.i0[] i0VarArr = this.f7304c;
            if (i10 >= i0VarArr.length) {
                return g10;
            }
            if (i0VarArr[i10] != null) {
                com.google.android.exoplayer2.util.a.f(c0Var.c(i10));
                if (this.f7310i[i10].f() != -2) {
                    this.f7306e = true;
                }
            } else {
                com.google.android.exoplayer2.util.a.f(c0Var.f40385c[i10] == null);
            }
            i10++;
        }
    }

    public void d(long j10) {
        com.google.android.exoplayer2.util.a.f(r());
        this.f7302a.n(y(j10));
    }

    public long i() {
        if (!this.f7305d) {
            return this.f7307f.f7320b;
        }
        long r10 = this.f7306e ? this.f7302a.r() : Long.MIN_VALUE;
        return r10 == Long.MIN_VALUE ? this.f7307f.f7323e : r10;
    }

    @Nullable
    public y1 j() {
        return this.f7313l;
    }

    public long k() {
        if (this.f7305d) {
            return this.f7302a.b();
        }
        return 0L;
    }

    public long l() {
        return this.f7316o;
    }

    public long m() {
        return this.f7307f.f7320b + this.f7316o;
    }

    public v2.q0 n() {
        return this.f7314m;
    }

    public h3.c0 o() {
        return this.f7315n;
    }

    public void p(float f10, i3 i3Var) throws ExoPlaybackException {
        this.f7305d = true;
        this.f7314m = this.f7302a.p();
        h3.c0 v10 = v(f10, i3Var);
        z1 z1Var = this.f7307f;
        long j10 = z1Var.f7320b;
        long j11 = z1Var.f7323e;
        if (j11 != -9223372036854775807L && j10 >= j11) {
            j10 = Math.max(0L, j11 - 1);
        }
        long a10 = a(v10, j10, false);
        long j12 = this.f7316o;
        z1 z1Var2 = this.f7307f;
        this.f7316o = j12 + (z1Var2.f7320b - a10);
        this.f7307f = z1Var2.b(a10);
    }

    public boolean q() {
        return this.f7305d && (!this.f7306e || this.f7302a.r() == Long.MIN_VALUE);
    }

    public void s(long j10) {
        com.google.android.exoplayer2.util.a.f(r());
        if (this.f7305d) {
            this.f7302a.t(y(j10));
        }
    }

    public void t() {
        f();
        u(this.f7312k, this.f7302a);
    }

    public h3.c0 v(float f10, i3 i3Var) throws ExoPlaybackException {
        h3.s[] sVarArr;
        h3.c0 h10 = this.f7311j.h(this.f7310i, n(), this.f7307f.f7319a, i3Var);
        for (h3.s sVar : h10.f40385c) {
            if (sVar != null) {
                sVar.d(f10);
            }
        }
        return h10;
    }

    public void w(@Nullable y1 y1Var) {
        if (y1Var == this.f7313l) {
            return;
        }
        f();
        this.f7313l = y1Var;
        h();
    }

    public void x(long j10) {
        this.f7316o = j10;
    }

    public long y(long j10) {
        return j10 - l();
    }

    public long z(long j10) {
        return j10 + l();
    }
}
