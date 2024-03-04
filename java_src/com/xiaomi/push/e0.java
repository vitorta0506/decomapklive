package com.xiaomi.push;
/* loaded from: classes5.dex */
public final class e0 extends g2 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f36792a;

    /* renamed from: b  reason: collision with root package name */
    private a f36793b = a.f36328c;

    /* renamed from: c  reason: collision with root package name */
    private int f36794c = -1;

    public static e0 m(byte[] bArr) {
        return (e0) new e0().c(bArr);
    }

    @Override // com.xiaomi.push.g2
    public int a() {
        if (this.f36794c < 0) {
            i();
        }
        return this.f36794c;
    }

    @Override // com.xiaomi.push.g2
    public void e(c cVar) {
        if (n()) {
            cVar.v(1, j());
        }
    }

    @Override // com.xiaomi.push.g2
    public int i() {
        int e10 = n() ? 0 + c.e(1, j()) : 0;
        this.f36794c = e10;
        return e10;
    }

    public a j() {
        return this.f36793b;
    }

    public e0 k(a aVar) {
        this.f36792a = true;
        this.f36793b = aVar;
        return this;
    }

    @Override // com.xiaomi.push.g2
    /* renamed from: l */
    public e0 b(l0 l0Var) {
        while (true) {
            int b10 = l0Var.b();
            if (b10 == 0) {
                return this;
            }
            if (b10 == 10) {
                k(l0Var.e());
            } else if (!g(l0Var, b10)) {
                return this;
            }
        }
    }

    public boolean n() {
        return this.f36792a;
    }
}
