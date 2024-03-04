package io.grpc.netty.shaded.io.netty.util.internal;
/* loaded from: classes5.dex */
public final class f {
    public static int a(int i9, int i10) {
        int i11 = ~(i9 ^ i10);
        int i12 = i11 & (i11 >> 16);
        int i13 = i12 & (i12 >> 8);
        int i14 = i13 & (i13 >> 4);
        int i15 = i14 & (i14 >> 2);
        return i15 & (i15 >> 1) & 1;
    }

    public static int b(long j10, long j11) {
        long j12 = ~(j10 ^ j11);
        long j13 = j12 & (j12 >> 32);
        long j14 = j13 & (j13 >> 16);
        long j15 = j14 & (j14 >> 8);
        long j16 = j15 & (j15 >> 4);
        long j17 = j16 & (j16 >> 2);
        return (int) (j17 & (j17 >> 1) & 1);
    }

    public static int c(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence.length() != charSequence2.length()) {
            return 0;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            i9 |= charSequence.charAt(i10) ^ charSequence2.charAt(i10);
        }
        return a(i9, 0);
    }

    public static int d(byte[] bArr, int i9, byte[] bArr2, int i10, int i11) {
        int i12 = i11 + i9;
        int i13 = 0;
        while (i9 < i12) {
            i13 |= bArr[i9] ^ bArr2[i10];
            i9++;
            i10++;
        }
        return a(i13, 0);
    }
}
