package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class dv implements ef<dv, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f222a;

    /* renamed from: a  reason: collision with other field name */
    public long f223a;

    /* renamed from: a  reason: collision with other field name */
    public dk f224a;

    /* renamed from: a  reason: collision with other field name */
    public String f225a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f226a = new BitSet(5);

    /* renamed from: b  reason: collision with other field name */
    public int f227b;

    /* renamed from: b  reason: collision with other field name */
    public long f228b;

    /* renamed from: b  reason: collision with other field name */
    public String f229b;

    /* renamed from: c  reason: collision with other field name */
    public long f230c;

    /* renamed from: c  reason: collision with other field name */
    public String f231c;

    /* renamed from: d  reason: collision with other field name */
    public String f232d;

    /* renamed from: e  reason: collision with other field name */
    public String f233e;

    /* renamed from: f  reason: collision with other field name */
    public String f234f;

    /* renamed from: g  reason: collision with other field name */
    public String f235g;

    /* renamed from: h  reason: collision with other field name */
    public String f236h;

    /* renamed from: i  reason: collision with other field name */
    public String f237i;

    /* renamed from: j  reason: collision with other field name */
    public String f238j;

    /* renamed from: k  reason: collision with other field name */
    public String f239k;

    /* renamed from: l  reason: collision with other field name */
    public String f240l;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f221a = new s2("XmPushActionRegistrationResult");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36738a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36739b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36740c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36741d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36742e = new m2("", (byte) 10, 6);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36743f = new m2("", (byte) 11, 7);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36744g = new m2("", (byte) 11, 8);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36745h = new m2("", (byte) 11, 9);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36746i = new m2("", (byte) 11, 10);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36747j = new m2("", (byte) 10, 11);

    /* renamed from: k  reason: collision with root package name */
    private static final m2 f36748k = new m2("", (byte) 11, 12);

    /* renamed from: l  reason: collision with root package name */
    private static final m2 f36749l = new m2("", (byte) 11, 13);

    /* renamed from: m  reason: collision with root package name */
    private static final m2 f36750m = new m2("", (byte) 10, 14);

    /* renamed from: n  reason: collision with root package name */
    private static final m2 f36751n = new m2("", (byte) 11, 15);

    /* renamed from: o  reason: collision with root package name */
    private static final m2 f36752o = new m2("", (byte) 8, 16);

    /* renamed from: p  reason: collision with root package name */
    private static final m2 f36753p = new m2("", (byte) 11, 17);

    /* renamed from: q  reason: collision with root package name */
    private static final m2 f36754q = new m2("", (byte) 8, 18);

    /* renamed from: r  reason: collision with root package name */
    private static final m2 f36755r = new m2("", (byte) 11, 19);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dv dvVar) {
        int e10;
        int b10;
        int e11;
        int b11;
        int e12;
        int c10;
        int e13;
        int e14;
        int c11;
        int e15;
        int e16;
        int e17;
        int e18;
        int c12;
        int e19;
        int e20;
        int d10;
        int e21;
        if (getClass().equals(dvVar.getClass())) {
            int compareTo = Boolean.valueOf(m1486a()).compareTo(Boolean.valueOf(dvVar.m1486a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1486a() || (e21 = i2.e(this.f225a, dvVar.f225a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1488b()).compareTo(Boolean.valueOf(dvVar.m1488b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1488b() || (d10 = i2.d(this.f224a, dvVar.f224a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1489c()).compareTo(Boolean.valueOf(dvVar.m1489c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1489c() || (e20 = i2.e(this.f229b, dvVar.f229b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dvVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e19 = i2.e(this.f231c, dvVar.f231c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dvVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c12 = i2.c(this.f223a, dvVar.f223a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dvVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e18 = i2.e(this.f232d, dvVar.f232d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dvVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e17 = i2.e(this.f233e, dvVar.f233e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dvVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (e16 = i2.e(this.f234f, dvVar.f234f)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dvVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e15 = i2.e(this.f235g, dvVar.f235g)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(dvVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (c11 = i2.c(this.f228b, dvVar.f228b)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(dvVar.k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!k() || (e14 = i2.e(this.f236h, dvVar.f236h)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(dvVar.l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!l() || (e13 = i2.e(this.f237i, dvVar.f237i)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(dvVar.m()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m() || (c10 = i2.c(this.f230c, dvVar.f230c)) == 0) {
                                                                int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(dvVar.n()));
                                                                if (compareTo14 != 0) {
                                                                    return compareTo14;
                                                                }
                                                                if (!n() || (e12 = i2.e(this.f238j, dvVar.f238j)) == 0) {
                                                                    int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(dvVar.o()));
                                                                    if (compareTo15 != 0) {
                                                                        return compareTo15;
                                                                    }
                                                                    if (!o() || (b11 = i2.b(this.f222a, dvVar.f222a)) == 0) {
                                                                        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(dvVar.p()));
                                                                        if (compareTo16 != 0) {
                                                                            return compareTo16;
                                                                        }
                                                                        if (!p() || (e11 = i2.e(this.f239k, dvVar.f239k)) == 0) {
                                                                            int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(dvVar.q()));
                                                                            if (compareTo17 != 0) {
                                                                                return compareTo17;
                                                                            }
                                                                            if (!q() || (b10 = i2.b(this.f227b, dvVar.f227b)) == 0) {
                                                                                int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(dvVar.r()));
                                                                                if (compareTo18 != 0) {
                                                                                    return compareTo18;
                                                                                }
                                                                                if (!r() || (e10 = i2.e(this.f240l, dvVar.f240l)) == 0) {
                                                                                    return 0;
                                                                                }
                                                                                return e10;
                                                                            }
                                                                            return b10;
                                                                        }
                                                                        return e11;
                                                                    }
                                                                    return b11;
                                                                }
                                                                return e12;
                                                            }
                                                            return c10;
                                                        }
                                                        return e13;
                                                    }
                                                    return e14;
                                                }
                                                return c11;
                                            }
                                            return e15;
                                        }
                                        return e16;
                                    }
                                    return e17;
                                }
                                return e18;
                            }
                            return c12;
                        }
                        return e19;
                    }
                    return e20;
                }
                return d10;
            }
            return e21;
        }
        return getClass().getName().compareTo(dvVar.getClass().getName());
    }

    public long a() {
        return this.f223a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m1484a() {
        return this.f229b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1485a() {
        if (this.f229b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f231c != null) {
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
                    m1485a();
                    return;
                }
                throw new eq("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f225a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f224a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f229b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f231c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 10) {
                        this.f223a = p2Var.d();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f232d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f233e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f234f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 11) {
                        this.f235g = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 11:
                    if (b10 == 10) {
                        this.f228b = p2Var.d();
                        b(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 12:
                    if (b10 == 11) {
                        this.f236h = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 13:
                    if (b10 == 11) {
                        this.f237i = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 14:
                    if (b10 == 10) {
                        this.f230c = p2Var.d();
                        c(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 15:
                    if (b10 == 11) {
                        this.f238j = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 16:
                    if (b10 == 8) {
                        this.f222a = p2Var.c();
                        d(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 17:
                    if (b10 == 11) {
                        this.f239k = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 18:
                    if (b10 == 8) {
                        this.f227b = p2Var.c();
                        e(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 19:
                    if (b10 == 11) {
                        this.f240l = p2Var.j();
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
        this.f226a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1486a() {
        return this.f225a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1487a(dv dvVar) {
        if (dvVar == null) {
            return false;
        }
        boolean m1486a = m1486a();
        boolean m1486a2 = dvVar.m1486a();
        if ((m1486a || m1486a2) && !(m1486a && m1486a2 && this.f225a.equals(dvVar.f225a))) {
            return false;
        }
        boolean m1488b = m1488b();
        boolean m1488b2 = dvVar.m1488b();
        if ((m1488b || m1488b2) && !(m1488b && m1488b2 && this.f224a.m1436a(dvVar.f224a))) {
            return false;
        }
        boolean m1489c = m1489c();
        boolean m1489c2 = dvVar.m1489c();
        if ((m1489c || m1489c2) && !(m1489c && m1489c2 && this.f229b.equals(dvVar.f229b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dvVar.d();
        if (((d10 || d11) && !(d10 && d11 && this.f231c.equals(dvVar.f231c))) || this.f223a != dvVar.f223a) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dvVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f232d.equals(dvVar.f232d))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dvVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f233e.equals(dvVar.f233e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dvVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f234f.equals(dvVar.f234f))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = dvVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f235g.equals(dvVar.f235g))) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = dvVar.j();
        if ((j10 || j11) && !(j10 && j11 && this.f228b == dvVar.f228b)) {
            return false;
        }
        boolean k10 = k();
        boolean k11 = dvVar.k();
        if ((k10 || k11) && !(k10 && k11 && this.f236h.equals(dvVar.f236h))) {
            return false;
        }
        boolean l10 = l();
        boolean l11 = dvVar.l();
        if ((l10 || l11) && !(l10 && l11 && this.f237i.equals(dvVar.f237i))) {
            return false;
        }
        boolean m10 = m();
        boolean m11 = dvVar.m();
        if ((m10 || m11) && !(m10 && m11 && this.f230c == dvVar.f230c)) {
            return false;
        }
        boolean n9 = n();
        boolean n10 = dvVar.n();
        if ((n9 || n10) && !(n9 && n10 && this.f238j.equals(dvVar.f238j))) {
            return false;
        }
        boolean o10 = o();
        boolean o11 = dvVar.o();
        if ((o10 || o11) && !(o10 && o11 && this.f222a == dvVar.f222a)) {
            return false;
        }
        boolean p10 = p();
        boolean p11 = dvVar.p();
        if ((p10 || p11) && !(p10 && p11 && this.f239k.equals(dvVar.f239k))) {
            return false;
        }
        boolean q10 = q();
        boolean q11 = dvVar.q();
        if ((q10 || q11) && !(q10 && q11 && this.f227b == dvVar.f227b)) {
            return false;
        }
        boolean r10 = r();
        boolean r11 = dvVar.r();
        if (r10 || r11) {
            return r10 && r11 && this.f240l.equals(dvVar.f240l);
        }
        return true;
    }

    public String b() {
        return this.f234f;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1485a();
        p2Var.s(f221a);
        if (this.f225a != null && m1486a()) {
            p2Var.p(f36738a);
            p2Var.t(this.f225a);
            p2Var.y();
        }
        if (this.f224a != null && m1488b()) {
            p2Var.p(f36739b);
            this.f224a.b(p2Var);
            p2Var.y();
        }
        if (this.f229b != null) {
            p2Var.p(f36740c);
            p2Var.t(this.f229b);
            p2Var.y();
        }
        if (this.f231c != null) {
            p2Var.p(f36741d);
            p2Var.t(this.f231c);
            p2Var.y();
        }
        p2Var.p(f36742e);
        p2Var.o(this.f223a);
        p2Var.y();
        if (this.f232d != null && f()) {
            p2Var.p(f36743f);
            p2Var.t(this.f232d);
            p2Var.y();
        }
        if (this.f233e != null && g()) {
            p2Var.p(f36744g);
            p2Var.t(this.f233e);
            p2Var.y();
        }
        if (this.f234f != null && h()) {
            p2Var.p(f36745h);
            p2Var.t(this.f234f);
            p2Var.y();
        }
        if (this.f235g != null && i()) {
            p2Var.p(f36746i);
            p2Var.t(this.f235g);
            p2Var.y();
        }
        if (j()) {
            p2Var.p(f36747j);
            p2Var.o(this.f228b);
            p2Var.y();
        }
        if (this.f236h != null && k()) {
            p2Var.p(f36748k);
            p2Var.t(this.f236h);
            p2Var.y();
        }
        if (this.f237i != null && l()) {
            p2Var.p(f36749l);
            p2Var.t(this.f237i);
            p2Var.y();
        }
        if (m()) {
            p2Var.p(f36750m);
            p2Var.o(this.f230c);
            p2Var.y();
        }
        if (this.f238j != null && n()) {
            p2Var.p(f36751n);
            p2Var.t(this.f238j);
            p2Var.y();
        }
        if (o()) {
            p2Var.p(f36752o);
            p2Var.n(this.f222a);
            p2Var.y();
        }
        if (this.f239k != null && p()) {
            p2Var.p(f36753p);
            p2Var.t(this.f239k);
            p2Var.y();
        }
        if (q()) {
            p2Var.p(f36754q);
            p2Var.n(this.f227b);
            p2Var.y();
        }
        if (this.f240l != null && r()) {
            p2Var.p(f36755r);
            p2Var.t(this.f240l);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f226a.set(1, z10);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1488b() {
        return this.f224a != null;
    }

    public String c() {
        return this.f235g;
    }

    public void c(boolean z10) {
        this.f226a.set(2, z10);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1489c() {
        return this.f229b != null;
    }

    public void d(boolean z10) {
        this.f226a.set(3, z10);
    }

    public boolean d() {
        return this.f231c != null;
    }

    public void e(boolean z10) {
        this.f226a.set(4, z10);
    }

    public boolean e() {
        return this.f226a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dv)) {
            return m1487a((dv) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f232d != null;
    }

    public boolean g() {
        return this.f233e != null;
    }

    public boolean h() {
        return this.f234f != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f235g != null;
    }

    public boolean j() {
        return this.f226a.get(1);
    }

    public boolean k() {
        return this.f236h != null;
    }

    public boolean l() {
        return this.f237i != null;
    }

    public boolean m() {
        return this.f226a.get(2);
    }

    public boolean n() {
        return this.f238j != null;
    }

    public boolean o() {
        return this.f226a.get(3);
    }

    public boolean p() {
        return this.f239k != null;
    }

    public boolean q() {
        return this.f226a.get(4);
    }

    public boolean r() {
        return this.f240l != null;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionRegistrationResult(");
        boolean z11 = false;
        if (m1486a()) {
            sb2.append("debug:");
            String str = this.f225a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (m1488b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("target:");
            dk dkVar = this.f224a;
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
        String str2 = this.f229b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(com.xiaomi.push.service.x.b(str2));
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f231c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("errorCode:");
        sb2.append(this.f223a);
        if (f()) {
            sb2.append(", ");
            sb2.append("reason:");
            String str4 = this.f232d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("regId:");
            String str5 = this.f233e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str6 = this.f235g;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("registeredAt:");
            sb2.append(this.f228b);
        }
        if (k()) {
            sb2.append(", ");
            sb2.append("aliasName:");
            String str7 = this.f236h;
            if (str7 == null) {
                sb2.append("null");
            } else {
                sb2.append(str7);
            }
        }
        if (l()) {
            sb2.append(", ");
            sb2.append("clientId:");
            String str8 = this.f237i;
            if (str8 == null) {
                sb2.append("null");
            } else {
                sb2.append(str8);
            }
        }
        if (m()) {
            sb2.append(", ");
            sb2.append("costTime:");
            sb2.append(this.f230c);
        }
        if (n()) {
            sb2.append(", ");
            sb2.append("appVersion:");
            String str9 = this.f238j;
            if (str9 == null) {
                sb2.append("null");
            } else {
                sb2.append(str9);
            }
        }
        if (o()) {
            sb2.append(", ");
            sb2.append("pushSdkVersionCode:");
            sb2.append(this.f222a);
        }
        if (p()) {
            sb2.append(", ");
            sb2.append("hybridPushEndpoint:");
            String str10 = this.f239k;
            if (str10 == null) {
                sb2.append("null");
            } else {
                sb2.append(str10);
            }
        }
        if (q()) {
            sb2.append(", ");
            sb2.append("appVersionCode:");
            sb2.append(this.f227b);
        }
        if (r()) {
            sb2.append(", ");
            sb2.append("region:");
            String str11 = this.f240l;
            if (str11 == null) {
                sb2.append("null");
            } else {
                sb2.append(str11);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
