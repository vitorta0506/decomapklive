package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public class p8<E> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9, int i10) {
        int i11 = i9 + (i9 >> 1) + 1;
        if (i11 < i10) {
            int highestOneBit = Integer.highestOneBit(i10 - 1);
            i11 = highestOneBit + highestOneBit;
        }
        if (i11 < 0) {
            return Integer.MAX_VALUE;
        }
        return i11;
    }
}
