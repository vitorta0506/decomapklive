package org.bouncycastle.pqc.crypto.xmss;

import org.bouncycastle.pqc.crypto.xmss.m;
/* loaded from: classes7.dex */
final class e extends m {

    /* renamed from: e  reason: collision with root package name */
    private final int f56142e;

    /* renamed from: f  reason: collision with root package name */
    private final int f56143f;

    /* renamed from: g  reason: collision with root package name */
    private final int f56144g;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes7.dex */
    public static class b extends m.a<b> {

        /* renamed from: e  reason: collision with root package name */
        private int f56145e;

        /* renamed from: f  reason: collision with root package name */
        private int f56146f;

        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
            super(2);
            this.f56145e = 0;
            this.f56146f = 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public m k() {
            return new e(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.bouncycastle.pqc.crypto.xmss.m.a
        /* renamed from: l */
        public b e() {
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b m(int i9) {
            this.f56145e = i9;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b n(int i9) {
            this.f56146f = i9;
            return this;
        }
    }

    private e(b bVar) {
        super(bVar);
        this.f56142e = 0;
        this.f56143f = bVar.f56145e;
        this.f56144g = bVar.f56146f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.pqc.crypto.xmss.m
    public byte[] d() {
        byte[] d10 = super.d();
        org.bouncycastle.util.g.c(this.f56142e, d10, 16);
        org.bouncycastle.util.g.c(this.f56143f, d10, 20);
        org.bouncycastle.util.g.c(this.f56144g, d10, 24);
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int e() {
        return this.f56143f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int f() {
        return this.f56144g;
    }
}
