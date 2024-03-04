package io.grpc.netty.shaded.io.netty.util.internal;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
/* loaded from: classes5.dex */
public final class o {
    public static int a(long j10, long j11) {
        int i9 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return i9 > 0 ? 1 : 0;
    }

    public static int b(int i9) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i9 - 1));
    }

    public static boolean c(int i9, int i10, int i11) {
        int i12 = i9 + i10;
        return ((((i9 | i10) | i11) | i12) | (i11 - i12)) < 0;
    }

    public static int d(int i9) {
        if (i9 <= 0) {
            return 1;
        }
        return i9 >= 1073741824 ? BasicMeasure.EXACTLY : b(i9);
    }
}
