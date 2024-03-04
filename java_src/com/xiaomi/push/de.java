package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
/* loaded from: classes5.dex */
public class de implements ef<de, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f37a;

    /* renamed from: a  reason: collision with other field name */
    public dc f38a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f39a = new BitSet(1);

    /* renamed from: a  reason: collision with other field name */
    public List<dg> f40a;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f36a = new s2("NormalConfig");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36552a = new m2("", (byte) 8, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36553b = new m2("", (byte) 15, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36554c = new m2("", (byte) 8, 3);

    public int a() {
        return this.f37a;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(de deVar) {
        int d10;
        int g10;
        int b10;
        if (getClass().equals(deVar.getClass())) {
            int compareTo = Boolean.valueOf(m1407a()).compareTo(Boolean.valueOf(deVar.m1407a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1407a() || (b10 = i2.b(this.f37a, deVar.f37a)) == 0) {
                int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(deVar.b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!b() || (g10 = i2.g(this.f40a, deVar.f40a)) == 0) {
                    int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(deVar.c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!c() || (d10 = i2.d(this.f38a, deVar.f38a)) == 0) {
                        return 0;
                    }
                    return d10;
                }
                return g10;
            }
            return b10;
        }
        return getClass().getName().compareTo(deVar.getClass().getName());
    }

    /* renamed from: a  reason: collision with other method in class */
    public dc m1405a() {
        return this.f38a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1406a() {
        if (this.f40a != null) {
            return;
        }
        throw new eq("Required field 'configItems' was not present! Struct: " + toString());
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
                if (b10 == 8) {
                    this.f37a = p2Var.c();
                    a(true);
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else if (s10 != 2) {
                if (s10 == 3 && b10 == 8) {
                    this.f38a = dc.a(p2Var.c());
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            } else {
                if (b10 == 15) {
                    n2 f10 = p2Var.f();
                    this.f40a = new ArrayList(f10.f37002b);
                    for (int i9 = 0; i9 < f10.f37002b; i9++) {
                        dg dgVar = new dg();
                        dgVar.a(p2Var);
                        this.f40a.add(dgVar);
                    }
                    p2Var.F();
                    p2Var.D();
                }
                q2.a(p2Var, b10);
                p2Var.D();
            }
        }
        p2Var.C();
        if (m1407a()) {
            m1406a();
            return;
        }
        throw new eq("Required field 'version' was not found in serialized data! Struct: " + toString());
    }

    public void a(boolean z10) {
        this.f39a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1407a() {
        return this.f39a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1408a(de deVar) {
        if (deVar != null && this.f37a == deVar.f37a) {
            boolean b10 = b();
            boolean b11 = deVar.b();
            if ((b10 || b11) && !(b10 && b11 && this.f40a.equals(deVar.f40a))) {
                return false;
            }
            boolean c10 = c();
            boolean c11 = deVar.c();
            if (c10 || c11) {
                return c10 && c11 && this.f38a.equals(deVar.f38a);
            }
            return true;
        }
        return false;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1406a();
        p2Var.s(f36a);
        p2Var.p(f36552a);
        p2Var.n(this.f37a);
        p2Var.y();
        if (this.f40a != null) {
            p2Var.p(f36553b);
            p2Var.q(new n2((byte) 12, this.f40a.size()));
            for (dg dgVar : this.f40a) {
                dgVar.b(p2Var);
            }
            p2Var.B();
            p2Var.y();
        }
        if (this.f38a != null && c()) {
            p2Var.p(f36554c);
            p2Var.n(this.f38a.a());
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public boolean b() {
        return this.f40a != null;
    }

    public boolean c() {
        return this.f38a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof de)) {
            return m1408a((de) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("NormalConfig(");
        sb2.append("version:");
        sb2.append(this.f37a);
        sb2.append(", ");
        sb2.append("configItems:");
        List<dg> list = this.f40a;
        if (list == null) {
            sb2.append("null");
        } else {
            sb2.append(list);
        }
        if (c()) {
            sb2.append(", ");
            sb2.append("type:");
            dc dcVar = this.f38a;
            if (dcVar == null) {
                sb2.append("null");
            } else {
                sb2.append(dcVar);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
