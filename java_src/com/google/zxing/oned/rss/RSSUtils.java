package com.google.zxing.oned.rss;
/* loaded from: classes3.dex */
public final class RSSUtils {
    private RSSUtils() {
    }

    private static int combins(int i9, int i10) {
        int i11 = i9 - i10;
        if (i11 > i10) {
            i11 = i10;
            i10 = i11;
        }
        int i12 = 1;
        int i13 = 1;
        while (i9 > i10) {
            i12 *= i9;
            if (i13 <= i11) {
                i12 /= i13;
                i13++;
            }
            i9--;
        }
        while (i13 <= i11) {
            i12 /= i13;
            i13++;
        }
        return i12;
    }

    public static int getRSSvalue(int[] iArr, int i9, boolean z10) {
        int[] iArr2 = iArr;
        int i10 = 0;
        for (int i11 : iArr2) {
            i10 += i11;
        }
        int length = iArr2.length;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int i15 = length - 1;
            if (i12 >= i15) {
                return i13;
            }
            int i16 = 1 << i12;
            i14 |= i16;
            int i17 = 1;
            while (i17 < iArr2[i12]) {
                int i18 = i10 - i17;
                int i19 = length - i12;
                int i20 = i19 - 2;
                int combins = combins(i18 - 1, i20);
                if (z10 && i14 == 0) {
                    int i21 = i19 - 1;
                    if (i18 - i21 >= i21) {
                        combins -= combins(i18 - i19, i20);
                    }
                }
                if (i19 - 1 > 1) {
                    int i22 = 0;
                    for (int i23 = i18 - i20; i23 > i9; i23--) {
                        i22 += combins((i18 - i23) - 1, i19 - 3);
                    }
                    combins -= i22 * (i15 - i12);
                } else if (i18 > i9) {
                    combins--;
                }
                i13 += combins;
                i17++;
                i14 &= ~i16;
                iArr2 = iArr;
            }
            i10 -= i17;
            i12++;
            iArr2 = iArr;
        }
    }
}
