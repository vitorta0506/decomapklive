package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class dg implements ef<dg, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f44a;

    /* renamed from: a  reason: collision with other field name */
    public long f45a;

    /* renamed from: a  reason: collision with other field name */
    public String f46a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f47a = new BitSet(6);

    /* renamed from: a  reason: collision with other field name */
    public boolean f48a;

    /* renamed from: b  reason: collision with other field name */
    public int f49b;

    /* renamed from: b  reason: collision with other field name */
    public boolean f50b;

    /* renamed from: c  reason: collision with other field name */
    public int f51c;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f43a = new s2("OnlineConfigItem");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36588a = new m2("", (byte) 8, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36589b = new m2("", (byte) 8, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36590c = new m2("", (byte) 2, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36591d = new m2("", (byte) 8, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36592e = new m2("", (byte) 10, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36593f = new m2("", (byte) 11, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36594g = new m2("", (byte) 2, 7);

    public int a() {
        return this.f44a;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dg dgVar) {
        int k10;
        int e10;
        int c10;
        int b10;
        int k11;
        int b11;
        int b12;
        if (getClass().equals(dgVar.getClass())) {
            int compareTo = Boolean.valueOf(m1412a()).compareTo(Boolean.valueOf(dgVar.m1412a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1412a() || (b12 = i2.b(this.f44a, dgVar.f44a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1414b()).compareTo(Boolean.valueOf(dgVar.m1414b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1414b() || (b11 = i2.b(this.f49b, dgVar.f49b)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1415c()).compareTo(Boolean.valueOf(dgVar.m1415c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1415c() || (k11 = i2.k(this.f48a, dgVar.f48a)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dgVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (b10 = i2.b(this.f51c, dgVar.f51c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dgVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c10 = i2.c(this.f45a, dgVar.f45a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dgVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e10 = i2.e(this.f46a, dgVar.f46a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dgVar.h()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!h() || (k10 = i2.k(this.f50b, dgVar.f50b)) == 0) {
                                        return 0;
                                    }
                                    return k10;
                                }
                                return e10;
                            }
                            return c10;
                        }
                        return b10;
                    }
                    return k11;
                }
                return b11;
            }
            return b12;
        }
        return getClass().getName().compareTo(dgVar.getClass().getName());
    }

    /* renamed from: a  reason: collision with other method in class */
    public long m1409a() {
        return this.f45a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m1410a() {
        return this.f46a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1411a() {
    }

    @Override // com.xiaomi.push.ef
    public void a(p2 p2Var) {
        p2Var.i();
        while (true) {
            m2 e10 = p2Var.e();
            byte b10 = e10.f36993b;
            if (b10 == 0) {
                p2Var.C();
                m1411a();
                return;
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 8) {
                        this.f44a = p2Var.c();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 8) {
                        this.f49b = p2Var.c();
                        b(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 2) {
                        this.f48a = p2Var.x();
                        c(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 8) {
                        this.f51c = p2Var.c();
                        d(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 10) {
                        this.f45a = p2Var.d();
                        e(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 11) {
                        this.f46a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 2) {
                        this.f50b = p2Var.x();
                        f(true);
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
        this.f47a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1412a() {
        return this.f47a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1413a(dg dgVar) {
        if (dgVar == null) {
            return false;
        }
        boolean m1412a = m1412a();
        boolean m1412a2 = dgVar.m1412a();
        if ((m1412a || m1412a2) && !(m1412a && m1412a2 && this.f44a == dgVar.f44a)) {
            return false;
        }
        boolean m1414b = m1414b();
        boolean m1414b2 = dgVar.m1414b();
        if ((m1414b || m1414b2) && !(m1414b && m1414b2 && this.f49b == dgVar.f49b)) {
            return false;
        }
        boolean m1415c = m1415c();
        boolean m1415c2 = dgVar.m1415c();
        if ((m1415c || m1415c2) && !(m1415c && m1415c2 && this.f48a == dgVar.f48a)) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dgVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f51c == dgVar.f51c)) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = dgVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f45a == dgVar.f45a)) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dgVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f46a.equals(dgVar.f46a))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dgVar.h();
        if (h10 || h11) {
            return h10 && h11 && this.f50b == dgVar.f50b;
        }
        return true;
    }

    public int b() {
        return this.f49b;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1411a();
        p2Var.s(f43a);
        if (m1412a()) {
            p2Var.p(f36588a);
            p2Var.n(this.f44a);
            p2Var.y();
        }
        if (m1414b()) {
            p2Var.p(f36589b);
            p2Var.n(this.f49b);
            p2Var.y();
        }
        if (m1415c()) {
            p2Var.p(f36590c);
            p2Var.w(this.f48a);
            p2Var.y();
        }
        if (d()) {
            p2Var.p(f36591d);
            p2Var.n(this.f51c);
            p2Var.y();
        }
        if (e()) {
            p2Var.p(f36592e);
            p2Var.o(this.f45a);
            p2Var.y();
        }
        if (this.f46a != null && f()) {
            p2Var.p(f36593f);
            p2Var.t(this.f46a);
            p2Var.y();
        }
        if (h()) {
            p2Var.p(f36594g);
            p2Var.w(this.f50b);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f47a.set(1, z10);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1414b() {
        return this.f47a.get(1);
    }

    public int c() {
        return this.f51c;
    }

    public void c(boolean z10) {
        this.f47a.set(2, z10);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1415c() {
        return this.f47a.get(2);
    }

    public void d(boolean z10) {
        this.f47a.set(3, z10);
    }

    public boolean d() {
        return this.f47a.get(3);
    }

    public void e(boolean z10) {
        this.f47a.set(4, z10);
    }

    public boolean e() {
        return this.f47a.get(4);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dg)) {
            return m1413a((dg) obj);
        }
        return false;
    }

    public void f(boolean z10) {
        this.f47a.set(5, z10);
    }

    public boolean f() {
        return this.f46a != null;
    }

    public boolean g() {
        return this.f50b;
    }

    public boolean h() {
        return this.f47a.get(5);
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("OnlineConfigItem(");
        boolean z11 = false;
        if (m1412a()) {
            sb2.append("key:");
            sb2.append(this.f44a);
            z10 = false;
        } else {
            z10 = true;
        }
        if (m1414b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("type:");
            sb2.append(this.f49b);
            z10 = false;
        }
        if (m1415c()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("clear:");
            sb2.append(this.f48a);
            z10 = false;
        }
        if (d()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("intValue:");
            sb2.append(this.f51c);
            z10 = false;
        }
        if (e()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("longValue:");
            sb2.append(this.f45a);
            z10 = false;
        }
        if (f()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("stringValue:");
            String str = this.f46a;
            if (str == null) {
                str = "null";
            }
            sb2.append(str);
        } else {
            z11 = z10;
        }
        if (h()) {
            if (!z11) {
                sb2.append(", ");
            }
            sb2.append("boolValue:");
            sb2.append(this.f50b);
        }
        sb2.append(")");
        return sb2.toString();
    }
}
