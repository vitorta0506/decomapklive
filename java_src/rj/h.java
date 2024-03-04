package rj;
/* loaded from: classes7.dex */
public class h extends c {
    public h() {
    }

    public h(h hVar) {
        super(hVar);
    }

    @Override // org.bouncycastle.crypto.e
    public int a(byte[] bArr, int i9) {
        p();
        org.bouncycastle.util.g.i(this.f57501e, bArr, i9);
        org.bouncycastle.util.g.i(this.f57502f, bArr, i9 + 8);
        org.bouncycastle.util.g.i(this.f57503g, bArr, i9 + 16);
        org.bouncycastle.util.g.i(this.f57504h, bArr, i9 + 24);
        org.bouncycastle.util.g.i(this.f57505i, bArr, i9 + 32);
        org.bouncycastle.util.g.i(this.f57506j, bArr, i9 + 40);
        org.bouncycastle.util.g.i(this.f57507k, bArr, i9 + 48);
        org.bouncycastle.util.g.i(this.f57508l, bArr, i9 + 56);
        reset();
        return 64;
    }

    @Override // org.bouncycastle.util.f
    public org.bouncycastle.util.f copy() {
        return new h(this);
    }

    @Override // org.bouncycastle.crypto.e
    public int d() {
        return 64;
    }

    @Override // org.bouncycastle.util.f
    public void g(org.bouncycastle.util.f fVar) {
        o((h) fVar);
    }

    @Override // org.bouncycastle.crypto.e
    public String getAlgorithmName() {
        return "SHA-512";
    }

    @Override // rj.c, org.bouncycastle.crypto.e
    public void reset() {
        super.reset();
        this.f57501e = 7640891576956012808L;
        this.f57502f = -4942790177534073029L;
        this.f57503g = 4354685564936845355L;
        this.f57504h = -6534734903238641935L;
        this.f57505i = 5840696475078001361L;
        this.f57506j = -7276294671716946913L;
        this.f57507k = 2270897969802886507L;
        this.f57508l = 6620516959819538809L;
    }
}
