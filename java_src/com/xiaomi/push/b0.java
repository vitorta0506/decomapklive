package com.xiaomi.push;

import java.util.Objects;
/* loaded from: classes5.dex */
public final class b0 extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f36374a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36376c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f36378e;

    /* renamed from: b  reason: collision with root package name */
    private String f36375b = "";

    /* renamed from: d  reason: collision with root package name */
    private String f36377d = "";

    /* renamed from: f  reason: collision with root package name */
    private x f36379f = null;

    /* renamed from: g  reason: collision with root package name */
    private int f36380g = -1;

    public static b0 n(byte[] bArr) {
        return (b0) new b0().c(bArr);
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f36380g < 0) {
            i();
        }
        return this.f36380g;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (p()) {
            cVar.x(1, o());
        }
        if (s()) {
            cVar.x(2, r());
        }
        if (t()) {
            cVar.w(3, j());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int g10 = p() ? 0 + c.g(1, o()) : 0;
        if (s()) {
            g10 += c.g(2, r());
        }
        if (t()) {
            g10 += c.f(3, j());
        }
        this.f36380g = g10;
        return g10;
    }

    public x j() {
        return this.f36379f;
    }

    public b0 k(x xVar) {
        Objects.requireNonNull(xVar);
        this.f36378e = true;
        this.f36379f = xVar;
        return this;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: l */
    public b0 b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 10) {
                m(l0Var.h());
            } else if (b10 == 18) {
                q(l0Var.h());
            } else if (b10 == 26) {
                x xVar = new x();
                l0Var.k(xVar);
                k(xVar);
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public b0 m(String str) {
        this.f36374a = true;
        this.f36375b = str;
        return this;
    }

    public String o() {
        return this.f36375b;
    }

    public boolean p() {
        return this.f36374a;
    }

    public b0 q(String str) {
        this.f36376c = true;
        this.f36377d = str;
        return this;
    }

    public String r() {
        return this.f36377d;
    }

    public boolean s() {
        return this.f36376c;
    }

    public boolean t() {
        return this.f36378e;
    }
}
