package ik;

import fk.i;
/* loaded from: classes7.dex */
public class h2 extends i.b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h2(fk.e eVar, fk.f fVar, fk.f fVar2) {
        super(eVar, fVar, fVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h2(fk.e eVar, fk.f fVar, fk.f fVar2, fk.f[] fVarArr) {
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
            return new h2(i9, a10, i9.m());
        }
        fk.f o11 = a10.o();
        fk.f j10 = h10 ? a10 : a10.j(o10);
        fk.f o12 = fVar2.a(fVar).o();
        if (!h10) {
            fVar3 = o10.o();
        }
        return new h2(i9, o11, o12.a(a10).a(o10).j(o12).a(fVar3).a(o11).a(j10), new fk.f[]{j10});
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
            return new h2(i9, l10, i9.m());
        } else {
            fk.f j11 = l10.o().j(j10);
            fk.f j12 = l10.j(o14).j(o13);
            return new h2(i9, j11, l10.a(o14).o().l(a10, b10, j12), new fk.f[]{j12});
        }
    }

    @Override // fk.i
    public fk.i a(fk.i iVar) {
        fk.f fVar;
        fk.f fVar2;
        fk.f fVar3;
        fk.f fVar4;
        fk.f fVar5;
        fk.f fVar6;
        if (t()) {
            return iVar;
        }
        if (iVar.t()) {
            return this;
        }
        fk.e i9 = i();
        fk.f fVar7 = this.f39806b;
        fk.f n9 = iVar.n();
        if (fVar7.i()) {
            return n9.i() ? i9.r() : iVar.a(this);
        }
        fk.f fVar8 = this.f39807c;
        fk.f fVar9 = this.f39808d[0];
        fk.f o10 = iVar.o();
        fk.f r10 = iVar.r(0);
        boolean h10 = fVar9.h();
        if (h10) {
            fVar = n9;
            fVar2 = o10;
        } else {
            fVar = n9.j(fVar9);
            fVar2 = o10.j(fVar9);
        }
        boolean h11 = r10.h();
        if (h11) {
            fVar3 = fVar8;
        } else {
            fVar7 = fVar7.j(r10);
            fVar3 = fVar8.j(r10);
        }
        fk.f a10 = fVar3.a(fVar2);
        fk.f a11 = fVar7.a(fVar);
        if (a11.i()) {
            return a10.i() ? E() : i9.r();
        }
        if (n9.i()) {
            fk.i y10 = y();
            fk.f p10 = y10.p();
            fk.f q10 = y10.q();
            fk.f d10 = q10.a(o10).d(p10);
            fVar4 = d10.o().a(d10).a(p10);
            if (fVar4.i()) {
                return new h2(i9, fVar4, i9.m());
            }
            fVar6 = d10.j(p10.a(fVar4)).a(fVar4).a(q10).d(fVar4).a(fVar4);
            fVar5 = i9.k(fk.d.f39762b);
        } else {
            fk.f o11 = a11.o();
            fk.f j10 = a10.j(fVar7);
            fk.f j11 = a10.j(fVar);
            fk.f j12 = j10.j(j11);
            if (j12.i()) {
                return new h2(i9, j12, i9.m());
            }
            fk.f j13 = a10.j(o11);
            fk.f j14 = !h11 ? j13.j(r10) : j13;
            fk.f p11 = j11.a(o11).p(j14, fVar8.a(fVar9));
            if (!h10) {
                j14 = j14.j(fVar9);
            }
            fVar4 = j12;
            fVar5 = j14;
            fVar6 = p11;
        }
        return new h2(i9, fVar4, fVar6, new fk.f[]{fVar5});
    }

    @Override // fk.i
    protected fk.i d() {
        return new h2(null, f(), g());
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
        return new h2(this.f39805a, fVar, fVar2.a(fVar3), new fk.f[]{fVar3});
    }
}
