package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes5.dex */
public class dp implements ef<dp, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f148a;

    /* renamed from: a  reason: collision with other field name */
    public dk f149a;

    /* renamed from: a  reason: collision with other field name */
    public String f150a;

    /* renamed from: a  reason: collision with other field name */
    public List<String> f152a;

    /* renamed from: b  reason: collision with other field name */
    public String f154b;

    /* renamed from: c  reason: collision with other field name */
    public String f155c;

    /* renamed from: d  reason: collision with other field name */
    public String f156d;

    /* renamed from: e  reason: collision with other field name */
    public String f157e;

    /* renamed from: f  reason: collision with other field name */
    public String f158f;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f147a = new s2("XmPushActionCommandResult");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36677a = new m2("", (byte) 12, 2);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36678b = new m2("", (byte) 11, 3);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36679c = new m2("", (byte) 11, 4);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36680d = new m2("", (byte) 11, 5);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36681e = new m2("", (byte) 10, 7);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36682f = new m2("", (byte) 11, 8);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36683g = new m2("", (byte) 11, 9);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36684h = new m2("", (byte) 15, 10);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36685i = new m2("", (byte) 11, 12);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36686j = new m2("", (byte) 2, 13);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f151a = new BitSet(2);

    /* renamed from: a  reason: collision with other field name */
    public boolean f153a = true;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dp dpVar) {
        int k10;
        int e10;
        int g10;
        int e11;
        int e12;
        int c10;
        int e13;
        int e14;
        int e15;
        int d10;
        if (getClass().equals(dpVar.getClass())) {
            int compareTo = Boolean.valueOf(m1451a()).compareTo(Boolean.valueOf(dpVar.m1451a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1451a() || (d10 = i2.d(this.f149a, dpVar.f149a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1453b()).compareTo(Boolean.valueOf(dpVar.m1453b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1453b() || (e15 = i2.e(this.f150a, dpVar.f150a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1454c()).compareTo(Boolean.valueOf(dpVar.m1454c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1454c() || (e14 = i2.e(this.f154b, dpVar.f154b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dpVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e13 = i2.e(this.f155c, dpVar.f155c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dpVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c10 = i2.c(this.f148a, dpVar.f148a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dpVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e12 = i2.e(this.f156d, dpVar.f156d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dpVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e11 = i2.e(this.f157e, dpVar.f157e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dpVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (g10 = i2.g(this.f152a, dpVar.f152a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dpVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e10 = i2.e(this.f158f, dpVar.f158f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(dpVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (k10 = i2.k(this.f153a, dpVar.f153a)) == 0) {
                                                    return 0;
                                                }
                                                return k10;
                                            }
                                            return e10;
                                        }
                                        return g10;
                                    }
                                    return e11;
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
        return getClass().getName().compareTo(dpVar.getClass().getName());
    }

    public String a() {
        return this.f150a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public List<String> m1449a() {
        return this.f152a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1450a() {
        if (this.f150a == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f154b == null) {
            throw new eq("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f155c != null) {
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
                if (e()) {
                    m1450a();
                    return;
                }
                throw new eq("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (e10.f36994c) {
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f149a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f150a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f154b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f155c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 10) {
                        this.f148a = p2Var.d();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f156d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f157e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 15) {
                        n2 f10 = p2Var.f();
                        this.f152a = new ArrayList(f10.f37002b);
                        for (int i9 = 0; i9 < f10.f37002b; i9++) {
                            this.f152a.add(p2Var.j());
                        }
                        p2Var.F();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 12:
                    if (b10 == 11) {
                        this.f158f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 13:
                    if (b10 == 2) {
                        this.f153a = p2Var.x();
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
        this.f151a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1451a() {
        return this.f149a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1452a(dp dpVar) {
        if (dpVar == null) {
            return false;
        }
        boolean m1451a = m1451a();
        boolean m1451a2 = dpVar.m1451a();
        if ((m1451a || m1451a2) && !(m1451a && m1451a2 && this.f149a.m1436a(dpVar.f149a))) {
            return false;
        }
        boolean m1453b = m1453b();
        boolean m1453b2 = dpVar.m1453b();
        if ((m1453b || m1453b2) && !(m1453b && m1453b2 && this.f150a.equals(dpVar.f150a))) {
            return false;
        }
        boolean m1454c = m1454c();
        boolean m1454c2 = dpVar.m1454c();
        if ((m1454c || m1454c2) && !(m1454c && m1454c2 && this.f154b.equals(dpVar.f154b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dpVar.d();
        if (((d10 || d11) && !(d10 && d11 && this.f155c.equals(dpVar.f155c))) || this.f148a != dpVar.f148a) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dpVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f156d.equals(dpVar.f156d))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dpVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f157e.equals(dpVar.f157e))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = dpVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f152a.equals(dpVar.f152a))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = dpVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f158f.equals(dpVar.f158f))) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = dpVar.j();
        if (j10 || j11) {
            return j10 && j11 && this.f153a == dpVar.f153a;
        }
        return true;
    }

    public String b() {
        return this.f155c;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1450a();
        p2Var.s(f147a);
        if (this.f149a != null && m1451a()) {
            p2Var.p(f36677a);
            this.f149a.b(p2Var);
            p2Var.y();
        }
        if (this.f150a != null) {
            p2Var.p(f36678b);
            p2Var.t(this.f150a);
            p2Var.y();
        }
        if (this.f154b != null) {
            p2Var.p(f36679c);
            p2Var.t(this.f154b);
            p2Var.y();
        }
        if (this.f155c != null) {
            p2Var.p(f36680d);
            p2Var.t(this.f155c);
            p2Var.y();
        }
        p2Var.p(f36681e);
        p2Var.o(this.f148a);
        p2Var.y();
        if (this.f156d != null && f()) {
            p2Var.p(f36682f);
            p2Var.t(this.f156d);
            p2Var.y();
        }
        if (this.f157e != null && g()) {
            p2Var.p(f36683g);
            p2Var.t(this.f157e);
            p2Var.y();
        }
        if (this.f152a != null && h()) {
            p2Var.p(f36684h);
            p2Var.q(new n2((byte) 11, this.f152a.size()));
            for (String str : this.f152a) {
                p2Var.t(str);
            }
            p2Var.B();
            p2Var.y();
        }
        if (this.f158f != null && i()) {
            p2Var.p(f36685i);
            p2Var.t(this.f158f);
            p2Var.y();
        }
        if (j()) {
            p2Var.p(f36686j);
            p2Var.w(this.f153a);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f151a.set(1, z10);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1453b() {
        return this.f150a != null;
    }

    public String c() {
        return this.f158f;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1454c() {
        return this.f154b != null;
    }

    public boolean d() {
        return this.f155c != null;
    }

    public boolean e() {
        return this.f151a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dp)) {
            return m1452a((dp) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f156d != null;
    }

    public boolean g() {
        return this.f157e != null;
    }

    public boolean h() {
        return this.f152a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f158f != null;
    }

    public boolean j() {
        return this.f151a.get(1);
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionCommandResult(");
        if (m1451a()) {
            sb2.append("target:");
            dk dkVar = this.f149a;
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
        String str = this.f150a;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(str);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str2 = this.f154b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("cmdName:");
        String str3 = this.f155c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("errorCode:");
        sb2.append(this.f148a);
        if (f()) {
            sb2.append(", ");
            sb2.append("reason:");
            String str4 = this.f156d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str5 = this.f157e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("cmdArgs:");
            List<String> list = this.f152a;
            if (list == null) {
                sb2.append("null");
            } else {
                sb2.append(list);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("category:");
            String str6 = this.f158f;
            if (str6 == null) {
                sb2.append("null");
            } else {
                sb2.append(str6);
            }
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("response2Client:");
            sb2.append(this.f153a);
        }
        sb2.append(")");
        return sb2.toString();
    }
}
