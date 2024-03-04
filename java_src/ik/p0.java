package ik;

import fk.i;
/* loaded from: classes7.dex */
public class p0 extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        o0 o0Var = (o0) this.f39807c;
        if (o0Var.i()) {
            return i9.r();
        }
        o0 o0Var2 = (o0) this.f39806b;
        o0 o0Var3 = (o0) this.f39808d[0];
        int[] k10 = nk.n.k(12);
        int[] k11 = nk.n.k(12);
        int[] k12 = nk.n.k(12);
        n0.n(o0Var.f41573g, k12);
        int[] k13 = nk.n.k(12);
        n0.n(k12, k13);
        boolean h10 = o0Var3.h();
        int[] iArr = o0Var3.f41573g;
        if (!h10) {
            n0.n(iArr, k11);
            iArr = k11;
        }
        n0.q(o0Var2.f41573g, iArr, k10);
        n0.a(o0Var2.f41573g, iArr, k11);
        n0.h(k11, k10, k11);
        n0.m(nk.n.c(12, k11, k11, k11), k11);
        n0.h(k12, o0Var2.f41573g, k12);
        n0.m(nk.n.L(12, k12, 2, 0), k12);
        n0.m(nk.n.M(12, k13, 3, 0, k10), k10);
        o0 o0Var4 = new o0(k13);
        n0.n(k11, o0Var4.f41573g);
        int[] iArr2 = o0Var4.f41573g;
        n0.q(iArr2, k12, iArr2);
        int[] iArr3 = o0Var4.f41573g;
        n0.q(iArr3, k12, iArr3);
        o0 o0Var5 = new o0(k12);
        n0.q(k12, o0Var4.f41573g, o0Var5.f41573g);
        int[] iArr4 = o0Var5.f41573g;
        n0.h(iArr4, k11, iArr4);
        int[] iArr5 = o0Var5.f41573g;
        n0.q(iArr5, k10, iArr5);
        o0 o0Var6 = new o0(k11);
        n0.r(o0Var.f41573g, o0Var6.f41573g);
        if (!h10) {
            int[] iArr6 = o0Var6.f41573g;
            n0.h(iArr6, o0Var3.f41573g, iArr6);
        }
        return new p0(i9, o0Var4, o0Var5, new fk.f[]{o0Var6});
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
        o0 o0Var = (o0) this.f39806b;
        o0 o0Var2 = (o0) this.f39807c;
        o0 o0Var3 = (o0) iVar.p();
        o0 o0Var4 = (o0) iVar.q();
        o0 o0Var5 = (o0) this.f39808d[0];
        o0 o0Var6 = (o0) iVar.r(0);
        int[] k10 = nk.n.k(24);
        int[] k11 = nk.n.k(24);
        int[] k12 = nk.n.k(12);
        int[] k13 = nk.n.k(12);
        boolean h10 = o0Var5.h();
        if (h10) {
            iArr = o0Var3.f41573g;
            iArr2 = o0Var4.f41573g;
        } else {
            n0.n(o0Var5.f41573g, k12);
            n0.h(k12, o0Var3.f41573g, k11);
            n0.h(k12, o0Var5.f41573g, k12);
            n0.h(k12, o0Var4.f41573g, k12);
            iArr = k11;
            iArr2 = k12;
        }
        boolean h11 = o0Var6.h();
        if (h11) {
            iArr3 = o0Var.f41573g;
            iArr4 = o0Var2.f41573g;
        } else {
            n0.n(o0Var6.f41573g, k13);
            n0.h(k13, o0Var.f41573g, k10);
            n0.h(k13, o0Var6.f41573g, k13);
            n0.h(k13, o0Var2.f41573g, k13);
            iArr3 = k10;
            iArr4 = k13;
        }
        int[] k14 = nk.n.k(12);
        n0.q(iArr3, iArr, k14);
        int[] k15 = nk.n.k(12);
        n0.q(iArr4, iArr2, k15);
        if (nk.n.A(12, k14)) {
            return nk.n.A(12, k15) ? E() : i9.r();
        }
        n0.n(k14, k12);
        int[] k16 = nk.n.k(12);
        n0.h(k12, k14, k16);
        n0.h(k12, iArr3, k12);
        n0.i(k16, k16);
        nk.j.a(iArr4, k16, k10);
        n0.m(nk.n.c(12, k12, k12, k16), k16);
        o0 o0Var7 = new o0(k13);
        n0.n(k15, o0Var7.f41573g);
        int[] iArr5 = o0Var7.f41573g;
        n0.q(iArr5, k16, iArr5);
        o0 o0Var8 = new o0(k16);
        n0.q(k12, o0Var7.f41573g, o0Var8.f41573g);
        nk.j.a(o0Var8.f41573g, k15, k11);
        n0.b(k10, k11, k10);
        n0.l(k10, o0Var8.f41573g);
        o0 o0Var9 = new o0(k14);
        if (!h10) {
            int[] iArr6 = o0Var9.f41573g;
            n0.h(iArr6, o0Var5.f41573g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = o0Var9.f41573g;
            n0.h(iArr7, o0Var6.f41573g, iArr7);
        }
        return new p0(i9, o0Var7, o0Var8, new fk.f[]{o0Var9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new p0(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new p0(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
