package com.google.common.primitives;

import com.google.common.base.o;
import java.math.BigInteger;
/* loaded from: classes2.dex */
public final class m {

    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final long[] f13643a = new long[37];

        /* renamed from: b  reason: collision with root package name */
        static final int[] f13644b = new int[37];

        /* renamed from: c  reason: collision with root package name */
        static final int[] f13645c = new int[37];

        static {
            BigInteger bigInteger = new BigInteger("10000000000000000", 16);
            for (int i9 = 2; i9 <= 36; i9++) {
                long j10 = i9;
                f13643a[i9] = m.b(-1L, j10);
                f13644b[i9] = (int) m.e(-1L, j10);
                f13645c[i9] = bigInteger.toString(i9).length() - 1;
            }
        }

        static boolean a(long j10, int i9, int i10) {
            if (j10 >= 0) {
                long[] jArr = f13643a;
                if (j10 < jArr[i10]) {
                    return false;
                }
                return j10 > jArr[i10] || i9 > f13644b[i10];
            }
            return true;
        }
    }

    public static int a(long j10, long j11) {
        return h.c(c(j10), c(j11));
    }

    public static long b(long j10, long j11) {
        if (j11 < 0) {
            return a(j10, j11) < 0 ? 0L : 1L;
        } else if (j10 >= 0) {
            return j10 / j11;
        } else {
            long j12 = ((j10 >>> 1) / j11) << 1;
            return j12 + (a(j10 - (j12 * j11), j11) < 0 ? 0 : 1);
        }
    }

    private static long c(long j10) {
        return j10 ^ Long.MIN_VALUE;
    }

    public static long d(String str, int i9) {
        o.s(str);
        if (str.length() != 0) {
            if (i9 >= 2 && i9 <= 36) {
                int i10 = a.f13645c[i9] - 1;
                long j10 = 0;
                for (int i11 = 0; i11 < str.length(); i11++) {
                    int digit = Character.digit(str.charAt(i11), i9);
                    if (digit != -1) {
                        if (i11 > i10 && a.a(j10, digit, i9)) {
                            throw new NumberFormatException(str.length() != 0 ? "Too large for unsigned long: ".concat(str) : new String("Too large for unsigned long: "));
                        }
                        j10 = (j10 * i9) + digit;
                    } else {
                        throw new NumberFormatException(str);
                    }
                }
                return j10;
            }
            StringBuilder sb2 = new StringBuilder(26);
            sb2.append("illegal radix: ");
            sb2.append(i9);
            throw new NumberFormatException(sb2.toString());
        }
        throw new NumberFormatException("empty string");
    }

    public static long e(long j10, long j11) {
        if (j11 < 0) {
            return a(j10, j11) < 0 ? j10 : j10 - j11;
        } else if (j10 >= 0) {
            return j10 % j11;
        } else {
            long j12 = j10 - ((((j10 >>> 1) / j11) << 1) * j11);
            if (a(j12, j11) < 0) {
                j11 = 0;
            }
            return j12 - j11;
        }
    }

    public static String f(long j10) {
        return g(j10, 10);
    }

    public static String g(long j10, int i9) {
        long b10;
        o.h(i9 >= 2 && i9 <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i9);
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 == 0) {
            return "0";
        }
        if (i10 > 0) {
            return Long.toString(j10, i9);
        }
        int i11 = 64;
        char[] cArr = new char[64];
        int i12 = i9 - 1;
        if ((i9 & i12) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i9);
            do {
                i11--;
                cArr[i11] = Character.forDigit(((int) j10) & i12, i9);
                j10 >>>= numberOfTrailingZeros;
            } while (j10 != 0);
        } else {
            if ((i9 & 1) == 0) {
                b10 = (j10 >>> 1) / (i9 >>> 1);
            } else {
                b10 = b(j10, i9);
            }
            long j11 = i9;
            cArr[63] = Character.forDigit((int) (j10 - (b10 * j11)), i9);
            i11 = 63;
            while (b10 > 0) {
                i11--;
                cArr[i11] = Character.forDigit((int) (b10 % j11), i9);
                b10 /= j11;
            }
        }
        return new String(cArr, i11, 64 - i11);
    }
}
