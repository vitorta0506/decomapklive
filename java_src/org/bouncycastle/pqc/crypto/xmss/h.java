package org.bouncycastle.pqc.crypto.xmss;

import org.bouncycastle.pqc.crypto.xmss.m;
/* loaded from: classes7.dex */
final class h extends m {

    /* renamed from: e  reason: collision with root package name */
    private final int f56155e;

    /* renamed from: f  reason: collision with root package name */
    private final int f56156f;

    /* renamed from: g  reason: collision with root package name */
    private final int f56157g;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes7.dex */
    public static class b extends m.a<b> {

        /* renamed from: e  reason: collision with root package name */
        private int f56158e;

        /* renamed from: f  reason: collision with root package name */
        private int f56159f;

        /* renamed from: g  reason: collision with root package name */
        private int f56160g;

        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
            super(0);
            this.f56158e = 0;
            this.f56159f = 0;
            this.f56160g = 0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public m l() {
            return new h(this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.bouncycastle.pqc.crypto.xmss.m.a
        /* renamed from: m */
        public b e() {
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b n(int i9) {
            this.f56159f = i9;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b o(int i9) {
            this.f56160g = i9;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b p(int i9) {
            this.f56158e = i9;
            return this;
        }
    }

    private h(b bVar) {
        super(bVar);
        this.f56155e = bVar.f56158e;
        this.f56156f = bVar.f56159f;
        this.f56157g = bVar.f56160g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.bouncycastle.pqc.crypto.xmss.m
    public byte[] d() {
        byte[] d10 = super.d();
        org.bouncycastle.util.g.c(this.f56155e, d10, 16);
        org.bouncycastle.util.g.c(this.f56156f, d10, 20);
        org.bouncycastle.util.g.c(this.f56157g, d10, 24);
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int e() {
        return this.f56156f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int f() {
        return this.f56157g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int g() {
        return this.f56155e;
    }
}
