package com.google.common.math;
/* loaded from: classes2.dex */
final class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static double a(double d10) {
        com.google.common.base.o.d(!Double.isNaN(d10));
        return Math.max(d10, 0.0d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(double d10) {
        com.google.common.base.o.e(c(d10), "not a normal value");
        int exponent = Math.getExponent(d10);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10) & 4503599627370495L;
        return exponent == -1023 ? doubleToRawLongBits << 1 : doubleToRawLongBits | 4503599627370496L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(double d10) {
        return Math.getExponent(d10) <= 1023;
    }
}
