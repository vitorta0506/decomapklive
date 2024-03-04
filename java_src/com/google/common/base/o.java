package com.google.common.base;

import java.util.Objects;
/* loaded from: classes2.dex */
public final class o {
    public static void A(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void B(boolean z10, String str, int i9) {
        if (!z10) {
            throw new IllegalStateException(v.c(str, Integer.valueOf(i9)));
        }
    }

    public static void C(boolean z10, String str, long j10) {
        if (!z10) {
            throw new IllegalStateException(v.c(str, Long.valueOf(j10)));
        }
    }

    public static void D(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalStateException(v.c(str, obj));
        }
    }

    public static void E(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw new IllegalStateException(v.c(str, obj, obj2));
        }
    }

    public static void F(boolean z10, String str, Object obj, Object obj2, Object obj3) {
        if (!z10) {
            throw new IllegalStateException(v.c(str, obj, obj2, obj3));
        }
    }

    private static String a(int i9, int i10, String str) {
        if (i9 < 0) {
            return v.c("%s (%s) must not be negative", str, Integer.valueOf(i9));
        }
        if (i10 >= 0) {
            return v.c("%s (%s) must be less than size (%s)", str, Integer.valueOf(i9), Integer.valueOf(i10));
        }
        StringBuilder sb2 = new StringBuilder(26);
        sb2.append("negative size: ");
        sb2.append(i10);
        throw new IllegalArgumentException(sb2.toString());
    }

    private static String b(int i9, int i10, String str) {
        if (i9 < 0) {
            return v.c("%s (%s) must not be negative", str, Integer.valueOf(i9));
        }
        if (i10 >= 0) {
            return v.c("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i9), Integer.valueOf(i10));
        }
        StringBuilder sb2 = new StringBuilder(26);
        sb2.append("negative size: ");
        sb2.append(i10);
        throw new IllegalArgumentException(sb2.toString());
    }

    private static String c(int i9, int i10, int i11) {
        if (i9 < 0 || i9 > i11) {
            return b(i9, i11, "start index");
        }
        return (i10 < 0 || i10 > i11) ? b(i10, i11, "end index") : v.c("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i9));
    }

    public static void d(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void f(boolean z10, String str, char c10) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, Character.valueOf(c10)));
        }
    }

    public static void g(boolean z10, String str, char c10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, Character.valueOf(c10), obj));
        }
    }

    public static void h(boolean z10, String str, int i9) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, Integer.valueOf(i9)));
        }
    }

    public static void i(boolean z10, String str, int i9, int i10) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, Integer.valueOf(i9), Integer.valueOf(i10)));
        }
    }

    public static void j(boolean z10, String str, long j10) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, Long.valueOf(j10)));
        }
    }

    public static void k(boolean z10, String str, long j10, long j11) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, Long.valueOf(j10), Long.valueOf(j11)));
        }
    }

    public static void l(boolean z10, String str, long j10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, Long.valueOf(j10), obj));
        }
    }

    public static void m(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, obj));
        }
    }

    public static void n(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, obj, obj2));
        }
    }

    public static void o(boolean z10, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, obj, obj2, obj3, obj4));
        }
    }

    public static void p(boolean z10, String str, Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(v.c(str, objArr));
        }
    }

    public static int q(int i9, int i10) {
        return r(i9, i10, "index");
    }

    public static int r(int i9, int i10, String str) {
        if (i9 < 0 || i9 >= i10) {
            throw new IndexOutOfBoundsException(a(i9, i10, str));
        }
        return i9;
    }

    public static <T> T s(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    public static <T> T t(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static <T> T u(T t10, String str, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(v.c(str, obj));
    }

    public static <T> T v(T t10, String str, Object... objArr) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(v.c(str, objArr));
    }

    public static int w(int i9, int i10) {
        return x(i9, i10, "index");
    }

    public static int x(int i9, int i10, String str) {
        if (i9 < 0 || i9 > i10) {
            throw new IndexOutOfBoundsException(b(i9, i10, str));
        }
        return i9;
    }

    public static void y(int i9, int i10, int i11) {
        if (i9 < 0 || i10 < i9 || i10 > i11) {
            throw new IndexOutOfBoundsException(c(i9, i10, i11));
        }
    }

    public static void z(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }
}
