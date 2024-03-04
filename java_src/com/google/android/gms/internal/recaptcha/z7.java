package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
public final class z7 {
    public static int a(int i9, int i10, String str) {
        String b10;
        if (i9 < 0 || i9 >= i10) {
            if (i9 < 0) {
                b10 = g8.b("%s (%s) must not be negative", "index", Integer.valueOf(i9));
            } else if (i10 < 0) {
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("negative size: ");
                sb2.append(i10);
                throw new IllegalArgumentException(sb2.toString());
            } else {
                b10 = g8.b("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i9), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(b10);
        }
        return i9;
    }

    public static int b(int i9, int i10, String str) {
        if (i9 < 0 || i9 > i10) {
            throw new IndexOutOfBoundsException(l(i9, i10, "index"));
        }
        return i9;
    }

    public static <T> T c(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException((String) obj);
    }

    public static <T> T d(T t10, String str, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(g8.b(str, obj));
    }

    public static void e(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void f(boolean z10, String str, char c10) {
        if (!z10) {
            throw new IllegalArgumentException(g8.b(str, Character.valueOf(c10)));
        }
    }

    public static void g(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(g8.b(str, obj));
        }
    }

    public static void h(int i9, int i10, int i11) {
        String l10;
        if (i9 < 0 || i10 < i9 || i10 > i11) {
            if (i9 >= 0 && i9 <= i11) {
                l10 = (i10 < 0 || i10 > i11) ? l(i10, i11, "end index") : g8.b("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i9));
            } else {
                l10 = l(i9, i11, "start index");
            }
            throw new IndexOutOfBoundsException(l10);
        }
    }

    public static void i(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    public static void j(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException((String) obj);
        }
    }

    public static void k(boolean z10, String str, int i9) {
        if (!z10) {
            throw new IllegalStateException(g8.b(str, Integer.valueOf(i9)));
        }
    }

    private static String l(int i9, int i10, String str) {
        if (i9 < 0) {
            return g8.b("%s (%s) must not be negative", str, Integer.valueOf(i9));
        }
        if (i10 >= 0) {
            return g8.b("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i9), Integer.valueOf(i10));
        }
        StringBuilder sb2 = new StringBuilder(26);
        sb2.append("negative size: ");
        sb2.append(i10);
        throw new IllegalArgumentException(sb2.toString());
    }
}
