package ik;

import fk.i;
/* loaded from: classes7.dex */
public class l0 extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        k0 k0Var = (k0) this.f39807c;
        if (k0Var.i()) {
            return i9.r();
        }
        k0 k0Var2 = (k0) this.f39806b;
        k0 k0Var3 = (k0) this.f39808d[0];
        int[] i10 = nk.h.i();
        int[] i11 = nk.h.i();
        int[] i12 = nk.h.i();
        j0.n(k0Var.f41535g, i12);
        int[] i13 = nk.h.i();
        j0.n(i12, i13);
        boolean h10 = k0Var3.h();
        int[] iArr = k0Var3.f41535g;
        if (!h10) {
            j0.n(iArr, i11);
            iArr = i11;
        }
        j0.q(k0Var2.f41535g, iArr, i10);
        j0.a(k0Var2.f41535g, iArr, i11);
        j0.g(i11, i10, i11);
        j0.m(nk.h.b(i11, i11, i11), i11);
        j0.g(i12, k0Var2.f41535g, i12);
        j0.m(nk.n.L(8, i12, 2, 0), i12);
        j0.m(nk.n.M(8, i13, 3, 0, i10), i10);
        k0 k0Var4 = new k0(i13);
        j0.n(i11, k0Var4.f41535g);
        int[] iArr2 = k0Var4.f41535g;
        j0.q(iArr2, i12, iArr2);
        int[] iArr3 = k0Var4.f41535g;
        j0.q(iArr3, i12, iArr3);
        k0 k0Var5 = new k0(i12);
        j0.q(i12, k0Var4.f41535g, k0Var5.f41535g);
        int[] iArr4 = k0Var5.f41535g;
        j0.g(iArr4, i11, iArr4);
        int[] iArr5 = k0Var5.f41535g;
        j0.q(iArr5, i10, iArr5);
        k0 k0Var6 = new k0(i11);
        j0.r(k0Var.f41535g, k0Var6.f41535g);
        if (!h10) {
            int[] iArr6 = k0Var6.f41535g;
            j0.g(iArr6, k0Var3.f41535g, iArr6);
        }
        return new l0(i9, k0Var4, k0Var5, new fk.f[]{k0Var6});
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
        k0 k0Var = (k0) this.f39806b;
        k0 k0Var2 = (k0) this.f39807c;
        k0 k0Var3 = (k0) iVar.p();
        k0 k0Var4 = (k0) iVar.q();
        k0 k0Var5 = (k0) this.f39808d[0];
        k0 k0Var6 = (k0) iVar.r(0);
        int[] k10 = nk.h.k();
        int[] i10 = nk.h.i();
        int[] i11 = nk.h.i();
        int[] i12 = nk.h.i();
        boolean h10 = k0Var5.h();
        if (h10) {
            iArr = k0Var3.f41535g;
            iArr2 = k0Var4.f41535g;
        } else {
            j0.n(k0Var5.f41535g, i11);
            j0.g(i11, k0Var3.f41535g, i10);
            j0.g(i11, k0Var5.f41535g, i11);
            j0.g(i11, k0Var4.f41535g, i11);
            iArr = i10;
            iArr2 = i11;
        }
        boolean h11 = k0Var6.h();
        if (h11) {
            iArr3 = k0Var.f41535g;
            iArr4 = k0Var2.f41535g;
        } else {
            j0.n(k0Var6.f41535g, i12);
            j0.g(i12, k0Var.f41535g, k10);
            j0.g(i12, k0Var6.f41535g, i12);
            j0.g(i12, k0Var2.f41535g, i12);
            iArr3 = k10;
            iArr4 = i12;
        }
        int[] i13 = nk.h.i();
        j0.q(iArr3, iArr, i13);
        j0.q(iArr4, iArr2, i10);
        if (nk.h.v(i13)) {
            return nk.h.v(i10) ? E() : i9.r();
        }
        j0.n(i13, i11);
        int[] i14 = nk.h.i();
        j0.g(i11, i13, i14);
        j0.g(i11, iArr3, i11);
        j0.i(i14, i14);
        nk.h.y(iArr4, i14, k10);
        j0.m(nk.h.b(i11, i11, i14), i14);
        k0 k0Var7 = new k0(i12);
        j0.n(i10, k0Var7.f41535g);
        int[] iArr5 = k0Var7.f41535g;
        j0.q(iArr5, i14, iArr5);
        k0 k0Var8 = new k0(i14);
        j0.q(i11, k0Var7.f41535g, k0Var8.f41535g);
        j0.h(k0Var8.f41535g, i10, k10);
        j0.l(k10, k0Var8.f41535g);
        k0 k0Var9 = new k0(i13);
        if (!h10) {
            int[] iArr6 = k0Var9.f41535g;
            j0.g(iArr6, k0Var5.f41535g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = k0Var9.f41535g;
            j0.g(iArr7, k0Var6.f41535g, iArr7);
        }
        return new l0(i9, k0Var7, k0Var8, new fk.f[]{k0Var9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new l0(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new l0(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
