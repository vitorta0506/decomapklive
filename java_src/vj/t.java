package vj;
/* loaded from: classes7.dex */
public final class t extends a {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f59238b;

    /* renamed from: c  reason: collision with root package name */
    private u f59239c;

    public t(byte[] bArr, int i9) {
        super(true);
        byte[] bArr2 = new byte[57];
        this.f59238b = bArr2;
        System.arraycopy(bArr, i9, bArr2, 0, 57);
    }

    public u b() {
        u uVar;
        synchronized (this.f59238b) {
            if (this.f59239c == null) {
                byte[] bArr = new byte[57];
                lk.b.h(this.f59238b, 0, bArr, 0);
                this.f59239c = new u(bArr, 0);
            }
            uVar = this.f59239c;
        }
        return uVar;
    }

    public byte[] getEncoded() {
        return org.bouncycastle.util.a.e(this.f59238b);
    }
}
