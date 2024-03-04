package ik;

import fk.i;
/* loaded from: classes7.dex */
public class h0 extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        g0 g0Var = (g0) this.f39807c;
        if (g0Var.i()) {
            return i9.r();
        }
        g0 g0Var2 = (g0) this.f39806b;
        g0 g0Var3 = (g0) this.f39808d[0];
        int[] i10 = nk.h.i();
        f0.m(g0Var.f41497g, i10);
        int[] i11 = nk.h.i();
        f0.m(i10, i11);
        int[] i12 = nk.h.i();
        f0.m(g0Var2.f41497g, i12);
        f0.l(nk.h.b(i12, i12, i12), i12);
        f0.f(i10, g0Var2.f41497g, i10);
        f0.l(nk.n.L(8, i10, 2, 0), i10);
        int[] i13 = nk.h.i();
        f0.l(nk.n.M(8, i11, 3, 0, i13), i13);
        g0 g0Var4 = new g0(i11);
        f0.m(i12, g0Var4.f41497g);
        int[] iArr = g0Var4.f41497g;
        f0.o(iArr, i10, iArr);
        int[] iArr2 = g0Var4.f41497g;
        f0.o(iArr2, i10, iArr2);
        g0 g0Var5 = new g0(i10);
        f0.o(i10, g0Var4.f41497g, g0Var5.f41497g);
        int[] iArr3 = g0Var5.f41497g;
        f0.f(iArr3, i12, iArr3);
        int[] iArr4 = g0Var5.f41497g;
        f0.o(iArr4, i13, iArr4);
        g0 g0Var6 = new g0(i12);
        f0.p(g0Var.f41497g, g0Var6.f41497g);
        if (!g0Var3.h()) {
            int[] iArr5 = g0Var6.f41497g;
            f0.f(iArr5, g0Var3.f41497g, iArr5);
        }
        return new h0(i9, g0Var4, g0Var5, new fk.f[]{g0Var6});
    }

    @Override // fk.i
    public fk.i F(fk.i iVar) {
        return this == iVar ? G() : t() ? iVar : iVar.t() ? E() : this.f39807c.i() ? iVar : E().a(iVar);
    }

    public fk.i G() {
        return (t() || this.f39807c.i()) ? this : E().a(this);
    }

    @Override // fk.i
    public fk.i a(fk.i iVar) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (t()) {
            return iVar;
        }
        if (iVar.t()) {
            return this;
        }
        if (this == iVar) {
            return E();
        }
        fk.e i9 = i();
        g0 g0Var = (g0) this.f39806b;
        g0 g0Var2 = (g0) this.f39807c;
        g0 g0Var3 = (g0) iVar.p();
        g0 g0Var4 = (g0) iVar.q();
        g0 g0Var5 = (g0) this.f39808d[0];
        g0 g0Var6 = (g0) iVar.r(0);
        int[] k10 = nk.h.k();
        int[] i10 = nk.h.i();
        int[] i11 = nk.h.i();
        int[] i12 = nk.h.i();
        boolean h10 = g0Var5.h();
        if (h10) {
            iArr = g0Var3.f41497g;
            iArr2 = g0Var4.f41497g;
        } else {
            f0.m(g0Var5.f41497g, i11);
            f0.f(i11, g0Var3.f41497g, i10);
            f0.f(i11, g0Var5.f41497g, i11);
            f0.f(i11, g0Var4.f41497g, i11);
            iArr = i10;
            iArr2 = i11;
        }
        boolean h11 = g0Var6.h();
        if (h11) {
            iArr3 = g0Var.f41497g;
            iArr4 = g0Var2.f41497g;
        } else {
            f0.m(g0Var6.f41497g, i12);
            f0.f(i12, g0Var.f41497g, k10);
            f0.f(i12, g0Var6.f41497g, i12);
            f0.f(i12, g0Var2.f41497g, i12);
            iArr3 = k10;
            iArr4 = i12;
        }
        int[] i13 = nk.h.i();
        f0.o(iArr3, iArr, i13);
        f0.o(iArr4, iArr2, i10);
        if (nk.h.v(i13)) {
            return nk.h.v(i10) ? E() : i9.r();
        }
        f0.m(i13, i11);
        int[] i14 = nk.h.i();
        f0.f(i11, i13, i14);
        f0.f(i11, iArr3, i11);
        f0.h(i14, i14);
        nk.h.y(iArr4, i14, k10);
        f0.l(nk.h.b(i11, i11, i14), i14);
        g0 g0Var7 = new g0(i12);
        f0.m(i10, g0Var7.f41497g);
        int[] iArr5 = g0Var7.f41497g;
        f0.o(iArr5, i14, iArr5);
        g0 g0Var8 = new g0(i14);
        f0.o(i11, g0Var7.f41497g, g0Var8.f41497g);
        f0.g(g0Var8.f41497g, i10, k10);
        f0.k(k10, g0Var8.f41497g);
        g0 g0Var9 = new g0(i13);
        if (!h10) {
            int[] iArr6 = g0Var9.f41497g;
            f0.f(iArr6, g0Var5.f41497g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = g0Var9.f41497g;
            f0.f(iArr7, g0Var6.f41497g, iArr7);
        }
        return new h0(i9, g0Var7, g0Var8, new fk.f[]{g0Var9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new h0(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new h0(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
