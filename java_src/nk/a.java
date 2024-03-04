package nk;
/* loaded from: classes7.dex */
public abstract class a {
    public static int a(int i9, int i10, int i11) {
        int i12 = i10 & ((i9 >>> i11) ^ i9);
        return i9 ^ (i12 ^ (i12 << i11));
    }

    public static long b(long j10, long j11, int i9) {
        long j12 = j11 & ((j10 >>> i9) ^ j10);
        return j10 ^ (j12 ^ (j12 << i9));
    }
}
