package ik;

import fk.i;
/* loaded from: classes7.dex */
public class t0 extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t0(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        s0 s0Var = (s0) this.f39807c;
        if (s0Var.i()) {
            return i9.r();
        }
        s0 s0Var2 = (s0) this.f39806b;
        s0 s0Var3 = (s0) this.f39808d[0];
        int[] k10 = nk.n.k(17);
        int[] k11 = nk.n.k(17);
        int[] k12 = nk.n.k(17);
        r0.n(s0Var.f41606g, k12);
        int[] k13 = nk.n.k(17);
        r0.n(k12, k13);
        boolean h10 = s0Var3.h();
        int[] iArr = s0Var3.f41606g;
        if (!h10) {
            r0.n(iArr, k11);
            iArr = k11;
        }
        r0.p(s0Var2.f41606g, iArr, k10);
        r0.a(s0Var2.f41606g, iArr, k11);
        r0.h(k11, k10, k11);
        nk.n.c(17, k11, k11, k11);
        r0.m(k11);
        r0.h(k12, s0Var2.f41606g, k12);
        nk.n.L(17, k12, 2, 0);
        r0.m(k12);
        nk.n.M(17, k13, 3, 0, k10);
        r0.m(k10);
        s0 s0Var4 = new s0(k13);
        r0.n(k11, s0Var4.f41606g);
        int[] iArr2 = s0Var4.f41606g;
        r0.p(iArr2, k12, iArr2);
        int[] iArr3 = s0Var4.f41606g;
        r0.p(iArr3, k12, iArr3);
        s0 s0Var5 = new s0(k12);
        r0.p(k12, s0Var4.f41606g, s0Var5.f41606g);
        int[] iArr4 = s0Var5.f41606g;
        r0.h(iArr4, k11, iArr4);
        int[] iArr5 = s0Var5.f41606g;
        r0.p(iArr5, k10, iArr5);
        s0 s0Var6 = new s0(k11);
        r0.q(s0Var.f41606g, s0Var6.f41606g);
        if (!h10) {
            int[] iArr6 = s0Var6.f41606g;
            r0.h(iArr6, s0Var3.f41606g, iArr6);
        }
        return new t0(i9, s0Var4, s0Var5, new fk.f[]{s0Var6});
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
        s0 s0Var = (s0) this.f39806b;
        s0 s0Var2 = (s0) this.f39807c;
        s0 s0Var3 = (s0) iVar.p();
        s0 s0Var4 = (s0) iVar.q();
        s0 s0Var5 = (s0) this.f39808d[0];
        s0 s0Var6 = (s0) iVar.r(0);
        int[] k10 = nk.n.k(17);
        int[] k11 = nk.n.k(17);
        int[] k12 = nk.n.k(17);
        int[] k13 = nk.n.k(17);
        boolean h10 = s0Var5.h();
        if (h10) {
            iArr = s0Var3.f41606g;
            iArr2 = s0Var4.f41606g;
        } else {
            r0.n(s0Var5.f41606g, k12);
            r0.h(k12, s0Var3.f41606g, k11);
            r0.h(k12, s0Var5.f41606g, k12);
            r0.h(k12, s0Var4.f41606g, k12);
            iArr = k11;
            iArr2 = k12;
        }
        boolean h11 = s0Var6.h();
        if (h11) {
            iArr3 = s0Var.f41606g;
            iArr4 = s0Var2.f41606g;
        } else {
            r0.n(s0Var6.f41606g, k13);
            r0.h(k13, s0Var.f41606g, k10);
            r0.h(k13, s0Var6.f41606g, k13);
            r0.h(k13, s0Var2.f41606g, k13);
            iArr3 = k10;
            iArr4 = k13;
        }
        int[] k14 = nk.n.k(17);
        r0.p(iArr3, iArr, k14);
        r0.p(iArr4, iArr2, k11);
        if (nk.n.A(17, k14)) {
            return nk.n.A(17, k11) ? E() : i9.r();
        }
        r0.n(k14, k12);
        int[] k15 = nk.n.k(17);
        r0.h(k12, k14, k15);
        r0.h(k12, iArr3, k12);
        r0.h(iArr4, k15, k10);
        s0 s0Var7 = new s0(k13);
        r0.n(k11, s0Var7.f41606g);
        int[] iArr5 = s0Var7.f41606g;
        r0.a(iArr5, k15, iArr5);
        int[] iArr6 = s0Var7.f41606g;
        r0.p(iArr6, k12, iArr6);
        int[] iArr7 = s0Var7.f41606g;
        r0.p(iArr7, k12, iArr7);
        s0 s0Var8 = new s0(k15);
        r0.p(k12, s0Var7.f41606g, s0Var8.f41606g);
        r0.h(s0Var8.f41606g, k11, k11);
        r0.p(k11, k10, s0Var8.f41606g);
        s0 s0Var9 = new s0(k14);
        if (!h10) {
            int[] iArr8 = s0Var9.f41606g;
            r0.h(iArr8, s0Var5.f41606g, iArr8);
        }
        if (!h11) {
            int[] iArr9 = s0Var9.f41606g;
            r0.h(iArr9, s0Var6.f41606g, iArr9);
        }
        return new t0(i9, s0Var7, s0Var8, new fk.f[]{s0Var9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new t0(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new t0(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
