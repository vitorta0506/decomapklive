package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class ea implements ef<ea, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f285a;

    /* renamed from: a  reason: collision with other field name */
    public dk f286a;

    /* renamed from: a  reason: collision with other field name */
    public String f287a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f288a = new BitSet(2);

    /* renamed from: a  reason: collision with other field name */
    public boolean f289a = true;

    /* renamed from: b  reason: collision with other field name */
    public String f290b;

    /* renamed from: c  reason: collision with other field name */
    public String f291c;

    /* renamed from: d  reason: collision with other field name */
    public String f292d;

    /* renamed from: e  reason: collision with other field name */
    public String f293e;

    /* renamed from: f  reason: collision with other field name */
    public String f294f;

    /* renamed from: g  reason: collision with other field name */
    public String f295g;

    /* renamed from: h  reason: collision with other field name */
    public String f296h;

    /* renamed from: i  reason: collision with other field name */
    public String f297i;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f284a = new s2("XmPushActionUnRegistration");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36808a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36809b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36810c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36811d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36812e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36813f = new m2("", (byte) 11, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36814g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36815h = new m2("", (byte) 11, 8);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36816i = new m2("", (byte) 11, 9);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36817j = new m2("", (byte) 11, 10);

    /* renamed from: k  reason: collision with root package name */
    private static final m2 f36818k = new m2("", (byte) 2, 11);

    /* renamed from: l  reason: collision with root package name */
    private static final m2 f36819l = new m2("", (byte) 10, 12);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(ea eaVar) {
        int c10;
        int k10;
        int e10;
        int e11;
        int e12;
        int e13;
        int e14;
        int e15;
        int e16;
        int e17;
        int d10;
        int e18;
        if (getClass().equals(eaVar.getClass())) {
            int compareTo = Boolean.valueOf(m1508a()).compareTo(Boolean.valueOf(eaVar.m1508a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1508a() || (e18 = i2.e(this.f287a, eaVar.f287a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(eaVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (d10 = i2.d(this.f286a, eaVar.f286a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(eaVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e17 = i2.e(this.f290b, eaVar.f290b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(eaVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e16 = i2.e(this.f291c, eaVar.f291c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(eaVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (e15 = i2.e(this.f292d, eaVar.f292d)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(eaVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e14 = i2.e(this.f293e, eaVar.f293e)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(eaVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e13 = i2.e(this.f294f, eaVar.f294f)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(eaVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (e12 = i2.e(this.f295g, eaVar.f295g)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(eaVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e11 = i2.e(this.f296h, eaVar.f296h)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(eaVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (e10 = i2.e(this.f297i, eaVar.f297i)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(eaVar.k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!k() || (k10 = i2.k(this.f289a, eaVar.f289a)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(eaVar.l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!l() || (c10 = i2.c(this.f285a, eaVar.f285a)) == 0) {
                                                            return 0;
                                                        }
                                                        return c10;
                                                    }
                                                    return k10;
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
                            return e15;
                        }
                        return e16;
                    }
                    return e17;
                }
                return d10;
            }
            return e18;
        }
        return getClass().getName().compareTo(eaVar.getClass().getName());
    }

    public ea a(String str) {
        this.f290b = str;
        return this;
    }

    public void a() {
        if (this.f290b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f291c != null) {
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
                a();
                return;
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f287a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f286a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f290b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f291c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f292d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 11) {
                        this.f293e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f294f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f295g = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f296h = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 11) {
                        this.f297i = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 11:
                    if (b10 == 2) {
                        this.f289a = p2Var.x();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 12:
                    if (b10 == 10) {
                        this.f285a = p2Var.d();
                        b(true);
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
        this.f288a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1508a() {
        return this.f287a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1509a(ea eaVar) {
        if (eaVar == null) {
            return false;
        }
        boolean m1508a = m1508a();
        boolean m1508a2 = eaVar.m1508a();
        if ((m1508a || m1508a2) && !(m1508a && m1508a2 && this.f287a.equals(eaVar.f287a))) {
            return false;
        }
        boolean b10 = b();
        boolean b11 = eaVar.b();
        if ((b10 || b11) && !(b10 && b11 && this.f286a.m1436a(eaVar.f286a))) {
            return false;
        }
        boolean c10 = c();
        boolean c11 = eaVar.c();
        if ((c10 || c11) && !(c10 && c11 && this.f290b.equals(eaVar.f290b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = eaVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f291c.equals(eaVar.f291c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = eaVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f292d.equals(eaVar.f292d))) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = eaVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f293e.equals(eaVar.f293e))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = eaVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f294f.equals(eaVar.f294f))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = eaVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f295g.equals(eaVar.f295g))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = eaVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f296h.equals(eaVar.f296h))) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = eaVar.j();
        if ((j10 || j11) && !(j10 && j11 && this.f297i.equals(eaVar.f297i))) {
            return false;
        }
        boolean k10 = k();
        boolean k11 = eaVar.k();
        if ((k10 || k11) && !(k10 && k11 && this.f289a == eaVar.f289a)) {
            return false;
        }
        boolean l10 = l();
        boolean l11 = eaVar.l();
        if (l10 || l11) {
            return l10 && l11 && this.f285a == eaVar.f285a;
        }
        return true;
    }

    public ea b(String str) {
        this.f291c = str;
        return this;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        a();
        p2Var.s(f284a);
        if (this.f287a != null && m1508a()) {
            p2Var.p(f36808a);
            p2Var.t(this.f287a);
            p2Var.y();
        }
        if (this.f286a != null && b()) {
            p2Var.p(f36809b);
            this.f286a.b(p2Var);
            p2Var.y();
        }
        if (this.f290b != null) {
            p2Var.p(f36810c);
            p2Var.t(this.f290b);
            p2Var.y();
        }
        if (this.f291c != null) {
            p2Var.p(f36811d);
            p2Var.t(this.f291c);
            p2Var.y();
        }
        if (this.f292d != null && e()) {
            p2Var.p(f36812e);
            p2Var.t(this.f292d);
            p2Var.y();
        }
        if (this.f293e != null && f()) {
            p2Var.p(f36813f);
            p2Var.t(this.f293e);
            p2Var.y();
        }
        if (this.f294f != null && g()) {
            p2Var.p(f36814g);
            p2Var.t(this.f294f);
            p2Var.y();
        }
        if (this.f295g != null && h()) {
            p2Var.p(f36815h);
            p2Var.t(this.f295g);
            p2Var.y();
        }
        if (this.f296h != null && i()) {
            p2Var.p(f36816i);
            p2Var.t(this.f296h);
            p2Var.y();
        }
        if (this.f297i != null && j()) {
            p2Var.p(f36817j);
            p2Var.t(this.f297i);
            p2Var.y();
        }
        if (k()) {
            p2Var.p(f36818k);
            p2Var.w(this.f289a);
            p2Var.y();
        }
        if (l()) {
            p2Var.p(f36819l);
            p2Var.o(this.f285a);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f288a.set(1, z10);
    }

    public boolean b() {
        return this.f286a != null;
    }

    public ea c(String str) {
        this.f292d = str;
        return this;
    }

    public boolean c() {
        return this.f290b != null;
    }

    public ea d(String str) {
        this.f294f = str;
        return this;
    }

    public boolean d() {
        return this.f291c != null;
    }

    public ea e(String str) {
        this.f295g = str;
        return this;
    }

    public boolean e() {
        return this.f292d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ea)) {
            return m1509a((ea) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f293e != null;
    }

    public boolean g() {
        return this.f294f != null;
    }

    public boolean h() {
        return this.f295g != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f296h != null;
    }

    public boolean j() {
        return this.f297i != null;
    }

    public boolean k() {
        return this.f288a.get(0);
    }

    public boolean l() {
        return this.f288a.get(1);
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionUnRegistration(");
        boolean z11 = false;
        if (m1508a()) {
            sb2.append("debug:");
            String str = this.f287a;
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
            dk dkVar = this.f286a;
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
        String str2 = this.f290b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f291c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("regId:");
            String str4 = this.f292d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("appVersion:");
            String str5 = this.f293e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str6 = this.f294f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("token:");
            String str7 = this.f295g;
            if (str7 == null) {
                sb2.append("null");
            } else {
                sb2.append(str7);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("deviceId:");
            String str8 = this.f296h;
            if (str8 == null) {
                sb2.append("null");
            } else {
                sb2.append(str8);
            }
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("aliasName:");
            String str9 = this.f297i;
            if (str9 == null) {
                sb2.append("null");
            } else {
                sb2.append(str9);
            }
        }
        if (k()) {
            sb2.append(", ");
            sb2.append("needAck:");
            sb2.append(this.f289a);
        }
        if (l()) {
            sb2.append(", ");
            sb2.append("createdTs:");
            sb2.append(this.f285a);
        }
        sb2.append(")");
        return sb2.toString();
    }
}
