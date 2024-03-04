package wg;
/* loaded from: classes5.dex */
public final class b {
    public static int a(int i9, int i10, String str) {
        if (i9 >= i10) {
            return i9;
        }
        throw new IllegalArgumentException(str + ": " + i9 + " (expected: >= " + i10 + ')');
    }

    public static int b(int i9, int i10, String str) {
        if (i9 < i10) {
            return i9;
        }
        throw new IllegalArgumentException(str + ": " + i9 + " (expected: < " + i10 + ')');
    }

    public static long c(long j10, String str) {
        if (j10 > 0) {
            return j10;
        }
        throw new IllegalArgumentException(str + ": " + j10 + " (expected: > 0)");
    }
}
