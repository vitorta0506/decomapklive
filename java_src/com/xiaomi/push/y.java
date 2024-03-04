package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class y extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f37555a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37557c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f37559e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f37561g;

    /* renamed from: i  reason: collision with root package name */
    private boolean f37563i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f37565k;

    /* renamed from: b  reason: collision with root package name */
    private String f37556b = "";

    /* renamed from: d  reason: collision with root package name */
    private String f37558d = "";

    /* renamed from: f  reason: collision with root package name */
    private String f37560f = "";

    /* renamed from: h  reason: collision with root package name */
    private String f37562h = "";

    /* renamed from: j  reason: collision with root package name */
    private String f37564j = "";

    /* renamed from: l  reason: collision with root package name */
    private String f37566l = "";

    /* renamed from: m  reason: collision with root package name */
    private int f37567m = -1;

    public String A() {
        return this.f37566l;
    }

    public boolean B() {
        return this.f37565k;
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f37567m < 0) {
            i();
        }
        return this.f37567m;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (m()) {
            cVar.x(1, l());
        }
        if (p()) {
            cVar.x(2, o());
        }
        if (s()) {
            cVar.x(3, r());
        }
        if (v()) {
            cVar.x(4, u());
        }
        if (y()) {
            cVar.x(5, x());
        }
        if (B()) {
            cVar.x(6, A());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int g10 = m() ? 0 + c.g(1, l()) : 0;
        if (p()) {
            g10 += c.g(2, o());
        }
        if (s()) {
            g10 += c.g(3, r());
        }
        if (v()) {
            g10 += c.g(4, u());
        }
        if (y()) {
            g10 += c.g(5, x());
        }
        if (B()) {
            g10 += c.g(6, A());
        }
        this.f37567m = g10;
        return g10;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: j */
    public y b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 10) {
                k(l0Var.h());
            } else if (b10 == 18) {
                n(l0Var.h());
            } else if (b10 == 26) {
                q(l0Var.h());
            } else if (b10 == 34) {
                t(l0Var.h());
            } else if (b10 == 42) {
                w(l0Var.h());
            } else if (b10 == 50) {
                z(l0Var.h());
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public y k(String str) {
        this.f37555a = true;
        this.f37556b = str;
        return this;
    }

    public String l() {
        return this.f37556b;
    }

    public boolean m() {
        return this.f37555a;
    }

    public y n(String str) {
        this.f37557c = true;
        this.f37558d = str;
        return this;
    }

    public String o() {
        return this.f37558d;
    }

    public boolean p() {
        return this.f37557c;
    }

    public y q(String str) {
        this.f37559e = true;
        this.f37560f = str;
        return this;
    }

    public String r() {
        return this.f37560f;
    }

    public boolean s() {
        return this.f37559e;
    }

    public y t(String str) {
        this.f37561g = true;
        this.f37562h = str;
        return this;
    }

    public String u() {
        return this.f37562h;
    }

    public boolean v() {
        return this.f37561g;
    }

    public y w(String str) {
        this.f37563i = true;
        this.f37564j = str;
        return this;
    }

    public String x() {
        return this.f37564j;
    }

    public boolean y() {
        return this.f37563i;
    }

    public y z(String str) {
        this.f37565k = true;
        this.f37566l = str;
        return this;
    }
}
