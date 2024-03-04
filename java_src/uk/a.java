package uk;
/* loaded from: classes7.dex */
public final class a extends vj.a {

    /* renamed from: b  reason: collision with root package name */
    private int f58540b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f58541c;

    public a(int i9, byte[] bArr) {
        super(true);
        if (bArr.length != c.b(i9)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.f58540b = i9;
        this.f58541c = org.bouncycastle.util.a.e(bArr);
    }

    public byte[] b() {
        return org.bouncycastle.util.a.e(this.f58541c);
    }

    public int c() {
        return this.f58540b;
    }
}
