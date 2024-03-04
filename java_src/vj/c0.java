package vj;
/* loaded from: classes7.dex */
public class c0 implements org.bouncycastle.crypto.c {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f59188a;

    public c0(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public c0(byte[] bArr, int i9, int i10) {
        byte[] bArr2 = new byte[i10];
        this.f59188a = bArr2;
        System.arraycopy(bArr, i9, bArr2, 0, i10);
    }

    public byte[] a() {
        return this.f59188a;
    }
}
