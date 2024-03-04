package com.google.common.collect;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
/* loaded from: classes2.dex */
final class e4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i9, double d10) {
        int max = Math.max(i9, 2);
        int highestOneBit = Integer.highestOneBit(max);
        if (max > ((int) (d10 * highestOneBit))) {
            int i10 = highestOneBit << 1;
            return i10 > 0 ? i10 : BasicMeasure.EXACTLY;
        }
        return highestOneBit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(int i9, int i10, double d10) {
        return ((double) i9) > d10 * ((double) i10) && i10 < 1073741824;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i9) {
        return (int) (Integer.rotateLeft((int) (i9 * (-862048943)), 15) * 461845907);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(Object obj) {
        return c(obj == null ? 0 : obj.hashCode());
    }
}
