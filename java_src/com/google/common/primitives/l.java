package com.google.common.primitives;

import com.google.common.base.o;
/* loaded from: classes2.dex */
public final class l {
    public static int a(int i9, int i10) {
        return f.e(c(i9), c(i10));
    }

    public static int b(int i9, int i10) {
        return (int) (f(i9) / f(i10));
    }

    static int c(int i9) {
        return i9 ^ Integer.MIN_VALUE;
    }

    public static int d(String str, int i9) {
        o.s(str);
        long parseLong = Long.parseLong(str, i9);
        if ((4294967295L & parseLong) == parseLong) {
            return (int) parseLong;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 69);
        sb2.append("Input ");
        sb2.append(str);
        sb2.append(" in base ");
        sb2.append(i9);
        sb2.append(" is not in the range of an unsigned integer");
        throw new NumberFormatException(sb2.toString());
    }

    public static int e(int i9, int i10) {
        return (int) (f(i9) % f(i10));
    }

    public static long f(int i9) {
        return i9 & 4294967295L;
    }

    public static String g(int i9, int i10) {
        return Long.toString(i9 & 4294967295L, i10);
    }
}
