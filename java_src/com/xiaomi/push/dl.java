package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class dl implements ef<dl, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f98a;

    /* renamed from: a  reason: collision with other field name */
    public long f99a;

    /* renamed from: a  reason: collision with other field name */
    public dk f100a;

    /* renamed from: a  reason: collision with other field name */
    public dx f101a;

    /* renamed from: a  reason: collision with other field name */
    public String f102a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f104a;

    /* renamed from: a  reason: collision with other field name */
    public short f105a;

    /* renamed from: b  reason: collision with other field name */
    public String f107b;

    /* renamed from: b  reason: collision with other field name */
    public short f108b;

    /* renamed from: c  reason: collision with other field name */
    public String f109c;

    /* renamed from: d  reason: collision with other field name */
    public String f110d;

    /* renamed from: e  reason: collision with other field name */
    public String f111e;

    /* renamed from: f  reason: collision with other field name */
    public String f112f;

    /* renamed from: g  reason: collision with other field name */
    public String f113g;

    /* renamed from: h  reason: collision with other field name */
    public String f114h;

    /* renamed from: i  reason: collision with other field name */
    public String f115i;

    /* renamed from: j  reason: collision with other field name */
    public String f116j;

    /* renamed from: k  reason: collision with other field name */
    public String f117k;

    /* renamed from: l  reason: collision with other field name */
    public String f118l;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f97a = new s2("XmPushActionAckMessage");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36635a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36636b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36637c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36638d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36639e = new m2("", (byte) 10, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36640f = new m2("", (byte) 11, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36641g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36642h = new m2("", (byte) 12, 8);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36643i = new m2("", (byte) 11, 9);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36644j = new m2("", (byte) 11, 10);

    /* renamed from: k  reason: collision with root package name */
    private static final m2 f36645k = new m2("", (byte) 2, 11);

    /* renamed from: l  reason: collision with root package name */
    private static final m2 f36646l = new m2("", (byte) 11, 12);

    /* renamed from: m  reason: collision with root package name */
    private static final m2 f36647m = new m2("", (byte) 11, 13);

    /* renamed from: n  reason: collision with root package name */
    private static final m2 f36648n = new m2("", (byte) 11, 14);

    /* renamed from: o  reason: collision with root package name */
    private static final m2 f36649o = new m2("", (byte) 6, 15);

    /* renamed from: p  reason: collision with root package name */
    private static final m2 f36650p = new m2("", (byte) 6, 16);

    /* renamed from: q  reason: collision with root package name */
    private static final m2 f36651q = new m2("", (byte) 11, 20);

    /* renamed from: r  reason: collision with root package name */
    private static final m2 f36652r = new m2("", (byte) 11, 21);

    /* renamed from: s  reason: collision with root package name */
    private static final m2 f36653s = new m2("", (byte) 8, 22);

    /* renamed from: t  reason: collision with root package name */
    private static final m2 f36654t = new m2("", (byte) 13, 23);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f103a = new BitSet(5);

    /* renamed from: a  reason: collision with other field name */
    public boolean f106a = false;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dl dlVar) {
        int h10;
        int b10;
        int e10;
        int e11;
        int j10;
        int j11;
        int e12;
        int e13;
        int e14;
        int k10;
        int e15;
        int e16;
        int d10;
        int e17;
        int e18;
        int c10;
        int e19;
        int e20;
        int d11;
        int e21;
        if (getClass().equals(dlVar.getClass())) {
            int compareTo = Boolean.valueOf(m1437a()).compareTo(Boolean.valueOf(dlVar.m1437a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1437a() || (e21 = i2.e(this.f102a, dlVar.f102a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(dlVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (d11 = i2.d(this.f100a, dlVar.f100a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(dlVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e20 = i2.e(this.f107b, dlVar.f107b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dlVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e19 = i2.e(this.f109c, dlVar.f109c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dlVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c10 = i2.c(this.f99a, dlVar.f99a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dlVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e18 = i2.e(this.f110d, dlVar.f110d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dlVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e17 = i2.e(this.f111e, dlVar.f111e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dlVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (d10 = i2.d(this.f101a, dlVar.f101a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dlVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e16 = i2.e(this.f112f, dlVar.f112f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(dlVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (e15 = i2.e(this.f113g, dlVar.f113g)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(dlVar.k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!k() || (k10 = i2.k(this.f106a, dlVar.f106a)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(dlVar.l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!l() || (e14 = i2.e(this.f114h, dlVar.f114h)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(dlVar.m()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m() || (e13 = i2.e(this.f115i, dlVar.f115i)) == 0) {
                                                                int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(dlVar.n()));
                                                                if (compareTo14 != 0) {
                                                                    return compareTo14;
                                                                }
                                                                if (!n() || (e12 = i2.e(this.f116j, dlVar.f116j)) == 0) {
                                                                    int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(dlVar.o()));
                                                                    if (compareTo15 != 0) {
                                                                        return compareTo15;
                                                                    }
                                                                    if (!o() || (j11 = i2.j(this.f105a, dlVar.f105a)) == 0) {
                                                                        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(dlVar.p()));
                                                                        if (compareTo16 != 0) {
                                                                            return compareTo16;
                                                                        }
                                                                        if (!p() || (j10 = i2.j(this.f108b, dlVar.f108b)) == 0) {
                                                                            int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(dlVar.q()));
                                                                            if (compareTo17 != 0) {
                                                                                return compareTo17;
                                                                            }
                                                                            if (!q() || (e11 = i2.e(this.f117k, dlVar.f117k)) == 0) {
                                                                                int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(dlVar.r()));
                                                                                if (compareTo18 != 0) {
                                                                                    return compareTo18;
                                                                                }
                                                                                if (!r() || (e10 = i2.e(this.f118l, dlVar.f118l)) == 0) {
                                                                                    int compareTo19 = Boolean.valueOf(s()).compareTo(Boolean.valueOf(dlVar.s()));
                                                                                    if (compareTo19 != 0) {
                                                                                        return compareTo19;
                                                                                    }
                                                                                    if (!s() || (b10 = i2.b(this.f98a, dlVar.f98a)) == 0) {
                                                                                        int compareTo20 = Boolean.valueOf(t()).compareTo(Boolean.valueOf(dlVar.t()));
                                                                                        if (compareTo20 != 0) {
                                                                                            return compareTo20;
                                                                                        }
                                                                                        if (!t() || (h10 = i2.h(this.f104a, dlVar.f104a)) == 0) {
                                                                                            return 0;
                                                                                        }
                                                                                        return h10;
                                                                                    }
                                                                                    return b10;
                                                                                }
                                                                                return e10;
                                                                            }
                                                                            return e11;
                                                                        }
                                                                        return j10;
                                                                    }
                                                                    return j11;
                                                                }
                                                                return e12;
                                                            }
                                                            return e13;
                                                        }
                                                        return e14;
                                                    }
                                                    return k10;
                                                }
                                                return e15;
                                            }
                                            return e16;
                                        }
                                        return d10;
                                    }
                                    return e17;
                                }
                                return e18;
                            }
                            return c10;
                        }
                        return e19;
                    }
                    return e20;
                }
                return d11;
            }
            return e21;
        }
        return getClass().getName().compareTo(dlVar.getClass().getName());
    }

    public dl a(long j10) {
        this.f99a = j10;
        a(true);
        return this;
    }

    public dl a(String str) {
        this.f107b = str;
        return this;
    }

    public dl a(short s10) {
        this.f105a = s10;
        c(true);
        return this;
    }

    public void a() {
        if (this.f107b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f109c != null) {
        } else {
            throw new eq("Required field 'appId' was not present! Struct: " + toString());
        }
    }

    @Override // com.xiaomi.push.ef
    public void a(p2 p2Var) {
        p2Var.i();
        while (true) {
            m2 e10 = p2Var.e();
            byte b10 = e10.f36993b;
            if (b10 == 0) {
                p2Var.C();
                if (e()) {
                    a();
                    return;
                }
                throw new eq("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f102a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f100a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f107b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f109c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 10) {
                        this.f99a = p2Var.d();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 11) {
                        this.f110d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f111e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 12) {
                        dx dxVar = new dx();
                        this.f101a = dxVar;
                        dxVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f112f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 11) {
                        this.f113g = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 11:
                    if (b10 == 2) {
                        this.f106a = p2Var.x();
                        b(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 12:
                    if (b10 == 11) {
                        this.f114h = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 13:
                    if (b10 == 11) {
                        this.f115i = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 14:
                    if (b10 == 11) {
                        this.f116j = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 15:
                    if (b10 == 6) {
                        this.f105a = p2Var.l();
                        c(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 16:
                    if (b10 == 6) {
                        this.f108b = p2Var.l();
                        d(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 20:
                    if (b10 == 11) {
                        this.f117k = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 21:
                    if (b10 == 11) {
                        this.f118l = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 22:
                    if (b10 == 8) {
                        this.f98a = p2Var.c();
                        e(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 23:
                    if (b10 == 13) {
                        o2 g10 = p2Var.g();
                        this.f104a = new HashMap(g10.f37020c * 2);
                        for (int i9 = 0; i9 < g10.f37020c; i9++) {
                            this.f104a.put(p2Var.j(), p2Var.j());
                        }
                        p2Var.E();
                        continue;
                        p2Var.D();
                    }
                    break;
            }
            q2.a(p2Var, b10);
            p2Var.D();
        }
    }

    public void a(boolean z10) {
        this.f103a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1437a() {
        return this.f102a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1438a(dl dlVar) {
        if (dlVar == null) {
            return false;
        }
        boolean m1437a = m1437a();
        boolean m1437a2 = dlVar.m1437a();
        if ((m1437a || m1437a2) && !(m1437a && m1437a2 && this.f102a.equals(dlVar.f102a))) {
            return false;
        }
        boolean b10 = b();
        boolean b11 = dlVar.b();
        if ((b10 || b11) && !(b10 && b11 && this.f100a.m1436a(dlVar.f100a))) {
            return false;
        }
        boolean c10 = c();
        boolean c11 = dlVar.c();
        if ((c10 || c11) && !(c10 && c11 && this.f107b.equals(dlVar.f107b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dlVar.d();
        if (((d10 || d11) && !(d10 && d11 && this.f109c.equals(dlVar.f109c))) || this.f99a != dlVar.f99a) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dlVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f110d.equals(dlVar.f110d))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dlVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f111e.equals(dlVar.f111e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dlVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f101a.m1495a(dlVar.f101a))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = dlVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f112f.equals(dlVar.f112f))) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = dlVar.j();
        if ((j10 || j11) && !(j10 && j11 && this.f113g.equals(dlVar.f113g))) {
            return false;
        }
        boolean k10 = k();
        boolean k11 = dlVar.k();
        if ((k10 || k11) && !(k10 && k11 && this.f106a == dlVar.f106a)) {
            return false;
        }
        boolean l10 = l();
        boolean l11 = dlVar.l();
        if ((l10 || l11) && !(l10 && l11 && this.f114h.equals(dlVar.f114h))) {
            return false;
        }
        boolean m10 = m();
        boolean m11 = dlVar.m();
        if ((m10 || m11) && !(m10 && m11 && this.f115i.equals(dlVar.f115i))) {
            return false;
        }
        boolean n9 = n();
        boolean n10 = dlVar.n();
        if ((n9 || n10) && !(n9 && n10 && this.f116j.equals(dlVar.f116j))) {
            return false;
        }
        boolean o10 = o();
        boolean o11 = dlVar.o();
        if ((o10 || o11) && !(o10 && o11 && this.f105a == dlVar.f105a)) {
            return false;
        }
        boolean p10 = p();
        boolean p11 = dlVar.p();
        if ((p10 || p11) && !(p10 && p11 && this.f108b == dlVar.f108b)) {
            return false;
        }
        boolean q10 = q();
        boolean q11 = dlVar.q();
        if ((q10 || q11) && !(q10 && q11 && this.f117k.equals(dlVar.f117k))) {
            return false;
        }
        boolean r10 = r();
        boolean r11 = dlVar.r();
        if ((r10 || r11) && !(r10 && r11 && this.f118l.equals(dlVar.f118l))) {
            return false;
        }
        boolean s10 = s();
        boolean s11 = dlVar.s();
        if ((s10 || s11) && !(s10 && s11 && this.f98a == dlVar.f98a)) {
            return false;
        }
        boolean t10 = t();
        boolean t11 = dlVar.t();
        if (t10 || t11) {
            return t10 && t11 && this.f104a.equals(dlVar.f104a);
        }
        return true;
    }

    public dl b(String str) {
        this.f109c = str;
        return this;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        a();
        p2Var.s(f97a);
        if (this.f102a != null && m1437a()) {
            p2Var.p(f36635a);
            p2Var.t(this.f102a);
            p2Var.y();
        }
        if (this.f100a != null && b()) {
            p2Var.p(f36636b);
            this.f100a.b(p2Var);
            p2Var.y();
        }
        if (this.f107b != null) {
            p2Var.p(f36637c);
            p2Var.t(this.f107b);
            p2Var.y();
        }
        if (this.f109c != null) {
            p2Var.p(f36638d);
            p2Var.t(this.f109c);
            p2Var.y();
        }
        p2Var.p(f36639e);
        p2Var.o(this.f99a);
        p2Var.y();
        if (this.f110d != null && f()) {
            p2Var.p(f36640f);
            p2Var.t(this.f110d);
            p2Var.y();
        }
        if (this.f111e != null && g()) {
            p2Var.p(f36641g);
            p2Var.t(this.f111e);
            p2Var.y();
        }
        if (this.f101a != null && h()) {
            p2Var.p(f36642h);
            this.f101a.b(p2Var);
            p2Var.y();
        }
        if (this.f112f != null && i()) {
            p2Var.p(f36643i);
            p2Var.t(this.f112f);
            p2Var.y();
        }
        if (this.f113g != null && j()) {
            p2Var.p(f36644j);
            p2Var.t(this.f113g);
            p2Var.y();
        }
        if (k()) {
            p2Var.p(f36645k);
            p2Var.w(this.f106a);
            p2Var.y();
        }
        if (this.f114h != null && l()) {
            p2Var.p(f36646l);
            p2Var.t(this.f114h);
            p2Var.y();
        }
        if (this.f115i != null && m()) {
            p2Var.p(f36647m);
            p2Var.t(this.f115i);
            p2Var.y();
        }
        if (this.f116j != null && n()) {
            p2Var.p(f36648n);
            p2Var.t(this.f116j);
            p2Var.y();
        }
        if (o()) {
            p2Var.p(f36649o);
            p2Var.v(this.f105a);
            p2Var.y();
        }
        if (p()) {
            p2Var.p(f36650p);
            p2Var.v(this.f108b);
            p2Var.y();
        }
        if (this.f117k != null && q()) {
            p2Var.p(f36651q);
            p2Var.t(this.f117k);
            p2Var.y();
        }
        if (this.f118l != null && r()) {
            p2Var.p(f36652r);
            p2Var.t(this.f118l);
            p2Var.y();
        }
        if (s()) {
            p2Var.p(f36653s);
            p2Var.n(this.f98a);
            p2Var.y();
        }
        if (this.f104a != null && t()) {
            p2Var.p(f36654t);
            p2Var.r(new o2((byte) 11, (byte) 11, this.f104a.size()));
            for (Map.Entry<String, String> entry : this.f104a.entrySet()) {
                p2Var.t(entry.getKey());
                p2Var.t(entry.getValue());
            }
            p2Var.A();
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f103a.set(1, z10);
    }

    public boolean b() {
        return this.f100a != null;
    }

    public dl c(String str) {
        this.f110d = str;
        return this;
    }

    public void c(boolean z10) {
        this.f103a.set(2, z10);
    }

    public boolean c() {
        return this.f107b != null;
    }

    public dl d(String str) {
        this.f111e = str;
        return this;
    }

    public void d(boolean z10) {
        this.f103a.set(3, z10);
    }

    public boolean d() {
        return this.f109c != null;
    }

    public void e(boolean z10) {
        this.f103a.set(4, z10);
    }

    public boolean e() {
        return this.f103a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dl)) {
            return m1438a((dl) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f110d != null;
    }

    public boolean g() {
        return this.f111e != null;
    }

    public boolean h() {
        return this.f101a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f112f != null;
    }

    public boolean j() {
        return this.f113g != null;
    }

    public boolean k() {
        return this.f103a.get(1);
    }

    public boolean l() {
        return this.f114h != null;
    }

    public boolean m() {
        return this.f115i != null;
    }

    public boolean n() {
        return this.f116j != null;
    }

    public boolean o() {
        return this.f103a.get(2);
    }

    public boolean p() {
        return this.f103a.get(3);
    }

    public boolean q() {
        return this.f117k != null;
    }

    public boolean r() {
        return this.f118l != null;
    }

    public boolean s() {
        return this.f103a.get(4);
    }

    public boolean t() {
        return this.f104a != null;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionAckMessage(");
        boolean z11 = false;
        if (m1437a()) {
            sb2.append("debug:");
            String str = this.f102a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("target:");
            dk dkVar = this.f100a;
            if (dkVar == null) {
                sb2.append("null");
            } else {
                sb2.append(dkVar);
            }
        } else {
            z11 = z10;
        }
        if (!z11) {
            sb2.append(", ");
        }
        sb2.append("id:");
        String str2 = this.f107b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f109c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("messageTs:");
        sb2.append(this.f99a);
        if (f()) {
            sb2.append(", ");
            sb2.append("topic:");
            String str4 = this.f110d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("aliasName:");
            String str5 = this.f111e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("request:");
            dx dxVar = this.f101a;
            if (dxVar == null) {
                sb2.append("null");
            } else {
                sb2.append(dxVar);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str6 = this.f112f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("category:");
            String str7 = this.f113g;
            if (str7 == null) {
                sb2.append("null");
            } else {
                sb2.append(str7);
            }
        }
        if (k()) {
            sb2.append(", ");
            sb2.append("isOnline:");
            sb2.append(this.f106a);
        }
        if (l()) {
            sb2.append(", ");
            sb2.append("regId:");
            String str8 = this.f114h;
            if (str8 == null) {
                sb2.append("null");
            } else {
                sb2.append(str8);
            }
        }
        if (m()) {
            sb2.append(", ");
            sb2.append("callbackUrl:");
            String str9 = this.f115i;
            if (str9 == null) {
                sb2.append("null");
            } else {
                sb2.append(str9);
            }
        }
        if (n()) {
            sb2.append(", ");
            sb2.append("userAccount:");
            String str10 = this.f116j;
            if (str10 == null) {
                sb2.append("null");
            } else {
                sb2.append(str10);
            }
        }
        if (o()) {
            sb2.append(", ");
            sb2.append("deviceStatus:");
            sb2.append((int) this.f105a);
        }
        if (p()) {
            sb2.append(", ");
            sb2.append("geoMsgStatus:");
            sb2.append((int) this.f108b);
        }
        if (q()) {
            sb2.append(", ");
            sb2.append("imeiMd5:");
            String str11 = this.f117k;
            if (str11 == null) {
                sb2.append("null");
            } else {
                sb2.append(str11);
            }
        }
        if (r()) {
            sb2.append(", ");
            sb2.append("deviceId:");
            String str12 = this.f118l;
            if (str12 == null) {
                sb2.append("null");
            } else {
                sb2.append(str12);
            }
        }
        if (s()) {
            sb2.append(", ");
            sb2.append("passThrough:");
            sb2.append(this.f98a);
        }
        if (t()) {
            sb2.append(", ");
            sb2.append("extra:");
            Map<String, String> map = this.f104a;
            if (map == null) {
                sb2.append("null");
            } else {
                sb2.append(map);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
