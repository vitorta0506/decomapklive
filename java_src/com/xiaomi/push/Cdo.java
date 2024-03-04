package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
/* renamed from: com.xiaomi.push.do  reason: invalid class name */
/* loaded from: classes5.dex */
public class Cdo implements ef<Cdo, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f136a;

    /* renamed from: a  reason: collision with other field name */
    public dk f137a;

    /* renamed from: a  reason: collision with other field name */
    public String f138a;

    /* renamed from: a  reason: collision with other field name */
    public List<String> f140a;

    /* renamed from: b  reason: collision with other field name */
    public String f142b;

    /* renamed from: c  reason: collision with other field name */
    public String f144c;

    /* renamed from: d  reason: collision with other field name */
    public String f145d;

    /* renamed from: e  reason: collision with other field name */
    public String f146e;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f135a = new s2("XmPushActionCommand");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36667a = new m2("", (byte) 12, 2);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36668b = new m2("", (byte) 11, 3);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36669c = new m2("", (byte) 11, 4);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36670d = new m2("", (byte) 11, 5);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36671e = new m2("", (byte) 15, 6);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36672f = new m2("", (byte) 11, 7);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36673g = new m2("", (byte) 11, 9);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36674h = new m2("", (byte) 2, 10);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36675i = new m2("", (byte) 2, 11);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36676j = new m2("", (byte) 10, 12);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f139a = new BitSet(3);

    /* renamed from: a  reason: collision with other field name */
    public boolean f141a = false;

    /* renamed from: b  reason: collision with other field name */
    public boolean f143b = true;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(Cdo cdo) {
        int c10;
        int k10;
        int k11;
        int e10;
        int e11;
        int g10;
        int e12;
        int e13;
        int e14;
        int d10;
        if (getClass().equals(cdo.getClass())) {
            int compareTo = Boolean.valueOf(m1447a()).compareTo(Boolean.valueOf(cdo.m1447a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1447a() || (d10 = i2.d(this.f137a, cdo.f137a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(cdo.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (e14 = i2.e(this.f138a, cdo.f138a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(cdo.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e13 = i2.e(this.f142b, cdo.f142b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(cdo.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e12 = i2.e(this.f144c, cdo.f144c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(cdo.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (g10 = i2.g(this.f140a, cdo.f140a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(cdo.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e11 = i2.e(this.f145d, cdo.f145d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(cdo.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e10 = i2.e(this.f146e, cdo.f146e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(cdo.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (k11 = i2.k(this.f141a, cdo.f141a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(cdo.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (k10 = i2.k(this.f143b, cdo.f143b)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(cdo.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (c10 = i2.c(this.f136a, cdo.f136a)) == 0) {
                                                    return 0;
                                                }
                                                return c10;
                                            }
                                            return k10;
                                        }
                                        return k11;
                                    }
                                    return e10;
                                }
                                return e11;
                            }
                            return g10;
                        }
                        return e12;
                    }
                    return e13;
                }
                return e14;
            }
            return d10;
        }
        return getClass().getName().compareTo(cdo.getClass().getName());
    }

    public Cdo a(String str) {
        this.f138a = str;
        return this;
    }

    public void a() {
        if (this.f138a == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f142b == null) {
            throw new eq("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f144c != null) {
        } else {
            throw new eq("Required field 'cmdName' was not present! Struct: " + toString());
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
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f137a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f138a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f142b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f144c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 15) {
                        n2 f10 = p2Var.f();
                        this.f140a = new ArrayList(f10.f37002b);
                        for (int i9 = 0; i9 < f10.f37002b; i9++) {
                            this.f140a.add(p2Var.j());
                        }
                        p2Var.F();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f145d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f146e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 2) {
                        this.f141a = p2Var.x();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 11:
                    if (b10 == 2) {
                        this.f143b = p2Var.x();
                        b(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 12:
                    if (b10 == 10) {
                        this.f136a = p2Var.d();
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

    /* renamed from: a  reason: collision with other method in class */
    public void m1446a(String str) {
        if (this.f140a == null) {
            this.f140a = new ArrayList();
        }
        this.f140a.add(str);
    }

    public void a(boolean z10) {
        this.f139a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1447a() {
        return this.f137a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1448a(Cdo cdo) {
        if (cdo == null) {
            return false;
        }
        boolean m1447a = m1447a();
        boolean m1447a2 = cdo.m1447a();
        if ((m1447a || m1447a2) && !(m1447a && m1447a2 && this.f137a.m1436a(cdo.f137a))) {
            return false;
        }
        boolean b10 = b();
        boolean b11 = cdo.b();
        if ((b10 || b11) && !(b10 && b11 && this.f138a.equals(cdo.f138a))) {
            return false;
        }
        boolean c10 = c();
        boolean c11 = cdo.c();
        if ((c10 || c11) && !(c10 && c11 && this.f142b.equals(cdo.f142b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = cdo.d();
        if ((d10 || d11) && !(d10 && d11 && this.f144c.equals(cdo.f144c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = cdo.e();
        if ((e10 || e11) && !(e10 && e11 && this.f140a.equals(cdo.f140a))) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = cdo.f();
        if ((f10 || f11) && !(f10 && f11 && this.f145d.equals(cdo.f145d))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = cdo.g();
        if ((g10 || g11) && !(g10 && g11 && this.f146e.equals(cdo.f146e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = cdo.h();
        if ((h10 || h11) && !(h10 && h11 && this.f141a == cdo.f141a)) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = cdo.i();
        if ((i9 || i10) && !(i9 && i10 && this.f143b == cdo.f143b)) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = cdo.j();
        if (j10 || j11) {
            return j10 && j11 && this.f136a == cdo.f136a;
        }
        return true;
    }

    public Cdo b(String str) {
        this.f142b = str;
        return this;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        a();
        p2Var.s(f135a);
        if (this.f137a != null && m1447a()) {
            p2Var.p(f36667a);
            this.f137a.b(p2Var);
            p2Var.y();
        }
        if (this.f138a != null) {
            p2Var.p(f36668b);
            p2Var.t(this.f138a);
            p2Var.y();
        }
        if (this.f142b != null) {
            p2Var.p(f36669c);
            p2Var.t(this.f142b);
            p2Var.y();
        }
        if (this.f144c != null) {
            p2Var.p(f36670d);
            p2Var.t(this.f144c);
            p2Var.y();
        }
        if (this.f140a != null && e()) {
            p2Var.p(f36671e);
            p2Var.q(new n2((byte) 11, this.f140a.size()));
            for (String str : this.f140a) {
                p2Var.t(str);
            }
            p2Var.B();
            p2Var.y();
        }
        if (this.f145d != null && f()) {
            p2Var.p(f36672f);
            p2Var.t(this.f145d);
            p2Var.y();
        }
        if (this.f146e != null && g()) {
            p2Var.p(f36673g);
            p2Var.t(this.f146e);
            p2Var.y();
        }
        if (h()) {
            p2Var.p(f36674h);
            p2Var.w(this.f141a);
            p2Var.y();
        }
        if (i()) {
            p2Var.p(f36675i);
            p2Var.w(this.f143b);
            p2Var.y();
        }
        if (j()) {
            p2Var.p(f36676j);
            p2Var.o(this.f136a);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f139a.set(1, z10);
    }

    public boolean b() {
        return this.f138a != null;
    }

    public Cdo c(String str) {
        this.f144c = str;
        return this;
    }

    public void c(boolean z10) {
        this.f139a.set(2, z10);
    }

    public boolean c() {
        return this.f142b != null;
    }

    public Cdo d(String str) {
        this.f145d = str;
        return this;
    }

    public boolean d() {
        return this.f144c != null;
    }

    public Cdo e(String str) {
        this.f146e = str;
        return this;
    }

    public boolean e() {
        return this.f140a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Cdo)) {
            return m1448a((Cdo) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f145d != null;
    }

    public boolean g() {
        return this.f146e != null;
    }

    public boolean h() {
        return this.f139a.get(0);
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f139a.get(1);
    }

    public boolean j() {
        return this.f139a.get(2);
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionCommand(");
        if (m1447a()) {
            sb2.append("target:");
            dk dkVar = this.f137a;
            if (dkVar == null) {
                sb2.append("null");
            } else {
                sb2.append(dkVar);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10) {
            sb2.append(", ");
        }
        sb2.append("id:");
        String str = this.f138a;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(str);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str2 = this.f142b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("cmdName:");
        String str3 = this.f144c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("cmdArgs:");
            List<String> list = this.f140a;
            if (list == null) {
                sb2.append("null");
            } else {
                sb2.append(list);
            }
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str4 = this.f145d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("category:");
            String str5 = this.f146e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("updateCache:");
            sb2.append(this.f141a);
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("response2Client:");
            sb2.append(this.f143b);
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("createdTs:");
            sb2.append(this.f136a);
        }
        sb2.append(")");
        return sb2.toString();
    }
}
