package com.xiaomi.push;

import java.util.Objects;
/* loaded from: classes5.dex */
public final class a0 extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f36331a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36333c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f36335e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f36337g;

    /* renamed from: i  reason: collision with root package name */
    private boolean f36339i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f36341k;

    /* renamed from: m  reason: collision with root package name */
    private boolean f36343m;

    /* renamed from: o  reason: collision with root package name */
    private boolean f36345o;

    /* renamed from: q  reason: collision with root package name */
    private boolean f36347q;

    /* renamed from: s  reason: collision with root package name */
    private boolean f36349s;

    /* renamed from: b  reason: collision with root package name */
    private int f36332b = 0;

    /* renamed from: d  reason: collision with root package name */
    private String f36334d = "";

    /* renamed from: f  reason: collision with root package name */
    private String f36336f = "";

    /* renamed from: h  reason: collision with root package name */
    private String f36338h = "";

    /* renamed from: j  reason: collision with root package name */
    private int f36340j = 0;

    /* renamed from: l  reason: collision with root package name */
    private String f36342l = "";

    /* renamed from: n  reason: collision with root package name */
    private String f36344n = "";

    /* renamed from: p  reason: collision with root package name */
    private String f36346p = "";

    /* renamed from: r  reason: collision with root package name */
    private x f36348r = null;

    /* renamed from: t  reason: collision with root package name */
    private int f36350t = 0;

    /* renamed from: u  reason: collision with root package name */
    private int f36351u = -1;

    public a0 A(String str) {
        this.f36341k = true;
        this.f36342l = str;
        return this;
    }

    public String B() {
        return this.f36342l;
    }

    public boolean C() {
        return this.f36337g;
    }

    public int D() {
        return this.f36350t;
    }

    public a0 E(String str) {
        this.f36343m = true;
        this.f36344n = str;
        return this;
    }

    public String F() {
        return this.f36344n;
    }

    public boolean G() {
        return this.f36339i;
    }

    public a0 H(String str) {
        this.f36345o = true;
        this.f36346p = str;
        return this;
    }

    public String I() {
        return this.f36346p;
    }

    public boolean J() {
        return this.f36341k;
    }

    public boolean K() {
        return this.f36343m;
    }

    public boolean L() {
        return this.f36345o;
    }

    public boolean M() {
        return this.f36347q;
    }

    public boolean N() {
        return this.f36349s;
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f36351u < 0) {
            i();
        }
        return this.f36351u;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (p()) {
            cVar.L(1, u());
        }
        if (t()) {
            cVar.x(2, o());
        }
        if (y()) {
            cVar.x(3, s());
        }
        if (C()) {
            cVar.x(4, x());
        }
        if (G()) {
            cVar.t(5, z());
        }
        if (J()) {
            cVar.x(6, B());
        }
        if (K()) {
            cVar.x(7, F());
        }
        if (L()) {
            cVar.x(8, I());
        }
        if (M()) {
            cVar.w(9, j());
        }
        if (N()) {
            cVar.t(10, D());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int H = p() ? 0 + c.H(1, u()) : 0;
        if (t()) {
            H += c.g(2, o());
        }
        if (y()) {
            H += c.g(3, s());
        }
        if (C()) {
            H += c.g(4, x());
        }
        if (G()) {
            H += c.c(5, z());
        }
        if (J()) {
            H += c.g(6, B());
        }
        if (K()) {
            H += c.g(7, F());
        }
        if (L()) {
            H += c.g(8, I());
        }
        if (M()) {
            H += c.f(9, j());
        }
        if (N()) {
            H += c.c(10, D());
        }
        this.f36351u = H;
        return H;
    }

    public x j() {
        return this.f36348r;
    }

    public a0 k(int i9) {
        this.f36331a = true;
        this.f36332b = i9;
        return this;
    }

    public a0 l(x xVar) {
        Objects.requireNonNull(xVar);
        this.f36347q = true;
        this.f36348r = xVar;
        return this;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: m */
    public a0 b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            switch (b10) {
                case 0:
                    return this;
                case 8:
                    k(l0Var.u());
                    break;
                case 18:
                    n(l0Var.h());
                    break;
                case 26:
                    r(l0Var.h());
                    break;
                case 34:
                    w(l0Var.h());
                    break;
                case 40:
                    q(l0Var.p());
                    break;
                case 50:
                    A(l0Var.h());
                    break;
                case 58:
                    E(l0Var.h());
                    break;
                case 66:
                    H(l0Var.h());
                    break;
                case 74:
                    x xVar = new x();
                    l0Var.k(xVar);
                    l(xVar);
                    break;
                case 80:
                    v(l0Var.p());
                    break;
                default:
                    if (g(l0Var, b10)) {
                        break;
                    } else {
                        return this;
                    }
            }
        }
    }

    public a0 n(String str) {
        this.f36333c = true;
        this.f36334d = str;
        return this;
    }

    public String o() {
        return this.f36334d;
    }

    public boolean p() {
        return this.f36331a;
    }

    public a0 q(int i9) {
        this.f36339i = true;
        this.f36340j = i9;
        return this;
    }

    public a0 r(String str) {
        this.f36335e = true;
        this.f36336f = str;
        return this;
    }

    public String s() {
        return this.f36336f;
    }

    public boolean t() {
        return this.f36333c;
    }

    public int u() {
        return this.f36332b;
    }

    public a0 v(int i9) {
        this.f36349s = true;
        this.f36350t = i9;
        return this;
    }

    public a0 w(String str) {
        this.f36337g = true;
        this.f36338h = str;
        return this;
    }

    public String x() {
        return this.f36338h;
    }

    public boolean y() {
        return this.f36335e;
    }

    public int z() {
        return this.f36340j;
    }
}
