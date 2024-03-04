package ik;

import fk.i;
/* loaded from: classes7.dex */
public class v extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public v(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        u uVar = (u) this.f39807c;
        if (uVar.i()) {
            return i9.r();
        }
        u uVar2 = (u) this.f39806b;
        u uVar3 = (u) this.f39808d[0];
        int[] h10 = nk.f.h();
        int[] h11 = nk.f.h();
        int[] h12 = nk.f.h();
        t.n(uVar.f41621g, h12);
        int[] h13 = nk.f.h();
        t.n(h12, h13);
        boolean h14 = uVar3.h();
        int[] iArr = uVar3.f41621g;
        if (!h14) {
            t.n(iArr, h11);
            iArr = h11;
        }
        t.q(uVar2.f41621g, iArr, h10);
        t.a(uVar2.f41621g, iArr, h11);
        t.g(h11, h10, h11);
        t.m(nk.f.b(h11, h11, h11), h11);
        t.g(h12, uVar2.f41621g, h12);
        t.m(nk.n.L(6, h12, 2, 0), h12);
        t.m(nk.n.M(6, h13, 3, 0, h10), h10);
        u uVar4 = new u(h13);
        t.n(h11, uVar4.f41621g);
        int[] iArr2 = uVar4.f41621g;
        t.q(iArr2, h12, iArr2);
        int[] iArr3 = uVar4.f41621g;
        t.q(iArr3, h12, iArr3);
        u uVar5 = new u(h12);
        t.q(h12, uVar4.f41621g, uVar5.f41621g);
        int[] iArr4 = uVar5.f41621g;
        t.g(iArr4, h11, iArr4);
        int[] iArr5 = uVar5.f41621g;
        t.q(iArr5, h10, iArr5);
        u uVar6 = new u(h11);
        t.r(uVar.f41621g, uVar6.f41621g);
        if (!h14) {
            int[] iArr6 = uVar6.f41621g;
            t.g(iArr6, uVar3.f41621g, iArr6);
        }
        return new v(i9, uVar4, uVar5, new fk.f[]{uVar6});
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
        u uVar = (u) this.f39806b;
        u uVar2 = (u) this.f39807c;
        u uVar3 = (u) iVar.p();
        u uVar4 = (u) iVar.q();
        u uVar5 = (u) this.f39808d[0];
        u uVar6 = (u) iVar.r(0);
        int[] j10 = nk.f.j();
        int[] h10 = nk.f.h();
        int[] h11 = nk.f.h();
        int[] h12 = nk.f.h();
        boolean h13 = uVar5.h();
        if (h13) {
            iArr = uVar3.f41621g;
            iArr2 = uVar4.f41621g;
        } else {
            t.n(uVar5.f41621g, h11);
            t.g(h11, uVar3.f41621g, h10);
            t.g(h11, uVar5.f41621g, h11);
            t.g(h11, uVar4.f41621g, h11);
            iArr = h10;
            iArr2 = h11;
        }
        boolean h14 = uVar6.h();
        if (h14) {
            iArr3 = uVar.f41621g;
            iArr4 = uVar2.f41621g;
        } else {
            t.n(uVar6.f41621g, h12);
            t.g(h12, uVar.f41621g, j10);
            t.g(h12, uVar6.f41621g, h12);
            t.g(h12, uVar2.f41621g, h12);
            iArr3 = j10;
            iArr4 = h12;
        }
        int[] h15 = nk.f.h();
        t.q(iArr3, iArr, h15);
        t.q(iArr4, iArr2, h10);
        if (nk.f.u(h15)) {
            return nk.f.u(h10) ? E() : i9.r();
        }
        t.n(h15, h11);
        int[] h16 = nk.f.h();
        t.g(h11, h15, h16);
        t.g(h11, iArr3, h11);
        t.i(h16, h16);
        nk.f.x(iArr4, h16, j10);
        t.m(nk.f.b(h11, h11, h16), h16);
        u uVar7 = new u(h12);
        t.n(h10, uVar7.f41621g);
        int[] iArr5 = uVar7.f41621g;
        t.q(iArr5, h16, iArr5);
        u uVar8 = new u(h16);
        t.q(h11, uVar7.f41621g, uVar8.f41621g);
        t.h(uVar8.f41621g, h10, j10);
        t.l(j10, uVar8.f41621g);
        u uVar9 = new u(h15);
        if (!h13) {
            int[] iArr6 = uVar9.f41621g;
            t.g(iArr6, uVar5.f41621g, iArr6);
        }
        if (!h14) {
            int[] iArr7 = uVar9.f41621g;
            t.g(iArr7, uVar6.f41621g, iArr7);
        }
        return new v(i9, uVar7, uVar8, new fk.f[]{uVar9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new v(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new v(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
