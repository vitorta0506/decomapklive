package vj;
/* loaded from: classes7.dex */
public final class j0 extends a {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f59218b;

    public j0(byte[] bArr, int i9) {
        super(false);
        byte[] bArr2 = new byte[56];
        this.f59218b = bArr2;
        System.arraycopy(bArr, i9, bArr2, 0, 56);
    }

    public void b(byte[] bArr, int i9) {
        System.arraycopy(this.f59218b, 0, bArr, i9, 56);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.e(this.f59218b);
    }
}
