package ik;

import fk.i;
/* loaded from: classes7.dex */
public class d extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        c cVar = (c) this.f39807c;
        if (cVar.i()) {
            return i9.r();
        }
        c cVar2 = (c) this.f39806b;
        c cVar3 = (c) this.f39808d[0];
        int[] f10 = nk.d.f();
        int[] f11 = nk.d.f();
        int[] f12 = nk.d.f();
        b.n(cVar.f41455g, f12);
        int[] f13 = nk.d.f();
        b.n(f12, f13);
        boolean h10 = cVar3.h();
        int[] iArr = cVar3.f41455g;
        if (!h10) {
            b.n(iArr, f11);
            iArr = f11;
        }
        b.q(cVar2.f41455g, iArr, f10);
        b.a(cVar2.f41455g, iArr, f11);
        b.g(f11, f10, f11);
        b.m(nk.d.b(f11, f11, f11), f11);
        b.g(f12, cVar2.f41455g, f12);
        b.m(nk.n.L(4, f12, 2, 0), f12);
        b.m(nk.n.M(4, f13, 3, 0, f10), f10);
        c cVar4 = new c(f13);
        b.n(f11, cVar4.f41455g);
        int[] iArr2 = cVar4.f41455g;
        b.q(iArr2, f12, iArr2);
        int[] iArr3 = cVar4.f41455g;
        b.q(iArr3, f12, iArr3);
        c cVar5 = new c(f12);
        b.q(f12, cVar4.f41455g, cVar5.f41455g);
        int[] iArr4 = cVar5.f41455g;
        b.g(iArr4, f11, iArr4);
        int[] iArr5 = cVar5.f41455g;
        b.q(iArr5, f10, iArr5);
        c cVar6 = new c(f11);
        b.r(cVar.f41455g, cVar6.f41455g);
        if (!h10) {
            int[] iArr6 = cVar6.f41455g;
            b.g(iArr6, cVar3.f41455g, iArr6);
        }
        return new d(i9, cVar4, cVar5, new fk.f[]{cVar6});
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
        c cVar = (c) this.f39806b;
        c cVar2 = (c) this.f39807c;
        c cVar3 = (c) iVar.p();
        c cVar4 = (c) iVar.q();
        c cVar5 = (c) this.f39808d[0];
        c cVar6 = (c) iVar.r(0);
        int[] h10 = nk.d.h();
        int[] f10 = nk.d.f();
        int[] f11 = nk.d.f();
        int[] f12 = nk.d.f();
        boolean h11 = cVar5.h();
        if (h11) {
            iArr = cVar3.f41455g;
            iArr2 = cVar4.f41455g;
        } else {
            b.n(cVar5.f41455g, f11);
            b.g(f11, cVar3.f41455g, f10);
            b.g(f11, cVar5.f41455g, f11);
            b.g(f11, cVar4.f41455g, f11);
            iArr = f10;
            iArr2 = f11;
        }
        boolean h12 = cVar6.h();
        if (h12) {
            iArr3 = cVar.f41455g;
            iArr4 = cVar2.f41455g;
        } else {
            b.n(cVar6.f41455g, f12);
            b.g(f12, cVar.f41455g, h10);
            b.g(f12, cVar6.f41455g, f12);
            b.g(f12, cVar2.f41455g, f12);
            iArr3 = h10;
            iArr4 = f12;
        }
        int[] f13 = nk.d.f();
        b.q(iArr3, iArr, f13);
        b.q(iArr4, iArr2, f10);
        if (nk.d.q(f13)) {
            return nk.d.q(f10) ? E() : i9.r();
        }
        b.n(f13, f11);
        int[] f14 = nk.d.f();
        b.g(f11, f13, f14);
        b.g(f11, iArr3, f11);
        b.i(f14, f14);
        nk.d.s(iArr4, f14, h10);
        b.m(nk.d.b(f11, f11, f14), f14);
        c cVar7 = new c(f12);
        b.n(f10, cVar7.f41455g);
        int[] iArr5 = cVar7.f41455g;
        b.q(iArr5, f14, iArr5);
        c cVar8 = new c(f14);
        b.q(f11, cVar7.f41455g, cVar8.f41455g);
        b.h(cVar8.f41455g, f10, h10);
        b.l(h10, cVar8.f41455g);
        c cVar9 = new c(f13);
        if (!h11) {
            int[] iArr6 = cVar9.f41455g;
            b.g(iArr6, cVar5.f41455g, iArr6);
        }
        if (!h12) {
            int[] iArr7 = cVar9.f41455g;
            b.g(iArr7, cVar6.f41455g, iArr7);
        }
        return new d(i9, cVar7, cVar8, new fk.f[]{cVar9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new d(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new d(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
