package vi;
/* loaded from: classes7.dex */
public class a {
    public static void a(boolean z10, String str) {
        if (!z10) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void b(boolean z10, String str, Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static <T extends CharSequence> T c(T t10, String str) {
        if (t10 != null) {
            if (t10.length() != 0) {
                if (f.a(t10)) {
                    throw new IllegalArgumentException(str + " may not contain blanks");
                }
                return t10;
            }
            throw new IllegalArgumentException(str + " may not be empty");
        }
        throw new IllegalArgumentException(str + " may not be null");
    }

    public static <T extends CharSequence> T d(T t10, String str) {
        if (t10 != null) {
            if (f.b(t10)) {
                throw new IllegalArgumentException(str + " may not be blank");
            }
            return t10;
        }
        throw new IllegalArgumentException(str + " may not be null");
    }

    public static <T extends CharSequence> T e(T t10, String str) {
        if (t10 != null) {
            if (f.c(t10)) {
                throw new IllegalArgumentException(str + " may not be empty");
            }
            return t10;
        }
        throw new IllegalArgumentException(str + " may not be null");
    }

    public static int f(int i9, String str) {
        if (i9 >= 0) {
            return i9;
        }
        throw new IllegalArgumentException(str + " may not be negative");
    }

    public static <T> T g(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException(str + " may not be null");
    }

    public static int h(int i9, String str) {
        if (i9 > 0) {
            return i9;
        }
        throw new IllegalArgumentException(str + " may not be negative or zero");
    }
}
