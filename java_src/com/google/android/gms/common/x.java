package com.google.android.gms.common;
/* loaded from: classes2.dex */
final class x {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9) {
        int[] iArr = {1, 2, 3, 4, 5, 6};
        for (int i10 = 0; i10 < 6; i10++) {
            int i11 = iArr[i10];
            int i12 = i11 - 1;
            if (i11 == 0) {
                throw null;
            }
            if (i12 == i9) {
                return i11;
            }
        }
        return 1;
    }
}
