package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class dk implements ef<dk, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public String f91a;

    /* renamed from: d  reason: collision with other field name */
    public String f96d;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f89a = new s2("Target");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36629a = new m2("", (byte) 10, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36630b = new m2("", (byte) 11, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36631c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36632d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36633e = new m2("", (byte) 2, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36634f = new m2("", (byte) 11, 7);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f92a = new BitSet(2);

    /* renamed from: a  reason: collision with other field name */
    public long f90a = 5;

    /* renamed from: b  reason: collision with other field name */
    public String f94b = "xiaomi.com";

    /* renamed from: c  reason: collision with other field name */
    public String f95c = "";

    /* renamed from: a  reason: collision with other field name */
    public boolean f93a = false;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dk dkVar) {
        int e10;
        int k10;
        int e11;
        int e12;
        int e13;
        int c10;
        if (getClass().equals(dkVar.getClass())) {
            int compareTo = Boolean.valueOf(m1435a()).compareTo(Boolean.valueOf(dkVar.m1435a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1435a() || (c10 = i2.c(this.f90a, dkVar.f90a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(dkVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (e13 = i2.e(this.f91a, dkVar.f91a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(dkVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (e12 = i2.e(this.f94b, dkVar.f94b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dkVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e11 = i2.e(this.f95c, dkVar.f95c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dkVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (k10 = i2.k(this.f93a, dkVar.f93a)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dkVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e10 = i2.e(this.f96d, dkVar.f96d)) == 0) {
                                    return 0;
                                }
                                return e10;
                            }
                            return k10;
                        }
                        return e11;
                    }
                    return e12;
                }
                return e13;
            }
            return c10;
        }
        return getClass().getName().compareTo(dkVar.getClass().getName());
    }

    public void a() {
        if (this.f91a != null) {
            return;
        }
        throw new eq("Required field 'userId' was not present! Struct: " + toString());
    }

    @Override // com.xiaomi.push.ef
    public void a(p2 p2Var) {
        p2Var.i();
        while (true) {
            m2 e10 = p2Var.e();
            byte b10 = e10.f36993b;
            if (b10 == 0) {
                break;
            }
            short s10 = e10.f36994c;
            if (s10 == 1) {
                if (b10 == 10) {
                    this.f90a = p2Var.d();
                    a(true);
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else if (s10 == 2) {
                if (b10 == 11) {
                    this.f91a = p2Var.j();
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else if (s10 == 3) {
                if (b10 == 11) {
                    this.f94b = p2Var.j();
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else if (s10 == 4) {
                if (b10 == 11) {
                    this.f95c = p2Var.j();
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else if (s10 != 5) {
                if (s10 == 7 && b10 == 11) {
                    this.f96d = p2Var.j();
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else {
                if (b10 == 2) {
                    this.f93a = p2Var.x();
                    b(true);
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            }
        }
        p2Var.C();
        if (m1435a()) {
            a();
            return;
        }
        throw new eq("Required field 'channelId' was not found in serialized data! Struct: " + toString());
    }

    public void a(boolean z10) {
        this.f92a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1435a() {
        return this.f92a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1436a(dk dkVar) {
        if (dkVar != null && this.f90a == dkVar.f90a) {
            boolean b10 = b();
            boolean b11 = dkVar.b();
            if ((b10 || b11) && !(b10 && b11 && this.f91a.equals(dkVar.f91a))) {
                return false;
            }
            boolean c10 = c();
            boolean c11 = dkVar.c();
            if ((c10 || c11) && !(c10 && c11 && this.f94b.equals(dkVar.f94b))) {
                return false;
            }
            boolean d10 = d();
            boolean d11 = dkVar.d();
            if ((d10 || d11) && !(d10 && d11 && this.f95c.equals(dkVar.f95c))) {
                return false;
            }
            boolean e10 = e();
            boolean e11 = dkVar.e();
            if ((e10 || e11) && !(e10 && e11 && this.f93a == dkVar.f93a)) {
                return false;
            }
            boolean f10 = f();
            boolean f11 = dkVar.f();
            if (f10 || f11) {
                return f10 && f11 && this.f96d.equals(dkVar.f96d);
            }
            return true;
        }
        return false;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        a();
        p2Var.s(f89a);
        p2Var.p(f36629a);
        p2Var.o(this.f90a);
        p2Var.y();
        if (this.f91a != null) {
            p2Var.p(f36630b);
            p2Var.t(this.f91a);
            p2Var.y();
        }
        if (this.f94b != null && c()) {
            p2Var.p(f36631c);
            p2Var.t(this.f94b);
            p2Var.y();
        }
        if (this.f95c != null && d()) {
            p2Var.p(f36632d);
            p2Var.t(this.f95c);
            p2Var.y();
        }
        if (e()) {
            p2Var.p(f36633e);
            p2Var.w(this.f93a);
            p2Var.y();
        }
        if (this.f96d != null && f()) {
            p2Var.p(f36634f);
            p2Var.t(this.f96d);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f92a.set(1, z10);
    }

    public boolean b() {
        return this.f91a != null;
    }

    public boolean c() {
        return this.f94b != null;
    }

    public boolean d() {
        return this.f95c != null;
    }

    public boolean e() {
        return this.f92a.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dk)) {
            return m1436a((dk) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f96d != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Target(");
        sb2.append("channelId:");
        sb2.append(this.f90a);
        sb2.append(", ");
        sb2.append("userId:");
        String str = this.f91a;
        if (str == null) {
            sb2.append("null");
        } else {
            sb2.append(str);
        }
        if (c()) {
            sb2.append(", ");
            sb2.append("server:");
            String str2 = this.f94b;
            if (str2 == null) {
                sb2.append("null");
            } else {
                sb2.append(str2);
            }
        }
        if (d()) {
            sb2.append(", ");
            sb2.append("resource:");
            String str3 = this.f95c;
            if (str3 == null) {
                sb2.append("null");
            } else {
                sb2.append(str3);
            }
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("isPreview:");
            sb2.append(this.f93a);
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("token:");
            String str4 = this.f96d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
