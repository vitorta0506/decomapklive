package com.google.common.math;

import java.math.RoundingMode;
/* loaded from: classes2.dex */
final class f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(boolean z10, double d10, RoundingMode roundingMode) {
        if (z10) {
            return;
        }
        String valueOf = String.valueOf(roundingMode);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 83);
        sb2.append("rounded value is out of range for input ");
        sb2.append(d10);
        sb2.append(" and rounding mode ");
        sb2.append(valueOf);
        throw new ArithmeticException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(boolean z10, String str, int i9, int i10) {
        if (z10) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 36);
        sb2.append("overflow: ");
        sb2.append(str);
        sb2.append("(");
        sb2.append(i9);
        sb2.append(", ");
        sb2.append(i10);
        sb2.append(")");
        throw new ArithmeticException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(boolean z10, String str, long j10, long j11) {
        if (z10) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 54);
        sb2.append("overflow: ");
        sb2.append(str);
        sb2.append("(");
        sb2.append(j10);
        sb2.append(", ");
        sb2.append(j11);
        sb2.append(")");
        throw new ArithmeticException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(String str, int i9) {
        if (i9 >= 0) {
            return i9;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 27);
        sb2.append(str);
        sb2.append(" (");
        sb2.append(i9);
        sb2.append(") must be >= 0");
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(String str, int i9) {
        if (i9 > 0) {
            return i9;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 26);
        sb2.append(str);
        sb2.append(" (");
        sb2.append(i9);
        sb2.append(") must be > 0");
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(boolean z10) {
        if (!z10) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }
}
