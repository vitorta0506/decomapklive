package com.google.android.play.core.assetpacks;
/* loaded from: classes2.dex */
public final class d0 {
    public static boolean a(int i9) {
        return i9 == 1 || i9 == 7 || i9 == 2 || i9 == 3;
    }

    public static boolean b(int i9) {
        return i9 == 2 || i9 == 7 || i9 == 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(int i9, int i10) {
        if (i9 == 5) {
            if (i10 != 5) {
                return true;
            }
            i9 = 5;
        }
        if (i9 == 6) {
            if (i10 != 6 && i10 != 5) {
                return true;
            }
            i9 = 6;
        }
        if (i9 != 4 || i10 == 4) {
            if (i9 == 3 && (i10 == 2 || i10 == 7 || i10 == 1 || i10 == 8)) {
                return true;
            }
            if (i9 == 2) {
                return i10 == 1 || i10 == 8;
            }
            return false;
        }
        return true;
    }

    public static boolean d(int i9) {
        return i9 == 5 || i9 == 6 || i9 == 4;
    }
}
