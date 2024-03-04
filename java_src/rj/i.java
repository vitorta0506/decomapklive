package rj;
/* loaded from: classes7.dex */
public class i extends b implements org.bouncycastle.crypto.i {
    public i(int i9) {
        super(r(i9));
    }

    private static int r(int i9) {
        if (i9 == 128 || i9 == 256) {
            return i9;
        }
        throw new IllegalArgumentException("'bitLength' " + i9 + " not supported for SHAKE");
    }

    @Override // org.bouncycastle.crypto.e
    public int a(byte[] bArr, int i9) {
        return e(bArr, i9, d());
    }

    @Override // org.bouncycastle.crypto.i
    public int e(byte[] bArr, int i9, int i10) {
        int s10 = s(bArr, i9, i10);
        reset();
        return s10;
    }

    @Override // org.bouncycastle.crypto.e
    public String getAlgorithmName() {
        return "SHAKE" + this.f57494e;
    }

    public int s(byte[] bArr, int i9, int i10) {
        if (!this.f57495f) {
            l(15, 4);
        }
        q(bArr, i9, i10 * 8);
        return i10;
    }
}
