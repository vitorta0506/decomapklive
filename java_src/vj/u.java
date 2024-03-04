package vj;
/* loaded from: classes7.dex */
public final class u extends a {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f59240b;

    public u(byte[] bArr, int i9) {
        super(false);
        byte[] bArr2 = new byte[57];
        this.f59240b = bArr2;
        System.arraycopy(bArr, i9, bArr2, 0, 57);
    }

    public void b(byte[] bArr, int i9) {
        System.arraycopy(this.f59240b, 0, bArr, i9, 57);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.e(this.f59240b);
    }
}
