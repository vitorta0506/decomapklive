package ik;

import fk.i;
/* loaded from: classes7.dex */
public class f extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        m mVar = (m) this.f39807c;
        if (mVar.i()) {
            return i9.r();
        }
        m mVar2 = (m) this.f39806b;
        m mVar3 = (m) this.f39808d[0];
        int[] d10 = nk.e.d();
        l.m(mVar.f41546g, d10);
        int[] d11 = nk.e.d();
        l.m(d10, d11);
        int[] d12 = nk.e.d();
        l.m(mVar2.f41546g, d12);
        l.l(nk.e.b(d12, d12, d12), d12);
        l.f(d10, mVar2.f41546g, d10);
        l.l(nk.n.L(5, d10, 2, 0), d10);
        int[] d13 = nk.e.d();
        l.l(nk.n.M(5, d11, 3, 0, d13), d13);
        m mVar4 = new m(d11);
        l.m(d12, mVar4.f41546g);
        int[] iArr = mVar4.f41546g;
        l.o(iArr, d10, iArr);
        int[] iArr2 = mVar4.f41546g;
        l.o(iArr2, d10, iArr2);
        m mVar5 = new m(d10);
        l.o(d10, mVar4.f41546g, mVar5.f41546g);
        int[] iArr3 = mVar5.f41546g;
        l.f(iArr3, d12, iArr3);
        int[] iArr4 = mVar5.f41546g;
        l.o(iArr4, d13, iArr4);
        m mVar6 = new m(d12);
        l.p(mVar.f41546g, mVar6.f41546g);
        if (!mVar3.h()) {
            int[] iArr5 = mVar6.f41546g;
            l.f(iArr5, mVar3.f41546g, iArr5);
        }
        return new f(i9, mVar4, mVar5, new fk.f[]{mVar6});
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
        m mVar = (m) this.f39806b;
        m mVar2 = (m) this.f39807c;
        m mVar3 = (m) iVar.p();
        m mVar4 = (m) iVar.q();
        m mVar5 = (m) this.f39808d[0];
        m mVar6 = (m) iVar.r(0);
        int[] e10 = nk.e.e();
        int[] d10 = nk.e.d();
        int[] d11 = nk.e.d();
        int[] d12 = nk.e.d();
        boolean h10 = mVar5.h();
        if (h10) {
            iArr = mVar3.f41546g;
            iArr2 = mVar4.f41546g;
        } else {
            l.m(mVar5.f41546g, d11);
            l.f(d11, mVar3.f41546g, d10);
            l.f(d11, mVar5.f41546g, d11);
            l.f(d11, mVar4.f41546g, d11);
            iArr = d10;
            iArr2 = d11;
        }
        boolean h11 = mVar6.h();
        if (h11) {
            iArr3 = mVar.f41546g;
            iArr4 = mVar2.f41546g;
        } else {
            l.m(mVar6.f41546g, d12);
            l.f(d12, mVar.f41546g, e10);
            l.f(d12, mVar6.f41546g, d12);
            l.f(d12, mVar2.f41546g, d12);
            iArr3 = e10;
            iArr4 = d12;
        }
        int[] d13 = nk.e.d();
        l.o(iArr3, iArr, d13);
        l.o(iArr4, iArr2, d10);
        if (nk.e.k(d13)) {
            return nk.e.k(d10) ? E() : i9.r();
        }
        l.m(d13, d11);
        int[] d14 = nk.e.d();
        l.f(d11, d13, d14);
        l.f(d11, iArr3, d11);
        l.h(d14, d14);
        nk.e.l(iArr4, d14, e10);
        l.l(nk.e.b(d11, d11, d14), d14);
        m mVar7 = new m(d12);
        l.m(d10, mVar7.f41546g);
        int[] iArr5 = mVar7.f41546g;
        l.o(iArr5, d14, iArr5);
        m mVar8 = new m(d14);
        l.o(d11, mVar7.f41546g, mVar8.f41546g);
        l.g(mVar8.f41546g, d10, e10);
        l.k(e10, mVar8.f41546g);
        m mVar9 = new m(d13);
        if (!h10) {
            int[] iArr6 = mVar9.f41546g;
            l.f(iArr6, mVar5.f41546g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = mVar9.f41546g;
            l.f(iArr7, mVar6.f41546g, iArr7);
        }
        return new f(i9, mVar7, mVar8, new fk.f[]{mVar9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new f(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new f(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
