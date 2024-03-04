package cl;
/* loaded from: classes7.dex */
public final class j {
    public static int a(int i9) {
        int i10 = -1;
        while (i9 != 0) {
            i10++;
            i9 >>>= 1;
        }
        return i10;
    }

    public static int b(int i9, int i10) {
        while (true) {
            int i11 = i10;
            int i12 = i9;
            i9 = i11;
            if (i9 == 0) {
                return i12;
            }
            i10 = e(i12, i9);
        }
    }

    public static boolean c(int i9) {
        if (i9 == 0) {
            return false;
        }
        int a10 = a(i9) >>> 1;
        int i10 = 2;
        for (int i11 = 0; i11 < a10; i11++) {
            i10 = d(i10, i10, i9);
            if (b(i10 ^ 2, i9) != 1) {
                return false;
            }
        }
        return true;
    }

    public static int d(int i9, int i10, int i11) {
        int e10 = e(i9, i11);
        int e11 = e(i10, i11);
        int i12 = 0;
        if (e11 != 0) {
            int a10 = 1 << a(i11);
            while (e10 != 0) {
                if (((byte) (e10 & 1)) == 1) {
                    i12 ^= e11;
                }
                e10 >>>= 1;
                e11 <<= 1;
                if (e11 >= a10) {
                    e11 ^= i11;
                }
            }
        }
        return i12;
    }

    public static int e(int i9, int i10) {
        if (i10 == 0) {
            System.err.println("Error: to be divided by 0");
            return 0;
        }
        while (a(i9) >= a(i10)) {
            i9 ^= i10 << (a(i9) - a(i10));
        }
        return i9;
    }
}
