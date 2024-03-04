package com.google.re2j;
/* loaded from: classes3.dex */
class n {
    private static boolean a(int[][] iArr, int i9) {
        if (i9 > 255) {
            return iArr.length > 0 && i9 >= iArr[0][0] && b(iArr, i9);
        }
        for (int[] iArr2 : iArr) {
            if (i9 <= iArr2[1]) {
                return i9 >= iArr2[0] && (i9 - iArr2[0]) % iArr2[2] == 0;
            }
        }
        return false;
    }

    private static boolean b(int[][] iArr, int i9) {
        int length = iArr.length;
        int i10 = 0;
        while (i10 < length) {
            int i11 = ((length - i10) / 2) + i10;
            int[] iArr2 = iArr[i11];
            if (iArr2[0] <= i9 && i9 <= iArr2[1]) {
                return (i9 - iArr2[0]) % iArr2[2] == 0;
            } else if (i9 < iArr2[0]) {
                length = i11;
            } else {
                i10 = i11 + 1;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(int i9) {
        return i9 <= 255 ? (i9 >= 32 && i9 < 127) || (i9 >= 161 && i9 != 173) : a(o.I, i9) || a(o.J, i9) || a(o.K, i9) || a(o.E, i9) || a(o.F, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(int i9) {
        char[] cArr = o.f15471a;
        if (i9 < cArr.length && cArr[i9] != 0) {
            return cArr[i9];
        }
        int a10 = c.a(i9);
        return a10 != i9 ? a10 : c.b(i9);
    }
}
