package cl;
/* loaded from: classes7.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private int[] f1765a;

    public h(byte[] bArr) {
        if (bArr.length <= 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        int e10 = f.e(bArr, 0);
        int a10 = e.a(e10 - 1);
        if (bArr.length != (e10 * a10) + 4) {
            throw new IllegalArgumentException("invalid encoding");
        }
        this.f1765a = new int[e10];
        for (int i9 = 0; i9 < e10; i9++) {
            this.f1765a[i9] = f.f(bArr, (i9 * a10) + 4, a10);
        }
        if (!b(this.f1765a)) {
            throw new IllegalArgumentException("invalid encoding");
        }
    }

    private boolean b(int[] iArr) {
        int length = iArr.length;
        boolean[] zArr = new boolean[length];
        for (int i9 = 0; i9 < length; i9++) {
            if (iArr[i9] < 0 || iArr[i9] >= length || zArr[iArr[i9]]) {
                return false;
            }
            zArr[iArr[i9]] = true;
        }
        return true;
    }

    public byte[] a() {
        int length = this.f1765a.length;
        int a10 = e.a(length - 1);
        byte[] bArr = new byte[(length * a10) + 4];
        f.a(length, bArr, 0);
        for (int i9 = 0; i9 < length; i9++) {
            f.b(this.f1765a[i9], bArr, (i9 * a10) + 4, a10);
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (obj instanceof h) {
            return d.b(this.f1765a, ((h) obj).f1765a);
        }
        return false;
    }

    public int hashCode() {
        return org.bouncycastle.util.a.u(this.f1765a);
    }

    public String toString() {
        String str = "[" + this.f1765a[0];
        for (int i9 = 1; i9 < this.f1765a.length; i9++) {
            str = str + ", " + this.f1765a[i9];
        }
        return str + "]";
    }
}
