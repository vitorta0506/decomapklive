package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class x extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f37542a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37544c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f37546e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f37548g;

    /* renamed from: b  reason: collision with root package name */
    private boolean f37543b = false;

    /* renamed from: d  reason: collision with root package name */
    private int f37545d = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f37547f = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f37549h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f37550i = -1;

    public static x m(byte[] bArr) {
        return (x) new x().c(bArr);
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f37550i < 0) {
            i();
        }
        return this.f37550i;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (p()) {
            cVar.y(1, n());
        }
        if (s()) {
            cVar.t(3, q());
        }
        if (u()) {
            cVar.t(4, t());
        }
        if (w()) {
            cVar.t(5, v());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int h10 = p() ? 0 + c.h(1, n()) : 0;
        if (s()) {
            h10 += c.c(3, q());
        }
        if (u()) {
            h10 += c.c(4, t());
        }
        if (w()) {
            h10 += c.c(5, v());
        }
        this.f37550i = h10;
        return h10;
    }

    public x j(int i9) {
        this.f37544c = true;
        this.f37545d = i9;
        return this;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: k */
    public x b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 8) {
                l(l0Var.l());
            } else if (b10 == 24) {
                j(l0Var.p());
            } else if (b10 == 32) {
                o(l0Var.p());
            } else if (b10 == 40) {
                r(l0Var.p());
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public x l(boolean z10) {
        this.f37542a = true;
        this.f37543b = z10;
        return this;
    }

    public boolean n() {
        return this.f37543b;
    }

    public x o(int i9) {
        this.f37546e = true;
        this.f37547f = i9;
        return this;
    }

    public boolean p() {
        return this.f37542a;
    }

    public int q() {
        return this.f37545d;
    }

    public x r(int i9) {
        this.f37548g = true;
        this.f37549h = i9;
        return this;
    }

    public boolean s() {
        return this.f37544c;
    }

    public int t() {
        return this.f37547f;
    }

    public boolean u() {
        return this.f37546e;
    }

    public int v() {
        return this.f37549h;
    }

    public boolean w() {
        return this.f37548g;
    }
}
