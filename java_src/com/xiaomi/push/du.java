package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class du implements ef<du, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f191a;

    /* renamed from: a  reason: collision with other field name */
    public long f192a;

    /* renamed from: a  reason: collision with other field name */
    public dj f193a;

    /* renamed from: a  reason: collision with other field name */
    public dk f194a;

    /* renamed from: a  reason: collision with other field name */
    public String f195a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f197a;

    /* renamed from: b  reason: collision with other field name */
    public int f199b;

    /* renamed from: b  reason: collision with other field name */
    public long f200b;

    /* renamed from: b  reason: collision with other field name */
    public String f201b;

    /* renamed from: c  reason: collision with other field name */
    public int f203c;

    /* renamed from: c  reason: collision with other field name */
    public String f204c;

    /* renamed from: d  reason: collision with other field name */
    public String f206d;

    /* renamed from: e  reason: collision with other field name */
    public String f207e;

    /* renamed from: f  reason: collision with other field name */
    public String f208f;

    /* renamed from: g  reason: collision with other field name */
    public String f209g;

    /* renamed from: h  reason: collision with other field name */
    public String f210h;

    /* renamed from: i  reason: collision with other field name */
    public String f211i;

    /* renamed from: j  reason: collision with other field name */
    public String f212j;

    /* renamed from: k  reason: collision with other field name */
    public String f213k;

    /* renamed from: l  reason: collision with other field name */
    public String f214l;

    /* renamed from: m  reason: collision with other field name */
    public String f215m;

    /* renamed from: n  reason: collision with other field name */
    public String f216n;

    /* renamed from: o  reason: collision with other field name */
    public String f217o;

    /* renamed from: p  reason: collision with other field name */
    public String f218p;

    /* renamed from: q  reason: collision with other field name */
    public String f219q;

    /* renamed from: r  reason: collision with other field name */
    public String f220r;

    /* renamed from: a  reason: collision with other field name */
    private static final s2 f190a = new s2("XmPushActionRegistration");

    /* renamed from: a  reason: collision with root package name */
    private static final m2 f36712a = new m2("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final m2 f36713b = new m2("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final m2 f36714c = new m2("", (byte) 11, 3);

    /* renamed from: d  reason: collision with root package name */
    private static final m2 f36715d = new m2("", (byte) 11, 4);

    /* renamed from: e  reason: collision with root package name */
    private static final m2 f36716e = new m2("", (byte) 11, 5);

    /* renamed from: f  reason: collision with root package name */
    private static final m2 f36717f = new m2("", (byte) 11, 6);

    /* renamed from: g  reason: collision with root package name */
    private static final m2 f36718g = new m2("", (byte) 11, 7);

    /* renamed from: h  reason: collision with root package name */
    private static final m2 f36719h = new m2("", (byte) 11, 8);

    /* renamed from: i  reason: collision with root package name */
    private static final m2 f36720i = new m2("", (byte) 11, 9);

    /* renamed from: j  reason: collision with root package name */
    private static final m2 f36721j = new m2("", (byte) 11, 10);

    /* renamed from: k  reason: collision with root package name */
    private static final m2 f36722k = new m2("", (byte) 11, 11);

    /* renamed from: l  reason: collision with root package name */
    private static final m2 f36723l = new m2("", (byte) 11, 12);

    /* renamed from: m  reason: collision with root package name */
    private static final m2 f36724m = new m2("", (byte) 8, 13);

    /* renamed from: n  reason: collision with root package name */
    private static final m2 f36725n = new m2("", (byte) 8, 14);

    /* renamed from: o  reason: collision with root package name */
    private static final m2 f36726o = new m2("", (byte) 11, 15);

    /* renamed from: p  reason: collision with root package name */
    private static final m2 f36727p = new m2("", (byte) 11, 16);

    /* renamed from: q  reason: collision with root package name */
    private static final m2 f36728q = new m2("", (byte) 11, 17);

    /* renamed from: r  reason: collision with root package name */
    private static final m2 f36729r = new m2("", (byte) 11, 18);

    /* renamed from: s  reason: collision with root package name */
    private static final m2 f36730s = new m2("", (byte) 8, 19);

    /* renamed from: t  reason: collision with root package name */
    private static final m2 f36731t = new m2("", (byte) 8, 20);

    /* renamed from: u  reason: collision with root package name */
    private static final m2 f36732u = new m2("", (byte) 2, 21);

    /* renamed from: v  reason: collision with root package name */
    private static final m2 f36733v = new m2("", (byte) 10, 22);

    /* renamed from: w  reason: collision with root package name */
    private static final m2 f36734w = new m2("", (byte) 10, 23);

    /* renamed from: x  reason: collision with root package name */
    private static final m2 f36735x = new m2("", (byte) 11, 24);

    /* renamed from: y  reason: collision with root package name */
    private static final m2 f36736y = new m2("", (byte) 11, 25);

    /* renamed from: z  reason: collision with root package name */
    private static final m2 f36737z = new m2("", (byte) 2, 26);
    private static final m2 A = new m2("", (byte) 13, 100);
    private static final m2 B = new m2("", (byte) 2, 101);
    private static final m2 C = new m2("", (byte) 11, 102);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f196a = new BitSet(8);

    /* renamed from: a  reason: collision with other field name */
    public boolean f198a = true;

    /* renamed from: c  reason: collision with other field name */
    public boolean f205c = false;

    /* renamed from: b  reason: collision with other field name */
    public boolean f202b = false;

    public boolean A() {
        return this.f197a != null;
    }

    public boolean B() {
        return this.f196a.get(7);
    }

    public boolean C() {
        return this.f220r != null;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(du duVar) {
        int e10;
        int k10;
        int h10;
        int k11;
        int e11;
        int e12;
        int c10;
        int c11;
        int k12;
        int d10;
        int b10;
        int e13;
        int e14;
        int e15;
        int e16;
        int b11;
        int b12;
        int e17;
        int e18;
        int e19;
        int e20;
        int e21;
        int e22;
        int e23;
        int e24;
        int e25;
        int e26;
        int d11;
        int e27;
        if (getClass().equals(duVar.getClass())) {
            int compareTo = Boolean.valueOf(m1480a()).compareTo(Boolean.valueOf(duVar.m1480a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1480a() || (e27 = i2.e(this.f195a, duVar.f195a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1482b()).compareTo(Boolean.valueOf(duVar.m1482b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1482b() || (d11 = i2.d(this.f194a, duVar.f194a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1483c()).compareTo(Boolean.valueOf(duVar.m1483c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1483c() || (e26 = i2.e(this.f201b, duVar.f201b)) == 0) {
                        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(duVar.d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!d() || (e25 = i2.e(this.f204c, duVar.f204c)) == 0) {
                            int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(duVar.e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!e() || (e24 = i2.e(this.f206d, duVar.f206d)) == 0) {
                                int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(duVar.f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!f() || (e23 = i2.e(this.f207e, duVar.f207e)) == 0) {
                                    int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(duVar.g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!g() || (e22 = i2.e(this.f208f, duVar.f208f)) == 0) {
                                        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(duVar.h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!h() || (e21 = i2.e(this.f209g, duVar.f209g)) == 0) {
                                            int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(duVar.i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!i() || (e20 = i2.e(this.f210h, duVar.f210h)) == 0) {
                                                int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(duVar.j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!j() || (e19 = i2.e(this.f211i, duVar.f211i)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(duVar.k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!k() || (e18 = i2.e(this.f212j, duVar.f212j)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(duVar.l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!l() || (e17 = i2.e(this.f213k, duVar.f213k)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(duVar.m()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m() || (b12 = i2.b(this.f191a, duVar.f191a)) == 0) {
                                                                int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(duVar.n()));
                                                                if (compareTo14 != 0) {
                                                                    return compareTo14;
                                                                }
                                                                if (!n() || (b11 = i2.b(this.f199b, duVar.f199b)) == 0) {
                                                                    int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(duVar.o()));
                                                                    if (compareTo15 != 0) {
                                                                        return compareTo15;
                                                                    }
                                                                    if (!o() || (e16 = i2.e(this.f214l, duVar.f214l)) == 0) {
                                                                        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(duVar.p()));
                                                                        if (compareTo16 != 0) {
                                                                            return compareTo16;
                                                                        }
                                                                        if (!p() || (e15 = i2.e(this.f215m, duVar.f215m)) == 0) {
                                                                            int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(duVar.q()));
                                                                            if (compareTo17 != 0) {
                                                                                return compareTo17;
                                                                            }
                                                                            if (!q() || (e14 = i2.e(this.f216n, duVar.f216n)) == 0) {
                                                                                int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(duVar.r()));
                                                                                if (compareTo18 != 0) {
                                                                                    return compareTo18;
                                                                                }
                                                                                if (!r() || (e13 = i2.e(this.f217o, duVar.f217o)) == 0) {
                                                                                    int compareTo19 = Boolean.valueOf(s()).compareTo(Boolean.valueOf(duVar.s()));
                                                                                    if (compareTo19 != 0) {
                                                                                        return compareTo19;
                                                                                    }
                                                                                    if (!s() || (b10 = i2.b(this.f203c, duVar.f203c)) == 0) {
                                                                                        int compareTo20 = Boolean.valueOf(t()).compareTo(Boolean.valueOf(duVar.t()));
                                                                                        if (compareTo20 != 0) {
                                                                                            return compareTo20;
                                                                                        }
                                                                                        if (!t() || (d10 = i2.d(this.f193a, duVar.f193a)) == 0) {
                                                                                            int compareTo21 = Boolean.valueOf(u()).compareTo(Boolean.valueOf(duVar.u()));
                                                                                            if (compareTo21 != 0) {
                                                                                                return compareTo21;
                                                                                            }
                                                                                            if (!u() || (k12 = i2.k(this.f198a, duVar.f198a)) == 0) {
                                                                                                int compareTo22 = Boolean.valueOf(v()).compareTo(Boolean.valueOf(duVar.v()));
                                                                                                if (compareTo22 != 0) {
                                                                                                    return compareTo22;
                                                                                                }
                                                                                                if (!v() || (c11 = i2.c(this.f192a, duVar.f192a)) == 0) {
                                                                                                    int compareTo23 = Boolean.valueOf(w()).compareTo(Boolean.valueOf(duVar.w()));
                                                                                                    if (compareTo23 != 0) {
                                                                                                        return compareTo23;
                                                                                                    }
                                                                                                    if (!w() || (c10 = i2.c(this.f200b, duVar.f200b)) == 0) {
                                                                                                        int compareTo24 = Boolean.valueOf(x()).compareTo(Boolean.valueOf(duVar.x()));
                                                                                                        if (compareTo24 != 0) {
                                                                                                            return compareTo24;
                                                                                                        }
                                                                                                        if (!x() || (e12 = i2.e(this.f218p, duVar.f218p)) == 0) {
                                                                                                            int compareTo25 = Boolean.valueOf(y()).compareTo(Boolean.valueOf(duVar.y()));
                                                                                                            if (compareTo25 != 0) {
                                                                                                                return compareTo25;
                                                                                                            }
                                                                                                            if (!y() || (e11 = i2.e(this.f219q, duVar.f219q)) == 0) {
                                                                                                                int compareTo26 = Boolean.valueOf(z()).compareTo(Boolean.valueOf(duVar.z()));
                                                                                                                if (compareTo26 != 0) {
                                                                                                                    return compareTo26;
                                                                                                                }
                                                                                                                if (!z() || (k11 = i2.k(this.f202b, duVar.f202b)) == 0) {
                                                                                                                    int compareTo27 = Boolean.valueOf(A()).compareTo(Boolean.valueOf(duVar.A()));
                                                                                                                    if (compareTo27 != 0) {
                                                                                                                        return compareTo27;
                                                                                                                    }
                                                                                                                    if (!A() || (h10 = i2.h(this.f197a, duVar.f197a)) == 0) {
                                                                                                                        int compareTo28 = Boolean.valueOf(B()).compareTo(Boolean.valueOf(duVar.B()));
                                                                                                                        if (compareTo28 != 0) {
                                                                                                                            return compareTo28;
                                                                                                                        }
                                                                                                                        if (!B() || (k10 = i2.k(this.f205c, duVar.f205c)) == 0) {
                                                                                                                            int compareTo29 = Boolean.valueOf(C()).compareTo(Boolean.valueOf(duVar.C()));
                                                                                                                            if (compareTo29 != 0) {
                                                                                                                                return compareTo29;
                                                                                                                            }
                                                                                                                            if (!C() || (e10 = i2.e(this.f220r, duVar.f220r)) == 0) {
                                                                                                                                return 0;
                                                                                                                            }
                                                                                                                            return e10;
                                                                                                                        }
                                                                                                                        return k10;
                                                                                                                    }
                                                                                                                    return h10;
                                                                                                                }
                                                                                                                return k11;
                                                                                                            }
                                                                                                            return e11;
                                                                                                        }
                                                                                                        return e12;
                                                                                                    }
                                                                                                    return c10;
                                                                                                }
                                                                                                return c11;
                                                                                            }
                                                                                            return k12;
                                                                                        }
                                                                                        return d10;
                                                                                    }
                                                                                    return b10;
                                                                                }
                                                                                return e13;
                                                                            }
                                                                            return e14;
                                                                        }
                                                                        return e15;
                                                                    }
                                                                    return e16;
                                                                }
                                                                return b11;
                                                            }
                                                            return b12;
                                                        }
                                                        return e17;
                                                    }
                                                    return e18;
                                                }
                                                return e19;
                                            }
                                            return e20;
                                        }
                                        return e21;
                                    }
                                    return e22;
                                }
                                return e23;
                            }
                            return e24;
                        }
                        return e25;
                    }
                    return e26;
                }
                return d11;
            }
            return e27;
        }
        return getClass().getName().compareTo(duVar.getClass().getName());
    }

    public du a(int i9) {
        this.f191a = i9;
        a(true);
        return this;
    }

    public du a(dj djVar) {
        this.f193a = djVar;
        return this;
    }

    public du a(String str) {
        this.f201b = str;
        return this;
    }

    public String a() {
        return this.f201b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m1479a() {
        if (this.f201b == null) {
            throw new eq("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f204c == null) {
            throw new eq("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f208f != null) {
        } else {
            throw new eq("Required field 'token' was not present! Struct: " + toString());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.xiaomi.push.ef
    public void a(p2 p2Var) {
        p2Var.i();
        while (true) {
            m2 e10 = p2Var.e();
            byte b10 = e10.f36993b;
            if (b10 == 0) {
                p2Var.C();
                m1479a();
                return;
            }
            short s10 = e10.f36994c;
            switch (s10) {
                case 1:
                    if (b10 == 11) {
                        this.f195a = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 2:
                    if (b10 == 12) {
                        dk dkVar = new dk();
                        this.f194a = dkVar;
                        dkVar.a(p2Var);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 3:
                    if (b10 == 11) {
                        this.f201b = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 4:
                    if (b10 == 11) {
                        this.f204c = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 5:
                    if (b10 == 11) {
                        this.f206d = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 6:
                    if (b10 == 11) {
                        this.f207e = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 7:
                    if (b10 == 11) {
                        this.f208f = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 8:
                    if (b10 == 11) {
                        this.f209g = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 9:
                    if (b10 == 11) {
                        this.f210h = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 10:
                    if (b10 == 11) {
                        this.f211i = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 11:
                    if (b10 == 11) {
                        this.f212j = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 12:
                    if (b10 == 11) {
                        this.f213k = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 13:
                    if (b10 == 8) {
                        this.f191a = p2Var.c();
                        a(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 14:
                    if (b10 == 8) {
                        this.f199b = p2Var.c();
                        b(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 15:
                    if (b10 == 11) {
                        this.f214l = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 16:
                    if (b10 == 11) {
                        this.f215m = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 17:
                    if (b10 == 11) {
                        this.f216n = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 18:
                    if (b10 == 11) {
                        this.f217o = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 19:
                    if (b10 == 8) {
                        this.f203c = p2Var.c();
                        c(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 20:
                    if (b10 == 8) {
                        this.f193a = dj.a(p2Var.c());
                        continue;
                        p2Var.D();
                    }
                    break;
                case 21:
                    if (b10 == 2) {
                        this.f198a = p2Var.x();
                        d(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 22:
                    if (b10 == 10) {
                        this.f192a = p2Var.d();
                        e(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 23:
                    if (b10 == 10) {
                        this.f200b = p2Var.d();
                        f(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                case 24:
                    if (b10 == 11) {
                        this.f218p = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 25:
                    if (b10 == 11) {
                        this.f219q = p2Var.j();
                        continue;
                        p2Var.D();
                    }
                    break;
                case 26:
                    if (b10 == 2) {
                        this.f202b = p2Var.x();
                        g(true);
                        continue;
                        p2Var.D();
                    }
                    break;
                default:
                    switch (s10) {
                        case 100:
                            if (b10 == 13) {
                                o2 g10 = p2Var.g();
                                this.f197a = new HashMap(g10.f37020c * 2);
                                for (int i9 = 0; i9 < g10.f37020c; i9++) {
                                    this.f197a.put(p2Var.j(), p2Var.j());
                                }
                                p2Var.E();
                                break;
                            }
                            break;
                        case 101:
                            if (b10 == 2) {
                                this.f205c = p2Var.x();
                                h(true);
                                break;
                            }
                            break;
                        case 102:
                            if (b10 == 11) {
                                this.f220r = p2Var.j();
                                continue;
                            }
                            break;
                    }
                    p2Var.D();
                    break;
            }
            q2.a(p2Var, b10);
            p2Var.D();
        }
    }

    public void a(boolean z10) {
        this.f196a.set(0, z10);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1480a() {
        return this.f195a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1481a(du duVar) {
        if (duVar == null) {
            return false;
        }
        boolean m1480a = m1480a();
        boolean m1480a2 = duVar.m1480a();
        if ((m1480a || m1480a2) && !(m1480a && m1480a2 && this.f195a.equals(duVar.f195a))) {
            return false;
        }
        boolean m1482b = m1482b();
        boolean m1482b2 = duVar.m1482b();
        if ((m1482b || m1482b2) && !(m1482b && m1482b2 && this.f194a.m1436a(duVar.f194a))) {
            return false;
        }
        boolean m1483c = m1483c();
        boolean m1483c2 = duVar.m1483c();
        if ((m1483c || m1483c2) && !(m1483c && m1483c2 && this.f201b.equals(duVar.f201b))) {
            return false;
        }
        boolean d10 = d();
        boolean d11 = duVar.d();
        if ((d10 || d11) && !(d10 && d11 && this.f204c.equals(duVar.f204c))) {
            return false;
        }
        boolean e10 = e();
        boolean e11 = duVar.e();
        if ((e10 || e11) && !(e10 && e11 && this.f206d.equals(duVar.f206d))) {
            return false;
        }
        boolean f10 = f();
        boolean f11 = duVar.f();
        if ((f10 || f11) && !(f10 && f11 && this.f207e.equals(duVar.f207e))) {
            return false;
        }
        boolean g10 = g();
        boolean g11 = duVar.g();
        if ((g10 || g11) && !(g10 && g11 && this.f208f.equals(duVar.f208f))) {
            return false;
        }
        boolean h10 = h();
        boolean h11 = duVar.h();
        if ((h10 || h11) && !(h10 && h11 && this.f209g.equals(duVar.f209g))) {
            return false;
        }
        boolean i9 = i();
        boolean i10 = duVar.i();
        if ((i9 || i10) && !(i9 && i10 && this.f210h.equals(duVar.f210h))) {
            return false;
        }
        boolean j10 = j();
        boolean j11 = duVar.j();
        if ((j10 || j11) && !(j10 && j11 && this.f211i.equals(duVar.f211i))) {
            return false;
        }
        boolean k10 = k();
        boolean k11 = duVar.k();
        if ((k10 || k11) && !(k10 && k11 && this.f212j.equals(duVar.f212j))) {
            return false;
        }
        boolean l10 = l();
        boolean l11 = duVar.l();
        if ((l10 || l11) && !(l10 && l11 && this.f213k.equals(duVar.f213k))) {
            return false;
        }
        boolean m10 = m();
        boolean m11 = duVar.m();
        if ((m10 || m11) && !(m10 && m11 && this.f191a == duVar.f191a)) {
            return false;
        }
        boolean n9 = n();
        boolean n10 = duVar.n();
        if ((n9 || n10) && !(n9 && n10 && this.f199b == duVar.f199b)) {
            return false;
        }
        boolean o10 = o();
        boolean o11 = duVar.o();
        if ((o10 || o11) && !(o10 && o11 && this.f214l.equals(duVar.f214l))) {
            return false;
        }
        boolean p10 = p();
        boolean p11 = duVar.p();
        if ((p10 || p11) && !(p10 && p11 && this.f215m.equals(duVar.f215m))) {
            return false;
        }
        boolean q10 = q();
        boolean q11 = duVar.q();
        if ((q10 || q11) && !(q10 && q11 && this.f216n.equals(duVar.f216n))) {
            return false;
        }
        boolean r10 = r();
        boolean r11 = duVar.r();
        if ((r10 || r11) && !(r10 && r11 && this.f217o.equals(duVar.f217o))) {
            return false;
        }
        boolean s10 = s();
        boolean s11 = duVar.s();
        if ((s10 || s11) && !(s10 && s11 && this.f203c == duVar.f203c)) {
            return false;
        }
        boolean t10 = t();
        boolean t11 = duVar.t();
        if ((t10 || t11) && !(t10 && t11 && this.f193a.equals(duVar.f193a))) {
            return false;
        }
        boolean u10 = u();
        boolean u11 = duVar.u();
        if ((u10 || u11) && !(u10 && u11 && this.f198a == duVar.f198a)) {
            return false;
        }
        boolean v10 = v();
        boolean v11 = duVar.v();
        if ((v10 || v11) && !(v10 && v11 && this.f192a == duVar.f192a)) {
            return false;
        }
        boolean w6 = w();
        boolean w8 = duVar.w();
        if ((w6 || w8) && !(w6 && w8 && this.f200b == duVar.f200b)) {
            return false;
        }
        boolean x10 = x();
        boolean x11 = duVar.x();
        if ((x10 || x11) && !(x10 && x11 && this.f218p.equals(duVar.f218p))) {
            return false;
        }
        boolean y10 = y();
        boolean y11 = duVar.y();
        if ((y10 || y11) && !(y10 && y11 && this.f219q.equals(duVar.f219q))) {
            return false;
        }
        boolean z10 = z();
        boolean z11 = duVar.z();
        if ((z10 || z11) && !(z10 && z11 && this.f202b == duVar.f202b)) {
            return false;
        }
        boolean A2 = A();
        boolean A3 = duVar.A();
        if ((A2 || A3) && !(A2 && A3 && this.f197a.equals(duVar.f197a))) {
            return false;
        }
        boolean B2 = B();
        boolean B3 = duVar.B();
        if ((B2 || B3) && !(B2 && B3 && this.f205c == duVar.f205c)) {
            return false;
        }
        boolean C2 = C();
        boolean C3 = duVar.C();
        if (C2 || C3) {
            return C2 && C3 && this.f220r.equals(duVar.f220r);
        }
        return true;
    }

    public du b(int i9) {
        this.f199b = i9;
        b(true);
        return this;
    }

    public du b(String str) {
        this.f204c = str;
        return this;
    }

    public String b() {
        return this.f204c;
    }

    @Override // com.xiaomi.push.ef
    public void b(p2 p2Var) {
        m1479a();
        p2Var.s(f190a);
        if (this.f195a != null && m1480a()) {
            p2Var.p(f36712a);
            p2Var.t(this.f195a);
            p2Var.y();
        }
        if (this.f194a != null && m1482b()) {
            p2Var.p(f36713b);
            this.f194a.b(p2Var);
            p2Var.y();
        }
        if (this.f201b != null) {
            p2Var.p(f36714c);
            p2Var.t(this.f201b);
            p2Var.y();
        }
        if (this.f204c != null) {
            p2Var.p(f36715d);
            p2Var.t(this.f204c);
            p2Var.y();
        }
        if (this.f206d != null && e()) {
            p2Var.p(f36716e);
            p2Var.t(this.f206d);
            p2Var.y();
        }
        if (this.f207e != null && f()) {
            p2Var.p(f36717f);
            p2Var.t(this.f207e);
            p2Var.y();
        }
        if (this.f208f != null) {
            p2Var.p(f36718g);
            p2Var.t(this.f208f);
            p2Var.y();
        }
        if (this.f209g != null && h()) {
            p2Var.p(f36719h);
            p2Var.t(this.f209g);
            p2Var.y();
        }
        if (this.f210h != null && i()) {
            p2Var.p(f36720i);
            p2Var.t(this.f210h);
            p2Var.y();
        }
        if (this.f211i != null && j()) {
            p2Var.p(f36721j);
            p2Var.t(this.f211i);
            p2Var.y();
        }
        if (this.f212j != null && k()) {
            p2Var.p(f36722k);
            p2Var.t(this.f212j);
            p2Var.y();
        }
        if (this.f213k != null && l()) {
            p2Var.p(f36723l);
            p2Var.t(this.f213k);
            p2Var.y();
        }
        if (m()) {
            p2Var.p(f36724m);
            p2Var.n(this.f191a);
            p2Var.y();
        }
        if (n()) {
            p2Var.p(f36725n);
            p2Var.n(this.f199b);
            p2Var.y();
        }
        if (this.f214l != null && o()) {
            p2Var.p(f36726o);
            p2Var.t(this.f214l);
            p2Var.y();
        }
        if (this.f215m != null && p()) {
            p2Var.p(f36727p);
            p2Var.t(this.f215m);
            p2Var.y();
        }
        if (this.f216n != null && q()) {
            p2Var.p(f36728q);
            p2Var.t(this.f216n);
            p2Var.y();
        }
        if (this.f217o != null && r()) {
            p2Var.p(f36729r);
            p2Var.t(this.f217o);
            p2Var.y();
        }
        if (s()) {
            p2Var.p(f36730s);
            p2Var.n(this.f203c);
            p2Var.y();
        }
        if (this.f193a != null && t()) {
            p2Var.p(f36731t);
            p2Var.n(this.f193a.a());
            p2Var.y();
        }
        if (u()) {
            p2Var.p(f36732u);
            p2Var.w(this.f198a);
            p2Var.y();
        }
        if (v()) {
            p2Var.p(f36733v);
            p2Var.o(this.f192a);
            p2Var.y();
        }
        if (w()) {
            p2Var.p(f36734w);
            p2Var.o(this.f200b);
            p2Var.y();
        }
        if (this.f218p != null && x()) {
            p2Var.p(f36735x);
            p2Var.t(this.f218p);
            p2Var.y();
        }
        if (this.f219q != null && y()) {
            p2Var.p(f36736y);
            p2Var.t(this.f219q);
            p2Var.y();
        }
        if (z()) {
            p2Var.p(f36737z);
            p2Var.w(this.f202b);
            p2Var.y();
        }
        if (this.f197a != null && A()) {
            p2Var.p(A);
            p2Var.r(new o2((byte) 11, (byte) 11, this.f197a.size()));
            for (Map.Entry<String, String> entry : this.f197a.entrySet()) {
                p2Var.t(entry.getKey());
                p2Var.t(entry.getValue());
            }
            p2Var.A();
            p2Var.y();
        }
        if (B()) {
            p2Var.p(B);
            p2Var.w(this.f205c);
            p2Var.y();
        }
        if (this.f220r != null && C()) {
            p2Var.p(C);
            p2Var.t(this.f220r);
            p2Var.y();
        }
        p2Var.z();
        p2Var.m();
    }

    public void b(boolean z10) {
        this.f196a.set(1, z10);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1482b() {
        return this.f194a != null;
    }

    public du c(int i9) {
        this.f203c = i9;
        c(true);
        return this;
    }

    public du c(String str) {
        this.f206d = str;
        return this;
    }

    public String c() {
        return this.f208f;
    }

    public void c(boolean z10) {
        this.f196a.set(2, z10);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1483c() {
        return this.f201b != null;
    }

    public du d(String str) {
        this.f207e = str;
        return this;
    }

    public void d(boolean z10) {
        this.f196a.set(3, z10);
    }

    public boolean d() {
        return this.f204c != null;
    }

    public du e(String str) {
        this.f208f = str;
        return this;
    }

    public void e(boolean z10) {
        this.f196a.set(4, z10);
    }

    public boolean e() {
        return this.f206d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof du)) {
            return m1481a((du) obj);
        }
        return false;
    }

    public du f(String str) {
        this.f209g = str;
        return this;
    }

    public void f(boolean z10) {
        this.f196a.set(5, z10);
    }

    public boolean f() {
        return this.f207e != null;
    }

    public du g(String str) {
        this.f210h = str;
        return this;
    }

    public void g(boolean z10) {
        this.f196a.set(6, z10);
    }

    public boolean g() {
        return this.f208f != null;
    }

    public du h(String str) {
        this.f213k = str;
        return this;
    }

    public void h(boolean z10) {
        this.f196a.set(7, z10);
    }

    public boolean h() {
        return this.f209g != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f210h != null;
    }

    public boolean j() {
        return this.f211i != null;
    }

    public boolean k() {
        return this.f212j != null;
    }

    public boolean l() {
        return this.f213k != null;
    }

    public boolean m() {
        return this.f196a.get(0);
    }

    public boolean n() {
        return this.f196a.get(1);
    }

    public boolean o() {
        return this.f214l != null;
    }

    public boolean p() {
        return this.f215m != null;
    }

    public boolean q() {
        return this.f216n != null;
    }

    public boolean r() {
        return this.f217o != null;
    }

    public boolean s() {
        return this.f196a.get(2);
    }

    public boolean t() {
        return this.f193a != null;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder("XmPushActionRegistration(");
        boolean z11 = false;
        if (m1480a()) {
            sb2.append("debug:");
            String str = this.f195a;
            if (str == null) {
                sb2.append("null");
            } else {
                sb2.append(str);
            }
            z10 = false;
        } else {
            z10 = true;
        }
        if (m1482b()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append("target:");
            dk dkVar = this.f194a;
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
        String str2 = this.f201b;
        if (str2 == null) {
            sb2.append("null");
        } else {
            sb2.append(com.xiaomi.push.service.x.b(str2));
        }
        sb2.append(", ");
        sb2.append("appId:");
        String str3 = this.f204c;
        if (str3 == null) {
            sb2.append("null");
        } else {
            sb2.append(str3);
        }
        if (e()) {
            sb2.append(", ");
            sb2.append("appVersion:");
            String str4 = this.f206d;
            if (str4 == null) {
                sb2.append("null");
            } else {
                sb2.append(str4);
            }
        }
        if (f()) {
            sb2.append(", ");
            sb2.append("packageName:");
            String str5 = this.f207e;
            if (str5 == null) {
                sb2.append("null");
            } else {
                sb2.append(str5);
            }
        }
        sb2.append(", ");
        sb2.append("token:");
        String str6 = this.f208f;
        if (str6 == null) {
            sb2.append("null");
        } else {
            sb2.append(str6);
        }
        if (h()) {
            sb2.append(", ");
            sb2.append("deviceId:");
            String str7 = this.f209g;
            if (str7 == null) {
                sb2.append("null");
            } else {
                sb2.append(str7);
            }
        }
        if (i()) {
            sb2.append(", ");
            sb2.append("aliasName:");
            String str8 = this.f210h;
            if (str8 == null) {
                sb2.append("null");
            } else {
                sb2.append(str8);
            }
        }
        if (j()) {
            sb2.append(", ");
            sb2.append("sdkVersion:");
            String str9 = this.f211i;
            if (str9 == null) {
                sb2.append("null");
            } else {
                sb2.append(str9);
            }
        }
        if (k()) {
            sb2.append(", ");
            sb2.append("regId:");
            String str10 = this.f212j;
            if (str10 == null) {
                sb2.append("null");
            } else {
                sb2.append(str10);
            }
        }
        if (l()) {
            sb2.append(", ");
            sb2.append("pushSdkVersionName:");
            String str11 = this.f213k;
            if (str11 == null) {
                sb2.append("null");
            } else {
                sb2.append(str11);
            }
        }
        if (m()) {
            sb2.append(", ");
            sb2.append("pushSdkVersionCode:");
            sb2.append(this.f191a);
        }
        if (n()) {
            sb2.append(", ");
            sb2.append("appVersionCode:");
            sb2.append(this.f199b);
        }
        if (o()) {
            sb2.append(", ");
            sb2.append("androidId:");
            String str12 = this.f214l;
            if (str12 == null) {
                sb2.append("null");
            } else {
                sb2.append(str12);
            }
        }
        if (p()) {
            sb2.append(", ");
            sb2.append("imei:");
            String str13 = this.f215m;
            if (str13 == null) {
                sb2.append("null");
            } else {
                sb2.append(str13);
            }
        }
        if (q()) {
            sb2.append(", ");
            sb2.append("serial:");
            String str14 = this.f216n;
            if (str14 == null) {
                sb2.append("null");
            } else {
                sb2.append(str14);
            }
        }
        if (r()) {
            sb2.append(", ");
            sb2.append("imeiMd5:");
            String str15 = this.f217o;
            if (str15 == null) {
                sb2.append("null");
            } else {
                sb2.append(str15);
            }
        }
        if (s()) {
            sb2.append(", ");
            sb2.append("spaceId:");
            sb2.append(this.f203c);
        }
        if (t()) {
            sb2.append(", ");
            sb2.append("reason:");
            dj djVar = this.f193a;
            if (djVar == null) {
                sb2.append("null");
            } else {
                sb2.append(djVar);
            }
        }
        if (u()) {
            sb2.append(", ");
            sb2.append("validateToken:");
            sb2.append(this.f198a);
        }
        if (v()) {
            sb2.append(", ");
            sb2.append("miid:");
            sb2.append(this.f192a);
        }
        if (w()) {
            sb2.append(", ");
            sb2.append("createdTs:");
            sb2.append(this.f200b);
        }
        if (x()) {
            sb2.append(", ");
            sb2.append("subImei:");
            String str16 = this.f218p;
            if (str16 == null) {
                sb2.append("null");
            } else {
                sb2.append(str16);
            }
        }
        if (y()) {
            sb2.append(", ");
            sb2.append("subImeiMd5:");
            String str17 = this.f219q;
            if (str17 == null) {
                sb2.append("null");
            } else {
                sb2.append(str17);
            }
        }
        if (z()) {
            sb2.append(", ");
            sb2.append("isHybridFrame:");
            sb2.append(this.f202b);
        }
        if (A()) {
            sb2.append(", ");
            sb2.append("connectionAttrs:");
            Map<String, String> map = this.f197a;
            if (map == null) {
                sb2.append("null");
            } else {
                sb2.append(map);
            }
        }
        if (B()) {
            sb2.append(", ");
            sb2.append("cleanOldRegInfo:");
            sb2.append(this.f205c);
        }
        if (C()) {
            sb2.append(", ");
            sb2.append("oldRegId:");
            String str18 = this.f220r;
            if (str18 == null) {
                sb2.append("null");
            } else {
                sb2.append(str18);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    public boolean u() {
        return this.f196a.get(3);
    }

    public boolean v() {
        return this.f196a.get(4);
    }

    public boolean w() {
        return this.f196a.get(5);
    }

    public boolean x() {
        return this.f218p != null;
    }

    public boolean y() {
        return this.f219q != null;
    }

    public boolean z() {
        return this.f196a.get(6);
    }
}
