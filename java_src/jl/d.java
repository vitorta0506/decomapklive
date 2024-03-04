package jl;
/* loaded from: classes7.dex */
public final class d {
    public static int a(int i9, int i10) {
        if (i9 < i10) {
            return -1;
        }
        return i9 > i10 ? 1 : 0;
    }

    public static int b(long j10, long j11) {
        int i9 = (j10 > j11 ? 1 : (j10 == j11 ? 0 : -1));
        if (i9 < 0) {
            return -1;
        }
        return i9 > 0 ? 1 : 0;
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        } else if (obj2 == null) {
            return false;
        } else {
            return obj.equals(obj2);
        }
    }

    public static int d(int i9, int i10) {
        return i9 >= 0 ? i9 / i10 : ((i9 + 1) / i10) - 1;
    }

    public static long e(long j10, long j11) {
        return j10 >= 0 ? j10 / j11 : ((j10 + 1) / j11) - 1;
    }

    public static int f(int i9, int i10) {
        return ((i9 % i10) + i10) % i10;
    }

    public static int g(long j10, int i9) {
        long j11 = i9;
        return (int) (((j10 % j11) + j11) % j11);
    }

    public static long h(long j10, long j11) {
        return ((j10 % j11) + j11) % j11;
    }

    public static <T> T i(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str + " must not be null");
    }

    public static int j(int i9, int i10) {
        int i11 = i9 + i10;
        if ((i9 ^ i11) >= 0 || (i9 ^ i10) < 0) {
            return i11;
        }
        throw new ArithmeticException("Addition overflows an int: " + i9 + " + " + i10);
    }

    public static long k(long j10, long j11) {
        long j12 = j10 + j11;
        if ((j10 ^ j12) >= 0 || (j10 ^ j11) < 0) {
            return j12;
        }
        throw new ArithmeticException("Addition overflows a long: " + j10 + " + " + j11);
    }

    public static int l(int i9, int i10) {
        long j10 = i9 * i10;
        if (j10 < -2147483648L || j10 > 2147483647L) {
            throw new ArithmeticException("Multiplication overflows an int: " + i9 + " * " + i10);
        }
        return (int) j10;
    }

    public static long m(long j10, int i9) {
        if (i9 == -1) {
            if (j10 != Long.MIN_VALUE) {
                return -j10;
            }
            throw new ArithmeticException("Multiplication overflows a long: " + j10 + " * " + i9);
        } else if (i9 != 0) {
            if (i9 != 1) {
                long j11 = i9;
                long j12 = j10 * j11;
                if (j12 / j11 == j10) {
                    return j12;
                }
                throw new ArithmeticException("Multiplication overflows a long: " + j10 + " * " + i9);
            }
            return j10;
        } else {
            return 0L;
        }
    }

    public static long n(long j10, long j11) {
        if (j11 == 1) {
            return j10;
        }
        if (j10 == 1) {
            return j11;
        }
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        long j12 = j10 * j11;
        if (j12 / j11 != j10 || ((j10 == Long.MIN_VALUE && j11 == -1) || (j11 == Long.MIN_VALUE && j10 == -1))) {
            throw new ArithmeticException("Multiplication overflows a long: " + j10 + " * " + j11);
        }
        return j12;
    }

    public static int o(int i9, int i10) {
        int i11 = i9 - i10;
        if ((i9 ^ i11) >= 0 || (i9 ^ i10) >= 0) {
            return i11;
        }
        throw new ArithmeticException("Subtraction overflows an int: " + i9 + " - " + i10);
    }

    public static long p(long j10, long j11) {
        long j12 = j10 - j11;
        if ((j10 ^ j12) >= 0 || (j10 ^ j11) >= 0) {
            return j12;
        }
        throw new ArithmeticException("Subtraction overflows a long: " + j10 + " - " + j11);
    }

    public static int q(long j10) {
        if (j10 > 2147483647L || j10 < -2147483648L) {
            throw new ArithmeticException("Calculation overflows an int: " + j10);
        }
        return (int) j10;
    }
}
