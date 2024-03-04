package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class dn implements ef<dn, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f132a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f133a = new BitSet(2);

    /* renamed from: b  reason: collision with other field name */
    public int f134b;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f131a = new s2("XmPushActionCheckClientInfo");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36665a = new m2("", (byte) 8, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36666b = new m2("", (byte) 8, 2);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dn dnVar) {
        int b10;
        int b11;
        if (getClass().equals(dnVar.getClass())) {
            int compareTo = Boolean.valueOf(m1444a()).compareTo(Boolean.valueOf(dnVar.m1444a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1444a() || (b11 = i2.b(this.f132a, dnVar.f132a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(dnVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (b10 = i2.b(this.f134b, dnVar.f134b)) == 0) {
                    return 0;
                }
                return b10;
            }
            return b11;
        }
        return getClass().getName().compareTo(dnVar.getClass().getName());
    }

    public dn a(int i9) {
        this.f132a = i9;
        a(true);
        return this;
    }

    public void a() {
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
            if (s10 != 1) {
                if (s10 == 2 && b10 == 8) {
                    this.f134b = p2Var.c();
                    b(true);
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else {
                if (b10 == 8) {
                    this.f132a = p2Var.c();
                    a(true);
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            }
        }
        p2Var.C();
        if (!m1444a()) {
            throw new eq("Required field 'miscConfigVersion' was not found in serialized data! Struct: " + toString());
        } else if (b()) {
            a();
        } else {
            throw new eq("Required field 'pluginConfigVersion' was not found in serialized data! Struct: " + toString());
        }
    }

    public void a(boolean z10) {
        this.f133a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1444a() {
        return this.f133a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1445a(dn dnVar) {
        return dnVar != null && this.f132a == dnVar.f132a && this.f134b == dnVar.f134b;
    }

    public dn b(int i9) {
        this.f134b = i9;
        b(true);
        return this;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        a();
        p2Var.s(f131a);
        p2Var.p(f36665a);
        p2Var.n(this.f132a);
        p2Var.y();
        p2Var.p(f36666b);
        p2Var.n(this.f134b);
        p2Var.y();
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f133a.set(1, z10);
    }

    public boolean b() {
        return this.f133a.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dn)) {
            return m1445a((dn) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "XmPushActionCheckClientInfo(miscConfigVersion:" + this.f132a + ", pluginConfigVersion:" + this.f134b + ")";
    }
}
