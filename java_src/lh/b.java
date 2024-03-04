package lh;
/* loaded from: classes6.dex */
public final class b {
    public static void a(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static <T> T b(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void c(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static boolean d(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }
}
