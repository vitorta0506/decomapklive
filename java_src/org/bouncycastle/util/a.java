package org.bouncycastle.util;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: org.bouncycastle.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static class C0593a<T> implements Iterator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T[] f56257a;

        /* renamed from: b  reason: collision with root package name */
        private int f56258b = 0;

        public C0593a(T[] tArr) {
            this.f56257a = tArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f56258b < this.f56257a.length;
        }

        @Override // java.util.Iterator
        public T next() {
            int i9 = this.f56258b;
            T[] tArr = this.f56257a;
            if (i9 != tArr.length) {
                this.f56258b = i9 + 1;
                return tArr[i9];
            }
            throw new NoSuchElementException("Out of elements: " + this.f56258b);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Cannot remove element from an Array.");
        }
    }

    public static boolean A(Object[] objArr) {
        if (objArr == null) {
            return true;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                return true;
            }
        }
        return false;
    }

    public static byte[] B(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int i9 = 0;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        while (true) {
            length--;
            if (length < 0) {
                return bArr2;
            }
            bArr2[length] = bArr[i9];
            i9++;
        }
    }

    public static int[] C(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int i9 = 0;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        while (true) {
            length--;
            if (length < 0) {
                return iArr2;
            }
            iArr2[length] = iArr[i9];
            i9++;
        }
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }

    public static boolean b(char[] cArr, char[] cArr2) {
        return Arrays.equals(cArr, cArr2);
    }

    public static boolean c(int[] iArr, int[] iArr2) {
        return Arrays.equals(iArr, iArr2);
    }

    public static boolean d(short[] sArr, short[] sArr2) {
        return Arrays.equals(sArr, sArr2);
    }

    public static byte[] e(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    public static char[] f(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return (char[]) cArr.clone();
    }

    public static int[] g(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    public static long[] h(long[] jArr) {
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public static short[] i(short[] sArr) {
        if (sArr == null) {
            return null;
        }
        return (short[]) sArr.clone();
    }

    public static byte[] j(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return e(bArr2);
        }
        if (bArr2 == null) {
            return e(bArr);
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] k(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            return j(bArr2, bArr3);
        }
        if (bArr2 == null) {
            return j(bArr, bArr3);
        }
        if (bArr3 == null) {
            return j(bArr, bArr2);
        }
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        int length = bArr.length + 0;
        System.arraycopy(bArr2, 0, bArr4, length, bArr2.length);
        System.arraycopy(bArr3, 0, bArr4, length + bArr2.length, bArr3.length);
        return bArr4;
    }

    public static byte[] l(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr == null) {
            return k(bArr2, bArr3, bArr4);
        }
        if (bArr2 == null) {
            return k(bArr, bArr3, bArr4);
        }
        if (bArr3 == null) {
            return k(bArr, bArr2, bArr4);
        }
        if (bArr4 == null) {
            return k(bArr, bArr2, bArr3);
        }
        byte[] bArr5 = new byte[bArr.length + bArr2.length + bArr3.length + bArr4.length];
        System.arraycopy(bArr, 0, bArr5, 0, bArr.length);
        int length = bArr.length + 0;
        System.arraycopy(bArr2, 0, bArr5, length, bArr2.length);
        int length2 = length + bArr2.length;
        System.arraycopy(bArr3, 0, bArr5, length2, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, length2 + bArr3.length, bArr4.length);
        return bArr5;
    }

    public static byte[] m(byte[] bArr, int i9, int i10) {
        int q10 = q(i9, i10);
        byte[] bArr2 = new byte[q10];
        System.arraycopy(bArr, i9, bArr2, 0, Math.min(bArr.length - i9, q10));
        return bArr2;
    }

    public static int[] n(int[] iArr, int i9, int i10) {
        int q10 = q(i9, i10);
        int[] iArr2 = new int[q10];
        System.arraycopy(iArr, i9, iArr2, 0, Math.min(iArr.length - i9, q10));
        return iArr2;
    }

    public static void o(byte[] bArr, byte b10) {
        Arrays.fill(bArr, b10);
    }

    public static void p(char[] cArr, char c10) {
        Arrays.fill(cArr, c10);
    }

    private static int q(int i9, int i10) {
        int i11 = i10 - i9;
        if (i11 >= 0) {
            return i11;
        }
        StringBuffer stringBuffer = new StringBuffer(i9);
        stringBuffer.append(" > ");
        stringBuffer.append(i10);
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    public static int r(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int length = bArr.length;
        int i9 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i9;
            }
            i9 = (i9 * 257) ^ bArr[length];
        }
    }

    public static int s(byte[] bArr, int i9, int i10) {
        if (bArr == null) {
            return 0;
        }
        int i11 = i10 + 1;
        while (true) {
            i10--;
            if (i10 < 0) {
                return i11;
            }
            i11 = (i11 * 257) ^ bArr[i9 + i10];
        }
    }

    public static int t(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i9 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i9;
            }
            i9 = (i9 * 257) ^ cArr[length];
        }
    }

    public static int u(int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        int length = iArr.length;
        int i9 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i9;
            }
            i9 = (i9 * 257) ^ iArr[length];
        }
    }

    public static int v(int[] iArr, int i9, int i10) {
        if (iArr == null) {
            return 0;
        }
        int i11 = i10 + 1;
        while (true) {
            i10--;
            if (i10 < 0) {
                return i11;
            }
            i11 = (i11 * 257) ^ iArr[i9 + i10];
        }
    }

    public static int w(long[] jArr, int i9, int i10) {
        if (jArr == null) {
            return 0;
        }
        int i11 = i10 + 1;
        while (true) {
            i10--;
            if (i10 < 0) {
                return i11;
            }
            long j10 = jArr[i9 + i10];
            i11 = (((i11 * 257) ^ ((int) j10)) * 257) ^ ((int) (j10 >>> 32));
        }
    }

    public static int x(short[] sArr) {
        if (sArr == null) {
            return 0;
        }
        int length = sArr.length;
        int i9 = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return i9;
            }
            i9 = (i9 * 257) ^ (sArr[length] & 255);
        }
    }

    public static int y(short[][] sArr) {
        int i9 = 0;
        for (int i10 = 0; i10 != sArr.length; i10++) {
            i9 = (i9 * 257) + x(sArr[i10]);
        }
        return i9;
    }

    public static int z(short[][][] sArr) {
        int i9 = 0;
        for (int i10 = 0; i10 != sArr.length; i10++) {
            i9 = (i9 * 257) + y(sArr[i10]);
        }
        return i9;
    }
}
