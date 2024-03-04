package androidx.core.math;
/* loaded from: classes.dex */
public class MathUtils {
    private MathUtils() {
    }

    public static int addExact(int i9, int i10) {
        int i11 = i9 + i10;
        if (((i9 ^ i11) & (i10 ^ i11)) >= 0) {
            return i11;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static double clamp(double d10, double d11, double d12) {
        return d10 < d11 ? d11 : d10 > d12 ? d12 : d10;
    }

    public static float clamp(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
    }

    public static int clamp(int i9, int i10, int i11) {
        return i9 < i10 ? i10 : i9 > i11 ? i11 : i9;
    }

    public static long clamp(long j10, long j11, long j12) {
        return j10 < j11 ? j11 : j10 > j12 ? j12 : j10;
    }

    public static int decrementExact(int i9) {
        if (i9 != Integer.MIN_VALUE) {
            return i9 - 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int incrementExact(int i9) {
        if (i9 != Integer.MAX_VALUE) {
            return i9 + 1;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int multiplyExact(int i9, int i10) {
        long j10 = i9 * i10;
        int i11 = (int) j10;
        if (i11 == j10) {
            return i11;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int negateExact(int i9) {
        if (i9 != Integer.MIN_VALUE) {
            return -i9;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int subtractExact(int i9, int i10) {
        int i11 = i9 - i10;
        if (((i9 ^ i11) & (i10 ^ i9)) >= 0) {
            return i11;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static int toIntExact(long j10) {
        int i9 = (int) j10;
        if (i9 == j10) {
            return i9;
        }
        throw new ArithmeticException("integer overflow");
    }

    public static long addExact(long j10, long j11) {
        long j12 = j10 + j11;
        if (((j10 ^ j12) & (j11 ^ j12)) >= 0) {
            return j12;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long decrementExact(long j10) {
        if (j10 != Long.MIN_VALUE) {
            return j10 - 1;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long incrementExact(long j10) {
        if (j10 != Long.MAX_VALUE) {
            return j10 + 1;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long multiplyExact(long j10, long j11) {
        long j12 = j10 * j11;
        if (((Math.abs(j10) | Math.abs(j11)) >>> 31) == 0 || ((j11 == 0 || j12 / j11 == j10) && !(j10 == Long.MIN_VALUE && j11 == -1))) {
            return j12;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long negateExact(long j10) {
        if (j10 != Long.MIN_VALUE) {
            return -j10;
        }
        throw new ArithmeticException("long overflow");
    }

    public static long subtractExact(long j10, long j11) {
        long j12 = j10 - j11;
        if (((j10 ^ j12) & (j11 ^ j10)) >= 0) {
            return j12;
        }
        throw new ArithmeticException("long overflow");
    }
}