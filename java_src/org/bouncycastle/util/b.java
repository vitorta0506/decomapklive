package org.bouncycastle.util;

import java.math.BigInteger;
import java.security.SecureRandom;
import nk.n;
/* loaded from: classes7.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final BigInteger f56259a = BigInteger.valueOf(0);

    /* renamed from: b  reason: collision with root package name */
    public static final BigInteger f56260b = BigInteger.valueOf(1);

    /* renamed from: c  reason: collision with root package name */
    private static final BigInteger f56261c = BigInteger.valueOf(2);

    /* renamed from: d  reason: collision with root package name */
    private static final BigInteger f56262d = BigInteger.valueOf(3);

    /* renamed from: e  reason: collision with root package name */
    private static final BigInteger f56263e = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);

    /* renamed from: f  reason: collision with root package name */
    private static final int f56264f = BigInteger.valueOf(743).bitLength();

    public static byte[] a(int i9, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i9) {
            return byteArray;
        }
        int i10 = byteArray[0] == 0 ? 1 : 0;
        int length = byteArray.length - i10;
        if (length <= i9) {
            byte[] bArr = new byte[i9];
            System.arraycopy(byteArray, i10, bArr, i9 - length, length);
            return bArr;
        }
        throw new IllegalArgumentException("standard length exceeded for value");
    }

    public static byte[] b(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            return bArr;
        }
        return byteArray;
    }

    private static byte[] c(int i9, SecureRandom secureRandom) throws IllegalArgumentException {
        if (i9 >= 1) {
            int i10 = (i9 + 7) / 8;
            byte[] bArr = new byte[i10];
            secureRandom.nextBytes(bArr);
            bArr[0] = (byte) (bArr[0] & ((byte) (255 >>> ((i10 * 8) - i9))));
            return bArr;
        }
        throw new IllegalArgumentException("bitLength must be at least 1");
    }

    public static BigInteger d(int i9, SecureRandom secureRandom) {
        return new BigInteger(1, c(i9, secureRandom));
    }

    public static BigInteger e(byte[] bArr, int i9, int i10) {
        if (i9 != 0 || i10 != bArr.length) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, i9, bArr2, 0, i10);
            bArr = bArr2;
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger f(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger.testBit(0)) {
            if (bigInteger.signum() == 1) {
                if (bigInteger2.signum() < 0 || bigInteger2.compareTo(bigInteger) >= 0) {
                    bigInteger2 = bigInteger2.mod(bigInteger);
                }
                int bitLength = bigInteger.bitLength();
                int[] r10 = n.r(bitLength, bigInteger);
                int[] r11 = n.r(bitLength, bigInteger2);
                int length = r10.length;
                int[] k10 = n.k(length);
                if (nk.c.l(r10, r11, k10) != 0) {
                    return n.U(length, k10);
                }
                throw new ArithmeticException("BigInteger not invertible.");
            }
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        throw new IllegalArgumentException("'M' must be odd");
    }
}
