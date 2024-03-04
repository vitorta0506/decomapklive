package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class w extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f37514a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37516c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f37518e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f37520g;

    /* renamed from: i  reason: collision with root package name */
    private boolean f37522i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f37524k;

    /* renamed from: m  reason: collision with root package name */
    private boolean f37526m;

    /* renamed from: o  reason: collision with root package name */
    private boolean f37528o;

    /* renamed from: q  reason: collision with root package name */
    private boolean f37530q;

    /* renamed from: s  reason: collision with root package name */
    private boolean f37532s;

    /* renamed from: u  reason: collision with root package name */
    private boolean f37534u;

    /* renamed from: b  reason: collision with root package name */
    private int f37515b = 0;

    /* renamed from: d  reason: collision with root package name */
    private long f37517d = 0;

    /* renamed from: f  reason: collision with root package name */
    private String f37519f = "";

    /* renamed from: h  reason: collision with root package name */
    private String f37521h = "";

    /* renamed from: j  reason: collision with root package name */
    private String f37523j = "";

    /* renamed from: l  reason: collision with root package name */
    private String f37525l = "";

    /* renamed from: n  reason: collision with root package name */
    private String f37527n = "";

    /* renamed from: p  reason: collision with root package name */
    private int f37529p = 1;

    /* renamed from: r  reason: collision with root package name */
    private int f37531r = 0;

    /* renamed from: t  reason: collision with root package name */
    private int f37533t = 0;

    /* renamed from: v  reason: collision with root package name */
    private String f37535v = "";

    /* renamed from: w  reason: collision with root package name */
    private int f37536w = -1;

    public int A() {
        return this.f37529p;
    }

    public w B(int i9) {
        this.f37532s = true;
        this.f37533t = i9;
        return this;
    }

    public w C(String str) {
        this.f37524k = true;
        this.f37525l = str;
        return this;
    }

    public String D() {
        return this.f37525l;
    }

    public boolean E() {
        return this.f37520g;
    }

    public int F() {
        return this.f37531r;
    }

    public w G(String str) {
        this.f37526m = true;
        this.f37527n = str;
        return this;
    }

    public String H() {
        return this.f37527n;
    }

    public boolean I() {
        return this.f37522i;
    }

    public int J() {
        return this.f37533t;
    }

    public w K(String str) {
        this.f37534u = true;
        this.f37535v = str;
        return this;
    }

    public String L() {
        return this.f37535v;
    }

    public boolean M() {
        return this.f37524k;
    }

    public boolean N() {
        return this.f37526m;
    }

    public boolean O() {
        return this.f37528o;
    }

    public boolean P() {
        return this.f37530q;
    }

    public boolean Q() {
        return this.f37532s;
    }

    public boolean R() {
        return this.f37534u;
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f37536w < 0) {
            i();
        }
        return this.f37536w;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (q()) {
            cVar.t(1, v());
        }
        if (u()) {
            cVar.u(2, j());
        }
        if (z()) {
            cVar.x(3, p());
        }
        if (E()) {
            cVar.x(4, t());
        }
        if (I()) {
            cVar.x(5, y());
        }
        if (M()) {
            cVar.x(6, D());
        }
        if (N()) {
            cVar.x(7, H());
        }
        if (O()) {
            cVar.t(8, A());
        }
        if (P()) {
            cVar.t(9, F());
        }
        if (Q()) {
            cVar.t(10, J());
        }
        if (R()) {
            cVar.x(11, L());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int c10 = q() ? 0 + c.c(1, v()) : 0;
        if (u()) {
            c10 += c.d(2, j());
        }
        if (z()) {
            c10 += c.g(3, p());
        }
        if (E()) {
            c10 += c.g(4, t());
        }
        if (I()) {
            c10 += c.g(5, y());
        }
        if (M()) {
            c10 += c.g(6, D());
        }
        if (N()) {
            c10 += c.g(7, H());
        }
        if (O()) {
            c10 += c.c(8, A());
        }
        if (P()) {
            c10 += c.c(9, F());
        }
        if (Q()) {
            c10 += c.c(10, J());
        }
        if (R()) {
            c10 += c.g(11, L());
        }
        this.f37536w = c10;
        return c10;
    }

    public long j() {
        return this.f37517d;
    }

    public w k() {
        this.f37524k = false;
        this.f37525l = "";
        return this;
    }

    public w l(int i9) {
        this.f37514a = true;
        this.f37515b = i9;
        return this;
    }

    public w m(long j10) {
        this.f37516c = true;
        this.f37517d = j10;
        return this;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: n */
    public w b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            switch (b10) {
                case 0:
                    return this;
                case 8:
                    l(l0Var.p());
                    break;
                case 16:
                    m(l0Var.d());
                    break;
                case 26:
                    o(l0Var.h());
                    break;
                case 34:
                    s(l0Var.h());
                    break;
                case 42:
                    x(l0Var.h());
                    break;
                case 50:
                    C(l0Var.h());
                    break;
                case 58:
                    G(l0Var.h());
                    break;
                case 64:
                    r(l0Var.p());
                    break;
                case 72:
                    w(l0Var.p());
                    break;
                case 80:
                    B(l0Var.p());
                    break;
                case 90:
                    K(l0Var.h());
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

    public w o(String str) {
        this.f37518e = true;
        this.f37519f = str;
        return this;
    }

    public String p() {
        return this.f37519f;
    }

    public boolean q() {
        return this.f37514a;
    }

    public w r(int i9) {
        this.f37528o = true;
        this.f37529p = i9;
        return this;
    }

    public w s(String str) {
        this.f37520g = true;
        this.f37521h = str;
        return this;
    }

    public String t() {
        return this.f37521h;
    }

    public boolean u() {
        return this.f37516c;
    }

    public int v() {
        return this.f37515b;
    }

    public w w(int i9) {
        this.f37530q = true;
        this.f37531r = i9;
        return this;
    }

    public w x(String str) {
        this.f37522i = true;
        this.f37523j = str;
        return this;
    }

    public String y() {
        return this.f37523j;
    }

    public boolean z() {
        return this.f37518e;
    }
}
