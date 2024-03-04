package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class ds implements ef<ds, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public List<de> f172a;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f171a = new s2("XmPushActionNormalConfig");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36696a = new m2("", (byte) 15, 1);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(ds dsVar) {
        int g10;
        if (getClass().equals(dsVar.getClass())) {
            int compareTo = Boolean.valueOf(m1468a()).compareTo(Boolean.valueOf(dsVar.m1468a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1468a() || (g10 = i2.g(this.f172a, dsVar.f172a)) == 0) {
                return 0;
            }
            return g10;
        }
        return getClass().getName().compareTo(dsVar.getClass().getName());
    }

    public List<de> a() {
        return this.f172a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1467a() {
        if (this.f172a != null) {
            return;
        }
        throw new eq("Required field 'normalConfigs' was not present! Struct: " + toString());
    }

    @Override // com.xiaomi.push.ef
    public void a(p2 p2Var) {
        p2Var.i();
        while (true) {
            m2 e10 = p2Var.e();
            byte b10 = e10.f36993b;
            if (b10 == 0) {
                p2Var.C();
                m1467a();
                return;
            }
            if (e10.f36994c == 1 && b10 == 15) {
                n2 f10 = p2Var.f();
                this.f172a = new ArrayList(f10.f37002b);
                for (int i9 = 0; i9 < f10.f37002b; i9++) {
                    de deVar = new de();
                    deVar.a(p2Var);
                    this.f172a.add(deVar);
                }
                p2Var.F();
            } else {
                q2.a(p2Var, b10);
            }
            p2Var.D();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1468a() {
        return this.f172a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1469a(ds dsVar) {
        if (dsVar == null) {
            return false;
        }
        boolean m1468a = m1468a();
        boolean m1468a2 = dsVar.m1468a();
        if (m1468a || m1468a2) {
            return m1468a && m1468a2 && this.f172a.equals(dsVar.f172a);
        }
        return true;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1467a();
        p2Var.s(f171a);
        if (this.f172a != null) {
            p2Var.p(f36696a);
            p2Var.q(new n2((byte) 12, this.f172a.size()));
            for (de deVar : this.f172a) {
                deVar.b(p2Var);
            }
            p2Var.B();
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ds)) {
            return m1469a((ds) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("XmPushActionNormalConfig(");
        sb2.append("normalConfigs:");
        List<de> list = this.f172a;
        if (list == null) {
            sb2.append("null");
        } else {
            sb2.append(list);
        }
        sb2.append(")");
        return sb2.toString();
    }
}
