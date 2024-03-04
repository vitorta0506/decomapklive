package com.xiaomi.push;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
/* loaded from: classes5.dex */
public class dq implements ef<dq, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public cz f160a;

    /* renamed from: a  reason: collision with other field name */
    public di f161a;

    /* renamed from: a  reason: collision with other field name */
    public dk f162a;

    /* renamed from: a  reason: collision with other field name */
    public String f163a;

    /* renamed from: a  reason: collision with other field name */
    public ByteBuffer f164a;

    /* renamed from: b  reason: collision with other field name */
    public String f167b;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f159a = new s2("XmPushActionContainer");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36687a = new m2("", (byte) 8, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36688b = new m2("", (byte) 2, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36689c = new m2("", (byte) 2, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36690d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36691e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36692f = new m2("", (byte) 11, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36693g = new m2("", (byte) 12, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36694h = new m2("", (byte) 12, 8);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f165a = new BitSet(2);

    /* renamed from: a  reason: collision with other field name */
    public boolean f166a = true;

    /* renamed from: b  reason: collision with other field name */
    public boolean f168b = true;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(dq dqVar) {
        int d10;
        int d11;
        int e10;
        int e11;
        int d12;
        int k10;
        int k11;
        int d13;
        if (getClass().equals(dqVar.getClass())) {
            int compareTo = Boolean.valueOf(m1459a()).compareTo(Boolean.valueOf(dqVar.m1459a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1459a() || (d13 = i2.d(this.f160a, dqVar.f160a)) == 0) {
                int compareTo2 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(dqVar.c()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!c() || (k11 = i2.k(this.f166a, dqVar.f166a)) == 0) {
                    int compareTo3 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(dqVar.d()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!d() || (k10 = i2.k(this.f168b, dqVar.f168b)) == 0) {
                        int compareTo4 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(dqVar.e()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!e() || (d12 = i2.d(this.f164a, dqVar.f164a)) == 0) {
                            int compareTo5 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(dqVar.f()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!f() || (e11 = i2.e(this.f163a, dqVar.f163a)) == 0) {
                                int compareTo6 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(dqVar.g()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!g() || (e10 = i2.e(this.f167b, dqVar.f167b)) == 0) {
                                    int compareTo7 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(dqVar.h()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!h() || (d11 = i2.d(this.f162a, dqVar.f162a)) == 0) {
                                        int compareTo8 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(dqVar.i()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!i() || (d10 = i2.d(this.f161a, dqVar.f161a)) == 0) {
                                            return 0;
                                        }
                                        return d10;
                                    }
                                    return d11;
                                }
                                return e10;
                            }
                            return e11;
                        }
                        return d12;
                    }
                    return k10;
                }
                return k11;
            }
            return d13;
        }
        return getClass().getName().compareTo(dqVar.getClass().getName());
    }

    public cz a() {
        return this.f160a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public di m1455a() {
        return this.f161a;
    }

    public dq a(cz czVar) {
        this.f160a = czVar;
        return this;
    }

    public dq a(di diVar) {
        this.f161a = diVar;
        return this;
    }

    public dq a(dk dkVar) {
        this.f162a = dkVar;
        return this;
    }

    public dq a(String str) {
        this.f163a = str;
        return this;
    }

    public dq a(ByteBuffer byteBuffer) {
        this.f164a = byteBuffer;
        return this;
    }

    public dq a(boolean z10) {
        this.f166a = z10;
        m1458a(true);
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m1456a() {
        return this.f163a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1457a() {
        if (this.f160a == null) {
            throw new eq("Required field 'action' was not present! Struct: " + toString());
        } else if (this.f164a == null) {
            throw new eq("Required field 'pushAction' was not present! Struct: " + toString());
        } else if (this.f162a != null) {
        } else {
            throw new eq("Required field 'target' was not present! Struct: " + toString());
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
                if (!c()) {
                    throw new eq("Required field 'encryptAction' was not found in serialized data! Struct: " + toString());
                } else if (d()) {
                    m1457a();
                    return;
                } else {
                    throw new eq("Required field 'isRequest' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (e10.f36994c) {
                case 1:
                    if (b10 == 8) {
                        this.f160a = cz.a(p2Var.c());
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 2) {
                        this.f166a = p2Var.x();
                        m1458a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 2) {
                        this.f168b = p2Var.x();
                        m1462b(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f164a = p2Var.k();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f163a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 11) {
                        this.f167b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f162a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 12) {
                        di diVar = new di();
                        this.f161a = diVar;
                        diVar.a(p2Var);
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
    public void m1458a(boolean z10) {
        this.f165a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1459a() {
        return this.f160a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1460a(dq dqVar) {
        if (dqVar == null) {
            return false;
        }
        boolean m1459a = m1459a();
        boolean m1459a2 = dqVar.m1459a();
        if (((!m1459a && !m1459a2) || (m1459a && m1459a2 && this.f160a.equals(dqVar.f160a))) && this.f166a == dqVar.f166a && this.f168b == dqVar.f168b) {
            boolean e10 = e();
            boolean e11 = dqVar.e();
            if ((e10 || e11) && !(e10 && e11 && this.f164a.equals(dqVar.f164a))) {
                return false;
            }
            boolean f10 = f();
            boolean f11 = dqVar.f();
            if ((f10 || f11) && !(f10 && f11 && this.f163a.equals(dqVar.f163a))) {
                return false;
            }
            boolean g10 = g();
            boolean g11 = dqVar.g();
            if ((g10 || g11) && !(g10 && g11 && this.f167b.equals(dqVar.f167b))) {
                return false;
            }
            boolean h10 = h();
            boolean h11 = dqVar.h();
            if ((h10 || h11) && !(h10 && h11 && this.f162a.m1436a(dqVar.f162a))) {
                return false;
            }
            boolean i9 = i();
            boolean i10 = dqVar.i();
            if (i9 || i10) {
                return i9 && i10 && this.f161a.m1428a(dqVar.f161a);
            }
            return true;
        }
        return false;
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m1461a() {
        a(i2.n(this.f164a));
        return this.f164a.array();
    }

    public dq b(String str) {
        this.f167b = str;
        return this;
    }

    public dq b(boolean z10) {
        this.f168b = z10;
        m1462b(true);
        return this;
    }

    public String b() {
        return this.f167b;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1457a();
        p2Var.s(f159a);
        if (this.f160a != null) {
            p2Var.p(f36687a);
            p2Var.n(this.f160a.a());
            p2Var.y();
        }
        p2Var.p(f36688b);
        p2Var.w(this.f166a);
        p2Var.y();
        p2Var.p(f36689c);
        p2Var.w(this.f168b);
        p2Var.y();
        if (this.f164a != null) {
            p2Var.p(f36690d);
            p2Var.u(this.f164a);
            p2Var.y();
        }
        if (this.f163a != null && f()) {
            p2Var.p(f36691e);
            p2Var.t(this.f163a);
            p2Var.y();
        }
        if (this.f167b != null && g()) {
            p2Var.p(f36692f);
            p2Var.t(this.f167b);
            p2Var.y();
        }
        if (this.f162a != null) {
            p2Var.p(f36693g);
            this.f162a.b(p2Var);
            p2Var.y();
        }
        if (this.f161a != null && i()) {
            p2Var.p(f36694h);
            this.f161a.b(p2Var);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m1462b(boolean z10) {
        this.f165a.set(1, z10);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1463b() {
        return this.f166a;
    }

    public boolean c() {
        return this.f165a.get(0);
    }

    public boolean d() {
        return this.f165a.get(1);
    }

    public boolean e() {
        return this.f164a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof dq)) {
            return m1460a((dq) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f163a != null;
    }

    public boolean g() {
        return this.f167b != null;
    }

    public boolean h() {
        return this.f162a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f161a != null;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("XmPushActionContainer(");
        sb2.append("action:");
        cz czVar = this.f160a;
        if (czVar == null) {
            sb2.append("null");
        } else {
            sb2.append(czVar);
        }
        sb2.append(", ");
        sb2.append("encryptAction:");
        sb2.append(this.f166a);
        sb2.append(", ");
        sb2.append("isRequest:");
        sb2.append(this.f168b);
        if (f()) {
            sb2.append(", ");
            sb2.append("appid:");
            String str = this.f163a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
        }
        if (g()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str2 = this.f167b;
            if (str2 == null) {
                sb2.append("null");
            } else {
                sb2.append(str2);
            }
        }
        sb2.append(", ");
        sb2.append("target:");
        dk dkVar = this.f162a;
        if (dkVar == null) {
            sb2.append("null");
        } else {
            sb2.append(dkVar);
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("metaInfo:");
            di diVar = this.f161a;
            if (diVar == null) {
                sb2.append("null");
            } else {
                sb2.append(diVar);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
