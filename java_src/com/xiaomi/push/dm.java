package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class dm implements ef<dm, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public dk f121a;

    /* renamed from: a  reason: collision with other field name */
    public String f122a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f124a;

    /* renamed from: b  reason: collision with other field name */
    public String f125b;

    /* renamed from: c  reason: collision with other field name */
    public String f126c;

    /* renamed from: d  reason: collision with other field name */
    public String f127d;

    /* renamed from: e  reason: collision with other field name */
    public String f128e;

    /* renamed from: f  reason: collision with other field name */
    public String f129f;

    /* renamed from: g  reason: collision with other field name */
    public String f130g;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f119a = new s2("XmPushActionAckNotification");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36655a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36656b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36657c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36658d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36659e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36660f = new m2("", (byte) 10, 7);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36661g = new m2("", (byte) 11, 8);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36662h = new m2("", (byte) 13, 9);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36663i = new m2("", (byte) 11, 10);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36664j = new m2("", (byte) 11, 11);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f123a = new BitSet(1);

    /* renamed from: a  reason: collision with other field name */
    public long f120a = 0;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dm dmVar) {
        int e10;
        int e11;
        int h10;
        int e12;
        int c10;
        int e13;
        int e14;
        int e15;
        int d10;
        int e16;
        if (getClass().equals(dmVar.getClass())) {
            int compareTo = Boolean.valueOf(m1441a()).compareTo(Boolean.valueOf(dmVar.m1441a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1441a() || (e16 = i2.e(this.f122a, dmVar.f122a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1443b()).compareTo(Boolean.valueOf(dmVar.m1443b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1443b() || (d10 = i2.d(this.f121a, dmVar.f121a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(dmVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e15 = i2.e(this.f125b, dmVar.f125b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dmVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e14 = i2.e(this.f126c, dmVar.f126c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dmVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (e13 = i2.e(this.f127d, dmVar.f127d)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dmVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (c10 = i2.c(this.f120a, dmVar.f120a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dmVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e12 = i2.e(this.f128e, dmVar.f128e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dmVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (h10 = i2.h(this.f124a, dmVar.f124a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dmVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e11 = i2.e(this.f129f, dmVar.f129f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(dmVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (e10 = i2.e(this.f130g, dmVar.f130g)) == 0) {
                                                    return 0;
                                                }
                                                return e10;
                                            }
                                            return e11;
                                        }
                                        return h10;
                                    }
                                    return e12;
                                }
                                return c10;
                            }
                            return e13;
                        }
                        return e14;
                    }
                    return e15;
                }
                return d10;
            }
            return e16;
        }
        return getClass().getName().compareTo(dmVar.getClass().getName());
    }

    public dm a(long j10) {
        this.f120a = j10;
        a(true);
        return this;
    }

    public dm a(dk dkVar) {
        this.f121a = dkVar;
        return this;
    }

    public dm a(String str) {
        this.f125b = str;
        return this;
    }

    public String a() {
        return this.f125b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Map<String, String> m1439a() {
        return this.f124a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1440a() {
        if (this.f125b != null) {
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
                m1440a();
                return;
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f122a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f121a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f125b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f126c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f127d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 10) {
                        this.f120a = p2Var.d();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f128e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 13) {
                        o2 g10 = p2Var.g();
                        this.f124a = new HashMap(g10.f37020c * 2);
                        for (int i9 = 0; i9 < g10.f37020c; i9++) {
                            this.f124a.put(p2Var.j(), p2Var.j());
                        }
                        p2Var.E();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 11) {
                        this.f129f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 11:
                    if (b10 == 11) {
                        this.f130g = p2Var.j();
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
        this.f123a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1441a() {
        return this.f122a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1442a(dm dmVar) {
        if (dmVar == null) {
            return false;
        }
        boolean m1441a = m1441a();
        boolean m1441a2 = dmVar.m1441a();
        if ((m1441a || m1441a2) && !(m1441a && m1441a2 && this.f122a.equals(dmVar.f122a))) {
            return false;
        }
        boolean m1443b = m1443b();
        boolean m1443b2 = dmVar.m1443b();
        if ((m1443b || m1443b2) && !(m1443b && m1443b2 && this.f121a.m1436a(dmVar.f121a))) {
            return false;
        }
        boolean c10 = c();
        boolean c11 = dmVar.c();
        if ((c10 || c11) && !(c10 && c11 && this.f125b.equals(dmVar.f125b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dmVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f126c.equals(dmVar.f126c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = dmVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f127d.equals(dmVar.f127d))) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dmVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f120a == dmVar.f120a)) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dmVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f128e.equals(dmVar.f128e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dmVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f124a.equals(dmVar.f124a))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = dmVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f129f.equals(dmVar.f129f))) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = dmVar.j();
        if (j10 || j11) {
            return j10 && j11 && this.f130g.equals(dmVar.f130g);
        }
        return true;
    }

    public dm b(String str) {
        this.f126c = str;
        return this;
    }

    public String b() {
        return this.f127d;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1440a();
        p2Var.s(f119a);
        if (this.f122a != null && m1441a()) {
            p2Var.p(f36655a);
            p2Var.t(this.f122a);
            p2Var.y();
        }
        if (this.f121a != null && m1443b()) {
            p2Var.p(f36656b);
            this.f121a.b(p2Var);
            p2Var.y();
        }
        if (this.f125b != null) {
            p2Var.p(f36657c);
            p2Var.t(this.f125b);
            p2Var.y();
        }
        if (this.f126c != null && d()) {
            p2Var.p(f36658d);
            p2Var.t(this.f126c);
            p2Var.y();
        }
        if (this.f127d != null && e()) {
            p2Var.p(f36659e);
            p2Var.t(this.f127d);
            p2Var.y();
        }
        if (f()) {
            p2Var.p(f36660f);
            p2Var.o(this.f120a);
            p2Var.y();
        }
        if (this.f128e != null && g()) {
            p2Var.p(f36661g);
            p2Var.t(this.f128e);
            p2Var.y();
        }
        if (this.f124a != null && h()) {
            p2Var.p(f36662h);
            p2Var.r(new o2((byte) 11, (byte) 11, this.f124a.size()));
            for (Map.Entry<String, String> entry : this.f124a.entrySet()) {
                p2Var.t(entry.getKey());
                p2Var.t(entry.getValue());
            }
            p2Var.A();
            p2Var.y();
        }
        if (this.f129f != null && i()) {
            p2Var.p(f36663i);
            p2Var.t(this.f129f);
            p2Var.y();
        }
        if (this.f130g != null && j()) {
            p2Var.p(f36664j);
            p2Var.t(this.f130g);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1443b() {
        return this.f121a != null;
    }

    public dm c(String str) {
        this.f127d = str;
        return this;
    }

    public boolean c() {
        return this.f125b != null;
    }

    public dm d(String str) {
        this.f128e = str;
        return this;
    }

    public boolean d() {
        return this.f126c != null;
    }

    public dm e(String str) {
        this.f129f = str;
        return this;
    }

    public boolean e() {
        return this.f127d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dm)) {
            return m1442a((dm) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f123a.get(0);
    }

    public boolean g() {
        return this.f128e != null;
    }

    public boolean h() {
        return this.f124a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f129f != null;
    }

    public boolean j() {
        return this.f130g != null;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionAckNotification(");
        boolean z11 = false;
        if (m1441a()) {
            sb2.append("debug:");
            String str = this.f122a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (m1443b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("target:");
            dk dkVar = this.f121a;
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
        String str2 = this.f125b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        if (d()) {
            sb2.append(", ");
            sb2.append("appId:");
            String str3 = this.f126c;
            if (str3 == null) {
                sb2.append("null");
            } else {
                sb2.append(str3);
            }
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("type:");
            String str4 = this.f127d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("errorCode:");
            sb2.append(this.f120a);
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("reason:");
            String str5 = this.f128e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("extra:");
            Map<String, String> map = this.f124a;
            if (map == null) {
                sb2.append("null");
            } else {
                sb2.append(map);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str6 = this.f129f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("category:");
            String str7 = this.f130g;
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
