package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class z extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f37570a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f37572c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f37574e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f37576g;

    /* renamed from: b  reason: collision with root package name */
    private boolean f37571b = false;

    /* renamed from: d  reason: collision with root package name */
    private String f37573d = "";

    /* renamed from: f  reason: collision with root package name */
    private String f37575f = "";

    /* renamed from: h  reason: collision with root package name */
    private String f37577h = "";

    /* renamed from: i  reason: collision with root package name */
    private int f37578i = -1;

    public static z m(byte[] bArr) {
        return (z) new z().c(bArr);
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f37578i < 0) {
            i();
        }
        return this.f37578i;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (r()) {
            cVar.y(1, o());
        }
        if (u()) {
            cVar.x(2, n());
        }
        if (v()) {
            cVar.x(3, q());
        }
        if (w()) {
            cVar.x(4, t());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int h10 = r() ? 0 + c.h(1, o()) : 0;
        if (u()) {
            h10 += c.g(2, n());
        }
        if (v()) {
            h10 += c.g(3, q());
        }
        if (w()) {
            h10 += c.g(4, t());
        }
        this.f37578i = h10;
        return h10;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: j */
    public z b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 8) {
                l(l0Var.l());
            } else if (b10 == 18) {
                k(l0Var.h());
            } else if (b10 == 26) {
                p(l0Var.h());
            } else if (b10 == 34) {
                s(l0Var.h());
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public z k(String str) {
        this.f37572c = true;
        this.f37573d = str;
        return this;
    }

    public z l(boolean z10) {
        this.f37570a = true;
        this.f37571b = z10;
        return this;
    }

    public String n() {
        return this.f37573d;
    }

    public boolean o() {
        return this.f37571b;
    }

    public z p(String str) {
        this.f37574e = true;
        this.f37575f = str;
        return this;
    }

    public String q() {
        return this.f37575f;
    }

    public boolean r() {
        return this.f37570a;
    }

    public z s(String str) {
        this.f37576g = true;
        this.f37577h = str;
        return this;
    }

    public String t() {
        return this.f37577h;
    }

    public boolean u() {
        return this.f37572c;
    }

    public boolean v() {
        return this.f37574e;
    }

    public boolean w() {
        return this.f37576g;
    }
}
