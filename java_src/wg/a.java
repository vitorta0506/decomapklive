package wg;
/* loaded from: classes5.dex */
public final class a {
    public static long a(long j10, int i9) {
        int i10;
        if (b(i9)) {
            return (j10 + (i9 - 1)) & (~i10);
        }
        throw new IllegalArgumentException("alignment must be a power of 2:" + i9);
    }

    public static boolean b(int i9) {
        return (i9 & (i9 + (-1))) == 0;
    }

    public static int c(int i9) {
        if (i9 > 1073741824) {
            throw new IllegalArgumentException("There is no larger power of 2 int for value:" + i9 + " since it exceeds 2^31.");
        } else if (i9 >= 0) {
            return 1 << (32 - Integer.numberOfLeadingZeros(i9 - 1));
        } else {
            throw new IllegalArgumentException("Given value:" + i9 + ". Expecting value >= 0.");
        }
    }
}
