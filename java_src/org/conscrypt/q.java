package org.conscrypt;
/* loaded from: classes7.dex */
final class q {
    private q() {
    }

    public static void a(String str, boolean z10) {
        if (z10) {
            System.load(str);
        } else {
            System.loadLibrary(str);
        }
    }
}
