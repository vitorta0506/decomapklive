package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class di implements ef<di, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f73a;

    /* renamed from: a  reason: collision with other field name */
    public long f74a;

    /* renamed from: a  reason: collision with other field name */
    public String f75a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f76a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f77a;

    /* renamed from: a  reason: collision with other field name */
    public boolean f78a;

    /* renamed from: b  reason: collision with other field name */
    public int f79b;

    /* renamed from: b  reason: collision with other field name */
    public String f80b;

    /* renamed from: b  reason: collision with other field name */
    public Map<String, String> f81b;

    /* renamed from: c  reason: collision with other field name */
    public int f82c;

    /* renamed from: c  reason: collision with other field name */
    public String f83c;

    /* renamed from: c  reason: collision with other field name */
    public Map<String, String> f84c;

    /* renamed from: d  reason: collision with other field name */
    public String f85d;

    /* renamed from: e  reason: collision with other field name */
    public String f86e;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f72a = new s2("PushMetaInfo");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36613a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36614b = new m2("", (byte) 10, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36615c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36616d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36617e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36618f = new m2("", (byte) 8, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36619g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36620h = new m2("", (byte) 8, 8);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36621i = new m2("", (byte) 8, 9);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36622j = new m2("", (byte) 13, 10);

    /* renamed from: k  reason: collision with root package name */
    private static final m2 f36623k = new m2("", (byte) 13, 11);

    /* renamed from: l  reason: collision with root package name */
    private static final m2 f36624l = new m2("", (byte) 2, 12);

    /* renamed from: m  reason: collision with root package name */
    private static final m2 f36625m = new m2("", (byte) 13, 13);

    public di() {
        this.f76a = new BitSet(5);
        this.f78a = false;
    }

    public di(di diVar) {
        BitSet bitSet = new BitSet(5);
        this.f76a = bitSet;
        bitSet.clear();
        this.f76a.or(diVar.f76a);
        if (diVar.m1427a()) {
            this.f75a = diVar.f75a;
        }
        this.f74a = diVar.f74a;
        if (diVar.m1433c()) {
            this.f80b = diVar.f80b;
        }
        if (diVar.m1434d()) {
            this.f83c = diVar.f83c;
        }
        if (diVar.e()) {
            this.f85d = diVar.f85d;
        }
        this.f73a = diVar.f73a;
        if (diVar.g()) {
            this.f86e = diVar.f86e;
        }
        this.f79b = diVar.f79b;
        this.f82c = diVar.f82c;
        if (diVar.j()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, String> entry : diVar.f77a.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            this.f77a = hashMap;
        }
        if (diVar.k()) {
            HashMap hashMap2 = new HashMap();
            for (Map.Entry<String, String> entry2 : diVar.f81b.entrySet()) {
                hashMap2.put(entry2.getKey(), entry2.getValue());
            }
            this.f81b = hashMap2;
        }
        this.f78a = diVar.f78a;
        if (diVar.n()) {
            HashMap hashMap3 = new HashMap();
            for (Map.Entry<String, String> entry3 : diVar.f84c.entrySet()) {
                hashMap3.put(entry3.getKey(), entry3.getValue());
            }
            this.f84c = hashMap3;
        }
    }

    public int a() {
        return this.f73a;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(di diVar) {
        int h10;
        int k10;
        int h11;
        int h12;
        int b10;
        int b11;
        int e10;
        int b12;
        int e11;
        int e12;
        int e13;
        int c10;
        int e14;
        if (getClass().equals(diVar.getClass())) {
            int compareTo = Boolean.valueOf(m1427a()).compareTo(Boolean.valueOf(diVar.m1427a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1427a() || (e14 = i2.e(this.f75a, diVar.f75a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1431b()).compareTo(Boolean.valueOf(diVar.m1431b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1431b() || (c10 = i2.c(this.f74a, diVar.f74a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1433c()).compareTo(Boolean.valueOf(diVar.m1433c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1433c() || (e13 = i2.e(this.f80b, diVar.f80b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m1434d()).compareTo(Boolean.valueOf(diVar.m1434d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m1434d() || (e12 = i2.e(this.f83c, diVar.f83c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(diVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (e11 = i2.e(this.f85d, diVar.f85d)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(diVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (b12 = i2.b(this.f73a, diVar.f73a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(diVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e10 = i2.e(this.f86e, diVar.f86e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(diVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (b11 = i2.b(this.f79b, diVar.f79b)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(diVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (b10 = i2.b(this.f82c, diVar.f82c)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(diVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (h12 = i2.h(this.f77a, diVar.f77a)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(diVar.k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!k() || (h11 = i2.h(this.f81b, diVar.f81b)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(diVar.m()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!m() || (k10 = i2.k(this.f78a, diVar.f78a)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(diVar.n()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!n() || (h10 = i2.h(this.f84c, diVar.f84c)) == 0) {
                                                                return 0;
                                                            }
                                                            return h10;
                                                        }
                                                        return k10;
                                                    }
                                                    return h11;
                                                }
                                                return h12;
                                            }
                                            return b10;
                                        }
                                        return b11;
                                    }
                                    return e10;
                                }
                                return b12;
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
        return getClass().getName().compareTo(diVar.getClass().getName());
    }

    /* renamed from: a  reason: collision with other method in class */
    public long m1422a() {
        return this.f74a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public di m1423a() {
        return new di(this);
    }

    public di a(int i9) {
        this.f73a = i9;
        b(true);
        return this;
    }

    public di a(String str) {
        this.f75a = str;
        return this;
    }

    public di a(Map<String, String> map) {
        this.f77a = map;
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m1424a() {
        return this.f75a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Map<String, String> m1425a() {
        return this.f77a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1426a() {
        if (this.f75a != null) {
            return;
        }
        throw new eq("Required field 'id' was not present! Struct: " + toString());
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
                if (m1431b()) {
                    m1426a();
                    return;
                }
                throw new eq("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
            }
            int i9 = 0;
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f75a = p2Var.j();
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 2:
                    if (b10 == 10) {
                        this.f74a = p2Var.d();
                        a(true);
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f80b = p2Var.j();
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f83c = p2Var.j();
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f85d = p2Var.j();
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 6:
                    if (b10 == 8) {
                        this.f73a = p2Var.c();
                        b(true);
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f86e = p2Var.j();
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 8:
                    if (b10 == 8) {
                        this.f79b = p2Var.c();
                        c(true);
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 9:
                    if (b10 == 8) {
                        this.f82c = p2Var.c();
                        d(true);
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 10:
                    if (b10 == 13) {
                        o2 g10 = p2Var.g();
                        this.f77a = new HashMap(g10.f37020c * 2);
                        while (i9 < g10.f37020c) {
                            this.f77a.put(p2Var.j(), p2Var.j());
                            i9++;
                        }
                        p2Var.E();
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 11:
                    if (b10 == 13) {
                        o2 g11 = p2Var.g();
                        this.f81b = new HashMap(g11.f37020c * 2);
                        while (i9 < g11.f37020c) {
                            this.f81b.put(p2Var.j(), p2Var.j());
                            i9++;
                        }
                        p2Var.E();
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 12:
                    if (b10 == 2) {
                        this.f78a = p2Var.x();
                        e(true);
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                case 13:
                    if (b10 == 13) {
                        o2 g12 = p2Var.g();
                        this.f84c = new HashMap(g12.f37020c * 2);
                        while (i9 < g12.f37020c) {
                            this.f84c.put(p2Var.j(), p2Var.j());
                            i9++;
                        }
                        p2Var.E();
                        break;
                    }
                    q2.a(p2Var, b10);
                    break;
                default:
                    q2.a(p2Var, b10);
                    break;
            }
            p2Var.D();
        }
    }

    public void a(String str, String str2) {
        if (this.f77a == null) {
            this.f77a = new HashMap();
        }
        this.f77a.put(str, str2);
    }

    public void a(boolean z10) {
        this.f76a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1427a() {
        return this.f75a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1428a(di diVar) {
        if (diVar == null) {
            return false;
        }
        boolean m1427a = m1427a();
        boolean m1427a2 = diVar.m1427a();
        if (((m1427a || m1427a2) && !(m1427a && m1427a2 && this.f75a.equals(diVar.f75a))) || this.f74a != diVar.f74a) {
            return false;
        }
        boolean m1433c = m1433c();
        boolean m1433c2 = diVar.m1433c();
        if ((m1433c || m1433c2) && !(m1433c && m1433c2 && this.f80b.equals(diVar.f80b))) {
            return false;
        }
        boolean m1434d = m1434d();
        boolean m1434d2 = diVar.m1434d();
        if ((m1434d || m1434d2) && !(m1434d && m1434d2 && this.f83c.equals(diVar.f83c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = diVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f85d.equals(diVar.f85d))) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = diVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f73a == diVar.f73a)) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = diVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f86e.equals(diVar.f86e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = diVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f79b == diVar.f79b)) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = diVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f82c == diVar.f82c)) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = diVar.j();
        if ((j10 || j11) && !(j10 && j11 && this.f77a.equals(diVar.f77a))) {
            return false;
        }
        boolean k10 = k();
        boolean k11 = diVar.k();
        if ((k10 || k11) && !(k10 && k11 && this.f81b.equals(diVar.f81b))) {
            return false;
        }
        boolean m10 = m();
        boolean m11 = diVar.m();
        if ((m10 || m11) && !(m10 && m11 && this.f78a == diVar.f78a)) {
            return false;
        }
        boolean n9 = n();
        boolean n10 = diVar.n();
        if (n9 || n10) {
            return n9 && n10 && this.f84c.equals(diVar.f84c);
        }
        return true;
    }

    public int b() {
        return this.f79b;
    }

    public di b(int i9) {
        this.f79b = i9;
        c(true);
        return this;
    }

    public di b(String str) {
        this.f80b = str;
        return this;
    }

    /* renamed from: b  reason: collision with other method in class */
    public String m1429b() {
        return this.f80b;
    }

    /* renamed from: b  reason: collision with other method in class */
    public Map<String, String> m1430b() {
        return this.f81b;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1426a();
        p2Var.s(f72a);
        if (this.f75a != null) {
            p2Var.p(f36613a);
            p2Var.t(this.f75a);
            p2Var.y();
        }
        p2Var.p(f36614b);
        p2Var.o(this.f74a);
        p2Var.y();
        if (this.f80b != null && m1433c()) {
            p2Var.p(f36615c);
            p2Var.t(this.f80b);
            p2Var.y();
        }
        if (this.f83c != null && m1434d()) {
            p2Var.p(f36616d);
            p2Var.t(this.f83c);
            p2Var.y();
        }
        if (this.f85d != null && e()) {
            p2Var.p(f36617e);
            p2Var.t(this.f85d);
            p2Var.y();
        }
        if (f()) {
            p2Var.p(f36618f);
            p2Var.n(this.f73a);
            p2Var.y();
        }
        if (this.f86e != null && g()) {
            p2Var.p(f36619g);
            p2Var.t(this.f86e);
            p2Var.y();
        }
        if (h()) {
            p2Var.p(f36620h);
            p2Var.n(this.f79b);
            p2Var.y();
        }
        if (i()) {
            p2Var.p(f36621i);
            p2Var.n(this.f82c);
            p2Var.y();
        }
        if (this.f77a != null && j()) {
            p2Var.p(f36622j);
            p2Var.r(new o2((byte) 11, (byte) 11, this.f77a.size()));
            for (Map.Entry<String, String> entry : this.f77a.entrySet()) {
                p2Var.t(entry.getKey());
                p2Var.t(entry.getValue());
            }
            p2Var.A();
            p2Var.y();
        }
        if (this.f81b != null && k()) {
            p2Var.p(f36623k);
            p2Var.r(new o2((byte) 11, (byte) 11, this.f81b.size()));
            for (Map.Entry<String, String> entry2 : this.f81b.entrySet()) {
                p2Var.t(entry2.getKey());
                p2Var.t(entry2.getValue());
            }
            p2Var.A();
            p2Var.y();
        }
        if (m()) {
            p2Var.p(f36624l);
            p2Var.w(this.f78a);
            p2Var.y();
        }
        if (this.f84c != null && n()) {
            p2Var.p(f36625m);
            p2Var.r(new o2((byte) 11, (byte) 11, this.f84c.size()));
            for (Map.Entry<String, String> entry3 : this.f84c.entrySet()) {
                p2Var.t(entry3.getKey());
                p2Var.t(entry3.getValue());
            }
            p2Var.A();
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f76a.set(1, z10);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1431b() {
        return this.f76a.get(0);
    }

    public int c() {
        return this.f82c;
    }

    public di c(int i9) {
        this.f82c = i9;
        d(true);
        return this;
    }

    public di c(String str) {
        this.f83c = str;
        return this;
    }

    /* renamed from: c  reason: collision with other method in class */
    public String m1432c() {
        return this.f83c;
    }

    public void c(boolean z10) {
        this.f76a.set(2, z10);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1433c() {
        return this.f80b != null;
    }

    public di d(String str) {
        this.f85d = str;
        return this;
    }

    public String d() {
        return this.f85d;
    }

    public void d(boolean z10) {
        this.f76a.set(3, z10);
    }

    /* renamed from: d  reason: collision with other method in class */
    public boolean m1434d() {
        return this.f83c != null;
    }

    public void e(boolean z10) {
        this.f76a.set(4, z10);
    }

    public boolean e() {
        return this.f85d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof di)) {
            return m1428a((di) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f76a.get(1);
    }

    public boolean g() {
        return this.f86e != null;
    }

    public boolean h() {
        return this.f76a.get(2);
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f76a.get(3);
    }

    public boolean j() {
        return this.f77a != null;
    }

    public boolean k() {
        return this.f81b != null;
    }

    public boolean l() {
        return this.f78a;
    }

    public boolean m() {
        return this.f76a.get(4);
    }

    public boolean n() {
        return this.f84c != null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("PushMetaInfo(");
        sb2.append("id:");
        String str = this.f75a;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(com.xiaomi.push.service.x.b(str));
        }
        sb2.append(", ");
        sb2.append("messageTs:");
        sb2.append(this.f74a);
        if (m1433c()) {
            sb2.append(", ");
            sb2.append("topic:");
            String str2 = this.f80b;
            if (str2 == null) {
                sb2.append("null");
            } else {
                sb2.append(str2);
            }
        }
        if (m1434d()) {
            sb2.append(", ");
            sb2.append("title:");
            String str3 = this.f83c;
            if (str3 == null) {
                sb2.append("null");
            } else {
                sb2.append(str3);
            }
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("description:");
            String str4 = this.f85d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("notifyType:");
            sb2.append(this.f73a);
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("url:");
            String str5 = this.f86e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("passThrough:");
            sb2.append(this.f79b);
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("notifyId:");
            sb2.append(this.f82c);
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("extra:");
            Map<String, String> map = this.f77a;
            if (map == null) {
                sb2.append("null");
            } else {
                sb2.append(map);
            }
        }
        if (k()) {
            sb2.append(", ");
            sb2.append("internal:");
            Map<String, String> map2 = this.f81b;
            if (map2 == null) {
                sb2.append("null");
            } else {
                sb2.append(map2);
            }
        }
        if (m()) {
            sb2.append(", ");
            sb2.append("ignoreRegInfo:");
            sb2.append(this.f78a);
        }
        if (n()) {
            sb2.append(", ");
            sb2.append("apsProperFields:");
            Map<String, String> map3 = this.f84c;
            if (map3 == null) {
                sb2.append("null");
            } else {
                sb2.append(map3);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
