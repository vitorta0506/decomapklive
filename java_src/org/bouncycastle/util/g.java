package org.bouncycastle.util;

import kotlin.UByte;
/* loaded from: classes7.dex */
public abstract class g {
    public static int a(byte[] bArr, int i9) {
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        return (bArr[i11 + 1] & UByte.MAX_VALUE) | (bArr[i9] << 24) | ((bArr[i10] & UByte.MAX_VALUE) << 16) | ((bArr[i11] & UByte.MAX_VALUE) << 8);
    }

    public static long b(byte[] bArr, int i9) {
        int a10 = a(bArr, i9);
        return (a(bArr, i9 + 4) & 4294967295L) | ((a10 & 4294967295L) << 32);
    }

    public static void c(int i9, byte[] bArr, int i10) {
        bArr[i10] = (byte) (i9 >>> 24);
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i9 >>> 16);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i9 >>> 8);
        bArr[i12 + 1] = (byte) i9;
    }

    public static void d(int i9, byte[] bArr, int i10) {
        bArr[i10] = (byte) i9;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i9 >>> 8);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i9 >>> 16);
        bArr[i12 + 1] = (byte) (i9 >>> 24);
    }

    public static int e(byte[] bArr, int i9) {
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        return (bArr[i11 + 1] << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i10] & UByte.MAX_VALUE) << 8) | ((bArr[i11] & UByte.MAX_VALUE) << 16);
    }

    public static void f(byte[] bArr, int i9, int[] iArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            iArr[i10 + i12] = e(bArr, i9);
            i9 += 4;
        }
    }

    public static long g(byte[] bArr, int i9) {
        return ((e(bArr, i9 + 4) & 4294967295L) << 32) | (e(bArr, i9) & 4294967295L);
    }

    public static short h(byte[] bArr, int i9) {
        return (short) (((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | (bArr[i9] & UByte.MAX_VALUE));
    }

    public static void i(long j10, byte[] bArr, int i9) {
        c((int) (j10 >>> 32), bArr, i9);
        c((int) (j10 & 4294967295L), bArr, i9 + 4);
    }

    public static byte[] j(long j10) {
        byte[] bArr = new byte[8];
        i(j10, bArr, 0);
        return bArr;
    }

    public static void k(long j10, byte[] bArr, int i9) {
        d((int) (4294967295L & j10), bArr, i9);
        d((int) (j10 >>> 32), bArr, i9 + 4);
    }

    public static void l(long[] jArr, int i9, int i10, byte[] bArr, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            k(jArr[i9 + i12], bArr, i11);
            i11 += 8;
        }
    }

    public static byte[] m(long j10) {
        byte[] bArr = new byte[8];
        k(j10, bArr, 0);
        return bArr;
    }

    public static void n(short s10, byte[] bArr, int i9) {
        bArr[i9] = (byte) (s10 >>> 8);
        bArr[i9 + 1] = (byte) s10;
    }

    public static void o(short s10, byte[] bArr, int i9) {
        bArr[i9] = (byte) s10;
        bArr[i9 + 1] = (byte) (s10 >>> 8);
    }
}
