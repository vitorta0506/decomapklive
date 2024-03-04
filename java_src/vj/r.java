package vj;
/* loaded from: classes7.dex */
public final class r extends a {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f59235b;

    /* renamed from: c  reason: collision with root package name */
    private s f59236c;

    public r(byte[] bArr, int i9) {
        super(true);
        byte[] bArr2 = new byte[32];
        this.f59235b = bArr2;
        System.arraycopy(bArr, i9, bArr2, 0, 32);
    }

    public s b() {
        s sVar;
        synchronized (this.f59235b) {
            if (this.f59236c == null) {
                byte[] bArr = new byte[32];
                lk.a.h(this.f59235b, 0, bArr, 0);
                this.f59236c = new s(bArr, 0);
            }
            sVar = this.f59236c;
        }
        return sVar;
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.e(this.f59235b);
    }
}
