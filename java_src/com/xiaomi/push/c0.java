package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class c0 extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f36403a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36405c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f36407e;

    /* renamed from: b  reason: collision with root package name */
    private String f36404b = "";

    /* renamed from: d  reason: collision with root package name */
    private String f36406d = "";

    /* renamed from: f  reason: collision with root package name */
    private String f36408f = "";

    /* renamed from: g  reason: collision with root package name */
    private int f36409g = -1;

    public static c0 l(byte[] bArr) {
        return (c0) new c0().c(bArr);
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f36409g < 0) {
            i();
        }
        return this.f36409g;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (n()) {
            cVar.x(1, m());
        }
        if (q()) {
            cVar.x(2, p());
        }
        if (t()) {
            cVar.x(3, s());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int g10 = n() ? 0 + c.g(1, m()) : 0;
        if (q()) {
            g10 += c.g(2, p());
        }
        if (t()) {
            g10 += c.g(3, s());
        }
        this.f36409g = g10;
        return g10;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: j */
    public c0 b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 10) {
                k(l0Var.h());
            } else if (b10 == 18) {
                o(l0Var.h());
            } else if (b10 == 26) {
                r(l0Var.h());
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public c0 k(String str) {
        this.f36403a = true;
        this.f36404b = str;
        return this;
    }

    public String m() {
        return this.f36404b;
    }

    public boolean n() {
        return this.f36403a;
    }

    public c0 o(String str) {
        this.f36405c = true;
        this.f36406d = str;
        return this;
    }

    public String p() {
        return this.f36406d;
    }

    public boolean q() {
        return this.f36405c;
    }

    public c0 r(String str) {
        this.f36407e = true;
        this.f36408f = str;
        return this;
    }

    public String s() {
        return this.f36408f;
    }

    public boolean t() {
        return this.f36407e;
    }
}
