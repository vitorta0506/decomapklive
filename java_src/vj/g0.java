package vj;
/* loaded from: classes7.dex */
public final class g0 extends a {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f59207b;

    public g0(byte[] bArr, int i9) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.f59207b = bArr2;
        System.arraycopy(bArr, i9, bArr2, 0, 32);
    }

    public h0 b() {
        byte[] bArr = new byte[32];
        kk.a.a(this.f59207b, 0, bArr, 0);
        return new h0(bArr, 0);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.e(this.f59207b);
    }
}
