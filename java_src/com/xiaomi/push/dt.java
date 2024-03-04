package com.xiaomi.push;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class dt implements ef<dt, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f174a;

    /* renamed from: a  reason: collision with other field name */
    public dk f175a;

    /* renamed from: a  reason: collision with other field name */
    public String f176a;

    /* renamed from: a  reason: collision with other field name */
    public ByteBuffer f177a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f178a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f179a;

    /* renamed from: a  reason: collision with other field name */
    public boolean f180a;

    /* renamed from: b  reason: collision with other field name */
    public String f181b;

    /* renamed from: b  reason: collision with other field name */
    public boolean f182b;

    /* renamed from: c  reason: collision with other field name */
    public String f183c;

    /* renamed from: d  reason: collision with other field name */
    public String f184d;

    /* renamed from: e  reason: collision with other field name */
    public String f185e;

    /* renamed from: f  reason: collision with other field name */
    public String f186f;

    /* renamed from: g  reason: collision with other field name */
    public String f187g;

    /* renamed from: h  reason: collision with other field name */
    public String f188h;

    /* renamed from: i  reason: collision with other field name */
    public String f189i;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f173a = new s2("XmPushActionNotification");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36697a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36698b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36699c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36700d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36701e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36702f = new m2("", (byte) 2, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36703g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36704h = new m2("", (byte) 13, 8);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36705i = new m2("", (byte) 11, 9);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36706j = new m2("", (byte) 11, 10);

    /* renamed from: k  reason: collision with root package name */
    private static final m2 f36707k = new m2("", (byte) 11, 12);

    /* renamed from: l  reason: collision with root package name */
    private static final m2 f36708l = new m2("", (byte) 11, 13);

    /* renamed from: m  reason: collision with root package name */
    private static final m2 f36709m = new m2("", (byte) 11, 14);

    /* renamed from: n  reason: collision with root package name */
    private static final m2 f36710n = new m2("", (byte) 10, 15);

    /* renamed from: o  reason: collision with root package name */
    private static final m2 f36711o = new m2("", (byte) 2, 20);

    public dt() {
        this.f178a = new BitSet(3);
        this.f180a = true;
        this.f182b = false;
    }

    public dt(String str, boolean z10) {
        this();
        this.f181b = str;
        this.f180a = z10;
        m1473a(true);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dt dtVar) {
        int k10;
        int c10;
        int d10;
        int e10;
        int e11;
        int e12;
        int e13;
        int h10;
        int e14;
        int k11;
        int e15;
        int e16;
        int e17;
        int d11;
        int e18;
        if (getClass().equals(dtVar.getClass())) {
            int compareTo = Boolean.valueOf(m1474a()).compareTo(Boolean.valueOf(dtVar.m1474a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1474a() || (e18 = i2.e(this.f176a, dtVar.f176a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1477b()).compareTo(Boolean.valueOf(dtVar.m1477b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1477b() || (d11 = i2.d(this.f175a, dtVar.f175a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1478c()).compareTo(Boolean.valueOf(dtVar.m1478c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1478c() || (e17 = i2.e(this.f181b, dtVar.f181b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dtVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e16 = i2.e(this.f183c, dtVar.f183c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dtVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (e15 = i2.e(this.f184d, dtVar.f184d)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dtVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (k11 = i2.k(this.f180a, dtVar.f180a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dtVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e14 = i2.e(this.f185e, dtVar.f185e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dtVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (h10 = i2.h(this.f179a, dtVar.f179a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dtVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e13 = i2.e(this.f186f, dtVar.f186f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(dtVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (e12 = i2.e(this.f187g, dtVar.f187g)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(dtVar.k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!k() || (e11 = i2.e(this.f188h, dtVar.f188h)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(dtVar.l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!l() || (e10 = i2.e(this.f189i, dtVar.f189i)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(dtVar.m()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m() || (d10 = i2.d(this.f177a, dtVar.f177a)) == 0) {
                                                                int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(dtVar.n()));
                                                                if (compareTo14 != 0) {
                                                                    return compareTo14;
                                                                }
                                                                if (!n() || (c10 = i2.c(this.f174a, dtVar.f174a)) == 0) {
                                                                    int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(dtVar.o()));
                                                                    if (compareTo15 != 0) {
                                                                        return compareTo15;
                                                                    }
                                                                    if (!o() || (k10 = i2.k(this.f182b, dtVar.f182b)) == 0) {
                                                                        return 0;
                                                                    }
                                                                    return k10;
                                                                }
                                                                return c10;
                                                            }
                                                            return d10;
                                                        }
                                                        return e10;
                                                    }
                                                    return e11;
                                                }
                                                return e12;
                                            }
                                            return e13;
                                        }
                                        return h10;
                                    }
                                    return e14;
                                }
                                return k11;
                            }
                            return e15;
                        }
                        return e16;
                    }
                    return e17;
                }
                return d11;
            }
            return e18;
        }
        return getClass().getName().compareTo(dtVar.getClass().getName());
    }

    public dk a() {
        return this.f175a;
    }

    public dt a(String str) {
        this.f181b = str;
        return this;
    }

    public dt a(ByteBuffer byteBuffer) {
        this.f177a = byteBuffer;
        return this;
    }

    public dt a(Map<String, String> map) {
        this.f179a = map;
        return this;
    }

    public dt a(boolean z10) {
        this.f180a = z10;
        m1473a(true);
        return this;
    }

    public dt a(byte[] bArr) {
        a(ByteBuffer.wrap(bArr));
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m1470a() {
        return this.f181b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Map<String, String> m1471a() {
        return this.f179a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1472a() {
        if (this.f181b != null) {
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
                if (f()) {
                    m1472a();
                    return;
                }
                throw new eq("Required field 'requireAck' was not found in serialized data! Struct: " + toString());
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f176a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f175a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f181b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f183c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f184d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 2) {
                        this.f180a = p2Var.x();
                        m1473a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f185e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 13) {
                        o2 g10 = p2Var.g();
                        this.f179a = new HashMap(g10.f37020c * 2);
                        for (int i9 = 0; i9 < g10.f37020c; i9++) {
                            this.f179a.put(p2Var.j(), p2Var.j());
                        }
                        p2Var.E();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f186f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 11) {
                        this.f187g = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 12:
                    if (b10 == 11) {
                        this.f188h = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 13:
                    if (b10 == 11) {
                        this.f189i = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 14:
                    if (b10 == 11) {
                        this.f177a = p2Var.k();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 15:
                    if (b10 == 10) {
                        this.f174a = p2Var.d();
                        b(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 20:
                    if (b10 == 2) {
                        this.f182b = p2Var.x();
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

    public void a(String str, String str2) {
        if (this.f179a == null) {
            this.f179a = new HashMap();
        }
        this.f179a.put(str, str2);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1473a(boolean z10) {
        this.f178a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1474a() {
        return this.f176a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1475a(dt dtVar) {
        if (dtVar == null) {
            return false;
        }
        boolean m1474a = m1474a();
        boolean m1474a2 = dtVar.m1474a();
        if ((m1474a || m1474a2) && !(m1474a && m1474a2 && this.f176a.equals(dtVar.f176a))) {
            return false;
        }
        boolean m1477b = m1477b();
        boolean m1477b2 = dtVar.m1477b();
        if ((m1477b || m1477b2) && !(m1477b && m1477b2 && this.f175a.m1436a(dtVar.f175a))) {
            return false;
        }
        boolean m1478c = m1478c();
        boolean m1478c2 = dtVar.m1478c();
        if ((m1478c || m1478c2) && !(m1478c && m1478c2 && this.f181b.equals(dtVar.f181b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dtVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f183c.equals(dtVar.f183c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = dtVar.e();
        if (((e10 || e11) && !(e10 && e11 && this.f184d.equals(dtVar.f184d))) || this.f180a != dtVar.f180a) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dtVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f185e.equals(dtVar.f185e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dtVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f179a.equals(dtVar.f179a))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = dtVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f186f.equals(dtVar.f186f))) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = dtVar.j();
        if ((j10 || j11) && !(j10 && j11 && this.f187g.equals(dtVar.f187g))) {
            return false;
        }
        boolean k10 = k();
        boolean k11 = dtVar.k();
        if ((k10 || k11) && !(k10 && k11 && this.f188h.equals(dtVar.f188h))) {
            return false;
        }
        boolean l10 = l();
        boolean l11 = dtVar.l();
        if ((l10 || l11) && !(l10 && l11 && this.f189i.equals(dtVar.f189i))) {
            return false;
        }
        boolean m10 = m();
        boolean m11 = dtVar.m();
        if ((m10 || m11) && !(m10 && m11 && this.f177a.equals(dtVar.f177a))) {
            return false;
        }
        boolean n9 = n();
        boolean n10 = dtVar.n();
        if ((n9 || n10) && !(n9 && n10 && this.f174a == dtVar.f174a)) {
            return false;
        }
        boolean o10 = o();
        boolean o11 = dtVar.o();
        if (o10 || o11) {
            return o10 && o11 && this.f182b == dtVar.f182b;
        }
        return true;
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m1476a() {
        a(i2.n(this.f177a));
        return this.f177a.array();
    }

    public dt b(String str) {
        this.f183c = str;
        return this;
    }

    public String b() {
        return this.f183c;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1472a();
        p2Var.s(f173a);
        if (this.f176a != null && m1474a()) {
            p2Var.p(f36697a);
            p2Var.t(this.f176a);
            p2Var.y();
        }
        if (this.f175a != null && m1477b()) {
            p2Var.p(f36698b);
            this.f175a.b(p2Var);
            p2Var.y();
        }
        if (this.f181b != null) {
            p2Var.p(f36699c);
            p2Var.t(this.f181b);
            p2Var.y();
        }
        if (this.f183c != null && d()) {
            p2Var.p(f36700d);
            p2Var.t(this.f183c);
            p2Var.y();
        }
        if (this.f184d != null && e()) {
            p2Var.p(f36701e);
            p2Var.t(this.f184d);
            p2Var.y();
        }
        p2Var.p(f36702f);
        p2Var.w(this.f180a);
        p2Var.y();
        if (this.f185e != null && g()) {
            p2Var.p(f36703g);
            p2Var.t(this.f185e);
            p2Var.y();
        }
        if (this.f179a != null && h()) {
            p2Var.p(f36704h);
            p2Var.r(new o2((byte) 11, (byte) 11, this.f179a.size()));
            for (Map.Entry<String, String> entry : this.f179a.entrySet()) {
                p2Var.t(entry.getKey());
                p2Var.t(entry.getValue());
            }
            p2Var.A();
            p2Var.y();
        }
        if (this.f186f != null && i()) {
            p2Var.p(f36705i);
            p2Var.t(this.f186f);
            p2Var.y();
        }
        if (this.f187g != null && j()) {
            p2Var.p(f36706j);
            p2Var.t(this.f187g);
            p2Var.y();
        }
        if (this.f188h != null && k()) {
            p2Var.p(f36707k);
            p2Var.t(this.f188h);
            p2Var.y();
        }
        if (this.f189i != null && l()) {
            p2Var.p(f36708l);
            p2Var.t(this.f189i);
            p2Var.y();
        }
        if (this.f177a != null && m()) {
            p2Var.p(f36709m);
            p2Var.u(this.f177a);
            p2Var.y();
        }
        if (n()) {
            p2Var.p(f36710n);
            p2Var.o(this.f174a);
            p2Var.y();
        }
        if (o()) {
            p2Var.p(f36711o);
            p2Var.w(this.f182b);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f178a.set(1, z10);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1477b() {
        return this.f175a != null;
    }

    public dt c(String str) {
        this.f184d = str;
        return this;
    }

    public String c() {
        return this.f186f;
    }

    public void c(boolean z10) {
        this.f178a.set(2, z10);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1478c() {
        return this.f181b != null;
    }

    public dt d(String str) {
        this.f186f = str;
        return this;
    }

    public boolean d() {
        return this.f183c != null;
    }

    public boolean e() {
        return this.f184d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dt)) {
            return m1475a((dt) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f178a.get(0);
    }

    public boolean g() {
        return this.f185e != null;
    }

    public boolean h() {
        return this.f179a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f186f != null;
    }

    public boolean j() {
        return this.f187g != null;
    }

    public boolean k() {
        return this.f188h != null;
    }

    public boolean l() {
        return this.f189i != null;
    }

    public boolean m() {
        return this.f177a != null;
    }

    public boolean n() {
        return this.f178a.get(1);
    }

    public boolean o() {
        return this.f178a.get(2);
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionNotification(");
        boolean z11 = false;
        if (m1474a()) {
            sb2.append("debug:");
            String str = this.f176a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (m1477b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("target:");
            dk dkVar = this.f175a;
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
        String str2 = this.f181b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        if (d()) {
            sb2.append(", ");
            sb2.append("appId:");
            String str3 = this.f183c;
            if (str3 == null) {
                sb2.append("null");
            } else {
                sb2.append(str3);
            }
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("type:");
            String str4 = this.f184d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        sb2.append(", ");
        sb2.append("requireAck:");
        sb2.append(this.f180a);
        if (g()) {
            sb2.append(", ");
            sb2.append("payload:");
            String str5 = this.f185e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("extra:");
            Map<String, String> map = this.f179a;
            if (map == null) {
                sb2.append("null");
            } else {
                sb2.append(map);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str6 = this.f186f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("category:");
            String str7 = this.f187g;
            if (str7 == null) {
                sb2.append("null");
            } else {
                sb2.append(str7);
            }
        }
        if (k()) {
            sb2.append(", ");
            sb2.append("regId:");
            String str8 = this.f188h;
            if (str8 == null) {
                sb2.append("null");
            } else {
                sb2.append(str8);
            }
        }
        if (l()) {
            sb2.append(", ");
            sb2.append("aliasName:");
            String str9 = this.f189i;
            if (str9 == null) {
                sb2.append("null");
            } else {
                sb2.append(str9);
            }
        }
        if (m()) {
            sb2.append(", ");
            sb2.append("binaryExtra:");
            ByteBuffer byteBuffer = this.f177a;
            if (byteBuffer == null) {
                sb2.append("null");
            } else {
                i2.o(byteBuffer, sb2);
            }
        }
        if (n()) {
            sb2.append(", ");
            sb2.append("createdTs:");
            sb2.append(this.f174a);
        }
        if (o()) {
            sb2.append(", ");
            sb2.append("alreadyLogClickInXmq:");
            sb2.append(this.f182b);
        }
        sb2.append(")");
        return sb2.toString();
    }
}
