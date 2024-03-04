package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class dx implements ef<dx, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public dh f251a;

    /* renamed from: a  reason: collision with other field name */
    public dk f252a;

    /* renamed from: a  reason: collision with other field name */
    public String f253a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f255a;

    /* renamed from: b  reason: collision with other field name */
    public String f257b;

    /* renamed from: c  reason: collision with other field name */
    public String f258c;

    /* renamed from: d  reason: collision with other field name */
    public String f259d;

    /* renamed from: e  reason: collision with other field name */
    public String f260e;

    /* renamed from: f  reason: collision with other field name */
    public String f261f;

    /* renamed from: g  reason: collision with other field name */
    public String f262g;

    /* renamed from: h  reason: collision with other field name */
    public String f263h;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f250a = new s2("XmPushActionSendMessage");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36763a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36764b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36765c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36766d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36767e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36768f = new m2("", (byte) 11, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36769g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36770h = new m2("", (byte) 12, 8);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36771i = new m2("", (byte) 2, 9);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36772j = new m2("", (byte) 13, 10);

    /* renamed from: k  reason: collision with root package name */
    private static final m2 f36773k = new m2("", (byte) 11, 11);

    /* renamed from: l  reason: collision with root package name */
    private static final m2 f36774l = new m2("", (byte) 11, 12);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f254a = new BitSet(1);

    /* renamed from: a  reason: collision with other field name */
    public boolean f256a = true;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dx dxVar) {
        int e10;
        int e11;
        int h10;
        int k10;
        int d10;
        int e12;
        int e13;
        int e14;
        int e15;
        int e16;
        int d11;
        int e17;
        if (getClass().equals(dxVar.getClass())) {
            int compareTo = Boolean.valueOf(m1494a()).compareTo(Boolean.valueOf(dxVar.m1494a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1494a() || (e17 = i2.e(this.f253a, dxVar.f253a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1496b()).compareTo(Boolean.valueOf(dxVar.m1496b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1496b() || (d11 = i2.d(this.f252a, dxVar.f252a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1497c()).compareTo(Boolean.valueOf(dxVar.m1497c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1497c() || (e16 = i2.e(this.f257b, dxVar.f257b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m1498d()).compareTo(Boolean.valueOf(dxVar.m1498d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m1498d() || (e15 = i2.e(this.f258c, dxVar.f258c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m1499e()).compareTo(Boolean.valueOf(dxVar.m1499e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m1499e() || (e14 = i2.e(this.f259d, dxVar.f259d)) == 0) {
                                int compareTo6 = Boolean.valueOf(m1500f()).compareTo(Boolean.valueOf(dxVar.m1500f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m1500f() || (e13 = i2.e(this.f260e, dxVar.f260e)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dxVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e12 = i2.e(this.f261f, dxVar.f261f)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dxVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (d10 = i2.d(this.f251a, dxVar.f251a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dxVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (k10 = i2.k(this.f256a, dxVar.f256a)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(dxVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (h10 = i2.h(this.f255a, dxVar.f255a)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(dxVar.k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!k() || (e11 = i2.e(this.f262g, dxVar.f262g)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(dxVar.l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!l() || (e10 = i2.e(this.f263h, dxVar.f263h)) == 0) {
                                                            return 0;
                                                        }
                                                        return e10;
                                                    }
                                                    return e11;
                                                }
                                                return h10;
                                            }
                                            return k10;
                                        }
                                        return d10;
                                    }
                                    return e12;
                                }
                                return e13;
                            }
                            return e14;
                        }
                        return e15;
                    }
                    return e16;
                }
                return d11;
            }
            return e17;
        }
        return getClass().getName().compareTo(dxVar.getClass().getName());
    }

    public dh a() {
        return this.f251a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m1492a() {
        return this.f257b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1493a() {
        if (this.f257b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f258c != null) {
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
                m1493a();
                return;
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f253a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f252a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f257b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f258c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f259d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 11) {
                        this.f260e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f261f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 12) {
                        dh dhVar = new dh();
                        this.f251a = dhVar;
                        dhVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 2) {
                        this.f256a = p2Var.x();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 13) {
                        o2 g10 = p2Var.g();
                        this.f255a = new HashMap(g10.f37020c * 2);
                        for (int i9 = 0; i9 < g10.f37020c; i9++) {
                            this.f255a.put(p2Var.j(), p2Var.j());
                        }
                        p2Var.E();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 11:
                    if (b10 == 11) {
                        this.f262g = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 12:
                    if (b10 == 11) {
                        this.f263h = p2Var.j();
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
        this.f254a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1494a() {
        return this.f253a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1495a(dx dxVar) {
        if (dxVar == null) {
            return false;
        }
        boolean m1494a = m1494a();
        boolean m1494a2 = dxVar.m1494a();
        if ((m1494a || m1494a2) && !(m1494a && m1494a2 && this.f253a.equals(dxVar.f253a))) {
            return false;
        }
        boolean m1496b = m1496b();
        boolean m1496b2 = dxVar.m1496b();
        if ((m1496b || m1496b2) && !(m1496b && m1496b2 && this.f252a.m1436a(dxVar.f252a))) {
            return false;
        }
        boolean m1497c = m1497c();
        boolean m1497c2 = dxVar.m1497c();
        if ((m1497c || m1497c2) && !(m1497c && m1497c2 && this.f257b.equals(dxVar.f257b))) {
            return false;
        }
        boolean m1498d = m1498d();
        boolean m1498d2 = dxVar.m1498d();
        if ((m1498d || m1498d2) && !(m1498d && m1498d2 && this.f258c.equals(dxVar.f258c))) {
            return false;
        }
        boolean m1499e = m1499e();
        boolean m1499e2 = dxVar.m1499e();
        if ((m1499e || m1499e2) && !(m1499e && m1499e2 && this.f259d.equals(dxVar.f259d))) {
            return false;
        }
        boolean m1500f = m1500f();
        boolean m1500f2 = dxVar.m1500f();
        if ((m1500f || m1500f2) && !(m1500f && m1500f2 && this.f260e.equals(dxVar.f260e))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dxVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f261f.equals(dxVar.f261f))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dxVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f251a.m1419a(dxVar.f251a))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = dxVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f256a == dxVar.f256a)) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = dxVar.j();
        if ((j10 || j11) && !(j10 && j11 && this.f255a.equals(dxVar.f255a))) {
            return false;
        }
        boolean k10 = k();
        boolean k11 = dxVar.k();
        if ((k10 || k11) && !(k10 && k11 && this.f262g.equals(dxVar.f262g))) {
            return false;
        }
        boolean l10 = l();
        boolean l11 = dxVar.l();
        if (l10 || l11) {
            return l10 && l11 && this.f263h.equals(dxVar.f263h);
        }
        return true;
    }

    public String b() {
        return this.f258c;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1493a();
        p2Var.s(f250a);
        if (this.f253a != null && m1494a()) {
            p2Var.p(f36763a);
            p2Var.t(this.f253a);
            p2Var.y();
        }
        if (this.f252a != null && m1496b()) {
            p2Var.p(f36764b);
            this.f252a.b(p2Var);
            p2Var.y();
        }
        if (this.f257b != null) {
            p2Var.p(f36765c);
            p2Var.t(this.f257b);
            p2Var.y();
        }
        if (this.f258c != null) {
            p2Var.p(f36766d);
            p2Var.t(this.f258c);
            p2Var.y();
        }
        if (this.f259d != null && m1499e()) {
            p2Var.p(f36767e);
            p2Var.t(this.f259d);
            p2Var.y();
        }
        if (this.f260e != null && m1500f()) {
            p2Var.p(f36768f);
            p2Var.t(this.f260e);
            p2Var.y();
        }
        if (this.f261f != null && g()) {
            p2Var.p(f36769g);
            p2Var.t(this.f261f);
            p2Var.y();
        }
        if (this.f251a != null && h()) {
            p2Var.p(f36770h);
            this.f251a.b(p2Var);
            p2Var.y();
        }
        if (i()) {
            p2Var.p(f36771i);
            p2Var.w(this.f256a);
            p2Var.y();
        }
        if (this.f255a != null && j()) {
            p2Var.p(f36772j);
            p2Var.r(new o2((byte) 11, (byte) 11, this.f255a.size()));
            for (Map.Entry<String, String> entry : this.f255a.entrySet()) {
                p2Var.t(entry.getKey());
                p2Var.t(entry.getValue());
            }
            p2Var.A();
            p2Var.y();
        }
        if (this.f262g != null && k()) {
            p2Var.p(f36773k);
            p2Var.t(this.f262g);
            p2Var.y();
        }
        if (this.f263h != null && l()) {
            p2Var.p(f36774l);
            p2Var.t(this.f263h);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1496b() {
        return this.f252a != null;
    }

    public String c() {
        return this.f260e;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1497c() {
        return this.f257b != null;
    }

    public String d() {
        return this.f261f;
    }

    /* renamed from: d  reason: collision with other method in class */
    public boolean m1498d() {
        return this.f258c != null;
    }

    public String e() {
        return this.f262g;
    }

    /* renamed from: e  reason: collision with other method in class */
    public boolean m1499e() {
        return this.f259d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dx)) {
            return m1495a((dx) obj);
        }
        return false;
    }

    public String f() {
        return this.f263h;
    }

    /* renamed from: f  reason: collision with other method in class */
    public boolean m1500f() {
        return this.f260e != null;
    }

    public boolean g() {
        return this.f261f != null;
    }

    public boolean h() {
        return this.f251a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f254a.get(0);
    }

    public boolean j() {
        return this.f255a != null;
    }

    public boolean k() {
        return this.f262g != null;
    }

    public boolean l() {
        return this.f263h != null;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionSendMessage(");
        boolean z11 = false;
        if (m1494a()) {
            sb2.append("debug:");
            String str = this.f253a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (m1496b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("target:");
            dk dkVar = this.f252a;
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
        String str2 = this.f257b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f258c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        if (m1499e()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str4 = this.f259d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (m1500f()) {
            sb2.append(", ");
            sb2.append("topic:");
            String str5 = this.f260e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("aliasName:");
            String str6 = this.f261f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("message:");
            dh dhVar = this.f251a;
            if (dhVar == null) {
                sb2.append("null");
            } else {
                sb2.append(dhVar);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("needAck:");
            sb2.append(this.f256a);
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("params:");
            Map<String, String> map = this.f255a;
            if (map == null) {
                sb2.append("null");
            } else {
                sb2.append(map);
            }
        }
        if (k()) {
            sb2.append(", ");
            sb2.append("category:");
            String str7 = this.f262g;
            if (str7 == null) {
                sb2.append("null");
            } else {
                sb2.append(str7);
            }
        }
        if (l()) {
            sb2.append(", ");
            sb2.append("userAccount:");
            String str8 = this.f263h;
            if (str8 == null) {
                sb2.append("null");
            } else {
                sb2.append(str8);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
