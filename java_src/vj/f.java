package vj;
/* loaded from: classes7.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f59198a;

    /* renamed from: b  reason: collision with root package name */
    private int f59199b;

    public f(byte[] bArr, int i9) {
        this.f59198a = org.bouncycastle.util.a.e(bArr);
        this.f59199b = i9;
    }

    public int a() {
        return this.f59199b;
    }

    public byte[] b() {
        return org.bouncycastle.util.a.e(this.f59198a);
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.f59199b != this.f59199b) {
                return false;
            }
            return org.bouncycastle.util.a.a(this.f59198a, fVar.f59198a);
        }
        return false;
    }

    public int hashCode() {
        return this.f59199b ^ org.bouncycastle.util.a.r(this.f59198a);
    }
}
