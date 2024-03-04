package cl;

import java.lang.reflect.Array;
import kotlin.UByte;
/* loaded from: classes7.dex */
public class a extends g {

    /* renamed from: c  reason: collision with root package name */
    private int[][] f1752c;

    /* renamed from: d  reason: collision with root package name */
    private int f1753d;

    public a(int i9, int[][] iArr) {
        if (iArr[0].length != ((i9 + 31) >> 5)) {
            throw new ArithmeticException("Int array does not match given number of columns.");
        }
        this.f1764b = i9;
        this.f1763a = iArr.length;
        this.f1753d = iArr[0].length;
        int i10 = i9 & 31;
        int i11 = i10 == 0 ? -1 : (1 << i10) - 1;
        for (int i12 = 0; i12 < this.f1763a; i12++) {
            int[] iArr2 = iArr[i12];
            int i13 = this.f1753d - 1;
            iArr2[i13] = iArr2[i13] & i11;
        }
        this.f1752c = iArr;
    }

    public a(a aVar) {
        this.f1764b = aVar.a();
        this.f1763a = aVar.b();
        this.f1753d = aVar.f1753d;
        this.f1752c = new int[aVar.f1752c.length];
        int i9 = 0;
        while (true) {
            int[][] iArr = this.f1752c;
            if (i9 >= iArr.length) {
                return;
            }
            iArr[i9] = d.a(aVar.f1752c[i9]);
            i9++;
        }
    }

    public a(byte[] bArr) {
        if (bArr.length < 9) {
            throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
        }
        this.f1763a = f.e(bArr, 0);
        int e10 = f.e(bArr, 4);
        this.f1764b = e10;
        int i9 = this.f1763a;
        int i10 = ((e10 + 7) >>> 3) * i9;
        if (i9 > 0) {
            int i11 = 8;
            if (i10 == bArr.length - 8) {
                int i12 = (e10 + 31) >>> 5;
                this.f1753d = i12;
                this.f1752c = (int[][]) Array.newInstance(int.class, i9, i12);
                int i13 = this.f1764b;
                int i14 = i13 >> 5;
                int i15 = i13 & 31;
                for (int i16 = 0; i16 < this.f1763a; i16++) {
                    int i17 = 0;
                    while (i17 < i14) {
                        this.f1752c[i16][i17] = f.e(bArr, i11);
                        i17++;
                        i11 += 4;
                    }
                    int i18 = 0;
                    while (i18 < i15) {
                        int[] iArr = this.f1752c[i16];
                        iArr[i14] = ((bArr[i11] & UByte.MAX_VALUE) << i18) ^ iArr[i14];
                        i18 += 8;
                        i11++;
                    }
                }
                return;
            }
        }
        throw new ArithmeticException("given array is not an encoded matrix over GF(2)");
    }

    public byte[] c() {
        int i9 = this.f1763a;
        int i10 = 8;
        byte[] bArr = new byte[(((this.f1764b + 7) >>> 3) * i9) + 8];
        f.a(i9, bArr, 0);
        f.a(this.f1764b, bArr, 4);
        int i11 = this.f1764b;
        int i12 = i11 >>> 5;
        int i13 = i11 & 31;
        for (int i14 = 0; i14 < this.f1763a; i14++) {
            int i15 = 0;
            while (i15 < i12) {
                f.a(this.f1752c[i14][i15], bArr, i10);
                i15++;
                i10 += 4;
            }
            int i16 = 0;
            while (i16 < i13) {
                bArr[i10] = (byte) ((this.f1752c[i14][i12] >>> i16) & 255);
                i16 += 8;
                i10++;
            }
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f1763a == aVar.f1763a && this.f1764b == aVar.f1764b && this.f1753d == aVar.f1753d) {
                for (int i9 = 0; i9 < this.f1763a; i9++) {
                    if (!d.b(this.f1752c[i9], aVar.f1752c[i9])) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i9 = (((this.f1763a * 31) + this.f1764b) * 31) + this.f1753d;
        for (int i10 = 0; i10 < this.f1763a; i10++) {
            i9 = (i9 * 31) + org.bouncycastle.util.a.u(this.f1752c[i10]);
        }
        return i9;
    }

    public String toString() {
        int i9 = this.f1764b & 31;
        int i10 = this.f1753d;
        if (i9 != 0) {
            i10--;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < this.f1763a; i11++) {
            stringBuffer.append(i11 + ": ");
            for (int i12 = 0; i12 < i10; i12++) {
                int i13 = this.f1752c[i11][i12];
                for (int i14 = 0; i14 < 32; i14++) {
                    if (((i13 >>> i14) & 1) == 0) {
                        stringBuffer.append('0');
                    } else {
                        stringBuffer.append('1');
                    }
                }
                stringBuffer.append(' ');
            }
            int i15 = this.f1752c[i11][this.f1753d - 1];
            for (int i16 = 0; i16 < i9; i16++) {
                if (((i15 >>> i16) & 1) == 0) {
                    stringBuffer.append('0');
                } else {
                    stringBuffer.append('1');
                }
            }
            stringBuffer.append('\n');
        }
        return stringBuffer.toString();
    }
}
