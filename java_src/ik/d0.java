package ik;

import fk.i;
/* loaded from: classes7.dex */
public class d0 extends i.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        c0 c0Var = (c0) this.f39807c;
        if (c0Var.i()) {
            return i9.r();
        }
        c0 c0Var2 = (c0) this.f39806b;
        c0 c0Var3 = (c0) this.f39808d[0];
        int[] e10 = nk.g.e();
        int[] e11 = nk.g.e();
        int[] e12 = nk.g.e();
        b0.n(c0Var.f41457g, e12);
        int[] e13 = nk.g.e();
        b0.n(e12, e13);
        boolean h10 = c0Var3.h();
        int[] iArr = c0Var3.f41457g;
        if (!h10) {
            b0.n(iArr, e11);
            iArr = e11;
        }
        b0.q(c0Var2.f41457g, iArr, e10);
        b0.a(c0Var2.f41457g, iArr, e11);
        b0.g(e11, e10, e11);
        b0.m(nk.g.b(e11, e11, e11), e11);
        b0.g(e12, c0Var2.f41457g, e12);
        b0.m(nk.n.L(7, e12, 2, 0), e12);
        b0.m(nk.n.M(7, e13, 3, 0, e10), e10);
        c0 c0Var4 = new c0(e13);
        b0.n(e11, c0Var4.f41457g);
        int[] iArr2 = c0Var4.f41457g;
        b0.q(iArr2, e12, iArr2);
        int[] iArr3 = c0Var4.f41457g;
        b0.q(iArr3, e12, iArr3);
        c0 c0Var5 = new c0(e12);
        b0.q(e12, c0Var4.f41457g, c0Var5.f41457g);
        int[] iArr4 = c0Var5.f41457g;
        b0.g(iArr4, e11, iArr4);
        int[] iArr5 = c0Var5.f41457g;
        b0.q(iArr5, e10, iArr5);
        c0 c0Var6 = new c0(e11);
        b0.r(c0Var.f41457g, c0Var6.f41457g);
        if (!h10) {
            int[] iArr6 = c0Var6.f41457g;
            b0.g(iArr6, c0Var3.f41457g, iArr6);
        }
        return new d0(i9, c0Var4, c0Var5, new fk.f[]{c0Var6});
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
        c0 c0Var = (c0) this.f39806b;
        c0 c0Var2 = (c0) this.f39807c;
        c0 c0Var3 = (c0) iVar.p();
        c0 c0Var4 = (c0) iVar.q();
        c0 c0Var5 = (c0) this.f39808d[0];
        c0 c0Var6 = (c0) iVar.r(0);
        int[] f10 = nk.g.f();
        int[] e10 = nk.g.e();
        int[] e11 = nk.g.e();
        int[] e12 = nk.g.e();
        boolean h10 = c0Var5.h();
        if (h10) {
            iArr = c0Var3.f41457g;
            iArr2 = c0Var4.f41457g;
        } else {
            b0.n(c0Var5.f41457g, e11);
            b0.g(e11, c0Var3.f41457g, e10);
            b0.g(e11, c0Var5.f41457g, e11);
            b0.g(e11, c0Var4.f41457g, e11);
            iArr = e10;
            iArr2 = e11;
        }
        boolean h11 = c0Var6.h();
        if (h11) {
            iArr3 = c0Var.f41457g;
            iArr4 = c0Var2.f41457g;
        } else {
            b0.n(c0Var6.f41457g, e12);
            b0.g(e12, c0Var.f41457g, f10);
            b0.g(e12, c0Var6.f41457g, e12);
            b0.g(e12, c0Var2.f41457g, e12);
            iArr3 = f10;
            iArr4 = e12;
        }
        int[] e13 = nk.g.e();
        b0.q(iArr3, iArr, e13);
        b0.q(iArr4, iArr2, e10);
        if (nk.g.l(e13)) {
            return nk.g.l(e10) ? E() : i9.r();
        }
        b0.n(e13, e11);
        int[] e14 = nk.g.e();
        b0.g(e11, e13, e14);
        b0.g(e11, iArr3, e11);
        b0.i(e14, e14);
        nk.g.m(iArr4, e14, f10);
        b0.m(nk.g.b(e11, e11, e14), e14);
        c0 c0Var7 = new c0(e12);
        b0.n(e10, c0Var7.f41457g);
        int[] iArr5 = c0Var7.f41457g;
        b0.q(iArr5, e14, iArr5);
        c0 c0Var8 = new c0(e14);
        b0.q(e11, c0Var7.f41457g, c0Var8.f41457g);
        b0.h(c0Var8.f41457g, e10, f10);
        b0.l(f10, c0Var8.f41457g);
        c0 c0Var9 = new c0(e13);
        if (!h10) {
            int[] iArr6 = c0Var9.f41457g;
            b0.g(iArr6, c0Var5.f41457g, iArr6);
        }
        if (!h11) {
            int[] iArr7 = c0Var9.f41457g;
            b0.g(iArr7, c0Var6.f41457g, iArr7);
        }
        return new d0(i9, c0Var7, c0Var8, new fk.f[]{c0Var9});
    }

    @Override // fk.i
    protected fk.i d() {
        return new d0(null, f(), g());
    }

    @Override // fk.i
    public fk.i x() {
        return t() ? this : new d0(this.f39805a, this.f39806b, this.f39807c.m(), this.f39808d);
    }
}
