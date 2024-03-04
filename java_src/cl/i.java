package cl;

import kotlin.UByte;
/* loaded from: classes7.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private b f1766a;

    /* renamed from: b  reason: collision with root package name */
    private int f1767b;

    /* renamed from: c  reason: collision with root package name */
    private int[] f1768c;

    public i(b bVar, int i9) {
        this.f1766a = bVar;
        this.f1767b = i9;
        int[] iArr = new int[i9 + 1];
        this.f1768c = iArr;
        iArr[i9] = 1;
    }

    public i(b bVar, byte[] bArr) {
        this.f1766a = bVar;
        int i9 = 8;
        int i10 = 1;
        while (bVar.d() > i9) {
            i10++;
            i9 += 8;
        }
        if (bArr.length % i10 != 0) {
            throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
        }
        this.f1768c = new int[bArr.length / i10];
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int[] iArr = this.f1768c;
            if (i11 >= iArr.length) {
                if (iArr.length != 1 && iArr[iArr.length - 1] == 0) {
                    throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
                }
                d();
                return;
            }
            int i13 = 0;
            while (i13 < i9) {
                int[] iArr2 = this.f1768c;
                iArr2[i11] = ((bArr[i12] & UByte.MAX_VALUE) << i13) ^ iArr2[i11];
                i13 += 8;
                i12++;
            }
            if (!this.f1766a.g(this.f1768c[i11])) {
                throw new IllegalArgumentException(" Error: byte array is not encoded polynomial over given finite field GF2m");
            }
            i11++;
        }
    }

    public i(b bVar, int[] iArr) {
        this.f1766a = bVar;
        this.f1768c = q(iArr);
        d();
    }

    public i(i iVar) {
        this.f1766a = iVar.f1766a;
        this.f1767b = iVar.f1767b;
        this.f1768c = d.a(iVar.f1768c);
    }

    private int[] a(int[] iArr, int[] iArr2) {
        int[] iArr3;
        if (iArr.length < iArr2.length) {
            iArr3 = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
        } else {
            iArr3 = new int[iArr.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            iArr = iArr2;
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            iArr3[length] = this.f1766a.a(iArr3[length], iArr[length]);
        }
        return iArr3;
    }

    private static int c(int[] iArr) {
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        return length;
    }

    private void d() {
        int length = this.f1768c.length;
        do {
            this.f1767b = length - 1;
            length = this.f1767b;
            if (length < 0) {
                return;
            }
        } while (this.f1768c[length] == 0);
    }

    private static int i(int[] iArr) {
        int c10 = c(iArr);
        if (c10 == -1) {
            return 0;
        }
        return iArr[c10];
    }

    private static boolean j(int[] iArr, int[] iArr2) {
        int c10 = c(iArr);
        if (c10 != c(iArr2)) {
            return false;
        }
        for (int i9 = 0; i9 <= c10; i9++) {
            if (iArr[i9] != iArr2[i9]) {
                return false;
            }
        }
        return true;
    }

    private int[] l(int[] iArr, int[] iArr2) {
        int c10 = c(iArr2);
        if (c10 != -1) {
            int length = iArr.length;
            int[] iArr3 = new int[length];
            int f10 = this.f1766a.f(i(iArr2));
            System.arraycopy(iArr, 0, iArr3, 0, length);
            while (c10 <= c(iArr3)) {
                iArr3 = a(o(p(iArr2, c(iArr3) - c10), this.f1766a.h(i(iArr3), f10)), iArr3);
            }
            return iArr3;
        }
        throw new ArithmeticException("Division by zero");
    }

    private int[] o(int[] iArr, int i9) {
        int c10 = c(iArr);
        if (c10 == -1 || i9 == 0) {
            return new int[1];
        }
        if (i9 == 1) {
            return d.a(iArr);
        }
        int[] iArr2 = new int[c10 + 1];
        while (c10 >= 0) {
            iArr2[c10] = this.f1766a.h(iArr[c10], i9);
            c10--;
        }
        return iArr2;
    }

    private static int[] p(int[] iArr, int i9) {
        int c10 = c(iArr);
        if (c10 == -1) {
            return new int[1];
        }
        int[] iArr2 = new int[c10 + i9 + 1];
        System.arraycopy(iArr, 0, iArr2, i9, c10 + 1);
        return iArr2;
    }

    private static int[] q(int[] iArr) {
        int c10 = c(iArr);
        if (c10 == -1) {
            return new int[1];
        }
        int i9 = c10 + 1;
        if (iArr.length == i9) {
            return d.a(iArr);
        }
        int[] iArr2 = new int[i9];
        System.arraycopy(iArr, 0, iArr2, 0, i9);
        return iArr2;
    }

    public void b(i iVar) {
        this.f1768c = a(this.f1768c, iVar.f1768c);
        d();
    }

    public int e(int i9) {
        int[] iArr = this.f1768c;
        int i10 = this.f1767b;
        int i11 = iArr[i10];
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            i11 = this.f1766a.h(i11, i9) ^ this.f1768c[i12];
        }
        return i11;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof i)) {
            i iVar = (i) obj;
            if (this.f1766a.equals(iVar.f1766a) && this.f1767b == iVar.f1767b && j(this.f1768c, iVar.f1768c)) {
                return true;
            }
        }
        return false;
    }

    public int f(int i9) {
        if (i9 < 0 || i9 > this.f1767b) {
            return 0;
        }
        return this.f1768c[i9];
    }

    public int g() {
        int[] iArr = this.f1768c;
        int length = iArr.length - 1;
        if (iArr[length] == 0) {
            return -1;
        }
        return length;
    }

    public byte[] h() {
        int i9 = 8;
        int i10 = 1;
        while (this.f1766a.d() > i9) {
            i10++;
            i9 += 8;
        }
        byte[] bArr = new byte[this.f1768c.length * i10];
        int i11 = 0;
        for (int i12 = 0; i12 < this.f1768c.length; i12++) {
            int i13 = 0;
            while (i13 < i9) {
                bArr[i11] = (byte) (this.f1768c[i12] >>> i13);
                i13 += 8;
                i11++;
            }
        }
        return bArr;
    }

    public int hashCode() {
        int hashCode = this.f1766a.hashCode();
        int i9 = 0;
        while (true) {
            int[] iArr = this.f1768c;
            if (i9 >= iArr.length) {
                return hashCode;
            }
            hashCode = (hashCode * 31) + iArr[i9];
            i9++;
        }
    }

    public i k(i iVar) {
        return new i(this.f1766a, l(this.f1768c, iVar.f1768c));
    }

    public void m(int i9) {
        if (!this.f1766a.g(i9)) {
            throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
        }
        this.f1768c = o(this.f1768c, i9);
        d();
    }

    public i n(int i9) {
        if (this.f1766a.g(i9)) {
            return new i(this.f1766a, o(this.f1768c, i9));
        }
        throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
    }

    public String toString() {
        String str = " Polynomial over " + this.f1766a.toString() + ": \n";
        for (int i9 = 0; i9 < this.f1768c.length; i9++) {
            str = str + this.f1766a.b(this.f1768c[i9]) + "Y^" + i9 + "+";
        }
        return str + ";";
    }
}
