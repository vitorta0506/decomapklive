package com.google.android.gms.internal.recaptcha;

import kotlin.UByte;
/* loaded from: classes2.dex */
final class s9 extends r9 {

    /* renamed from: a  reason: collision with root package name */
    static final w9 f9040a = new s9();

    s9() {
    }

    private static long e(long j10, long j11, long j12) {
        long j13 = (j10 ^ j11) * j12;
        long j14 = ((j13 ^ (j13 >>> 47)) ^ j11) * j12;
        return (j14 ^ (j14 >>> 47)) * j12;
    }

    private static void f(byte[] bArr, int i9, long j10, long j11, long[] jArr) {
        long b10 = ea.b(bArr, i9);
        long b11 = ea.b(bArr, i9 + 8);
        long b12 = ea.b(bArr, i9 + 16);
        long b13 = ea.b(bArr, i9 + 24);
        long j12 = j10 + b10;
        long rotateRight = Long.rotateRight(j11 + j12 + b13, 21);
        long j13 = b11 + j12 + b12;
        long rotateRight2 = Long.rotateRight(j13, 44);
        jArr[0] = j13 + b13;
        jArr[1] = rotateRight + rotateRight2 + j12;
    }

    @Override // com.google.android.gms.internal.recaptcha.n9
    public final v9 c(byte[] bArr, int i9, int i10) {
        long j10;
        long b10;
        long rotateRight;
        int i11;
        z7.h(0, i10, bArr.length);
        int i12 = 37;
        long j11 = -7286425919675154353L;
        if (i10 <= 32) {
            if (i10 > 16) {
                long j12 = (i10 + i10) - 7286425919675154353L;
                long b11 = ea.b(bArr, 0) * (-5435081209227447693L);
                long b12 = ea.b(bArr, 8);
                long b13 = ea.b(bArr, i10 - 8) * j12;
                j11 = e(Long.rotateRight(b11 + b12, 43) + Long.rotateRight(b13, 30) + (ea.b(bArr, i10 - 16) * (-7286425919675154353L)), b11 + Long.rotateRight(b12 - 7286425919675154353L, 18) + b13, j12);
            } else if (i10 >= 8) {
                long j13 = (i10 + i10) - 7286425919675154353L;
                long b14 = ea.b(bArr, 0) - 7286425919675154353L;
                long b15 = ea.b(bArr, i10 - 8);
                j11 = e((Long.rotateRight(b15, 37) * j13) + b14, (Long.rotateRight(b14, 25) + b15) * j13, j13);
            } else if (i10 >= 4) {
                j11 = e(i10 + ((ea.a(bArr, 0) & 4294967295L) << 3), ea.a(bArr, i10 - 4) & 4294967295L, (i10 + i10) - 7286425919675154353L);
            } else if (i10 > 0) {
                long j14 = (((bArr[0] & UByte.MAX_VALUE) + ((bArr[i10 >> 1] & UByte.MAX_VALUE) << 8)) * (-7286425919675154353L)) ^ ((i10 + ((bArr[i10 - 1] & 255) << 2)) * (-4348849565147123417L));
                j11 = (-7286425919675154353L) * (j14 ^ (j14 >>> 47));
            }
        } else if (i10 <= 64) {
            long j15 = (i10 + i10) - 7286425919675154353L;
            long b16 = ea.b(bArr, 0) * (-7286425919675154353L);
            long b17 = ea.b(bArr, 8);
            long b18 = ea.b(bArr, i10 - 8) * j15;
            long rotateRight2 = Long.rotateRight(b16 + b17, 43) + Long.rotateRight(b18, 30) + (ea.b(bArr, i10 - 16) * (-7286425919675154353L));
            long rotateRight3 = Long.rotateRight(b17 - 7286425919675154353L, 18);
            long b19 = ea.b(bArr, 16) * j15;
            long b20 = ea.b(bArr, 24);
            long b21 = (ea.b(bArr, i10 - 32) + rotateRight2) * j15;
            j11 = e(Long.rotateRight(b19 + b20, 43) + Long.rotateRight(b21, 30) + ((e(rotateRight2, rotateRight3 + b16 + b18, j15) + ea.b(bArr, i10 - 24)) * j15), b19 + Long.rotateRight(b20 + b16, 18) + b21, j15);
        } else {
            long[] jArr = new long[2];
            long[] jArr2 = new long[2];
            long b22 = ea.b(bArr, 0) + 95310865018149119L;
            int i13 = i10 - 1;
            int i14 = (i13 >> 6) * 64;
            int i15 = i13 & 63;
            int i16 = (i14 + i15) - 63;
            long j16 = 2480279821605975764L;
            long j17 = 1390051526045402406L;
            int i17 = 0;
            while (true) {
                long rotateRight4 = Long.rotateRight(b22 + j16 + jArr[0] + ea.b(bArr, i17 + 8), i12);
                long rotateRight5 = Long.rotateRight(j16 + jArr[1] + ea.b(bArr, i17 + 48), 42);
                j10 = (rotateRight4 * (-5435081209227447693L)) ^ jArr2[1];
                b10 = (rotateRight5 * (-5435081209227447693L)) + jArr[0] + ea.b(bArr, i17 + 40);
                rotateRight = Long.rotateRight(j17 + jArr2[0], 33) * (-5435081209227447693L);
                i11 = i15;
                int i18 = i14;
                f(bArr, i17, jArr[1] * (-5435081209227447693L), j10 + jArr2[0], jArr);
                f(bArr, i17 + 32, rotateRight + jArr2[1], b10 + ea.b(bArr, i17 + 16), jArr2);
                int i19 = i17 + 64;
                if (i19 == i18) {
                    break;
                }
                i17 = i19;
                i14 = i18;
                i15 = i11;
                b22 = rotateRight;
                i12 = 37;
                j17 = j10;
                j16 = b10;
            }
            long j18 = j10 & 255;
            long j19 = (-5435081209227447693L) + j18 + j18;
            long j20 = jArr2[0] + i11;
            long j21 = jArr[0] + j20;
            jArr[0] = j21;
            jArr2[0] = j20 + j21;
            long rotateRight6 = Long.rotateRight(rotateRight + b10 + j21 + ea.b(bArr, i16 + 8), 37);
            long rotateRight7 = Long.rotateRight(b10 + jArr[1] + ea.b(bArr, i16 + 48), 42);
            long j22 = (rotateRight6 * j19) ^ (jArr2[1] * 9);
            long b23 = (rotateRight7 * j19) + (jArr[0] * 9) + ea.b(bArr, i16 + 40);
            long rotateRight8 = Long.rotateRight(j10 + jArr2[0], 33) * j19;
            f(bArr, i16, jArr[1] * j19, j22 + jArr2[0], jArr);
            f(bArr, i16 + 32, rotateRight8 + jArr2[1], ea.b(bArr, i16 + 16) + b23, jArr2);
            j11 = e(e(jArr[0], jArr2[0], j19) + (((b23 >>> 47) ^ b23) * (-4348849565147123417L)) + j22, e(jArr[1], jArr2[1], j19) + rotateRight8, j19);
        }
        return v9.h(j11);
    }

    public final String toString() {
        return "Hashing.farmHashFingerprint64()";
    }
}
