package com.google.android.exoplayer2.util;
/* loaded from: classes2.dex */
public final class d0 {
    public static int a(int i9, int i10) {
        for (int i11 = 1; i11 <= 2; i11++) {
            int i12 = (i9 + i11) % 3;
            if (b(i12, i10)) {
                return i12;
            }
        }
        return i9;
    }

    public static boolean b(int i9, int i10) {
        if (i9 != 0) {
            return i9 != 1 ? i9 == 2 && (i10 & 2) != 0 : (i10 & 1) != 0;
        }
        return true;
    }
}
