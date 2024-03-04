package org.bouncycastle.util.test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.Provider;
import java.security.SecureRandom;
import kotlin.UByte;
import org.bouncycastle.util.g;
/* loaded from: classes7.dex */
public class FixedSecureRandom extends SecureRandom {
    private static final boolean isAndroidStyle;
    private static final boolean isClasspathStyle;
    private static final boolean isRegularStyle;
    private byte[] _data;
    private int _index;
    private static BigInteger REGULAR = new BigInteger("01020304ffffffff0506070811111111", 16);
    private static BigInteger ANDROID = new BigInteger("1111111105060708ffffffff01020304", 16);
    private static BigInteger CLASSPATH = new BigInteger("3020104ffffffff05060708111111", 16);

    /* loaded from: classes7.dex */
    public static class a extends e {
        public a(int i9, byte[] bArr) {
            super(FixedSecureRandom.expandToBitLength(i9, bArr));
        }

        public a(byte[] bArr) {
            super(bArr);
        }
    }

    /* loaded from: classes7.dex */
    public static class b extends e {
        public b(byte[] bArr) {
            super(bArr);
        }
    }

    /* loaded from: classes7.dex */
    private static class c extends Provider {
        c() {
            super("BCFIPS_FIXED_RNG", 1.0d, "BCFIPS Fixed Secure Random Provider");
        }
    }

    /* loaded from: classes7.dex */
    private static class d extends SecureRandom {

        /* renamed from: a  reason: collision with root package name */
        byte[] f56280a;

        /* renamed from: b  reason: collision with root package name */
        int f56281b;

        d() {
            super(null, new c());
            this.f56280a = org.bouncycastle.util.encoders.d.a("01020304ffffffff0506070811111111");
            this.f56281b = 0;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void nextBytes(byte[] bArr) {
            System.arraycopy(this.f56280a, this.f56281b, bArr, 0, bArr.length);
            this.f56281b += bArr.length;
        }
    }

    /* loaded from: classes7.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        byte[] f56282a;

        e(byte[] bArr) {
            this.f56282a = bArr;
        }
    }

    static {
        BigInteger bigInteger = new BigInteger(128, new d());
        BigInteger bigInteger2 = new BigInteger(120, new d());
        isAndroidStyle = bigInteger.equals(ANDROID);
        isRegularStyle = bigInteger.equals(REGULAR);
        isClasspathStyle = bigInteger2.equals(CLASSPATH);
    }

    public FixedSecureRandom(byte[] bArr) {
        this(new e[]{new b(bArr)});
    }

    public FixedSecureRandom(e[] eVarArr) {
        super(null, new c());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i9 = 0;
        if (isRegularStyle) {
            if (isClasspathStyle) {
                while (i9 != eVarArr.length) {
                    try {
                        if (eVarArr[i9] instanceof a) {
                            byte[] bArr = eVarArr[i9].f56282a;
                            int length = bArr.length - (bArr.length % 4);
                            for (int length2 = (bArr.length - length) - 1; length2 >= 0; length2--) {
                                byteArrayOutputStream.write(bArr[length2]);
                            }
                            for (int length3 = bArr.length - length; length3 < bArr.length; length3 += 4) {
                                byteArrayOutputStream.write(bArr, length3, 4);
                            }
                        } else {
                            byteArrayOutputStream.write(eVarArr[i9].f56282a);
                        }
                        i9++;
                    } catch (IOException unused) {
                        throw new IllegalArgumentException("can't save value source.");
                    }
                }
            } else {
                while (i9 != eVarArr.length) {
                    try {
                        byteArrayOutputStream.write(eVarArr[i9].f56282a);
                        i9++;
                    } catch (IOException unused2) {
                        throw new IllegalArgumentException("can't save value source.");
                    }
                }
            }
        } else if (!isAndroidStyle) {
            throw new IllegalStateException("Unrecognized BigInteger implementation");
        } else {
            for (int i10 = 0; i10 != eVarArr.length; i10++) {
                try {
                    if (eVarArr[i10] instanceof a) {
                        byte[] bArr2 = eVarArr[i10].f56282a;
                        int length4 = bArr2.length - (bArr2.length % 4);
                        int i11 = 0;
                        while (i11 < length4) {
                            i11 += 4;
                            byteArrayOutputStream.write(bArr2, bArr2.length - i11, 4);
                        }
                        if (bArr2.length - length4 != 0) {
                            for (int i12 = 0; i12 != 4 - (bArr2.length - length4); i12++) {
                                byteArrayOutputStream.write(0);
                            }
                        }
                        for (int i13 = 0; i13 != bArr2.length - length4; i13++) {
                            byteArrayOutputStream.write(bArr2[length4 + i13]);
                        }
                    } else {
                        byteArrayOutputStream.write(eVarArr[i10].f56282a);
                    }
                } catch (IOException unused3) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        }
        this._data = byteArrayOutputStream.toByteArray();
    }

    public FixedSecureRandom(byte[][] bArr) {
        this(buildDataArray(bArr));
    }

    private static b[] buildDataArray(byte[][] bArr) {
        b[] bVarArr = new b[bArr.length];
        for (int i9 = 0; i9 != bArr.length; i9++) {
            bVarArr[i9] = new b(bArr[i9]);
        }
        return bVarArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] expandToBitLength(int i9, byte[] bArr) {
        int i10;
        int i11;
        int i12 = (i9 + 7) / 8;
        if (i12 <= bArr.length) {
            if (isAndroidStyle && i9 < bArr.length * 8 && (i10 = i9 % 8) != 0) {
                g.c(g.a(bArr, 0) << (8 - i10), bArr, 0);
            }
            return bArr;
        }
        byte[] bArr2 = new byte[i12];
        System.arraycopy(bArr, 0, bArr2, i12 - bArr.length, bArr.length);
        if (isAndroidStyle && (i11 = i9 % 8) != 0) {
            g.c(g.a(bArr2, 0) << (8 - i11), bArr2, 0);
        }
        return bArr2;
    }

    private int nextValue() {
        byte[] bArr = this._data;
        int i9 = this._index;
        this._index = i9 + 1;
        return bArr[i9] & UByte.MAX_VALUE;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i9) {
        byte[] bArr = new byte[i9];
        nextBytes(bArr);
        return bArr;
    }

    public boolean isExhausted() {
        return this._index == this._data.length;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    @Override // java.util.Random
    public int nextInt() {
        return (nextValue() << 24) | 0 | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }

    @Override // java.util.Random
    public long nextLong() {
        return (nextValue() << 56) | 0 | (nextValue() << 48) | (nextValue() << 40) | (nextValue() << 32) | (nextValue() << 24) | (nextValue() << 16) | (nextValue() << 8) | nextValue();
    }
}
