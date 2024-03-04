package rj;
/* loaded from: classes7.dex */
public class g extends c {
    public g() {
    }

    public g(g gVar) {
        super(gVar);
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
        reset();
        return 48;
    }

    @Override // org.bouncycastle.util.f
    public org.bouncycastle.util.f copy() {
        return new g(this);
    }

    @Override // org.bouncycastle.crypto.e
    public int d() {
        return 48;
    }

    @Override // org.bouncycastle.util.f
    public void g(org.bouncycastle.util.f fVar) {
        super.o((g) fVar);
    }

    @Override // org.bouncycastle.crypto.e
    public String getAlgorithmName() {
        return "SHA-384";
    }

    @Override // rj.c, org.bouncycastle.crypto.e
    public void reset() {
        super.reset();
        this.f57501e = -3766243637369397544L;
        this.f57502f = 7105036623409894663L;
        this.f57503g = -7973340178411365097L;
        this.f57504h = 1526699215303891257L;
        this.f57505i = 7436329637833083697L;
        this.f57506j = -8163818279084223215L;
        this.f57507k = -2662702644619276377L;
        this.f57508l = 5167115440072839076L;
    }
}
