package androidx.collection;
/* loaded from: classes.dex */
class ContainerHelpers {
    static final int[] EMPTY_INTS = new int[0];
    static final long[] EMPTY_LONGS = new long[0];
    static final Object[] EMPTY_OBJECTS = new Object[0];

    private ContainerHelpers() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int binarySearch(int[] iArr, int i9, int i10) {
        int i11 = i9 - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) >>> 1;
            int i14 = iArr[i13];
            if (i14 < i10) {
                i12 = i13 + 1;
            } else if (i14 <= i10) {
                return i13;
            } else {
                i11 = i13 - 1;
            }
        }
        return ~i12;
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int idealByteArraySize(int i9) {
        for (int i10 = 4; i10 < 32; i10++) {
            int i11 = (1 << i10) - 12;
            if (i9 <= i11) {
                return i11;
            }
        }
        return i9;
    }

    public static int idealIntArraySize(int i9) {
        return idealByteArraySize(i9 * 4) / 4;
    }

    public static int idealLongArraySize(int i9) {
        return idealByteArraySize(i9 * 8) / 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int binarySearch(long[] jArr, int i9, long j10) {
        int i10 = i9 - 1;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            int i13 = (jArr[i12] > j10 ? 1 : (jArr[i12] == j10 ? 0 : -1));
            if (i13 < 0) {
                i11 = i12 + 1;
            } else if (i13 <= 0) {
                return i12;
            } else {
                i10 = i12 - 1;
            }
        }
        return ~i11;
    }
}
