package io.grpc.netty.shaded.io.netty.util.internal;

import java.util.Collection;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public final class s {
    public static String a(String str, String str2) {
        if (((String) h(str, str2)).isEmpty()) {
            throw new IllegalArgumentException("Param '" + str2 + "' must not be empty");
        }
        return str;
    }

    public static <T extends Collection<?>> T b(T t10, String str) {
        if (((Collection) h(t10, str)).size() != 0) {
            return t10;
        }
        throw new IllegalArgumentException("Param '" + str + "' must not be empty");
    }

    public static <K, V, T extends Map<K, V>> T c(T t10, String str) {
        if (((Map) h(t10, str)).isEmpty()) {
            throw new IllegalArgumentException("Param '" + str + "' must not be empty");
        }
        return t10;
    }

    public static byte[] d(byte[] bArr, String str) {
        if (((byte[]) h(bArr, str)).length != 0) {
            return bArr;
        }
        throw new IllegalArgumentException("Param '" + str + "' must not be empty");
    }

    public static char[] e(char[] cArr, String str) {
        if (((char[]) h(cArr, str)).length != 0) {
            return cArr;
        }
        throw new IllegalArgumentException("Param '" + str + "' must not be empty");
    }

    public static <T> T[] f(T[] tArr, String str) {
        if (((Object[]) h(tArr, str)).length != 0) {
            return tArr;
        }
        throw new IllegalArgumentException("Param '" + str + "' must not be empty");
    }

    public static String g(String str, String str2) {
        return a(((String) h(str, str2)).trim(), str2);
    }

    public static <T> T h(T t10, String str) {
        Objects.requireNonNull(t10, str);
        return t10;
    }

    public static <T> T i(T t10, int i9, String str) throws IllegalArgumentException {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException("Array index " + i9 + " of parameter '" + str + "' must not be null");
    }

    public static <T> T j(T t10, String str) throws IllegalArgumentException {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException("Param '" + str + "' must not be null");
    }

    public static double k(double d10, String str) {
        if (d10 > 0.0d) {
            return d10;
        }
        throw new IllegalArgumentException(str + " : " + d10 + " (expected: > 0)");
    }

    public static int l(int i9, String str) {
        if (i9 > 0) {
            return i9;
        }
        throw new IllegalArgumentException(str + " : " + i9 + " (expected: > 0)");
    }

    public static long m(long j10, String str) {
        if (j10 > 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + " : " + j10 + " (expected: > 0)");
    }

    public static int n(int i9, String str) {
        if (i9 >= 0) {
            return i9;
        }
        throw new IllegalArgumentException(str + " : " + i9 + " (expected: >= 0)");
    }

    public static long o(long j10, String str) {
        if (j10 >= 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + " : " + j10 + " (expected: >= 0)");
    }
}
