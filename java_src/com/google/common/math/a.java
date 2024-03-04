package com.google.common.math;

import java.math.RoundingMode;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final double f13584a = Math.log(2.0d);

    /* renamed from: b  reason: collision with root package name */
    static final double[] f13585b = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.math.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C0123a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13586a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f13586a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13586a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13586a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13586a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13586a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13586a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f13586a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f13586a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static boolean a(double d10) {
        return b.c(d10) && (d10 == 0.0d || 52 - Long.numberOfTrailingZeros(b.b(d10)) <= Math.getExponent(d10));
    }

    static double b(double d10, RoundingMode roundingMode) {
        if (b.c(d10)) {
            switch (C0123a.f13586a[roundingMode.ordinal()]) {
                case 1:
                    f.f(a(d10));
                    return d10;
                case 2:
                    return (d10 >= 0.0d || a(d10)) ? d10 : ((long) d10) - 1;
                case 3:
                    return (d10 <= 0.0d || a(d10)) ? d10 : ((long) d10) + 1;
                case 4:
                    return d10;
                case 5:
                    if (a(d10)) {
                        return d10;
                    }
                    return ((long) d10) + (d10 > 0.0d ? 1 : -1);
                case 6:
                    return Math.rint(d10);
                case 7:
                    double rint = Math.rint(d10);
                    return Math.abs(d10 - rint) == 0.5d ? d10 + Math.copySign(0.5d, d10) : rint;
                case 8:
                    double rint2 = Math.rint(d10);
                    return Math.abs(d10 - rint2) == 0.5d ? d10 : rint2;
                default:
                    throw new AssertionError();
            }
        }
        throw new ArithmeticException("input is infinite or NaN");
    }

    public static long c(double d10, RoundingMode roundingMode) {
        double b10 = b(d10, roundingMode);
        f.a(((-9.223372036854776E18d) - b10 < 1.0d) & (b10 < 9.223372036854776E18d), d10, roundingMode);
        return (long) b10;
    }
}
