package g0;
/* loaded from: classes.dex */
public final class f implements a<byte[]> {
    @Override // g0.a
    public int a() {
        return 1;
    }

    @Override // g0.a
    /* renamed from: c */
    public int b(byte[] bArr) {
        return bArr.length;
    }

    @Override // g0.a
    /* renamed from: d */
    public byte[] newArray(int i9) {
        return new byte[i9];
    }

    @Override // g0.a
    public String getTag() {
        return "ByteArrayPool";
    }
}
