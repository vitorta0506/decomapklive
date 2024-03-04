package ik;

import fk.i;
/* loaded from: classes7.dex */
public class t2 extends i.b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public t2(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t2(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
        super(eVar, fVar, fVar2, fVarArr);
    }

    @Override // fk.i
    public fk.i E() {
        if (t()) {
            return this;
        }
        fk.e i9 = i();
        fk.f fVar = this.f39806b;
        if (fVar.i()) {
            return i9.r();
        }
        fk.f fVar2 = this.f39807c;
        fk.f fVar3 = this.f39808d[0];
        boolean h10 = fVar3.h();
        fk.f o10 = h10 ? fVar3 : fVar3.o();
        fk.f a10 = h10 ? fVar2.o().a(fVar2) : fVar2.a(fVar3).j(fVar2);
        if (a10.i()) {
            return new t2(i9, a10, i9.m());
        }
        fk.f o11 = a10.o();
        fk.f j10 = h10 ? a10 : a10.j(o10);
        fk.f o12 = fVar2.a(fVar).o();
        if (!h10) {
            fVar3 = o10.o();
        }
        return new t2(i9, o11, o12.a(a10).a(o10).j(o12).a(fVar3).a(o11).a(j10), new fk.f[]{j10});
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
        fk.f fVar = this.f39806b;
        if (fVar.i()) {
            return iVar;
        }
        fk.f n9 = iVar.n();
        fk.f r10 = iVar.r(0);
        if (n9.i() || !r10.h()) {
            return E().a(iVar);
        }
        fk.f fVar2 = this.f39807c;
        fk.f fVar3 = this.f39808d[0];
        fk.f o10 = iVar.o();
        fk.f o11 = fVar.o();
        fk.f o12 = fVar2.o();
        fk.f o13 = fVar3.o();
        fk.f a10 = o12.a(fVar2.j(fVar3));
        fk.f b10 = o10.b();
        fk.f l10 = b10.j(o13).a(o12).l(a10, o11, o13);
        fk.f j10 = n9.j(o13);
        fk.f o14 = j10.a(a10).o();
        if (o14.i()) {
            return l10.i() ? iVar.E() : i9.r();
        } else if (l10.i()) {
            return new t2(i9, l10, i9.m());
        } else {
            fk.f j11 = l10.o().j(j10);
            fk.f j12 = l10.j(o14).j(o13);
            return new t2(i9, j11, l10.a(o14).o().l(a10, b10, j12), new fk.f[]{j12});
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
            r2Var = (r2) d10.o().a(d10).a(r2Var10);
            if (r2Var.i()) {
                return new t2(i9, r2Var, i9.m());
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
                return new t2(i9, r2Var11, i9.m());
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
        return new t2(i9, r2Var, r2Var2, new fk.f[]{r2Var3});
    }

    @Override // fk.i
    protected fk.i d() {
        return new t2(null, f(), g());
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
        return new t2(this.f39805a, fVar, fVar2.a(fVar3), new fk.f[]{fVar3});
    }
}
