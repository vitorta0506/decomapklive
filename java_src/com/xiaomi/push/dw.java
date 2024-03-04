package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class dw implements ef<dw, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f242a;

    /* renamed from: a  reason: collision with other field name */
    public dk f243a;

    /* renamed from: a  reason: collision with other field name */
    public String f244a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f245a = new BitSet(1);

    /* renamed from: b  reason: collision with other field name */
    public String f246b;

    /* renamed from: c  reason: collision with other field name */
    public String f247c;

    /* renamed from: d  reason: collision with other field name */
    public String f248d;

    /* renamed from: e  reason: collision with other field name */
    public String f249e;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f241a = new s2("XmPushActionSendFeedbackResult");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36756a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36757b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36758c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36759d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36760e = new m2("", (byte) 10, 6);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36761f = new m2("", (byte) 11, 7);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36762g = new m2("", (byte) 11, 8);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dw dwVar) {
        int e10;
        int e11;
        int c10;
        int e12;
        int e13;
        int d10;
        int e14;
        if (getClass().equals(dwVar.getClass())) {
            int compareTo = Boolean.valueOf(m1490a()).compareTo(Boolean.valueOf(dwVar.m1490a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1490a() || (e14 = i2.e(this.f244a, dwVar.f244a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(dwVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (d10 = i2.d(this.f243a, dwVar.f243a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(dwVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e13 = i2.e(this.f246b, dwVar.f246b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dwVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e12 = i2.e(this.f247c, dwVar.f247c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dwVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (c10 = i2.c(this.f242a, dwVar.f242a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dwVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e11 = i2.e(this.f248d, dwVar.f248d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dwVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e10 = i2.e(this.f249e, dwVar.f249e)) == 0) {
                                        return 0;
                                    }
                                    return e10;
                                }
                                return e11;
                            }
                            return c10;
                        }
                        return e12;
                    }
                    return e13;
                }
                return d10;
            }
            return e14;
        }
        return getClass().getName().compareTo(dwVar.getClass().getName());
    }

    public void a() {
        if (this.f246b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f247c != null) {
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
                if (e()) {
                    a();
                    return;
                }
                throw new eq("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 11) {
                        this.f244a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f243a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f246b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f247c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 10) {
                        this.f242a = p2Var.d();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f248d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f249e = p2Var.j();
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
        this.f245a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1490a() {
        return this.f244a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1491a(dw dwVar) {
        if (dwVar == null) {
            return false;
        }
        boolean m1490a = m1490a();
        boolean m1490a2 = dwVar.m1490a();
        if ((m1490a || m1490a2) && !(m1490a && m1490a2 && this.f244a.equals(dwVar.f244a))) {
            return false;
        }
        boolean b10 = b();
        boolean b11 = dwVar.b();
        if ((b10 || b11) && !(b10 && b11 && this.f243a.m1436a(dwVar.f243a))) {
            return false;
        }
        boolean c10 = c();
        boolean c11 = dwVar.c();
        if ((c10 || c11) && !(c10 && c11 && this.f246b.equals(dwVar.f246b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = dwVar.d();
        if (((d10 || d11) && !(d10 && d11 && this.f247c.equals(dwVar.f247c))) || this.f242a != dwVar.f242a) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = dwVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f248d.equals(dwVar.f248d))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = dwVar.g();
        if (g10 || g11) {
            return g10 && g11 && this.f249e.equals(dwVar.f249e);
        }
        return true;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        a();
        p2Var.s(f241a);
        if (this.f244a != null && m1490a()) {
            p2Var.p(f36756a);
            p2Var.t(this.f244a);
            p2Var.y();
        }
        if (this.f243a != null && b()) {
            p2Var.p(f36757b);
            this.f243a.b(p2Var);
            p2Var.y();
        }
        if (this.f246b != null) {
            p2Var.p(f36758c);
            p2Var.t(this.f246b);
            p2Var.y();
        }
        if (this.f247c != null) {
            p2Var.p(f36759d);
            p2Var.t(this.f247c);
            p2Var.y();
        }
        p2Var.p(f36760e);
        p2Var.o(this.f242a);
        p2Var.y();
        if (this.f248d != null && f()) {
            p2Var.p(f36761f);
            p2Var.t(this.f248d);
            p2Var.y();
        }
        if (this.f249e != null && g()) {
            p2Var.p(f36762g);
            p2Var.t(this.f249e);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public boolean b() {
        return this.f243a != null;
    }

    public boolean c() {
        return this.f246b != null;
    }

    public boolean d() {
        return this.f247c != null;
    }

    public boolean e() {
        return this.f245a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dw)) {
            return m1491a((dw) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f248d != null;
    }

    public boolean g() {
        return this.f249e != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionSendFeedbackResult(");
        boolean z11 = false;
        if (m1490a()) {
            sb2.append("debug:");
            String str = this.f244a;
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
            dk dkVar = this.f243a;
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
        String str2 = this.f246b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(str2);
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f247c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        sb2.append(", ");
        sb2.append("errorCode:");
        sb2.append(this.f242a);
        if (f()) {
            sb2.append(", ");
            sb2.append("reason:");
            String str4 = this.f248d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("category:");
            String str5 = this.f249e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
