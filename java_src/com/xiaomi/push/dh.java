package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class dh implements ef<dh, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f53a;

    /* renamed from: a  reason: collision with other field name */
    public di f54a;

    /* renamed from: a  reason: collision with other field name */
    public dk f55a;

    /* renamed from: a  reason: collision with other field name */
    public String f56a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f57a = new BitSet(4);

    /* renamed from: a  reason: collision with other field name */
    public boolean f58a = false;

    /* renamed from: b  reason: collision with other field name */
    public long f59b;

    /* renamed from: b  reason: collision with other field name */
    public String f60b;

    /* renamed from: c  reason: collision with other field name */
    public long f61c;

    /* renamed from: c  reason: collision with other field name */
    public String f62c;

    /* renamed from: d  reason: collision with other field name */
    public String f63d;

    /* renamed from: e  reason: collision with other field name */
    public String f64e;

    /* renamed from: f  reason: collision with other field name */
    public String f65f;

    /* renamed from: g  reason: collision with other field name */
    public String f66g;

    /* renamed from: h  reason: collision with other field name */
    public String f67h;

    /* renamed from: i  reason: collision with other field name */
    public String f68i;

    /* renamed from: j  reason: collision with other field name */
    public String f69j;

    /* renamed from: k  reason: collision with other field name */
    public String f70k;

    /* renamed from: l  reason: collision with other field name */
    public String f71l;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f52a = new s2("PushMessage");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36595a = new m2("", (byte) 12, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36596b = new m2("", (byte) 11, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36597c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36598d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36599e = new m2("", (byte) 10, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36600f = new m2("", (byte) 10, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36601g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36602h = new m2("", (byte) 11, 8);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36603i = new m2("", (byte) 11, 9);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36604j = new m2("", (byte) 11, 10);

    /* renamed from: k  reason: collision with root package name */
    private static final m2 f36605k = new m2("", (byte) 11, 11);

    /* renamed from: l  reason: collision with root package name */
    private static final m2 f36606l = new m2("", (byte) 12, 12);

    /* renamed from: m  reason: collision with root package name */
    private static final m2 f36607m = new m2("", (byte) 11, 13);

    /* renamed from: n  reason: collision with root package name */
    private static final m2 f36608n = new m2("", (byte) 2, 14);

    /* renamed from: o  reason: collision with root package name */
    private static final m2 f36609o = new m2("", (byte) 11, 15);

    /* renamed from: p  reason: collision with root package name */
    private static final m2 f36610p = new m2("", (byte) 10, 16);

    /* renamed from: q  reason: collision with root package name */
    private static final m2 f36611q = new m2("", (byte) 11, 20);

    /* renamed from: r  reason: collision with root package name */
    private static final m2 f36612r = new m2("", (byte) 11, 21);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dh dhVar) {
        int e10;
        int e11;
        int c10;
        int e12;
        int k10;
        int e13;
        int d10;
        int e14;
        int e15;
        int e16;
        int e17;
        int e18;
        int c11;
        int c12;
        int e19;
        int e20;
        int e21;
        int d11;
        if (getClass().equals(dhVar.getClass())) {
            int compareTo = Boolean.valueOf(m1418a()).compareTo(Boolean.valueOf(dhVar.m1418a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1418a() || (d11 = i2.d(this.f55a, dhVar.f55a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1420b()).compareTo(Boolean.valueOf(dhVar.m1420b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1420b() || (e21 = i2.e(this.f56a, dhVar.f56a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1421c()).compareTo(Boolean.valueOf(dhVar.m1421c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1421c() || (e20 = i2.e(this.f60b, dhVar.f60b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dhVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e19 = i2.e(this.f62c, dhVar.f62c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dhVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c12 = i2.c(this.f53a, dhVar.f53a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dhVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (c11 = i2.c(this.f59b, dhVar.f59b)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dhVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e18 = i2.e(this.f63d, dhVar.f63d)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dhVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (e17 = i2.e(this.f64e, dhVar.f64e)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dhVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e16 = i2.e(this.f65f, dhVar.f65f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(dhVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (e15 = i2.e(this.f66g, dhVar.f66g)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(dhVar.k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!k() || (e14 = i2.e(this.f67h, dhVar.f67h)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(dhVar.l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!l() || (d10 = i2.d(this.f54a, dhVar.f54a)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(dhVar.m()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m() || (e13 = i2.e(this.f68i, dhVar.f68i)) == 0) {
                                                                int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(dhVar.n()));
                                                                if (compareTo14 != 0) {
                                                                    return compareTo14;
                                                                }
                                                                if (!n() || (k10 = i2.k(this.f58a, dhVar.f58a)) == 0) {
                                                                    int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(dhVar.o()));
                                                                    if (compareTo15 != 0) {
                                                                        return compareTo15;
                                                                    }
                                                                    if (!o() || (e12 = i2.e(this.f69j, dhVar.f69j)) == 0) {
                                                                        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(dhVar.p()));
                                                                        if (compareTo16 != 0) {
                                                                            return compareTo16;
                                                                        }
                                                                        if (!p() || (c10 = i2.c(this.f61c, dhVar.f61c)) == 0) {
                                                                            int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(dhVar.q()));
                                                                            if (compareTo17 != 0) {
                                                                                return compareTo17;
                                                                            }
                                                                            if (!q() || (e11 = i2.e(this.f70k, dhVar.f70k)) == 0) {
                                                                                int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(dhVar.r()));
                                                                                if (compareTo18 != 0) {
                                                                                    return compareTo18;
                                                                                }
                                                                                if (!r() || (e10 = i2.e(this.f71l, dhVar.f71l)) == 0) {
                                                                                    return 0;
                                                                                }
                                                                                return e10;
                                                                            }
                                                                            return e11;
                                                                        }
                                                                        return c10;
                                                                    }
                                                                    return e12;
                                                                }
                                                                return k10;
                                                            }
                                                            return e13;
                                                        }
                                                        return d10;
                                                    }
                                                    return e14;
                                                }
                                                return e15;
                                            }
                                            return e16;
                                        }
                                        return e17;
                                    }
                                    return e18;
                                }
                                return c11;
                            }
                            return c12;
                        }
                        return e19;
                    }
                    return e20;
                }
                return e21;
            }
            return d11;
        }
        return getClass().getName().compareTo(dhVar.getClass().getName());
    }

    public long a() {
        return this.f53a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m1416a() {
        return this.f56a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1417a() {
        if (this.f56a == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f60b == null) {
            throw new eq("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f62c != null) {
        } else {
            throw new eq("Required field 'payload' was not present! Struct: " + toString());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.xiaomi.push.ef
    public void a(p2 p2Var) {
        p2Var.i();
        while (true) {
            m2 e10 = p2Var.e();
            byte b10 = e10.f36993b;
            if (b10 == 0) {
                p2Var.C();
                m1417a();
                return;
            }
            short s10 = e10.f36994c;
            if (s10 == 20) {
                if (b10 == 11) {
                    this.f70k = p2Var.j();
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else if (s10 != 21) {
                switch (s10) {
                    case 1:
                        if (b10 == 12) {
                            dk dkVar = new dk();
                            this.f55a = dkVar;
                            dkVar.a(p2Var);
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 2:
                        if (b10 == 11) {
                            this.f56a = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 3:
                        if (b10 == 11) {
                            this.f60b = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 4:
                        if (b10 == 11) {
                            this.f62c = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 5:
                        if (b10 == 10) {
                            this.f53a = p2Var.d();
                            a(true);
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 6:
                        if (b10 == 10) {
                            this.f59b = p2Var.d();
                            b(true);
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 7:
                        if (b10 == 11) {
                            this.f63d = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 8:
                        if (b10 == 11) {
                            this.f64e = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 9:
                        if (b10 == 11) {
                            this.f65f = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 10:
                        if (b10 == 11) {
                            this.f66g = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 11:
                        if (b10 == 11) {
                            this.f67h = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 12:
                        if (b10 == 12) {
                            di diVar = new di();
                            this.f54a = diVar;
                            diVar.a(p2Var);
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 13:
                        if (b10 == 11) {
                            this.f68i = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 14:
                        if (b10 == 2) {
                            this.f58a = p2Var.x();
                            c(true);
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 15:
                        if (b10 == 11) {
                            this.f69j = p2Var.j();
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    case 16:
                        if (b10 == 10) {
                            this.f61c = p2Var.d();
                            d(true);
                            break;
                        }
                        q2.a(p2Var, b10);
                        break;
                    default:
                        q2.a(p2Var, b10);
                        break;
                }
                p2Var.D();
            } else {
                if (b10 == 11) {
                    this.f71l = p2Var.j();
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            }
        }
    }

    public void a(boolean z10) {
        this.f57a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1418a() {
        return this.f55a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1419a(dh dhVar) {
        if (dhVar == null) {
            return false;
        }
        boolean m1418a = m1418a();
        boolean m1418a2 = dhVar.m1418a();
        if ((m1418a || m1418a2) && !(m1418a && m1418a2 && this.f55a.m1436a(dhVar.f55a))) {
            return false;
        }
        boolean m1420b = m1420b();
        boolean m1420b2 = dhVar.m1420b();
        if ((m1420b || m1420b2) && !(m1420b && m1420b2 && this.f56a.equals(dhVar.f56a))) {
            return false;
        }
        boolean m1421c = m1421c();
        boolean m1421c2 = dhVar.m1421c();
        if ((m1421c || m1421c2) && !(m1421c && m1421c2 && this.f60b.equals(dhVar.f60b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dhVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f62c.equals(dhVar.f62c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = dhVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f53a == dhVar.f53a)) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dhVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f59b == dhVar.f59b)) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dhVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f63d.equals(dhVar.f63d))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dhVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f64e.equals(dhVar.f64e))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = dhVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f65f.equals(dhVar.f65f))) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = dhVar.j();
        if ((j10 || j11) && !(j10 && j11 && this.f66g.equals(dhVar.f66g))) {
            return false;
        }
        boolean k10 = k();
        boolean k11 = dhVar.k();
        if ((k10 || k11) && !(k10 && k11 && this.f67h.equals(dhVar.f67h))) {
            return false;
        }
        boolean l10 = l();
        boolean l11 = dhVar.l();
        if ((l10 || l11) && !(l10 && l11 && this.f54a.m1428a(dhVar.f54a))) {
            return false;
        }
        boolean m10 = m();
        boolean m11 = dhVar.m();
        if ((m10 || m11) && !(m10 && m11 && this.f68i.equals(dhVar.f68i))) {
            return false;
        }
        boolean n9 = n();
        boolean n10 = dhVar.n();
        if ((n9 || n10) && !(n9 && n10 && this.f58a == dhVar.f58a)) {
            return false;
        }
        boolean o10 = o();
        boolean o11 = dhVar.o();
        if ((o10 || o11) && !(o10 && o11 && this.f69j.equals(dhVar.f69j))) {
            return false;
        }
        boolean p10 = p();
        boolean p11 = dhVar.p();
        if ((p10 || p11) && !(p10 && p11 && this.f61c == dhVar.f61c)) {
            return false;
        }
        boolean q10 = q();
        boolean q11 = dhVar.q();
        if ((q10 || q11) && !(q10 && q11 && this.f70k.equals(dhVar.f70k))) {
            return false;
        }
        boolean r10 = r();
        boolean r11 = dhVar.r();
        if (r10 || r11) {
            return r10 && r11 && this.f71l.equals(dhVar.f71l);
        }
        return true;
    }

    public String b() {
        return this.f60b;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1417a();
        p2Var.s(f52a);
        if (this.f55a != null && m1418a()) {
            p2Var.p(f36595a);
            this.f55a.b(p2Var);
            p2Var.y();
        }
        if (this.f56a != null) {
            p2Var.p(f36596b);
            p2Var.t(this.f56a);
            p2Var.y();
        }
        if (this.f60b != null) {
            p2Var.p(f36597c);
            p2Var.t(this.f60b);
            p2Var.y();
        }
        if (this.f62c != null) {
            p2Var.p(f36598d);
            p2Var.t(this.f62c);
            p2Var.y();
        }
        if (e()) {
            p2Var.p(f36599e);
            p2Var.o(this.f53a);
            p2Var.y();
        }
        if (f()) {
            p2Var.p(f36600f);
            p2Var.o(this.f59b);
            p2Var.y();
        }
        if (this.f63d != null && g()) {
            p2Var.p(f36601g);
            p2Var.t(this.f63d);
            p2Var.y();
        }
        if (this.f64e != null && h()) {
            p2Var.p(f36602h);
            p2Var.t(this.f64e);
            p2Var.y();
        }
        if (this.f65f != null && i()) {
            p2Var.p(f36603i);
            p2Var.t(this.f65f);
            p2Var.y();
        }
        if (this.f66g != null && j()) {
            p2Var.p(f36604j);
            p2Var.t(this.f66g);
            p2Var.y();
        }
        if (this.f67h != null && k()) {
            p2Var.p(f36605k);
            p2Var.t(this.f67h);
            p2Var.y();
        }
        if (this.f54a != null && l()) {
            p2Var.p(f36606l);
            this.f54a.b(p2Var);
            p2Var.y();
        }
        if (this.f68i != null && m()) {
            p2Var.p(f36607m);
            p2Var.t(this.f68i);
            p2Var.y();
        }
        if (n()) {
            p2Var.p(f36608n);
            p2Var.w(this.f58a);
            p2Var.y();
        }
        if (this.f69j != null && o()) {
            p2Var.p(f36609o);
            p2Var.t(this.f69j);
            p2Var.y();
        }
        if (p()) {
            p2Var.p(f36610p);
            p2Var.o(this.f61c);
            p2Var.y();
        }
        if (this.f70k != null && q()) {
            p2Var.p(f36611q);
            p2Var.t(this.f70k);
            p2Var.y();
        }
        if (this.f71l != null && r()) {
            p2Var.p(f36612r);
            p2Var.t(this.f71l);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f57a.set(1, z10);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1420b() {
        return this.f56a != null;
    }

    public String c() {
        return this.f62c;
    }

    public void c(boolean z10) {
        this.f57a.set(2, z10);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1421c() {
        return this.f60b != null;
    }

    public void d(boolean z10) {
        this.f57a.set(3, z10);
    }

    public boolean d() {
        return this.f62c != null;
    }

    public boolean e() {
        return this.f57a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dh)) {
            return m1419a((dh) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f57a.get(1);
    }

    public boolean g() {
        return this.f63d != null;
    }

    public boolean h() {
        return this.f64e != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f65f != null;
    }

    public boolean j() {
        return this.f66g != null;
    }

    public boolean k() {
        return this.f67h != null;
    }

    public boolean l() {
        return this.f54a != null;
    }

    public boolean m() {
        return this.f68i != null;
    }

    public boolean n() {
        return this.f57a.get(2);
    }

    public boolean o() {
        return this.f69j != null;
    }

    public boolean p() {
        return this.f57a.get(3);
    }

    public boolean q() {
        return this.f70k != null;
    }

    public boolean r() {
        return this.f71l != null;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("PushMessage(");
        if (m1418a()) {
            sb2.append("to:");
            dk dkVar = this.f55a;
            if (dkVar == null) {
                sb2.append("null");
            } else {
                sb2.append(dkVar);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            sb2.append(", ");
        }
        sb2.append("id:");
        String str = this.f56a;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(str);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str2 = this.f60b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("payload:");
        String str3 = this.f62c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("createAt:");
            sb2.append(this.f53a);
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("ttl:");
            sb2.append(this.f59b);
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("collapseKey:");
            String str4 = this.f63d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str5 = this.f64e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("regId:");
            String str6 = this.f65f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("category:");
            String str7 = this.f66g;
            if (str7 == null) {
                sb2.append("null");
            } else {
                sb2.append(str7);
            }
        }
        if (k()) {
            sb2.append(", ");
            sb2.append("topic:");
            String str8 = this.f67h;
            if (str8 == null) {
                sb2.append("null");
            } else {
                sb2.append(str8);
            }
        }
        if (l()) {
            sb2.append(", ");
            sb2.append("metaInfo:");
            di diVar = this.f54a;
            if (diVar == null) {
                sb2.append("null");
            } else {
                sb2.append(diVar);
            }
        }
        if (m()) {
            sb2.append(", ");
            sb2.append("aliasName:");
            String str9 = this.f68i;
            if (str9 == null) {
                sb2.append("null");
            } else {
                sb2.append(str9);
            }
        }
        if (n()) {
            sb2.append(", ");
            sb2.append("isOnline:");
            sb2.append(this.f58a);
        }
        if (o()) {
            sb2.append(", ");
            sb2.append("userAccount:");
            String str10 = this.f69j;
            if (str10 == null) {
                sb2.append("null");
            } else {
                sb2.append(str10);
            }
        }
        if (p()) {
            sb2.append(", ");
            sb2.append("miid:");
            sb2.append(this.f61c);
        }
        if (q()) {
            sb2.append(", ");
            sb2.append("imeiMd5:");
            String str11 = this.f70k;
            if (str11 == null) {
                sb2.append("null");
            } else {
                sb2.append(str11);
            }
        }
        if (r()) {
            sb2.append(", ");
            sb2.append("deviceId:");
            String str12 = this.f71l;
            if (str12 == null) {
                sb2.append("null");
            } else {
                sb2.append(str12);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
