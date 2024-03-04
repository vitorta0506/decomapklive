package ik;

import fk.i;
/* loaded from: classes7.dex */
public class r extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        q qVar = (q) this.f39807c;
        if (qVar.i()) {
            return i9.r();
        }
        q qVar2 = (q) this.f39806b;
        q qVar3 = (q) this.f39808d[0];
        int[] h10 = nk.f.h();
        p.m(qVar.f41584g, h10);
        int[] h11 = nk.f.h();
        p.m(h10, h11);
        int[] h12 = nk.f.h();
        p.m(qVar2.f41584g, h12);
        p.l(nk.f.b(h12, h12, h12), h12);
        p.f(h10, qVar2.f41584g, h10);
        p.l(nk.n.L(6, h10, 2, 0), h10);
        int[] h13 = nk.f.h();
        p.l(nk.n.M(6, h11, 3, 0, h13), h13);
        q qVar4 = new q(h11);
        p.m(h12, qVar4.f41584g);
        int[] iArr = qVar4.f41584g;
        p.o(iArr, h10, iArr);
        int[] iArr2 = qVar4.f41584g;
        p.o(iArr2, h10, iArr2);
        q qVar5 = new q(h10);
        p.o(h10, qVar4.f41584g, qVar5.f41584g);
        int[] iArr3 = qVar5.f41584g;
        p.f(iArr3, h12, iArr3);
        int[] iArr4 = qVar5.f41584g;
        p.o(iArr4, h13, iArr4);
        q qVar6 = new q(h12);
        p.p(qVar.f41584g, qVar6.f41584g);
        if (!qVar3.h()) {
            int[] iArr5 = qVar6.f41584g;
            p.f(iArr5, qVar3.f41584g, iArr5);
        }
        return new r(i9, qVar4, qVar5, new fk.f[]{qVar6});
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
        q qVar = (q) this.f39806b;
        q qVar2 = (q) this.f39807c;
        q qVar3 = (q) iVar.p();
        q qVar4 = (q) iVar.q();
        q qVar5 = (q) this.f39808d[0];
        q qVar6 = (q) iVar.r(0);
        int[] j10 = nk.f.j();
        int[] h10 = nk.f.h();
        int[] h11 = nk.f.h();
        int[] h12 = nk.f.h();
        boolean h13 = qVar5.h();
        if (h13) {
            iArr = qVar3.f41584g;
            iArr2 = qVar4.f41584g;
        } else {
            p.m(qVar5.f41584g, h11);
            p.f(h11, qVar3.f41584g, h10);
            p.f(h11, qVar5.f41584g, h11);
            p.f(h11, qVar4.f41584g, h11);
            iArr = h10;
            iArr2 = h11;
        }
        boolean h14 = qVar6.h();
        if (h14) {
            iArr3 = qVar.f41584g;
            iArr4 = qVar2.f41584g;
        } else {
            p.m(qVar6.f41584g, h12);
            p.f(h12, qVar.f41584g, j10);
            p.f(h12, qVar6.f41584g, h12);
            p.f(h12, qVar2.f41584g, h12);
            iArr3 = j10;
            iArr4 = h12;
        }
        int[] h15 = nk.f.h();
        p.o(iArr3, iArr, h15);
        p.o(iArr4, iArr2, h10);
        if (nk.f.u(h15)) {
            return nk.f.u(h10) ? E() : i9.r();
        }
        p.m(h15, h11);
        int[] h16 = nk.f.h();
        p.f(h11, h15, h16);
        p.f(h11, iArr3, h11);
        p.h(h16, h16);
        nk.f.x(iArr4, h16, j10);
        p.l(nk.f.b(h11, h11, h16), h16);
        q qVar7 = new q(h12);
        p.m(h10, qVar7.f41584g);
        int[] iArr5 = qVar7.f41584g;
        p.o(iArr5, h16, iArr5);
        q qVar8 = new q(h16);
        p.o(h11, qVar7.f41584g, qVar8.f41584g);
        p.g(qVar8.f41584g, h10, j10);
        p.k(j10, qVar8.f41584g);
        q qVar9 = new q(h15);
        if (!h13) {
            int[] iArr6 = qVar9.f41584g;
            p.f(iArr6, qVar5.f41584g, iArr6);
        }
        if (!h14) {
            int[] iArr7 = qVar9.f41584g;
            p.f(iArr7, qVar6.f41584g, iArr7);
        }
        return new r(i9, qVar7, qVar8, new fk.f[]{qVar9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new r(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new r(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
