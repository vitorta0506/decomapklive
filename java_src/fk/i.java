package fk;

import fk.e;
import fk.f;
import java.math.BigInteger;
import java.util.Hashtable;
/* loaded from: classes7.dex */
public abstract class i {

    /* renamed from: f  reason: collision with root package name */
    protected static final f[] f39804f = new f[0];

    /* renamed from: a  reason: collision with root package name */
    protected fk.e f39805a;

    /* renamed from: b  reason: collision with root package name */
    protected f f39806b;

    /* renamed from: c  reason: collision with root package name */
    protected f f39807c;

    /* renamed from: d  reason: collision with root package name */
    protected f[] f39808d;

    /* renamed from: e  reason: collision with root package name */
    protected Hashtable f39809e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f39810a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f39811b;

        a(boolean z10, boolean z11) {
            this.f39810a = z10;
            this.f39811b = z11;
        }

        @Override // fk.o
        public p a(p pVar) {
            r rVar = pVar instanceof r ? (r) pVar : null;
            if (rVar == null) {
                rVar = new r();
            }
            if (rVar.b()) {
                return rVar;
            }
            if (!rVar.a()) {
                if (!this.f39810a && !i.this.A()) {
                    rVar.e();
                    return rVar;
                }
                rVar.d();
            }
            if (this.f39811b && !rVar.c()) {
                if (!i.this.B()) {
                    rVar.e();
                    return rVar;
                }
                rVar.f();
            }
            return rVar;
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class b extends i {
        /* JADX INFO: Access modifiers changed from: protected */
        public b(fk.e eVar, f fVar, f fVar2) {
            super(eVar, fVar, fVar2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b(fk.e eVar, f fVar, f fVar2, f[] fVarArr) {
            super(eVar, fVar, fVar2, fVarArr);
        }

        @Override // fk.i
        protected boolean A() {
            f l10;
            f p10;
            fk.e i9 = i();
            f fVar = this.f39806b;
            f l11 = i9.l();
            f m10 = i9.m();
            int o10 = i9.o();
            if (o10 != 6) {
                f fVar2 = this.f39807c;
                f j10 = fVar2.a(fVar).j(fVar2);
                if (o10 != 0) {
                    if (o10 != 1) {
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    f fVar3 = this.f39808d[0];
                    if (!fVar3.h()) {
                        f j11 = fVar3.j(fVar3.o());
                        j10 = j10.j(fVar3);
                        l11 = l11.j(fVar3);
                        m10 = m10.j(j11);
                    }
                }
                return j10.equals(fVar.a(l11).j(fVar.o()).a(m10));
            }
            f fVar4 = this.f39808d[0];
            boolean h10 = fVar4.h();
            if (fVar.i()) {
                f o11 = this.f39807c.o();
                if (!h10) {
                    m10 = m10.j(fVar4.o());
                }
                return o11.equals(m10);
            }
            f fVar5 = this.f39807c;
            f o12 = fVar.o();
            if (h10) {
                l10 = fVar5.o().a(fVar5).a(l11);
                p10 = o12.o().a(m10);
            } else {
                f o13 = fVar4.o();
                f o14 = o13.o();
                l10 = fVar5.a(fVar4).l(fVar5, l11, o13);
                p10 = o12.p(m10, o14);
            }
            return l10.j(o12).equals(p10);
        }

        @Override // fk.i
        protected boolean B() {
            BigInteger n9 = this.f39805a.n();
            if (fk.d.f39763c.equals(n9)) {
                return ((f.a) y().f()).w() != 0;
            } else if (fk.d.f39765e.equals(n9)) {
                i y10 = y();
                f f10 = y10.f();
                fk.e eVar = this.f39805a;
                f C = ((e.b) eVar).C(f10.a(eVar.l()));
                if (C == null) {
                    return false;
                }
                return ((f.a) f10.j(C).a(y10.g())).w() == 0;
            } else {
                return super.B();
            }
        }

        @Override // fk.i
        public i C(i iVar) {
            return iVar.t() ? this : a(iVar.x());
        }
    }

    /* loaded from: classes7.dex */
    public static abstract class c extends i {
        /* JADX INFO: Access modifiers changed from: protected */
        public c(fk.e eVar, f fVar, f fVar2) {
            super(eVar, fVar, fVar2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public c(fk.e eVar, f fVar, f fVar2, f[] fVarArr) {
            super(eVar, fVar, fVar2, fVarArr);
        }

        @Override // fk.i
        protected boolean A() {
            f fVar = this.f39806b;
            f fVar2 = this.f39807c;
            f l10 = this.f39805a.l();
            f m10 = this.f39805a.m();
            f o10 = fVar2.o();
            int j10 = j();
            if (j10 != 0) {
                if (j10 == 1) {
                    f fVar3 = this.f39808d[0];
                    if (!fVar3.h()) {
                        f o11 = fVar3.o();
                        f j11 = fVar3.j(o11);
                        o10 = o10.j(fVar3);
                        l10 = l10.j(o11);
                        m10 = m10.j(j11);
                    }
                } else if (j10 != 2 && j10 != 3 && j10 != 4) {
                    throw new IllegalStateException("unsupported coordinate system");
                } else {
                    f fVar4 = this.f39808d[0];
                    if (!fVar4.h()) {
                        f o12 = fVar4.o();
                        f o13 = o12.o();
                        f j12 = o12.j(o13);
                        l10 = l10.j(o13);
                        m10 = m10.j(j12);
                    }
                }
            }
            return o10.equals(fVar.o().a(l10).j(fVar).a(m10));
        }

        @Override // fk.i
        public i C(i iVar) {
            return iVar.t() ? this : a(iVar.x());
        }

        @Override // fk.i
        protected boolean h() {
            return g().s();
        }
    }

    /* loaded from: classes7.dex */
    public static class d extends b {
        /* JADX INFO: Access modifiers changed from: package-private */
        public d(fk.e eVar, f fVar, f fVar2) {
            super(eVar, fVar, fVar2);
        }

        d(fk.e eVar, f fVar, f fVar2, f[] fVarArr) {
            super(eVar, fVar, fVar2, fVarArr);
        }

        @Override // fk.i
        public i E() {
            f a10;
            if (t()) {
                return this;
            }
            fk.e i9 = i();
            f fVar = this.f39806b;
            if (fVar.i()) {
                return i9.r();
            }
            int o10 = i9.o();
            if (o10 == 0) {
                f a11 = this.f39807c.d(fVar).a(fVar);
                f a12 = a11.o().a(a11).a(i9.l());
                return new d(i9, a12, fVar.p(a12, a11.b()));
            } else if (o10 == 1) {
                f fVar2 = this.f39807c;
                f fVar3 = this.f39808d[0];
                boolean h10 = fVar3.h();
                f j10 = h10 ? fVar : fVar.j(fVar3);
                if (!h10) {
                    fVar2 = fVar2.j(fVar3);
                }
                f o11 = fVar.o();
                f a13 = o11.a(fVar2);
                f o12 = j10.o();
                f a14 = a13.a(j10);
                f l10 = a14.l(a13, o12, i9.l());
                return new d(i9, j10.j(l10), o11.o().l(j10, l10, a14), new f[]{j10.j(o12)});
            } else if (o10 == 6) {
                f fVar4 = this.f39807c;
                f fVar5 = this.f39808d[0];
                boolean h11 = fVar5.h();
                f j11 = h11 ? fVar4 : fVar4.j(fVar5);
                f o13 = h11 ? fVar5 : fVar5.o();
                f l11 = i9.l();
                f j12 = h11 ? l11 : l11.j(o13);
                f a15 = fVar4.o().a(j11).a(j12);
                if (a15.i()) {
                    return new d(i9, a15, i9.m().n());
                }
                f o14 = a15.o();
                f j13 = h11 ? a15 : a15.j(o13);
                f m10 = i9.m();
                if (m10.c() < (i9.q() >> 1)) {
                    f o15 = fVar4.a(fVar).o();
                    a10 = o15.a(a15).a(o13).j(o15).a(m10.h() ? j12.a(o13).o() : j12.p(m10, o13.o())).a(o14);
                    if (!l11.i()) {
                        if (!l11.h()) {
                            a10 = a10.a(l11.b().j(j13));
                        }
                        return new d(i9, o14, a10, new f[]{j13});
                    }
                } else {
                    if (!h11) {
                        fVar = fVar.j(fVar5);
                    }
                    a10 = fVar.p(a15, j11).a(o14);
                }
                a10 = a10.a(j13);
                return new d(i9, o14, a10, new f[]{j13});
            } else {
                throw new IllegalStateException("unsupported coordinate system");
            }
        }

        @Override // fk.i
        public i F(i iVar) {
            if (t()) {
                return iVar;
            }
            if (iVar.t()) {
                return E();
            }
            fk.e i9 = i();
            f fVar = this.f39806b;
            if (fVar.i()) {
                return iVar;
            }
            if (i9.o() != 6) {
                return E().a(iVar);
            }
            f fVar2 = iVar.f39806b;
            f fVar3 = iVar.f39808d[0];
            if (fVar2.i() || !fVar3.h()) {
                return E().a(iVar);
            }
            f fVar4 = this.f39807c;
            f fVar5 = this.f39808d[0];
            f fVar6 = iVar.f39807c;
            f o10 = fVar.o();
            f o11 = fVar4.o();
            f o12 = fVar5.o();
            f a10 = i9.l().j(o12).a(o11).a(fVar4.j(fVar5));
            f b10 = fVar6.b();
            f l10 = i9.l().a(b10).j(o12).a(o11).l(a10, o10, o12);
            f j10 = fVar2.j(o12);
            f o13 = j10.a(a10).o();
            if (o13.i()) {
                return l10.i() ? iVar.E() : i9.r();
            } else if (l10.i()) {
                return new d(i9, l10, i9.m().n());
            } else {
                f j11 = l10.o().j(j10);
                f j12 = l10.j(o13).j(o12);
                return new d(i9, j11, l10.a(o13).o().l(a10, b10, j12), new f[]{j12});
            }
        }

        @Override // fk.i
        public i a(i iVar) {
            f fVar;
            f fVar2;
            f fVar3;
            f fVar4;
            f fVar5;
            f fVar6;
            if (t()) {
                return iVar;
            }
            if (iVar.t()) {
                return this;
            }
            fk.e i9 = i();
            int o10 = i9.o();
            f fVar7 = this.f39806b;
            f fVar8 = iVar.f39806b;
            if (o10 == 0) {
                f fVar9 = this.f39807c;
                f fVar10 = iVar.f39807c;
                f a10 = fVar7.a(fVar8);
                f a11 = fVar9.a(fVar10);
                if (a10.i()) {
                    return a11.i() ? E() : i9.r();
                }
                f d10 = a11.d(a10);
                f a12 = d10.o().a(d10).a(a10).a(i9.l());
                return new d(i9, a12, d10.j(fVar7.a(a12)).a(a12).a(fVar9));
            } else if (o10 == 1) {
                f fVar11 = this.f39807c;
                f fVar12 = this.f39808d[0];
                f fVar13 = iVar.f39807c;
                f fVar14 = iVar.f39808d[0];
                boolean h10 = fVar14.h();
                f a13 = fVar12.j(fVar13).a(h10 ? fVar11 : fVar11.j(fVar14));
                f a14 = fVar12.j(fVar8).a(h10 ? fVar7 : fVar7.j(fVar14));
                if (a14.i()) {
                    return a13.i() ? E() : i9.r();
                }
                f o11 = a14.o();
                f j10 = o11.j(a14);
                if (!h10) {
                    fVar12 = fVar12.j(fVar14);
                }
                f a15 = a13.a(a14);
                f a16 = a15.l(a13, o11, i9.l()).j(fVar12).a(j10);
                f j11 = a14.j(a16);
                if (!h10) {
                    o11 = o11.j(fVar14);
                }
                return new d(i9, j11, a13.l(fVar7, a14, fVar11).l(o11, a15, a16), new f[]{j10.j(fVar12)});
            } else if (o10 == 6) {
                if (fVar7.i()) {
                    return fVar8.i() ? i9.r() : iVar.a(this);
                }
                f fVar15 = this.f39807c;
                f fVar16 = this.f39808d[0];
                f fVar17 = iVar.f39807c;
                f fVar18 = iVar.f39808d[0];
                boolean h11 = fVar16.h();
                if (h11) {
                    fVar = fVar8;
                    fVar2 = fVar17;
                } else {
                    fVar = fVar8.j(fVar16);
                    fVar2 = fVar17.j(fVar16);
                }
                boolean h12 = fVar18.h();
                if (h12) {
                    fVar3 = fVar15;
                } else {
                    fVar7 = fVar7.j(fVar18);
                    fVar3 = fVar15.j(fVar18);
                }
                f a17 = fVar3.a(fVar2);
                f a18 = fVar7.a(fVar);
                if (a18.i()) {
                    return a17.i() ? E() : i9.r();
                }
                if (fVar8.i()) {
                    i y10 = y();
                    f p10 = y10.p();
                    f q10 = y10.q();
                    f d11 = q10.a(fVar17).d(p10);
                    fVar4 = d11.o().a(d11).a(p10).a(i9.l());
                    if (fVar4.i()) {
                        return new d(i9, fVar4, i9.m().n());
                    }
                    fVar6 = d11.j(p10.a(fVar4)).a(fVar4).a(q10).d(fVar4).a(fVar4);
                    fVar5 = i9.k(fk.d.f39762b);
                } else {
                    f o12 = a18.o();
                    f j12 = a17.j(fVar7);
                    f j13 = a17.j(fVar);
                    f j14 = j12.j(j13);
                    if (j14.i()) {
                        return new d(i9, j14, i9.m().n());
                    }
                    f j15 = a17.j(o12);
                    f j16 = !h12 ? j15.j(fVar18) : j15;
                    f p11 = j13.a(o12).p(j16, fVar15.a(fVar16));
                    if (!h11) {
                        j16 = j16.j(fVar16);
                    }
                    fVar4 = j14;
                    fVar5 = j16;
                    fVar6 = p11;
                }
                return new d(i9, fVar4, fVar6, new f[]{fVar5});
            } else {
                throw new IllegalStateException("unsupported coordinate system");
            }
        }

        @Override // fk.i
        protected i d() {
            return new d(null, f(), g());
        }

        @Override // fk.i
        protected boolean h() {
            f n9 = n();
            if (n9.i()) {
                return false;
            }
            f o10 = o();
            int j10 = j();
            return (j10 == 5 || j10 == 6) ? o10.s() != n9.s() : o10.d(n9).s();
        }

        @Override // fk.i
        public f q() {
            int j10 = j();
            if (j10 == 5 || j10 == 6) {
                f fVar = this.f39806b;
                f fVar2 = this.f39807c;
                if (t() || fVar.i()) {
                    return fVar2;
                }
                f j11 = fVar2.a(fVar).j(fVar);
                if (6 == j10) {
                    f fVar3 = this.f39808d[0];
                    return !fVar3.h() ? j11.d(fVar3) : j11;
                }
                return j11;
            }
            return this.f39807c;
        }

        @Override // fk.i
        public i x() {
            if (t()) {
                return this;
            }
            f fVar = this.f39806b;
            if (fVar.i()) {
                return this;
            }
            int j10 = j();
            if (j10 != 0) {
                if (j10 == 1) {
                    return new d(this.f39805a, fVar, this.f39807c.a(fVar), new f[]{this.f39808d[0]});
                } else if (j10 != 5) {
                    if (j10 == 6) {
                        f fVar2 = this.f39807c;
                        f fVar3 = this.f39808d[0];
                        return new d(this.f39805a, fVar, fVar2.a(fVar3), new f[]{fVar3});
                    }
                    throw new IllegalStateException("unsupported coordinate system");
                } else {
                    return new d(this.f39805a, fVar, this.f39807c.b());
                }
            }
            return new d(this.f39805a, fVar, this.f39807c.a(fVar));
        }
    }

    /* loaded from: classes7.dex */
    public static class e extends c {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e(fk.e eVar, f fVar, f fVar2) {
            super(eVar, fVar, fVar2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(fk.e eVar, f fVar, f fVar2, f[] fVarArr) {
            super(eVar, fVar, fVar2, fVarArr);
        }

        @Override // fk.i
        public i D(int i9) {
            f o10;
            if (i9 >= 0) {
                if (i9 == 0 || t()) {
                    return this;
                }
                if (i9 == 1) {
                    return E();
                }
                fk.e i10 = i();
                f fVar = this.f39807c;
                if (fVar.i()) {
                    return i10.r();
                }
                int o11 = i10.o();
                f l10 = i10.l();
                f fVar2 = this.f39806b;
                f[] fVarArr = this.f39808d;
                f k10 = fVarArr.length < 1 ? i10.k(fk.d.f39762b) : fVarArr[0];
                if (!k10.h() && o11 != 0) {
                    if (o11 == 1) {
                        o10 = k10.o();
                        fVar2 = fVar2.j(k10);
                        fVar = fVar.j(o10);
                    } else if (o11 == 2) {
                        o10 = null;
                    } else if (o11 != 4) {
                        throw new IllegalStateException("unsupported coordinate system");
                    } else {
                        l10 = J();
                    }
                    l10 = G(k10, o10);
                }
                int i11 = 0;
                while (i11 < i9) {
                    if (fVar.i()) {
                        return i10.r();
                    }
                    f K = K(fVar2.o());
                    f N = N(fVar);
                    f j10 = N.j(fVar);
                    f N2 = N(fVar2.j(j10));
                    f N3 = N(j10.o());
                    if (!l10.i()) {
                        K = K.a(l10);
                        l10 = N(N3.j(l10));
                    }
                    f r10 = K.o().r(N(N2));
                    fVar = K.j(N2.r(r10)).r(N3);
                    k10 = k10.h() ? N : N.j(k10);
                    i11++;
                    fVar2 = r10;
                }
                if (o11 == 0) {
                    f g10 = k10.g();
                    f o12 = g10.o();
                    return new e(i10, fVar2.j(o12), fVar.j(o12.j(g10)));
                } else if (o11 != 1) {
                    if (o11 != 2) {
                        if (o11 == 4) {
                            return new e(i10, fVar2, fVar, new f[]{k10, l10});
                        }
                        throw new IllegalStateException("unsupported coordinate system");
                    }
                    return new e(i10, fVar2, fVar, new f[]{k10});
                } else {
                    return new e(i10, fVar2.j(k10), fVar, new f[]{k10.j(k10.o())});
                }
            }
            throw new IllegalArgumentException("'e' cannot be negative");
        }

        @Override // fk.i
        public i E() {
            f fVar;
            f j10;
            if (t()) {
                return this;
            }
            fk.e i9 = i();
            f fVar2 = this.f39807c;
            if (fVar2.i()) {
                return i9.r();
            }
            int o10 = i9.o();
            f fVar3 = this.f39806b;
            if (o10 == 0) {
                f d10 = K(fVar3.o()).a(i().l()).d(N(fVar2));
                f r10 = d10.o().r(N(fVar3));
                return new e(i9, r10, d10.j(fVar3.r(r10)).r(fVar2));
            } else if (o10 == 1) {
                f fVar4 = this.f39808d[0];
                boolean h10 = fVar4.h();
                f l10 = i9.l();
                if (!l10.i() && !h10) {
                    l10 = l10.j(fVar4.o());
                }
                f a10 = l10.a(K(fVar3.o()));
                f j11 = h10 ? fVar2 : fVar2.j(fVar4);
                f o11 = h10 ? fVar2.o() : j11.j(fVar2);
                f I = I(fVar3.j(o11));
                f r11 = a10.o().r(N(I));
                f N = N(j11);
                f j12 = r11.j(N);
                f N2 = N(o11);
                return new e(i9, j12, I.r(r11).j(a10).r(N(N2.o())), new f[]{N(h10 ? N(N2) : N.o()).j(j11)});
            } else if (o10 != 2) {
                if (o10 == 4) {
                    return M(true);
                }
                throw new IllegalStateException("unsupported coordinate system");
            } else {
                f fVar5 = this.f39808d[0];
                boolean h11 = fVar5.h();
                f o12 = fVar2.o();
                f o13 = o12.o();
                f l11 = i9.l();
                f m10 = l11.m();
                if (m10.t().equals(BigInteger.valueOf(3L))) {
                    f o14 = h11 ? fVar5 : fVar5.o();
                    fVar = K(fVar3.a(o14).j(fVar3.r(o14)));
                    j10 = o12.j(fVar3);
                } else {
                    f K = K(fVar3.o());
                    if (!h11) {
                        if (l11.i()) {
                            fVar = K;
                        } else {
                            f o15 = fVar5.o().o();
                            if (m10.c() < l11.c()) {
                                fVar = K.r(o15.j(m10));
                            } else {
                                l11 = o15.j(l11);
                            }
                        }
                        j10 = fVar3.j(o12);
                    }
                    fVar = K.a(l11);
                    j10 = fVar3.j(o12);
                }
                f I2 = I(j10);
                f r12 = fVar.o().r(N(I2));
                f r13 = I2.r(r12).j(fVar).r(H(o13));
                f N3 = N(fVar2);
                if (!h11) {
                    N3 = N3.j(fVar5);
                }
                return new e(i9, r12, r13, new f[]{N3});
            }
        }

        @Override // fk.i
        public i F(i iVar) {
            if (this == iVar) {
                return L();
            }
            if (t()) {
                return iVar;
            }
            if (iVar.t()) {
                return E();
            }
            f fVar = this.f39807c;
            if (fVar.i()) {
                return iVar;
            }
            fk.e i9 = i();
            int o10 = i9.o();
            if (o10 != 0) {
                return o10 != 4 ? E().a(iVar) : M(false).a(iVar);
            }
            f fVar2 = this.f39806b;
            f fVar3 = iVar.f39806b;
            f fVar4 = iVar.f39807c;
            f r10 = fVar3.r(fVar2);
            f r11 = fVar4.r(fVar);
            if (r10.i()) {
                return r11.i() ? L() : this;
            }
            f o11 = r10.o();
            f r12 = o11.j(N(fVar2).a(fVar3)).r(r11.o());
            if (r12.i()) {
                return i9.r();
            }
            f g10 = r12.j(r10).g();
            f j10 = r12.j(g10).j(r11);
            f r13 = N(fVar).j(o11).j(r10).j(g10).r(j10);
            f a10 = r13.r(j10).j(j10.a(r13)).a(fVar3);
            return new e(i9, a10, fVar2.r(a10).j(r13).r(fVar));
        }

        protected f G(f fVar, f fVar2) {
            f l10 = i().l();
            if (l10.i() || fVar.h()) {
                return l10;
            }
            if (fVar2 == null) {
                fVar2 = fVar.o();
            }
            f o10 = fVar2.o();
            f m10 = l10.m();
            return m10.c() < l10.c() ? o10.j(m10).m() : o10.j(l10);
        }

        protected f H(f fVar) {
            return I(N(fVar));
        }

        protected f I(f fVar) {
            return N(N(fVar));
        }

        protected f J() {
            f[] fVarArr = this.f39808d;
            f fVar = fVarArr[1];
            if (fVar == null) {
                f G = G(fVarArr[0], null);
                fVarArr[1] = G;
                return G;
            }
            return fVar;
        }

        protected f K(f fVar) {
            return N(fVar).a(fVar);
        }

        public i L() {
            if (t()) {
                return this;
            }
            f fVar = this.f39807c;
            if (fVar.i()) {
                return this;
            }
            fk.e i9 = i();
            int o10 = i9.o();
            if (o10 != 0) {
                return o10 != 4 ? E().a(this) : M(false).a(this);
            }
            f fVar2 = this.f39806b;
            f N = N(fVar);
            f o11 = N.o();
            f a10 = K(fVar2.o()).a(i().l());
            f r10 = K(fVar2).j(o11).r(a10.o());
            if (r10.i()) {
                return i().r();
            }
            f g10 = r10.j(N).g();
            f j10 = r10.j(g10).j(a10);
            f r11 = o11.o().j(g10).r(j10);
            f a11 = r11.r(j10).j(j10.a(r11)).a(fVar2);
            return new e(i9, a11, fVar2.r(a11).j(r11).r(fVar));
        }

        protected e M(boolean z10) {
            f fVar = this.f39806b;
            f fVar2 = this.f39807c;
            f fVar3 = this.f39808d[0];
            f J = J();
            f a10 = K(fVar.o()).a(J);
            f N = N(fVar2);
            f j10 = N.j(fVar2);
            f N2 = N(fVar.j(j10));
            f r10 = a10.o().r(N(N2));
            f N3 = N(j10.o());
            f r11 = a10.j(N2.r(r10)).r(N3);
            f N4 = z10 ? N(N3.j(J)) : null;
            if (!fVar3.h()) {
                N = N.j(fVar3);
            }
            return new e(i(), r10, r11, new f[]{N, N4});
        }

        protected f N(f fVar) {
            return fVar.a(fVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:61:0x0128  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0136  */
        @Override // fk.i
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public fk.i a(fk.i r17) {
            /*
                Method dump skipped, instructions count: 532
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: fk.i.e.a(fk.i):fk.i");
        }

        @Override // fk.i
        protected i d() {
            return new e(null, f(), g());
        }

        @Override // fk.i
        public f r(int i9) {
            return (i9 == 1 && 4 == j()) ? J() : super.r(i9);
        }

        @Override // fk.i
        public i x() {
            if (t()) {
                return this;
            }
            fk.e i9 = i();
            return i9.o() != 0 ? new e(i9, this.f39806b, this.f39807c.m(), this.f39808d) : new e(i9, this.f39806b, this.f39807c.m());
        }
    }

    protected i(fk.e eVar, f fVar, f fVar2) {
        this(eVar, fVar, fVar2, m(eVar));
    }

    protected i(fk.e eVar, f fVar, f fVar2, f[] fVarArr) {
        this.f39809e = null;
        this.f39805a = eVar;
        this.f39806b = fVar;
        this.f39807c = fVar2;
        this.f39808d = fVarArr;
    }

    protected static f[] m(fk.e eVar) {
        int o10 = eVar == null ? 0 : eVar.o();
        if (o10 == 0 || o10 == 5) {
            return f39804f;
        }
        f k10 = eVar.k(fk.d.f39762b);
        if (o10 != 1 && o10 != 2) {
            if (o10 == 3) {
                return new f[]{k10, k10, k10};
            }
            if (o10 == 4) {
                return new f[]{k10, eVar.l()};
            }
            if (o10 != 6) {
                throw new IllegalArgumentException("unknown coordinate system");
            }
        }
        return new f[]{k10};
    }

    protected abstract boolean A();

    protected boolean B() {
        BigInteger s10;
        return fk.d.f39762b.equals(this.f39805a.n()) || (s10 = this.f39805a.s()) == null || fk.c.h(this, s10).t();
    }

    public abstract i C(i iVar);

    public i D(int i9) {
        if (i9 < 0) {
            throw new IllegalArgumentException("'e' cannot be negative");
        }
        i iVar = this;
        while (true) {
            i9--;
            if (i9 < 0) {
                return iVar;
            }
            iVar = iVar.E();
        }
    }

    public abstract i E();

    public i F(i iVar) {
        return E().a(iVar);
    }

    public abstract i a(i iVar);

    protected void b() {
        if (!u()) {
            throw new IllegalStateException("point not in normal form");
        }
    }

    protected i c(f fVar, f fVar2) {
        return i().g(n().j(fVar), o().j(fVar2));
    }

    protected abstract i d();

    public boolean e(i iVar) {
        i iVar2;
        if (iVar == null) {
            return false;
        }
        fk.e i9 = i();
        fk.e i10 = iVar.i();
        boolean z10 = i9 == null;
        boolean z11 = i10 == null;
        boolean t10 = t();
        boolean t11 = iVar.t();
        if (t10 || t11) {
            if (t10 && t11) {
                return z10 || z11 || i9.j(i10);
            }
            return false;
        }
        if (!z10 || !z11) {
            if (!z10) {
                if (z11) {
                    iVar2 = y();
                } else if (!i9.j(i10)) {
                    return false;
                } else {
                    i[] iVarArr = {this, i9.t(iVar)};
                    i9.u(iVarArr);
                    iVar2 = iVarArr[0];
                    iVar = iVarArr[1];
                }
                return iVar2.p().equals(iVar.p()) && iVar2.q().equals(iVar.q());
            }
            iVar = iVar.y();
        }
        iVar2 = this;
        if (iVar2.p().equals(iVar.p())) {
            return false;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            return e((i) obj);
        }
        return false;
    }

    public f f() {
        b();
        return p();
    }

    public f g() {
        b();
        return q();
    }

    protected abstract boolean h();

    public int hashCode() {
        fk.e i9 = i();
        int i10 = i9 == null ? 0 : ~i9.hashCode();
        if (t()) {
            return i10;
        }
        i y10 = y();
        return (i10 ^ (y10.p().hashCode() * 17)) ^ (y10.q().hashCode() * 257);
    }

    public fk.e i() {
        return this.f39805a;
    }

    protected int j() {
        fk.e eVar = this.f39805a;
        if (eVar == null) {
            return 0;
        }
        return eVar.o();
    }

    public final i k() {
        return y().d();
    }

    public byte[] l(boolean z10) {
        if (t()) {
            return new byte[1];
        }
        i y10 = y();
        byte[] e10 = y10.p().e();
        if (z10) {
            byte[] bArr = new byte[e10.length + 1];
            bArr[0] = (byte) (y10.h() ? 3 : 2);
            System.arraycopy(e10, 0, bArr, 1, e10.length);
            return bArr;
        }
        byte[] e11 = y10.q().e();
        byte[] bArr2 = new byte[e10.length + e11.length + 1];
        bArr2[0] = 4;
        System.arraycopy(e10, 0, bArr2, 1, e10.length);
        System.arraycopy(e11, 0, bArr2, e10.length + 1, e11.length);
        return bArr2;
    }

    public final f n() {
        return this.f39806b;
    }

    public final f o() {
        return this.f39807c;
    }

    public f p() {
        return this.f39806b;
    }

    public f q() {
        return this.f39807c;
    }

    public f r(int i9) {
        if (i9 >= 0) {
            f[] fVarArr = this.f39808d;
            if (i9 < fVarArr.length) {
                return fVarArr[i9];
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean s(boolean z10, boolean z11) {
        if (t()) {
            return true;
        }
        return !((r) i().w(this, "bc_validity", new a(z10, z11))).b();
    }

    public boolean t() {
        if (this.f39806b != null && this.f39807c != null) {
            f[] fVarArr = this.f39808d;
            if (fVarArr.length <= 0 || !fVarArr[0].i()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        if (t()) {
            return "INF";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append(n());
        stringBuffer.append(',');
        stringBuffer.append(o());
        for (int i9 = 0; i9 < this.f39808d.length; i9++) {
            stringBuffer.append(',');
            stringBuffer.append(this.f39808d[i9]);
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public boolean u() {
        int j10 = j();
        return j10 == 0 || j10 == 5 || t() || this.f39808d[0].h();
    }

    public boolean v() {
        return s(false, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean w() {
        return s(false, false);
    }

    public abstract i x();

    public i y() {
        int j10;
        if (t() || (j10 = j()) == 0 || j10 == 5) {
            return this;
        }
        f r10 = r(0);
        if (r10.h()) {
            return this;
        }
        if (this.f39805a != null) {
            f x10 = this.f39805a.x(org.bouncycastle.crypto.d.b());
            return z(r10.j(x10).g().j(x10));
        }
        throw new IllegalStateException("Detached points must be in affine coordinates");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i z(f fVar) {
        int j10 = j();
        if (j10 != 1) {
            if (j10 == 2 || j10 == 3 || j10 == 4) {
                f o10 = fVar.o();
                return c(o10, o10.j(fVar));
            } else if (j10 != 6) {
                throw new IllegalStateException("not a projective coordinate system");
            }
        }
        return c(fVar, fVar);
    }
}
