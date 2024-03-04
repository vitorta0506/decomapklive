package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class ed implements ef<ed, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f319a;

    /* renamed from: a  reason: collision with other field name */
    public dk f320a;

    /* renamed from: a  reason: collision with other field name */
    public String f321a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f322a = new BitSet(1);

    /* renamed from: b  reason: collision with other field name */
    public String f323b;

    /* renamed from: c  reason: collision with other field name */
    public String f324c;

    /* renamed from: d  reason: collision with other field name */
    public String f325d;

    /* renamed from: e  reason: collision with other field name */
    public String f326e;

    /* renamed from: f  reason: collision with other field name */
    public String f327f;

    /* renamed from: g  reason: collision with other field name */
    public String f328g;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f318a = new s2("XmPushActionUnSubscriptionResult");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36837a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36838b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36839c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36840d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36841e = new m2("", (byte) 10, 6);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36842f = new m2("", (byte) 11, 7);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36843g = new m2("", (byte) 11, 8);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36844h = new m2("", (byte) 11, 9);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36845i = new m2("", (byte) 11, 10);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(ed edVar) {
        int e10;
        int e11;
        int e12;
        int e13;
        int c10;
        int e14;
        int e15;
        int d10;
        int e16;
        if (getClass().equals(edVar.getClass())) {
            int compareTo = Boolean.valueOf(m1516a()).compareTo(Boolean.valueOf(edVar.m1516a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1516a() || (e16 = i2.e(this.f321a, edVar.f321a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1518b()).compareTo(Boolean.valueOf(edVar.m1518b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1518b() || (d10 = i2.d(this.f320a, edVar.f320a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1519c()).compareTo(Boolean.valueOf(edVar.m1519c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1519c() || (e15 = i2.e(this.f323b, edVar.f323b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(edVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e14 = i2.e(this.f324c, edVar.f324c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(edVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c10 = i2.c(this.f319a, edVar.f319a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(edVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e13 = i2.e(this.f325d, edVar.f325d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(edVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e12 = i2.e(this.f326e, edVar.f326e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(edVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (e11 = i2.e(this.f327f, edVar.f327f)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(edVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e10 = i2.e(this.f328g, edVar.f328g)) == 0) {
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
        return getClass().getName().compareTo(edVar.getClass().getName());
    }

    public String a() {
        return this.f323b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1515a() {
        if (this.f323b != null) {
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
                m1515a();
                return;
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f321a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f320a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f323b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f324c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 10) {
                        this.f319a = p2Var.d();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f325d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f326e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f327f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 11) {
                        this.f328g = p2Var.j();
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
        this.f322a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1516a() {
        return this.f321a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1517a(ed edVar) {
        if (edVar == null) {
            return false;
        }
        boolean m1516a = m1516a();
        boolean m1516a2 = edVar.m1516a();
        if ((m1516a || m1516a2) && !(m1516a && m1516a2 && this.f321a.equals(edVar.f321a))) {
            return false;
        }
        boolean m1518b = m1518b();
        boolean m1518b2 = edVar.m1518b();
        if ((m1518b || m1518b2) && !(m1518b && m1518b2 && this.f320a.m1436a(edVar.f320a))) {
            return false;
        }
        boolean m1519c = m1519c();
        boolean m1519c2 = edVar.m1519c();
        if ((m1519c || m1519c2) && !(m1519c && m1519c2 && this.f323b.equals(edVar.f323b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = edVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f324c.equals(edVar.f324c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = edVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f319a == edVar.f319a)) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = edVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f325d.equals(edVar.f325d))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = edVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f326e.equals(edVar.f326e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = edVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f327f.equals(edVar.f327f))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = edVar.i();
        if (i9 || i10) {
            return i9 && i10 && this.f328g.equals(edVar.f328g);
        }
        return true;
    }

    public String b() {
        return this.f326e;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1515a();
        p2Var.s(f318a);
        if (this.f321a != null && m1516a()) {
            p2Var.p(f36837a);
            p2Var.t(this.f321a);
            p2Var.y();
        }
        if (this.f320a != null && m1518b()) {
            p2Var.p(f36838b);
            this.f320a.b(p2Var);
            p2Var.y();
        }
        if (this.f323b != null) {
            p2Var.p(f36839c);
            p2Var.t(this.f323b);
            p2Var.y();
        }
        if (this.f324c != null && d()) {
            p2Var.p(f36840d);
            p2Var.t(this.f324c);
            p2Var.y();
        }
        if (e()) {
            p2Var.p(f36841e);
            p2Var.o(this.f319a);
            p2Var.y();
        }
        if (this.f325d != null && f()) {
            p2Var.p(f36842f);
            p2Var.t(this.f325d);
            p2Var.y();
        }
        if (this.f326e != null && g()) {
            p2Var.p(f36843g);
            p2Var.t(this.f326e);
            p2Var.y();
        }
        if (this.f327f != null && h()) {
            p2Var.p(f36844h);
            p2Var.t(this.f327f);
            p2Var.y();
        }
        if (this.f328g != null && i()) {
            p2Var.p(f36845i);
            p2Var.t(this.f328g);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1518b() {
        return this.f320a != null;
    }

    public String c() {
        return this.f328g;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1519c() {
        return this.f323b != null;
    }

    public boolean d() {
        return this.f324c != null;
    }

    public boolean e() {
        return this.f322a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ed)) {
            return m1517a((ed) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f325d != null;
    }

    public boolean g() {
        return this.f326e != null;
    }

    public boolean h() {
        return this.f327f != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f328g != null;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionUnSubscriptionResult(");
        boolean z11 = false;
        if (m1516a()) {
            sb2.append("debug:");
            String str = this.f321a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (m1518b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("target:");
            dk dkVar = this.f320a;
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
        String str2 = this.f323b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        if (d()) {
            sb2.append(", ");
            sb2.append("appId:");
            String str3 = this.f324c;
            if (str3 == null) {
                sb2.append("null");
            } else {
                sb2.append(str3);
            }
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("errorCode:");
            sb2.append(this.f319a);
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("reason:");
            String str4 = this.f325d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("topic:");
            String str5 = this.f326e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str6 = this.f327f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("category:");
            String str7 = this.f328g;
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
