package org.bouncycastle.pqc.crypto.xmss;

import org.bouncycastle.pqc.crypto.xmss.m;
/* loaded from: classes7.dex */
final class g extends m {

    /* renamed from: e  reason: collision with root package name */
    private final int f56149e;

    /* renamed from: f  reason: collision with root package name */
    private final int f56150f;

    /* renamed from: g  reason: collision with root package name */
    private final int f56151g;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes7.dex */
    public static class b extends m.a<b> {

        /* renamed from: e  reason: collision with root package name */
        private int f56152e;

        /* renamed from: f  reason: collision with root package name */
        private int f56153f;

        /* renamed from: g  reason: collision with root package name */
        private int f56154g;

        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
            super(1);
            this.f56152e = 0;
            this.f56153f = 0;
            this.f56154g = 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public m l() {
            return new g(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.bouncycastle.pqc.crypto.xmss.m.a
        /* renamed from: m */
        public b e() {
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b n(int i9) {
            this.f56152e = i9;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b o(int i9) {
            this.f56153f = i9;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b p(int i9) {
            this.f56154g = i9;
            return this;
        }
    }

    private g(b bVar) {
        super(bVar);
        this.f56149e = bVar.f56152e;
        this.f56150f = bVar.f56153f;
        this.f56151g = bVar.f56154g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.pqc.crypto.xmss.m
    public byte[] d() {
        byte[] d10 = super.d();
        org.bouncycastle.util.g.c(this.f56149e, d10, 16);
        org.bouncycastle.util.g.c(this.f56150f, d10, 20);
        org.bouncycastle.util.g.c(this.f56151g, d10, 24);
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int e() {
        return this.f56149e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int f() {
        return this.f56150f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int g() {
        return this.f56151g;
    }
}
