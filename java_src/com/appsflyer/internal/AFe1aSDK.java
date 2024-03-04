package com.appsflyer.internal;
/* loaded from: classes.dex */
public final class AFe1aSDK {
    private static void AFKeystoreWrapper(int[] iArr) {
        for (int i9 = 0; i9 < iArr.length / 2; i9++) {
            int i10 = iArr[i9];
            iArr[i9] = iArr[(iArr.length - i9) - 1];
            iArr[(iArr.length - i9) - 1] = i10;
        }
    }

    private static int valueOf(int i9, int[][] iArr) {
        return ((iArr[0][i9 >>> 24] + iArr[1][(i9 >>> 16) & 255]) ^ iArr[2][(i9 >>> 8) & 255]) + iArr[3][i9 & 255];
    }

    public static void values(int i9, int i10, boolean z10, int i11, int[] iArr, int[][] iArr2, int[] iArr3) {
        if (!z10) {
            AFKeystoreWrapper(iArr);
        }
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i9 ^ iArr[i12];
            int valueOf = i10 ^ valueOf(i13, iArr2);
            i12++;
            i10 = i13;
            i9 = valueOf;
        }
        int i14 = i9 ^ iArr[iArr.length - 2];
        int i15 = i10 ^ iArr[iArr.length - 1];
        if (!z10) {
            AFKeystoreWrapper(iArr);
        }
        iArr3[0] = i15;
        iArr3[1] = i14;
    }
}
