package vj;
/* loaded from: classes7.dex */
public final class h0 extends a {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f59212b;

    public h0(byte[] bArr, int i9) {
        super(false);
        byte[] bArr2 = new byte[32];
        this.f59212b = bArr2;
        System.arraycopy(bArr, i9, bArr2, 0, 32);
    }

    public void b(byte[] bArr, int i9) {
        System.arraycopy(this.f59212b, 0, bArr, i9, 32);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.e(this.f59212b);
    }
}
