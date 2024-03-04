package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class eb implements ef<eb, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f299a;

    /* renamed from: a  reason: collision with other field name */
    public dk f300a;

    /* renamed from: a  reason: collision with other field name */
    public String f301a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f302a = new BitSet(3);

    /* renamed from: b  reason: collision with other field name */
    public long f303b;

    /* renamed from: b  reason: collision with other field name */
    public String f304b;

    /* renamed from: c  reason: collision with other field name */
    public long f305c;

    /* renamed from: c  reason: collision with other field name */
    public String f306c;

    /* renamed from: d  reason: collision with other field name */
    public String f307d;

    /* renamed from: e  reason: collision with other field name */
    public String f308e;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f298a = new s2("XmPushActionUnRegistrationResult");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36820a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36821b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36822c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36823d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36824e = new m2("", (byte) 10, 6);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36825f = new m2("", (byte) 11, 7);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36826g = new m2("", (byte) 11, 8);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36827h = new m2("", (byte) 10, 9);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36828i = new m2("", (byte) 10, 10);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(eb ebVar) {
        int c10;
        int c11;
        int e10;
        int e11;
        int c12;
        int e12;
        int e13;
        int d10;
        int e14;
        if (getClass().equals(ebVar.getClass())) {
            int compareTo = Boolean.valueOf(m1511a()).compareTo(Boolean.valueOf(ebVar.m1511a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1511a() || (e14 = i2.e(this.f301a, ebVar.f301a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(ebVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (d10 = i2.d(this.f300a, ebVar.f300a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(ebVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e13 = i2.e(this.f304b, ebVar.f304b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(ebVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e12 = i2.e(this.f306c, ebVar.f306c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(ebVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c12 = i2.c(this.f299a, ebVar.f299a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(ebVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e11 = i2.e(this.f307d, ebVar.f307d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(ebVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e10 = i2.e(this.f308e, ebVar.f308e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(ebVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (c11 = i2.c(this.f303b, ebVar.f303b)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(ebVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (c10 = i2.c(this.f305c, ebVar.f305c)) == 0) {
                                                return 0;
                                            }
                                            return c10;
                                        }
                                        return c11;
                                    }
                                    return e10;
                                }
                                return e11;
                            }
                            return c12;
                        }
                        return e12;
                    }
                    return e13;
                }
                return d10;
            }
            return e14;
        }
        return getClass().getName().compareTo(ebVar.getClass().getName());
    }

    public String a() {
        return this.f308e;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1510a() {
        if (this.f304b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f306c != null) {
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
                    m1510a();
                    return;
                }
                throw new eq("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f301a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f300a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f304b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f306c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 10) {
                        this.f299a = p2Var.d();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f307d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f308e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 10) {
                        this.f303b = p2Var.d();
                        b(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 10) {
                        this.f305c = p2Var.d();
                        c(true);
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
        this.f302a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1511a() {
        return this.f301a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1512a(eb ebVar) {
        if (ebVar == null) {
            return false;
        }
        boolean m1511a = m1511a();
        boolean m1511a2 = ebVar.m1511a();
        if ((m1511a || m1511a2) && !(m1511a && m1511a2 && this.f301a.equals(ebVar.f301a))) {
            return false;
        }
        boolean b10 = b();
        boolean b11 = ebVar.b();
        if ((b10 || b11) && !(b10 && b11 && this.f300a.m1436a(ebVar.f300a))) {
            return false;
        }
        boolean c10 = c();
        boolean c11 = ebVar.c();
        if ((c10 || c11) && !(c10 && c11 && this.f304b.equals(ebVar.f304b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = ebVar.d();
        if (((d10 || d11) && !(d10 && d11 && this.f306c.equals(ebVar.f306c))) || this.f299a != ebVar.f299a) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = ebVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f307d.equals(ebVar.f307d))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = ebVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f308e.equals(ebVar.f308e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = ebVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f303b == ebVar.f303b)) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = ebVar.i();
        if (i9 || i10) {
            return i9 && i10 && this.f305c == ebVar.f305c;
        }
        return true;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1510a();
        p2Var.s(f298a);
        if (this.f301a != null && m1511a()) {
            p2Var.p(f36820a);
            p2Var.t(this.f301a);
            p2Var.y();
        }
        if (this.f300a != null && b()) {
            p2Var.p(f36821b);
            this.f300a.b(p2Var);
            p2Var.y();
        }
        if (this.f304b != null) {
            p2Var.p(f36822c);
            p2Var.t(this.f304b);
            p2Var.y();
        }
        if (this.f306c != null) {
            p2Var.p(f36823d);
            p2Var.t(this.f306c);
            p2Var.y();
        }
        p2Var.p(f36824e);
        p2Var.o(this.f299a);
        p2Var.y();
        if (this.f307d != null && f()) {
            p2Var.p(f36825f);
            p2Var.t(this.f307d);
            p2Var.y();
        }
        if (this.f308e != null && g()) {
            p2Var.p(f36826g);
            p2Var.t(this.f308e);
            p2Var.y();
        }
        if (h()) {
            p2Var.p(f36827h);
            p2Var.o(this.f303b);
            p2Var.y();
        }
        if (i()) {
            p2Var.p(f36828i);
            p2Var.o(this.f305c);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f302a.set(1, z10);
    }

    public boolean b() {
        return this.f300a != null;
    }

    public void c(boolean z10) {
        this.f302a.set(2, z10);
    }

    public boolean c() {
        return this.f304b != null;
    }

    public boolean d() {
        return this.f306c != null;
    }

    public boolean e() {
        return this.f302a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof eb)) {
            return m1512a((eb) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f307d != null;
    }

    public boolean g() {
        return this.f308e != null;
    }

    public boolean h() {
        return this.f302a.get(1);
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f302a.get(2);
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionUnRegistrationResult(");
        boolean z11 = false;
        if (m1511a()) {
            sb2.append("debug:");
            String str = this.f301a;
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
            dk dkVar = this.f300a;
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
        String str2 = this.f304b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f306c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("errorCode:");
        sb2.append(this.f299a);
        if (f()) {
            sb2.append(", ");
            sb2.append("reason:");
            String str4 = this.f307d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str5 = this.f308e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("unRegisteredAt:");
            sb2.append(this.f303b);
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("costTime:");
            sb2.append(this.f305c);
        }
        sb2.append(")");
        return sb2.toString();
    }
}
