package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class d0 extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f36478a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36480c;

    /* renamed from: b  reason: collision with root package name */
    private int f36479b = 0;

    /* renamed from: d  reason: collision with root package name */
    private String f36481d = "";

    /* renamed from: e  reason: collision with root package name */
    private int f36482e = -1;

    public static d0 m(byte[] bArr) {
        return (d0) new d0().c(bArr);
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f36482e < 0) {
            i();
        }
        return this.f36482e;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (o()) {
            cVar.t(1, q());
        }
        if (p()) {
            cVar.x(2, n());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int c10 = o() ? 0 + c.c(1, q()) : 0;
        if (p()) {
            c10 += c.g(2, n());
        }
        this.f36482e = c10;
        return c10;
    }

    public d0 j(int i9) {
        this.f36478a = true;
        this.f36479b = i9;
        return this;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: k */
    public d0 b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 8) {
                j(l0Var.p());
            } else if (b10 == 18) {
                l(l0Var.h());
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public d0 l(String str) {
        this.f36480c = true;
        this.f36481d = str;
        return this;
    }

    public String n() {
        return this.f36481d;
    }

    public boolean o() {
        return this.f36478a;
    }

    public boolean p() {
        return this.f36480c;
    }

    public int q() {
        return this.f36479b;
    }
}
