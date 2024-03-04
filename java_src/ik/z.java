package ik;

import fk.i;
/* loaded from: classes7.dex */
public class z extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public z(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        y yVar = (y) this.f39807c;
        if (yVar.i()) {
            return i9.r();
        }
        y yVar2 = (y) this.f39806b;
        y yVar3 = (y) this.f39808d[0];
        int[] e10 = nk.g.e();
        x.m(yVar.f41652g, e10);
        int[] e11 = nk.g.e();
        x.m(e10, e11);
        int[] e12 = nk.g.e();
        x.m(yVar2.f41652g, e12);
        x.l(nk.g.b(e12, e12, e12), e12);
        x.f(e10, yVar2.f41652g, e10);
        x.l(nk.n.L(7, e10, 2, 0), e10);
        int[] e13 = nk.g.e();
        x.l(nk.n.M(7, e11, 3, 0, e13), e13);
        y yVar4 = new y(e11);
        x.m(e12, yVar4.f41652g);
        int[] iArr = yVar4.f41652g;
        x.o(iArr, e10, iArr);
        int[] iArr2 = yVar4.f41652g;
        x.o(iArr2, e10, iArr2);
        y yVar5 = new y(e10);
        x.o(e10, yVar4.f41652g, yVar5.f41652g);
        int[] iArr3 = yVar5.f41652g;
        x.f(iArr3, e12, iArr3);
        int[] iArr4 = yVar5.f41652g;
        x.o(iArr4, e13, iArr4);
        y yVar6 = new y(e12);
        x.p(yVar.f41652g, yVar6.f41652g);
        if (!yVar3.h()) {
            int[] iArr5 = yVar6.f41652g;
            x.f(iArr5, yVar3.f41652g, iArr5);
        }
        return new z(i9, yVar4, yVar5, new fk.f[]{yVar6});
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
        y yVar = (y) this.f39806b;
        y yVar2 = (y) this.f39807c;
        y yVar3 = (y) iVar.p();
        y yVar4 = (y) iVar.q();
        y yVar5 = (y) this.f39808d[0];
        y yVar6 = (y) iVar.r(0);
        int[] f10 = nk.g.f();
        int[] e10 = nk.g.e();
        int[] e11 = nk.g.e();
        int[] e12 = nk.g.e();
        boolean h10 = yVar5.h();
        if (h10) {
            iArr = yVar3.f41652g;
            iArr2 = yVar4.f41652g;
        } else {
            x.m(yVar5.f41652g, e11);
            x.f(e11, yVar3.f41652g, e10);
            x.f(e11, yVar5.f41652g, e11);
            x.f(e11, yVar4.f41652g, e11);
            iArr = e10;
            iArr2 = e11;
        }
        boolean h11 = yVar6.h();
        if (h11) {
            iArr3 = yVar.f41652g;
            iArr4 = yVar2.f41652g;
        } else {
            x.m(yVar6.f41652g, e12);
            x.f(e12, yVar.f41652g, f10);
            x.f(e12, yVar6.f41652g, e12);
            x.f(e12, yVar2.f41652g, e12);
            iArr3 = f10;
            iArr4 = e12;
        }
        int[] e13 = nk.g.e();
        x.o(iArr3, iArr, e13);
        x.o(iArr4, iArr2, e10);
        if (nk.g.l(e13)) {
            return nk.g.l(e10) ? E() : i9.r();
        }
        x.m(e13, e11);
        int[] e14 = nk.g.e();
        x.f(e11, e13, e14);
        x.f(e11, iArr3, e11);
        x.h(e14, e14);
        nk.g.m(iArr4, e14, f10);
        x.l(nk.g.b(e11, e11, e14), e14);
        y yVar7 = new y(e12);
        x.m(e10, yVar7.f41652g);
        int[] iArr5 = yVar7.f41652g;
        x.o(iArr5, e14, iArr5);
        y yVar8 = new y(e14);
        x.o(e11, yVar7.f41652g, yVar8.f41652g);
        x.g(yVar8.f41652g, e10, f10);
        x.k(f10, yVar8.f41652g);
        y yVar9 = new y(e13);
        if (!h10) {
            int[] iArr6 = yVar9.f41652g;
            x.f(iArr6, yVar5.f41652g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = yVar9.f41652g;
            x.f(iArr7, yVar6.f41652g, iArr7);
        }
        return new z(i9, yVar7, yVar8, new fk.f[]{yVar9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new z(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new z(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
