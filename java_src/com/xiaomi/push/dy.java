package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class dy implements ef<dy, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public dk f265a;

    /* renamed from: a  reason: collision with other field name */
    public String f266a;

    /* renamed from: a  reason: collision with other field name */
    public List<String> f267a;

    /* renamed from: b  reason: collision with other field name */
    public String f268b;

    /* renamed from: c  reason: collision with other field name */
    public String f269c;

    /* renamed from: d  reason: collision with other field name */
    public String f270d;

    /* renamed from: e  reason: collision with other field name */
    public String f271e;

    /* renamed from: f  reason: collision with other field name */
    public String f272f;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f264a = new s2("XmPushActionSubscription");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36775a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36776b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36777c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36778d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36779e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36780f = new m2("", (byte) 11, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36781g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36782h = new m2("", (byte) 15, 8);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dy dyVar) {
        int g10;
        int e10;
        int e11;
        int e12;
        int e13;
        int e14;
        int d10;
        int e15;
        if (getClass().equals(dyVar.getClass())) {
            int compareTo = Boolean.valueOf(m1501a()).compareTo(Boolean.valueOf(dyVar.m1501a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1501a() || (e15 = i2.e(this.f266a, dyVar.f266a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(dyVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (d10 = i2.d(this.f265a, dyVar.f265a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(dyVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e14 = i2.e(this.f268b, dyVar.f268b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dyVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e13 = i2.e(this.f269c, dyVar.f269c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dyVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (e12 = i2.e(this.f270d, dyVar.f270d)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dyVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e11 = i2.e(this.f271e, dyVar.f271e)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dyVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e10 = i2.e(this.f272f, dyVar.f272f)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dyVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (g10 = i2.g(this.f267a, dyVar.f267a)) == 0) {
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
        return getClass().getName().compareTo(dyVar.getClass().getName());
    }

    public dy a(String str) {
        this.f268b = str;
        return this;
    }

    public void a() {
        if (this.f268b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f269c == null) {
            throw new eq("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f270d != null) {
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
                        this.f266a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f265a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f268b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f269c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f270d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 11) {
                        this.f271e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f272f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 15) {
                        n2 f10 = p2Var.f();
                        this.f267a = new ArrayList(f10.f37002b);
                        for (int i9 = 0; i9 < f10.f37002b; i9++) {
                            this.f267a.add(p2Var.j());
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
    public boolean m1501a() {
        return this.f266a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1502a(dy dyVar) {
        if (dyVar == null) {
            return false;
        }
        boolean m1501a = m1501a();
        boolean m1501a2 = dyVar.m1501a();
        if ((m1501a || m1501a2) && !(m1501a && m1501a2 && this.f266a.equals(dyVar.f266a))) {
            return false;
        }
        boolean b10 = b();
        boolean b11 = dyVar.b();
        if ((b10 || b11) && !(b10 && b11 && this.f265a.m1436a(dyVar.f265a))) {
            return false;
        }
        boolean c10 = c();
        boolean c11 = dyVar.c();
        if ((c10 || c11) && !(c10 && c11 && this.f268b.equals(dyVar.f268b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dyVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f269c.equals(dyVar.f269c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = dyVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f270d.equals(dyVar.f270d))) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dyVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f271e.equals(dyVar.f271e))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dyVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f272f.equals(dyVar.f272f))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dyVar.h();
        if (h10 || h11) {
            return h10 && h11 && this.f267a.equals(dyVar.f267a);
        }
        return true;
    }

    public dy b(String str) {
        this.f269c = str;
        return this;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        a();
        p2Var.s(f264a);
        if (this.f266a != null && m1501a()) {
            p2Var.p(f36775a);
            p2Var.t(this.f266a);
            p2Var.y();
        }
        if (this.f265a != null && b()) {
            p2Var.p(f36776b);
            this.f265a.b(p2Var);
            p2Var.y();
        }
        if (this.f268b != null) {
            p2Var.p(f36777c);
            p2Var.t(this.f268b);
            p2Var.y();
        }
        if (this.f269c != null) {
            p2Var.p(f36778d);
            p2Var.t(this.f269c);
            p2Var.y();
        }
        if (this.f270d != null) {
            p2Var.p(f36779e);
            p2Var.t(this.f270d);
            p2Var.y();
        }
        if (this.f271e != null && f()) {
            p2Var.p(f36780f);
            p2Var.t(this.f271e);
            p2Var.y();
        }
        if (this.f272f != null && g()) {
            p2Var.p(f36781g);
            p2Var.t(this.f272f);
            p2Var.y();
        }
        if (this.f267a != null && h()) {
            p2Var.p(f36782h);
            p2Var.q(new n2((byte) 11, this.f267a.size()));
            for (String str : this.f267a) {
                p2Var.t(str);
            }
            p2Var.B();
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public boolean b() {
        return this.f265a != null;
    }

    public dy c(String str) {
        this.f270d = str;
        return this;
    }

    public boolean c() {
        return this.f268b != null;
    }

    public dy d(String str) {
        this.f271e = str;
        return this;
    }

    public boolean d() {
        return this.f269c != null;
    }

    public dy e(String str) {
        this.f272f = str;
        return this;
    }

    public boolean e() {
        return this.f270d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dy)) {
            return m1502a((dy) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f271e != null;
    }

    public boolean g() {
        return this.f272f != null;
    }

    public boolean h() {
        return this.f267a != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionSubscription(");
        boolean z11 = false;
        if (m1501a()) {
            sb2.append("debug:");
            String str = this.f266a;
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
            dk dkVar = this.f265a;
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
        String str2 = this.f268b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f269c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("topic:");
        String str4 = this.f270d;
        if (str4 == null) {
            sb2.append("null");
        } else {
            sb2.append(str4);
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str5 = this.f271e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("category:");
            String str6 = this.f272f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("aliases:");
            List<String> list = this.f267a;
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
