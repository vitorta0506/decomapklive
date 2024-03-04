package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class dz implements ef<dz, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f274a;

    /* renamed from: a  reason: collision with other field name */
    public dk f275a;

    /* renamed from: a  reason: collision with other field name */
    public String f276a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f277a = new BitSet(1);

    /* renamed from: b  reason: collision with other field name */
    public String f278b;

    /* renamed from: c  reason: collision with other field name */
    public String f279c;

    /* renamed from: d  reason: collision with other field name */
    public String f280d;

    /* renamed from: e  reason: collision with other field name */
    public String f281e;

    /* renamed from: f  reason: collision with other field name */
    public String f282f;

    /* renamed from: g  reason: collision with other field name */
    public String f283g;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f273a = new s2("XmPushActionSubscriptionResult");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36783a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36784b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36785c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36786d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36787e = new m2("", (byte) 10, 6);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36788f = new m2("", (byte) 11, 7);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36789g = new m2("", (byte) 11, 8);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36790h = new m2("", (byte) 11, 9);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36791i = new m2("", (byte) 11, 10);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dz dzVar) {
        int e10;
        int e11;
        int e12;
        int e13;
        int c10;
        int e14;
        int e15;
        int d10;
        int e16;
        if (getClass().equals(dzVar.getClass())) {
            int compareTo = Boolean.valueOf(m1504a()).compareTo(Boolean.valueOf(dzVar.m1504a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1504a() || (e16 = i2.e(this.f276a, dzVar.f276a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1506b()).compareTo(Boolean.valueOf(dzVar.m1506b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1506b() || (d10 = i2.d(this.f275a, dzVar.f275a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1507c()).compareTo(Boolean.valueOf(dzVar.m1507c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1507c() || (e15 = i2.e(this.f278b, dzVar.f278b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dzVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e14 = i2.e(this.f279c, dzVar.f279c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dzVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c10 = i2.c(this.f274a, dzVar.f274a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dzVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e13 = i2.e(this.f280d, dzVar.f280d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dzVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e12 = i2.e(this.f281e, dzVar.f281e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dzVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (e11 = i2.e(this.f282f, dzVar.f282f)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dzVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e10 = i2.e(this.f283g, dzVar.f283g)) == 0) {
                                                return 0;
                                            }
                                            return e10;
                                        }
                                        return e11;
                                    }
                                    return e12;
                                }
                                return e13;
                            }
                            return c10;
                        }
                        return e14;
                    }
                    return e15;
                }
                return d10;
            }
            return e16;
        }
        return getClass().getName().compareTo(dzVar.getClass().getName());
    }

    public String a() {
        return this.f278b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1503a() {
        if (this.f278b != null) {
            return;
        }
        throw new eq("Required field 'id' was not present! Struct: " + toString());
    }

    @Override // com.xiaomi.push.ef
    public void a(p2 p2Var) {
        p2Var.i();
        while (true) {
            m2 e10 = p2Var.e();
            byte b10 = e10.f36993b;
            if (b10 == 0) {
                p2Var.C();
                m1503a();
                return;
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f276a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f275a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f278b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f279c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 10) {
                        this.f274a = p2Var.d();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f280d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f281e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f282f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 11) {
                        this.f283g = p2Var.j();
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
        this.f277a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1504a() {
        return this.f276a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1505a(dz dzVar) {
        if (dzVar == null) {
            return false;
        }
        boolean m1504a = m1504a();
        boolean m1504a2 = dzVar.m1504a();
        if ((m1504a || m1504a2) && !(m1504a && m1504a2 && this.f276a.equals(dzVar.f276a))) {
            return false;
        }
        boolean m1506b = m1506b();
        boolean m1506b2 = dzVar.m1506b();
        if ((m1506b || m1506b2) && !(m1506b && m1506b2 && this.f275a.m1436a(dzVar.f275a))) {
            return false;
        }
        boolean m1507c = m1507c();
        boolean m1507c2 = dzVar.m1507c();
        if ((m1507c || m1507c2) && !(m1507c && m1507c2 && this.f278b.equals(dzVar.f278b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dzVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f279c.equals(dzVar.f279c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = dzVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f274a == dzVar.f274a)) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dzVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f280d.equals(dzVar.f280d))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dzVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f281e.equals(dzVar.f281e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dzVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f282f.equals(dzVar.f282f))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = dzVar.i();
        if (i9 || i10) {
            return i9 && i10 && this.f283g.equals(dzVar.f283g);
        }
        return true;
    }

    public String b() {
        return this.f281e;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1503a();
        p2Var.s(f273a);
        if (this.f276a != null && m1504a()) {
            p2Var.p(f36783a);
            p2Var.t(this.f276a);
            p2Var.y();
        }
        if (this.f275a != null && m1506b()) {
            p2Var.p(f36784b);
            this.f275a.b(p2Var);
            p2Var.y();
        }
        if (this.f278b != null) {
            p2Var.p(f36785c);
            p2Var.t(this.f278b);
            p2Var.y();
        }
        if (this.f279c != null && d()) {
            p2Var.p(f36786d);
            p2Var.t(this.f279c);
            p2Var.y();
        }
        if (e()) {
            p2Var.p(f36787e);
            p2Var.o(this.f274a);
            p2Var.y();
        }
        if (this.f280d != null && f()) {
            p2Var.p(f36788f);
            p2Var.t(this.f280d);
            p2Var.y();
        }
        if (this.f281e != null && g()) {
            p2Var.p(f36789g);
            p2Var.t(this.f281e);
            p2Var.y();
        }
        if (this.f282f != null && h()) {
            p2Var.p(f36790h);
            p2Var.t(this.f282f);
            p2Var.y();
        }
        if (this.f283g != null && i()) {
            p2Var.p(f36791i);
            p2Var.t(this.f283g);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1506b() {
        return this.f275a != null;
    }

    public String c() {
        return this.f283g;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1507c() {
        return this.f278b != null;
    }

    public boolean d() {
        return this.f279c != null;
    }

    public boolean e() {
        return this.f277a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dz)) {
            return m1505a((dz) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f280d != null;
    }

    public boolean g() {
        return this.f281e != null;
    }

    public boolean h() {
        return this.f282f != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f283g != null;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionSubscriptionResult(");
        boolean z11 = false;
        if (m1504a()) {
            sb2.append("debug:");
            String str = this.f276a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (m1506b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("target:");
            dk dkVar = this.f275a;
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
        String str2 = this.f278b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        if (d()) {
            sb2.append(", ");
            sb2.append("appId:");
            String str3 = this.f279c;
            if (str3 == null) {
                sb2.append("null");
            } else {
                sb2.append(str3);
            }
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("errorCode:");
            sb2.append(this.f274a);
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("reason:");
            String str4 = this.f280d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("topic:");
            String str5 = this.f281e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str6 = this.f282f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("category:");
            String str7 = this.f283g;
            if (str7 == null) {
                sb2.append("null");
            } else {
                sb2.append(str7);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
