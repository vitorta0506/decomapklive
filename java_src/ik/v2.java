package ik;

import fk.i;
/* loaded from: classes7.dex */
public class v2 extends i.b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public v2(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v2(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        long[] jArr;
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        r2 r2Var = (r2) this.f39806b;
        if (r2Var.i()) {
            return i9.r();
        }
        r2 r2Var2 = (r2) this.f39807c;
        r2 r2Var3 = (r2) this.f39808d[0];
        long[] c10 = nk.m.c();
        long[] c11 = nk.m.c();
        long[] s10 = r2Var3.h() ? null : q2.s(r2Var3.f41598g);
        long[] jArr2 = r2Var2.f41598g;
        if (s10 == null) {
            jArr = r2Var3.f41598g;
        } else {
            q2.q(jArr2, s10, c10);
            q2.w(r2Var3.f41598g, c11);
            jArr2 = c10;
            jArr = c11;
        }
        long[] c12 = nk.m.c();
        q2.w(r2Var2.f41598g, c12);
        q2.d(jArr2, jArr, c12);
        if (nk.m.g(c12)) {
            return new v2(i9, new r2(c12), u2.f41624m);
        }
        long[] d10 = nk.m.d();
        q2.p(c12, jArr2, d10);
        r2 r2Var4 = new r2(c10);
        q2.w(c12, r2Var4.f41598g);
        r2 r2Var5 = new r2(c12);
        if (s10 != null) {
            long[] jArr3 = r2Var5.f41598g;
            q2.o(jArr3, jArr, jArr3);
        }
        long[] jArr4 = r2Var.f41598g;
        if (s10 != null) {
            q2.q(jArr4, s10, c11);
            jArr4 = c11;
        }
        q2.x(jArr4, d10);
        q2.t(d10, c11);
        q2.d(r2Var4.f41598g, r2Var5.f41598g, c11);
        return new v2(i9, r2Var4, new r2(c11), new fk.f[]{r2Var5});
    }

    @Override // fk.i
    public fk.i F(fk.i iVar) {
        if (t()) {
            return iVar;
        }
        if (iVar.t()) {
            return E();
        }
        fk.e i9 = i();
        r2 r2Var = (r2) this.f39806b;
        if (r2Var.i()) {
            return iVar;
        }
        r2 r2Var2 = (r2) iVar.n();
        r2 r2Var3 = (r2) iVar.r(0);
        if (r2Var2.i() || !r2Var3.h()) {
            return E().a(iVar);
        }
        r2 r2Var4 = (r2) this.f39807c;
        r2 r2Var5 = (r2) this.f39808d[0];
        r2 r2Var6 = (r2) iVar.o();
        long[] c10 = nk.m.c();
        long[] c11 = nk.m.c();
        long[] c12 = nk.m.c();
        long[] c13 = nk.m.c();
        q2.w(r2Var.f41598g, c10);
        q2.w(r2Var4.f41598g, c11);
        q2.w(r2Var5.f41598g, c12);
        q2.o(r2Var4.f41598g, r2Var5.f41598g, c13);
        q2.d(c12, c11, c13);
        long[] s10 = q2.s(c12);
        q2.q(r2Var6.f41598g, s10, c12);
        q2.b(c12, c11, c12);
        long[] d10 = nk.m.d();
        q2.p(c12, c13, d10);
        q2.r(c10, s10, d10);
        q2.t(d10, c12);
        q2.q(r2Var2.f41598g, s10, c10);
        q2.b(c10, c13, c11);
        q2.w(c11, c11);
        if (nk.m.g(c11)) {
            return nk.m.g(c12) ? iVar.E() : i9.r();
        } else if (nk.m.g(c12)) {
            return new v2(i9, new r2(c12), u2.f41624m);
        } else {
            r2 r2Var7 = new r2();
            q2.w(c12, r2Var7.f41598g);
            long[] jArr = r2Var7.f41598g;
            q2.o(jArr, c10, jArr);
            r2 r2Var8 = new r2(c10);
            q2.o(c12, c11, r2Var8.f41598g);
            long[] jArr2 = r2Var8.f41598g;
            q2.q(jArr2, s10, jArr2);
            r2 r2Var9 = new r2(c11);
            q2.b(c12, c11, r2Var9.f41598g);
            long[] jArr3 = r2Var9.f41598g;
            q2.w(jArr3, jArr3);
            nk.n.W(18, d10);
            q2.p(r2Var9.f41598g, c13, d10);
            q2.f(r2Var6.f41598g, c13);
            q2.p(c13, r2Var8.f41598g, d10);
            q2.t(d10, r2Var9.f41598g);
            return new v2(i9, r2Var7, r2Var9, new fk.f[]{r2Var8});
        }
    }

    @Override // fk.i
    public fk.i a(fk.i iVar) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        r2 r2Var;
        r2 r2Var2;
        r2 r2Var3;
        if (t()) {
            return iVar;
        }
        if (iVar.t()) {
            return this;
        }
        fk.e i9 = i();
        r2 r2Var4 = (r2) this.f39806b;
        r2 r2Var5 = (r2) iVar.n();
        if (r2Var4.i()) {
            return r2Var5.i() ? i9.r() : iVar.a(this);
        }
        r2 r2Var6 = (r2) this.f39807c;
        r2 r2Var7 = (r2) this.f39808d[0];
        r2 r2Var8 = (r2) iVar.o();
        r2 r2Var9 = (r2) iVar.r(0);
        long[] c10 = nk.m.c();
        long[] c11 = nk.m.c();
        long[] c12 = nk.m.c();
        long[] c13 = nk.m.c();
        long[] s10 = r2Var7.h() ? null : q2.s(r2Var7.f41598g);
        if (s10 == null) {
            jArr = r2Var5.f41598g;
            jArr2 = r2Var8.f41598g;
        } else {
            q2.q(r2Var5.f41598g, s10, c11);
            q2.q(r2Var8.f41598g, s10, c13);
            jArr = c11;
            jArr2 = c13;
        }
        long[] s11 = r2Var9.h() ? null : q2.s(r2Var9.f41598g);
        long[] jArr4 = r2Var4.f41598g;
        if (s11 == null) {
            jArr3 = r2Var6.f41598g;
        } else {
            q2.q(jArr4, s11, c10);
            q2.q(r2Var6.f41598g, s11, c12);
            jArr4 = c10;
            jArr3 = c12;
        }
        q2.b(jArr3, jArr2, c12);
        q2.b(jArr4, jArr, c13);
        if (nk.m.g(c13)) {
            return nk.m.g(c12) ? E() : i9.r();
        }
        if (r2Var5.i()) {
            fk.i y10 = y();
            r2 r2Var10 = (r2) y10.p();
            fk.f q10 = y10.q();
            fk.f d10 = q10.a(r2Var8).d(r2Var10);
            r2Var = (r2) d10.o().a(d10).a(r2Var10).b();
            if (r2Var.i()) {
                return new v2(i9, r2Var, u2.f41624m);
            }
            r2Var2 = (r2) d10.j(r2Var10.a(r2Var)).a(r2Var).a(q10).d(r2Var).a(r2Var);
            r2Var3 = (r2) i9.k(fk.d.f39762b);
        } else {
            q2.w(c13, c13);
            long[] s12 = q2.s(c12);
            q2.q(jArr4, s12, c10);
            q2.q(jArr, s12, c11);
            r2 r2Var11 = new r2(c10);
            q2.o(c10, c11, r2Var11.f41598g);
            if (r2Var11.i()) {
                return new v2(i9, r2Var11, u2.f41624m);
            }
            r2 r2Var12 = new r2(c12);
            q2.q(c13, s12, r2Var12.f41598g);
            if (s11 != null) {
                long[] jArr5 = r2Var12.f41598g;
                q2.q(jArr5, s11, jArr5);
            }
            long[] d11 = nk.m.d();
            q2.b(c11, c13, c13);
            q2.x(c13, d11);
            q2.b(r2Var6.f41598g, r2Var7.f41598g, c13);
            q2.p(c13, r2Var12.f41598g, d11);
            r2 r2Var13 = new r2(c13);
            q2.t(d11, r2Var13.f41598g);
            if (s10 != null) {
                long[] jArr6 = r2Var12.f41598g;
                q2.q(jArr6, s10, jArr6);
            }
            r2Var = r2Var11;
            r2Var2 = r2Var13;
            r2Var3 = r2Var12;
        }
        return new v2(i9, r2Var, r2Var2, new fk.f[]{r2Var3});
    }

    @Override // fk.i
    protected fk.i d() {
        return new v2(null, f(), g());
    }

    @Override // fk.i
    protected boolean h() {
        fk.f n9 = n();
        return (n9.i() || o().s() == n9.s()) ? false : true;
    }

    @Override // fk.i
    public fk.f q() {
        fk.f fVar = this.f39806b;
        fk.f fVar2 = this.f39807c;
        if (t() || fVar.i()) {
            return fVar2;
        }
        fk.f j10 = fVar2.a(fVar).j(fVar);
        fk.f fVar3 = this.f39808d[0];
        return !fVar3.h() ? j10.d(fVar3) : j10;
    }

    @Override // fk.i
    public fk.i x() {
        if (t()) {
            return this;
        }
        fk.f fVar = this.f39806b;
        if (fVar.i()) {
            return this;
        }
        fk.f fVar2 = this.f39807c;
        fk.f fVar3 = this.f39808d[0];
        return new v2(this.f39805a, fVar, fVar2.a(fVar3), new fk.f[]{fVar3});
    }
}
