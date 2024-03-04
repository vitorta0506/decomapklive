package com.xiaomi.push;

import java.util.Objects;
/* loaded from: classes5.dex */
public final class f0 extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f36868a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36870c;

    /* renamed from: b  reason: collision with root package name */
    private a f36869b = a.f36328c;

    /* renamed from: d  reason: collision with root package name */
    private x f36871d = null;

    /* renamed from: e  reason: collision with root package name */
    private int f36872e = -1;

    public static f0 o(byte[] bArr) {
        return (f0) new f0().c(bArr);
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f36872e < 0) {
            i();
        }
        return this.f36872e;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (p()) {
            cVar.v(1, j());
        }
        if (q()) {
            cVar.w(2, k());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int e10 = p() ? 0 + c.e(1, j()) : 0;
        if (q()) {
            e10 += c.f(2, k());
        }
        this.f36872e = e10;
        return e10;
    }

    public a j() {
        return this.f36869b;
    }

    public x k() {
        return this.f36871d;
    }

    public f0 l(a aVar) {
        this.f36868a = true;
        this.f36869b = aVar;
        return this;
    }

    public f0 m(x xVar) {
        Objects.requireNonNull(xVar);
        this.f36870c = true;
        this.f36871d = xVar;
        return this;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: n */
    public f0 b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 10) {
                l(l0Var.e());
            } else if (b10 == 18) {
                x xVar = new x();
                l0Var.k(xVar);
                m(xVar);
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public boolean p() {
        return this.f36868a;
    }

    public boolean q() {
        return this.f36870c;
    }
}
