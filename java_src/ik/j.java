package ik;

import fk.i;
/* loaded from: classes7.dex */
public class j extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        i iVar = (i) this.f39807c;
        if (iVar.i()) {
            return i9.r();
        }
        i iVar2 = (i) this.f39806b;
        i iVar3 = (i) this.f39808d[0];
        int[] d10 = nk.e.d();
        int[] d11 = nk.e.d();
        int[] d12 = nk.e.d();
        h.m(iVar.f41509g, d12);
        int[] d13 = nk.e.d();
        h.m(d12, d13);
        boolean h10 = iVar3.h();
        int[] iArr = iVar3.f41509g;
        if (!h10) {
            h.m(iArr, d11);
            iArr = d11;
        }
        h.o(iVar2.f41509g, iArr, d10);
        h.a(iVar2.f41509g, iArr, d11);
        h.f(d11, d10, d11);
        h.l(nk.e.b(d11, d11, d11), d11);
        h.f(d12, iVar2.f41509g, d12);
        h.l(nk.n.L(5, d12, 2, 0), d12);
        h.l(nk.n.M(5, d13, 3, 0, d10), d10);
        i iVar4 = new i(d13);
        h.m(d11, iVar4.f41509g);
        int[] iArr2 = iVar4.f41509g;
        h.o(iArr2, d12, iArr2);
        int[] iArr3 = iVar4.f41509g;
        h.o(iArr3, d12, iArr3);
        i iVar5 = new i(d12);
        h.o(d12, iVar4.f41509g, iVar5.f41509g);
        int[] iArr4 = iVar5.f41509g;
        h.f(iArr4, d11, iArr4);
        int[] iArr5 = iVar5.f41509g;
        h.o(iArr5, d10, iArr5);
        i iVar6 = new i(d11);
        h.p(iVar.f41509g, iVar6.f41509g);
        if (!h10) {
            int[] iArr6 = iVar6.f41509g;
            h.f(iArr6, iVar3.f41509g, iArr6);
        }
        return new j(i9, iVar4, iVar5, new fk.f[]{iVar6});
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
        i iVar2 = (i) this.f39806b;
        i iVar3 = (i) this.f39807c;
        i iVar4 = (i) iVar.p();
        i iVar5 = (i) iVar.q();
        i iVar6 = (i) this.f39808d[0];
        i iVar7 = (i) iVar.r(0);
        int[] e10 = nk.e.e();
        int[] d10 = nk.e.d();
        int[] d11 = nk.e.d();
        int[] d12 = nk.e.d();
        boolean h10 = iVar6.h();
        if (h10) {
            iArr = iVar4.f41509g;
            iArr2 = iVar5.f41509g;
        } else {
            h.m(iVar6.f41509g, d11);
            h.f(d11, iVar4.f41509g, d10);
            h.f(d11, iVar6.f41509g, d11);
            h.f(d11, iVar5.f41509g, d11);
            iArr = d10;
            iArr2 = d11;
        }
        boolean h11 = iVar7.h();
        if (h11) {
            iArr3 = iVar2.f41509g;
            iArr4 = iVar3.f41509g;
        } else {
            h.m(iVar7.f41509g, d12);
            h.f(d12, iVar2.f41509g, e10);
            h.f(d12, iVar7.f41509g, d12);
            h.f(d12, iVar3.f41509g, d12);
            iArr3 = e10;
            iArr4 = d12;
        }
        int[] d13 = nk.e.d();
        h.o(iArr3, iArr, d13);
        h.o(iArr4, iArr2, d10);
        if (nk.e.k(d13)) {
            return nk.e.k(d10) ? E() : i9.r();
        }
        h.m(d13, d11);
        int[] d14 = nk.e.d();
        h.f(d11, d13, d14);
        h.f(d11, iArr3, d11);
        h.h(d14, d14);
        nk.e.l(iArr4, d14, e10);
        h.l(nk.e.b(d11, d11, d14), d14);
        i iVar8 = new i(d12);
        h.m(d10, iVar8.f41509g);
        int[] iArr5 = iVar8.f41509g;
        h.o(iArr5, d14, iArr5);
        i iVar9 = new i(d14);
        h.o(d11, iVar8.f41509g, iVar9.f41509g);
        h.g(iVar9.f41509g, d10, e10);
        h.k(e10, iVar9.f41509g);
        i iVar10 = new i(d13);
        if (!h10) {
            int[] iArr6 = iVar10.f41509g;
            h.f(iArr6, iVar6.f41509g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = iVar10.f41509g;
            h.f(iArr7, iVar7.f41509g, iArr7);
        }
        return new j(i9, iVar8, iVar9, new fk.f[]{iVar10});
    }

    @Override // fk.i
    protected fk.i d() {
        return new j(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new j(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
