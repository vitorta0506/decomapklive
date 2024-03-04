package vj;
/* loaded from: classes7.dex */
public final class i0 extends a {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f59214b;

    public i0(byte[] bArr, int i9) {
        super(true);
        byte[] bArr2 = new byte[56];
        this.f59214b = bArr2;
        System.arraycopy(bArr, i9, bArr2, 0, 56);
    }

    public j0 b() {
        byte[] bArr = new byte[56];
        kk.c.a(this.f59214b, 0, bArr, 0);
        return new j0(bArr, 0);
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.e(this.f59214b);
    }
}
