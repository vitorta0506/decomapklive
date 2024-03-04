package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class ec implements ef<ec, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public dk f310a;

    /* renamed from: a  reason: collision with other field name */
    public String f311a;

    /* renamed from: a  reason: collision with other field name */
    public List<String> f312a;

    /* renamed from: b  reason: collision with other field name */
    public String f313b;

    /* renamed from: c  reason: collision with other field name */
    public String f314c;

    /* renamed from: d  reason: collision with other field name */
    public String f315d;

    /* renamed from: e  reason: collision with other field name */
    public String f316e;

    /* renamed from: f  reason: collision with other field name */
    public String f317f;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f309a = new s2("XmPushActionUnSubscription");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36829a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36830b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36831c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36832d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36833e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36834f = new m2("", (byte) 11, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36835g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36836h = new m2("", (byte) 15, 8);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(ec ecVar) {
        int g10;
        int e10;
        int e11;
        int e12;
        int e13;
        int e14;
        int d10;
        int e15;
        if (getClass().equals(ecVar.getClass())) {
            int compareTo = Boolean.valueOf(m1513a()).compareTo(Boolean.valueOf(ecVar.m1513a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1513a() || (e15 = i2.e(this.f311a, ecVar.f311a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(ecVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (d10 = i2.d(this.f310a, ecVar.f310a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(ecVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e14 = i2.e(this.f313b, ecVar.f313b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(ecVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e13 = i2.e(this.f314c, ecVar.f314c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(ecVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (e12 = i2.e(this.f315d, ecVar.f315d)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(ecVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e11 = i2.e(this.f316e, ecVar.f316e)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(ecVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e10 = i2.e(this.f317f, ecVar.f317f)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(ecVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (g10 = i2.g(this.f312a, ecVar.f312a)) == 0) {
                                            return 0;
                                        }
                                        return g10;
                                    }
                                    return e10;
                                }
                                return e11;
                            }
                            return e12;
                        }
                        return e13;
                    }
                    return e14;
                }
                return d10;
            }
            return e15;
        }
        return getClass().getName().compareTo(ecVar.getClass().getName());
    }

    public ec a(String str) {
        this.f313b = str;
        return this;
    }

    public void a() {
        if (this.f313b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f314c == null) {
            throw new eq("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f315d != null) {
        } else {
            throw new eq("Required field 'topic' was not present! Struct: " + toString());
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
                a();
                return;
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f311a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f310a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f313b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f314c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f315d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 11) {
                        this.f316e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f317f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 15) {
                        n2 f10 = p2Var.f();
                        this.f312a = new ArrayList(f10.f37002b);
                        for (int i9 = 0; i9 < f10.f37002b; i9++) {
                            this.f312a.add(p2Var.j());
                        }
                        p2Var.F();
                        continue;
                        p2Var.D();
                    }
                    break;
            }
            q2.a(p2Var, b10);
            p2Var.D();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1513a() {
        return this.f311a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1514a(ec ecVar) {
        if (ecVar == null) {
            return false;
        }
        boolean m1513a = m1513a();
        boolean m1513a2 = ecVar.m1513a();
        if ((m1513a || m1513a2) && !(m1513a && m1513a2 && this.f311a.equals(ecVar.f311a))) {
            return false;
        }
        boolean b10 = b();
        boolean b11 = ecVar.b();
        if ((b10 || b11) && !(b10 && b11 && this.f310a.m1436a(ecVar.f310a))) {
            return false;
        }
        boolean c10 = c();
        boolean c11 = ecVar.c();
        if ((c10 || c11) && !(c10 && c11 && this.f313b.equals(ecVar.f313b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = ecVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f314c.equals(ecVar.f314c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = ecVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f315d.equals(ecVar.f315d))) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = ecVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f316e.equals(ecVar.f316e))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = ecVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f317f.equals(ecVar.f317f))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = ecVar.h();
        if (h10 || h11) {
            return h10 && h11 && this.f312a.equals(ecVar.f312a);
        }
        return true;
    }

    public ec b(String str) {
        this.f314c = str;
        return this;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        a();
        p2Var.s(f309a);
        if (this.f311a != null && m1513a()) {
            p2Var.p(f36829a);
            p2Var.t(this.f311a);
            p2Var.y();
        }
        if (this.f310a != null && b()) {
            p2Var.p(f36830b);
            this.f310a.b(p2Var);
            p2Var.y();
        }
        if (this.f313b != null) {
            p2Var.p(f36831c);
            p2Var.t(this.f313b);
            p2Var.y();
        }
        if (this.f314c != null) {
            p2Var.p(f36832d);
            p2Var.t(this.f314c);
            p2Var.y();
        }
        if (this.f315d != null) {
            p2Var.p(f36833e);
            p2Var.t(this.f315d);
            p2Var.y();
        }
        if (this.f316e != null && f()) {
            p2Var.p(f36834f);
            p2Var.t(this.f316e);
            p2Var.y();
        }
        if (this.f317f != null && g()) {
            p2Var.p(f36835g);
            p2Var.t(this.f317f);
            p2Var.y();
        }
        if (this.f312a != null && h()) {
            p2Var.p(f36836h);
            p2Var.q(new n2((byte) 11, this.f312a.size()));
            for (String str : this.f312a) {
                p2Var.t(str);
            }
            p2Var.B();
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public boolean b() {
        return this.f310a != null;
    }

    public ec c(String str) {
        this.f315d = str;
        return this;
    }

    public boolean c() {
        return this.f313b != null;
    }

    public ec d(String str) {
        this.f316e = str;
        return this;
    }

    public boolean d() {
        return this.f314c != null;
    }

    public ec e(String str) {
        this.f317f = str;
        return this;
    }

    public boolean e() {
        return this.f315d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ec)) {
            return m1514a((ec) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f316e != null;
    }

    public boolean g() {
        return this.f317f != null;
    }

    public boolean h() {
        return this.f312a != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionUnSubscription(");
        boolean z11 = false;
        if (m1513a()) {
            sb2.append("debug:");
            String str = this.f311a;
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
            dk dkVar = this.f310a;
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
        String str2 = this.f313b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f314c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("topic:");
        String str4 = this.f315d;
        if (str4 == null) {
            sb2.append("null");
        } else {
            sb2.append(str4);
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str5 = this.f316e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("category:");
            String str6 = this.f317f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("aliases:");
            List<String> list = this.f312a;
            if (list == null) {
                sb2.append("null");
            } else {
                sb2.append(list);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
