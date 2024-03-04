package uk;
/* loaded from: classes7.dex */
public final class b extends vj.a {

    /* renamed from: b  reason: collision with root package name */
    private int f58542b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f58543c;

    public b(int i9, byte[] bArr) {
        super(false);
        if (bArr.length != c.c(i9)) {
            throw new IllegalArgumentException("invalid key size for security category");
        }
        this.f58542b = i9;
        this.f58543c = org.bouncycastle.util.a.e(bArr);
    }

    public byte[] b() {
        return org.bouncycastle.util.a.e(this.f58543c);
    }

    public int c() {
        return this.f58542b;
    }
}
