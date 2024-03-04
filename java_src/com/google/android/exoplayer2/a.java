package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.i3;
/* loaded from: classes.dex */
public abstract class a extends i3 {

    /* renamed from: c  reason: collision with root package name */
    private final int f5357c;

    /* renamed from: d  reason: collision with root package name */
    private final v2.k0 f5358d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f5359e;

    public a(boolean z10, v2.k0 k0Var) {
        this.f5359e = z10;
        this.f5358d = k0Var;
        this.f5357c = k0Var.a();
    }

    public static Object A(Object obj) {
        return ((Pair) obj).second;
    }

    public static Object B(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object D(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int G(int i9, boolean z10) {
        if (z10) {
            return this.f5358d.d(i9);
        }
        if (i9 < this.f5357c - 1) {
            return i9 + 1;
        }
        return -1;
    }

    private int H(int i9, boolean z10) {
        if (z10) {
            return this.f5358d.c(i9);
        }
        if (i9 > 0) {
            return i9 - 1;
        }
        return -1;
    }

    protected abstract Object C(int i9);

    protected abstract int E(int i9);

    protected abstract int F(int i9);

    protected abstract i3 I(int i9);

    @Override // com.google.android.exoplayer2.i3
    public int e(boolean z10) {
        if (this.f5357c == 0) {
            return -1;
        }
        if (this.f5359e) {
            z10 = false;
        }
        int g10 = z10 ? this.f5358d.g() : 0;
        while (I(g10).u()) {
            g10 = G(g10, z10);
            if (g10 == -1) {
                return -1;
            }
        }
        return F(g10) + I(g10).e(z10);
    }

    @Override // com.google.android.exoplayer2.i3
    public final int f(Object obj) {
        int f10;
        if (obj instanceof Pair) {
            Object B = B(obj);
            Object A = A(obj);
            int x10 = x(B);
            if (x10 == -1 || (f10 = I(x10).f(A)) == -1) {
                return -1;
            }
            return E(x10) + f10;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.i3
    public int g(boolean z10) {
        int i9 = this.f5357c;
        if (i9 == 0) {
            return -1;
        }
        if (this.f5359e) {
            z10 = false;
        }
        int e10 = z10 ? this.f5358d.e() : i9 - 1;
        while (I(e10).u()) {
            e10 = H(e10, z10);
            if (e10 == -1) {
                return -1;
            }
        }
        return F(e10) + I(e10).g(z10);
    }

    @Override // com.google.android.exoplayer2.i3
    public int i(int i9, int i10, boolean z10) {
        if (this.f5359e) {
            if (i10 == 1) {
                i10 = 2;
            }
            z10 = false;
        }
        int z11 = z(i9);
        int F = F(z11);
        int i11 = I(z11).i(i9 - F, i10 != 2 ? i10 : 0, z10);
        if (i11 != -1) {
            return F + i11;
        }
        int G = G(z11, z10);
        while (G != -1 && I(G).u()) {
            G = G(G, z10);
        }
        if (G != -1) {
            return F(G) + I(G).e(z10);
        }
        if (i10 == 2) {
            return e(z10);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.i3
    public final i3.b k(int i9, i3.b bVar, boolean z10) {
        int y10 = y(i9);
        int F = F(y10);
        I(y10).k(i9 - E(y10), bVar, z10);
        bVar.f6028c += F;
        if (z10) {
            bVar.f6027b = D(C(y10), com.google.android.exoplayer2.util.a.e(bVar.f6027b));
        }
        return bVar;
    }

    @Override // com.google.android.exoplayer2.i3
    public final i3.b l(Object obj, i3.b bVar) {
        Object B = B(obj);
        Object A = A(obj);
        int x10 = x(B);
        int F = F(x10);
        I(x10).l(A, bVar);
        bVar.f6028c += F;
        bVar.f6027b = obj;
        return bVar;
    }

    @Override // com.google.android.exoplayer2.i3
    public int p(int i9, int i10, boolean z10) {
        if (this.f5359e) {
            if (i10 == 1) {
                i10 = 2;
            }
            z10 = false;
        }
        int z11 = z(i9);
        int F = F(z11);
        int p10 = I(z11).p(i9 - F, i10 != 2 ? i10 : 0, z10);
        if (p10 != -1) {
            return F + p10;
        }
        int H = H(z11, z10);
        while (H != -1 && I(H).u()) {
            H = H(H, z10);
        }
        if (H != -1) {
            return F(H) + I(H).g(z10);
        }
        if (i10 == 2) {
            return g(z10);
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.i3
    public final Object q(int i9) {
        int y10 = y(i9);
        return D(C(y10), I(y10).q(i9 - E(y10)));
    }

    @Override // com.google.android.exoplayer2.i3
    public final i3.d s(int i9, i3.d dVar, long j10) {
        int z10 = z(i9);
        int F = F(z10);
        int E = E(z10);
        I(z10).s(i9 - F, dVar, j10);
        Object C = C(z10);
        if (!i3.d.f6037r.equals(dVar.f6041a)) {
            C = D(C, dVar.f6041a);
        }
        dVar.f6041a = C;
        dVar.f6055o += E;
        dVar.f6056p += E;
        return dVar;
    }

    protected abstract int x(Object obj);

    protected abstract int y(int i9);

    protected abstract int z(int i9);
}
