package vj;
/* loaded from: classes7.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private int f59219a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f59220b;

    /* renamed from: c  reason: collision with root package name */
    private int f59221c;

    public k(byte[] bArr, int i9) {
        this(bArr, i9, -1);
    }

    public k(byte[] bArr, int i9, int i10) {
        this.f59220b = org.bouncycastle.util.a.e(bArr);
        this.f59221c = i9;
        this.f59219a = i10;
    }

    public int a() {
        return this.f59221c;
    }

    public byte[] b() {
        return org.bouncycastle.util.a.e(this.f59220b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (kVar.f59221c != this.f59221c) {
                return false;
            }
            return org.bouncycastle.util.a.a(this.f59220b, kVar.f59220b);
        }
        return false;
    }

    public int hashCode() {
        return this.f59221c ^ org.bouncycastle.util.a.r(this.f59220b);
    }
}
