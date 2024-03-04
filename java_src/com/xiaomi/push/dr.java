package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class dr implements ef<dr, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public List<dg> f170a;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f169a = new s2("XmPushActionCustomConfig");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36695a = new m2("", (byte) 15, 1);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dr drVar) {
        int g10;
        if (getClass().equals(drVar.getClass())) {
            int compareTo = Boolean.valueOf(m1465a()).compareTo(Boolean.valueOf(drVar.m1465a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1465a() || (g10 = i2.g(this.f170a, drVar.f170a)) == 0) {
                return 0;
            }
            return g10;
        }
        return getClass().getName().compareTo(drVar.getClass().getName());
    }

    public List<dg> a() {
        return this.f170a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1464a() {
        if (this.f170a != null) {
            return;
        }
        throw new eq("Required field 'customConfigs' was not present! Struct: " + toString());
    }

    @Override // com.xiaomi.push.ef
    public void a(p2 p2Var) {
        p2Var.i();
        while (true) {
            m2 e10 = p2Var.e();
            byte b10 = e10.f36993b;
            if (b10 == 0) {
                p2Var.C();
                m1464a();
                return;
            }
            if (e10.f36994c == 1 && b10 == 15) {
                n2 f10 = p2Var.f();
                this.f170a = new ArrayList(f10.f37002b);
                for (int i9 = 0; i9 < f10.f37002b; i9++) {
                    dg dgVar = new dg();
                    dgVar.a(p2Var);
                    this.f170a.add(dgVar);
                }
                p2Var.F();
            } else {
                q2.a(p2Var, b10);
            }
            p2Var.D();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1465a() {
        return this.f170a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1466a(dr drVar) {
        if (drVar == null) {
            return false;
        }
        boolean m1465a = m1465a();
        boolean m1465a2 = drVar.m1465a();
        if (m1465a || m1465a2) {
            return m1465a && m1465a2 && this.f170a.equals(drVar.f170a);
        }
        return true;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1464a();
        p2Var.s(f169a);
        if (this.f170a != null) {
            p2Var.p(f36695a);
            p2Var.q(new n2((byte) 12, this.f170a.size()));
            for (dg dgVar : this.f170a) {
                dgVar.b(p2Var);
            }
            p2Var.B();
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dr)) {
            return m1466a((dr) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("XmPushActionCustomConfig(");
        sb2.append("customConfigs:");
        List<dg> list = this.f170a;
        if (list == null) {
            sb2.append("null");
        } else {
            sb2.append(list);
        }
        sb2.append(")");
        return sb2.toString();
    }
}
