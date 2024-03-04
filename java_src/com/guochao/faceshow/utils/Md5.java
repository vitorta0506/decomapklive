package com.guochao.faceshow.utils;

import java.security.MessageDigest;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes4.dex */
public class Md5 {
    static final byte[] PADDING = {ByteCompanionObject.MIN_VALUE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    static final int S11 = 7;
    static final int S12 = 12;
    static final int S13 = 17;
    static final int S14 = 22;
    static final int S21 = 5;
    static final int S22 = 9;
    static final int S23 = 14;
    static final int S24 = 20;
    static final int S31 = 4;
    static final int S32 = 11;
    static final int S33 = 16;
    static final int S34 = 23;
    static final int S41 = 6;
    static final int S42 = 10;
    static final int S43 = 15;
    static final int S44 = 21;
    public String digestHexStr;
    private long[] state = new long[4];
    private long[] count = new long[2];
    private byte[] buffer = new byte[64];
    private byte[] digest = new byte[16];

    public Md5() {
        md5Init();
    }

    private void Decode(long[] jArr, byte[] bArr, int i9) {
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11 += 4) {
            jArr[i10] = b2iu(bArr[i11]) | (b2iu(bArr[i11 + 1]) << 8) | (b2iu(bArr[i11 + 2]) << 16) | (b2iu(bArr[i11 + 3]) << 24);
            i10++;
        }
    }

    private void Encode(byte[] bArr, long[] jArr, int i9) {
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11 += 4) {
            bArr[i11] = (byte) (jArr[i10] & 255);
            bArr[i11 + 1] = (byte) ((jArr[i10] >>> 8) & 255);
            bArr[i11 + 2] = (byte) ((jArr[i10] >>> 16) & 255);
            bArr[i11 + 3] = (byte) ((jArr[i10] >>> 24) & 255);
            i10++;
        }
    }

    private long F(long j10, long j11, long j12) {
        return ((~j10) & j12) | (j11 & j10);
    }

    private long FF(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        int F = (int) (F(j11, j12, j13) + j14 + j16 + j10);
        return ((F >>> ((int) (32 - j15))) | (F << ((int) j15))) + j11;
    }

    private long G(long j10, long j11, long j12) {
        return (j10 & j12) | (j11 & (~j12));
    }

    private long GG(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        int G = (int) (G(j11, j12, j13) + j14 + j16 + j10);
        return ((G >>> ((int) (32 - j15))) | (G << ((int) j15))) + j11;
    }

    private long H(long j10, long j11, long j12) {
        return (j10 ^ j11) ^ j12;
    }

    private long HH(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        int H = (int) (H(j11, j12, j13) + j14 + j16 + j10);
        return ((H >>> ((int) (32 - j15))) | (H << ((int) j15))) + j11;
    }

    private long I(long j10, long j11, long j12) {
        return (j10 | (~j12)) ^ j11;
    }

    private long II(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        int I = (int) (I(j11, j12, j13) + j14 + j16 + j10);
        return ((I >>> ((int) (32 - j15))) | (I << ((int) j15))) + j11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long b2iu(byte r2) {
        /*
            if (r2 >= 0) goto L4
            r2 = r2 & 255(0xff, float:3.57E-43)
        L4:
            long r0 = (long) r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.utils.Md5.b2iu(byte):long");
    }

    public static String byteHEX(byte b10) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        return new String(new char[]{cArr[(b10 >>> 4) & 15], cArr[b10 & 15]});
    }

    public static char convertChar(String str) {
        String str2;
        return (((str.hashCode() * 3) + 1) + "").charAt(str2.length() - 1);
    }

    public static String getMd5(String str) {
        return new Md5().getMD5Str(getNewStr(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0073 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMd5ByFile(java.io.File r7) {
        /*
            boolean r0 = r7.exists()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            r0 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L48
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L48
            java.lang.String r7 = "MD5"
            java.security.MessageDigest r7 = java.security.MessageDigest.getInstance(r7)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            r3 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r3]     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
        L18:
            int r5 = r2.read(r4, r0, r3)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            r6 = -1
            if (r5 == r6) goto L23
            r7.update(r4, r0, r5)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            goto L18
        L23:
            java.math.BigInteger r3 = new java.math.BigInteger     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            r4 = 1
            byte[] r7 = r7.digest()     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            r3.<init>(r4, r7)     // Catch: java.lang.Throwable -> L37 java.lang.Exception -> L3a
            r2.close()     // Catch: java.io.IOException -> L31
            goto L35
        L31:
            r7 = move-exception
            r7.printStackTrace()
        L35:
            r1 = r3
            goto L53
        L37:
            r7 = move-exception
            r1 = r2
            goto L3d
        L3a:
            goto L49
        L3c:
            r7 = move-exception
        L3d:
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.io.IOException -> L43
            goto L47
        L43:
            r0 = move-exception
            r0.printStackTrace()
        L47:
            throw r7
        L48:
            r2 = r1
        L49:
            if (r2 == 0) goto L53
            r2.close()     // Catch: java.io.IOException -> L4f
            goto L53
        L4f:
            r7 = move-exception
            r7.printStackTrace()
        L53:
            if (r1 == 0) goto L73
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r2 = 16
            java.lang.String r1 = r1.toString(r2)
            r7.<init>(r1)
        L60:
            int r1 = r7.length()
            r2 = 32
            if (r1 >= r2) goto L6e
            java.lang.String r1 = "0"
            r7.insert(r0, r1)
            goto L60
        L6e:
            java.lang.String r7 = r7.toString()
            return r7
        L73:
            java.lang.String r7 = ""
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.utils.Md5.getMd5ByFile(java.io.File):java.lang.String");
    }

    public static String getNewStr(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i9 = 0; i9 < str.length(); i9++) {
            stringBuffer.append(convertChar(str.charAt(i9) + ""));
        }
        return stringBuffer.toString();
    }

    public static String md5(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (int i9 = 0; i9 < digest.length; i9++) {
                int i10 = digest[i9];
                if (i10 < 0) {
                    i10 += 256;
                }
                if (i10 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i10));
            }
            return stringBuffer.toString().toLowerCase();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void md5Final() {
        byte[] bArr = new byte[8];
        Encode(bArr, this.count, 8);
        int i9 = ((int) (this.count[0] >>> 3)) & 63;
        md5Update(PADDING, i9 < 56 ? 56 - i9 : 120 - i9);
        md5Update(bArr, 8);
        Encode(this.digest, this.state, 16);
    }

    private void md5Init() {
        long[] jArr = this.count;
        jArr[0] = 0;
        jArr[1] = 0;
        long[] jArr2 = this.state;
        jArr2[0] = 1732584193;
        jArr2[1] = 4023233417L;
        jArr2[2] = 2562383102L;
        jArr2[3] = 271733878;
    }

    private void md5Memcpy(byte[] bArr, byte[] bArr2, int i9, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i9 + i12] = bArr2[i10 + i12];
        }
    }

    private void md5Transform(byte[] bArr) {
        long[] jArr = this.state;
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr[2];
        long j13 = jArr[3];
        long[] jArr2 = new long[16];
        Decode(jArr2, bArr, 64);
        long FF = FF(j10, j11, j12, j13, jArr2[0], 7L, 3614090360L);
        long FF2 = FF(j13, FF, j11, j12, jArr2[1], 12L, 3905402710L);
        long FF3 = FF(j12, FF2, FF, j11, jArr2[2], 17L, 606105819L);
        long FF4 = FF(j11, FF3, FF2, FF, jArr2[3], 22L, 3250441966L);
        long FF5 = FF(FF, FF4, FF3, FF2, jArr2[4], 7L, 4118548399L);
        long FF6 = FF(FF2, FF5, FF4, FF3, jArr2[5], 12L, 1200080426L);
        long FF7 = FF(FF3, FF6, FF5, FF4, jArr2[6], 17L, 2821735955L);
        long FF8 = FF(FF4, FF7, FF6, FF5, jArr2[7], 22L, 4249261313L);
        long FF9 = FF(FF5, FF8, FF7, FF6, jArr2[8], 7L, 1770035416L);
        long FF10 = FF(FF6, FF9, FF8, FF7, jArr2[9], 12L, 2336552879L);
        long FF11 = FF(FF7, FF10, FF9, FF8, jArr2[10], 17L, 4294925233L);
        long FF12 = FF(FF8, FF11, FF10, FF9, jArr2[11], 22L, 2304563134L);
        long FF13 = FF(FF9, FF12, FF11, FF10, jArr2[12], 7L, 1804603682L);
        long FF14 = FF(FF10, FF13, FF12, FF11, jArr2[13], 12L, 4254626195L);
        long FF15 = FF(FF11, FF14, FF13, FF12, jArr2[14], 17L, 2792965006L);
        long FF16 = FF(FF12, FF15, FF14, FF13, jArr2[15], 22L, 1236535329L);
        long GG = GG(FF13, FF16, FF15, FF14, jArr2[1], 5L, 4129170786L);
        long GG2 = GG(FF14, GG, FF16, FF15, jArr2[6], 9L, 3225465664L);
        long GG3 = GG(FF15, GG2, GG, FF16, jArr2[11], 14L, 643717713L);
        long GG4 = GG(FF16, GG3, GG2, GG, jArr2[0], 20L, 3921069994L);
        long GG5 = GG(GG, GG4, GG3, GG2, jArr2[5], 5L, 3593408605L);
        long GG6 = GG(GG2, GG5, GG4, GG3, jArr2[10], 9L, 38016083L);
        long GG7 = GG(GG3, GG6, GG5, GG4, jArr2[15], 14L, 3634488961L);
        long GG8 = GG(GG4, GG7, GG6, GG5, jArr2[4], 20L, 3889429448L);
        long GG9 = GG(GG5, GG8, GG7, GG6, jArr2[9], 5L, 568446438L);
        long GG10 = GG(GG6, GG9, GG8, GG7, jArr2[14], 9L, 3275163606L);
        long GG11 = GG(GG7, GG10, GG9, GG8, jArr2[3], 14L, 4107603335L);
        long GG12 = GG(GG8, GG11, GG10, GG9, jArr2[8], 20L, 1163531501L);
        long GG13 = GG(GG9, GG12, GG11, GG10, jArr2[13], 5L, 2850285829L);
        long GG14 = GG(GG10, GG13, GG12, GG11, jArr2[2], 9L, 4243563512L);
        long GG15 = GG(GG11, GG14, GG13, GG12, jArr2[7], 14L, 1735328473L);
        long GG16 = GG(GG12, GG15, GG14, GG13, jArr2[12], 20L, 2368359562L);
        long HH = HH(GG13, GG16, GG15, GG14, jArr2[5], 4L, 4294588738L);
        long HH2 = HH(GG14, HH, GG16, GG15, jArr2[8], 11L, 2272392833L);
        long HH3 = HH(GG15, HH2, HH, GG16, jArr2[11], 16L, 1839030562L);
        long HH4 = HH(GG16, HH3, HH2, HH, jArr2[14], 23L, 4259657740L);
        long HH5 = HH(HH, HH4, HH3, HH2, jArr2[1], 4L, 2763975236L);
        long HH6 = HH(HH2, HH5, HH4, HH3, jArr2[4], 11L, 1272893353L);
        long HH7 = HH(HH3, HH6, HH5, HH4, jArr2[7], 16L, 4139469664L);
        long HH8 = HH(HH4, HH7, HH6, HH5, jArr2[10], 23L, 3200236656L);
        long HH9 = HH(HH5, HH8, HH7, HH6, jArr2[13], 4L, 681279174L);
        long HH10 = HH(HH6, HH9, HH8, HH7, jArr2[0], 11L, 3936430074L);
        long HH11 = HH(HH7, HH10, HH9, HH8, jArr2[3], 16L, 3572445317L);
        long HH12 = HH(HH8, HH11, HH10, HH9, jArr2[6], 23L, 76029189L);
        long HH13 = HH(HH9, HH12, HH11, HH10, jArr2[9], 4L, 3654602809L);
        long HH14 = HH(HH10, HH13, HH12, HH11, jArr2[12], 11L, 3873151461L);
        long HH15 = HH(HH11, HH14, HH13, HH12, jArr2[15], 16L, 530742520L);
        long HH16 = HH(HH12, HH15, HH14, HH13, jArr2[2], 23L, 3299628645L);
        long II = II(HH13, HH16, HH15, HH14, jArr2[0], 6L, 4096336452L);
        long II2 = II(HH14, II, HH16, HH15, jArr2[7], 10L, 1126891415L);
        long II3 = II(HH15, II2, II, HH16, jArr2[14], 15L, 2878612391L);
        long II4 = II(HH16, II3, II2, II, jArr2[5], 21L, 4237533241L);
        long II5 = II(II, II4, II3, II2, jArr2[12], 6L, 1700485571L);
        long II6 = II(II2, II5, II4, II3, jArr2[3], 10L, 2399980690L);
        long II7 = II(II3, II6, II5, II4, jArr2[10], 15L, 4293915773L);
        long II8 = II(II4, II7, II6, II5, jArr2[1], 21L, 2240044497L);
        long II9 = II(II5, II8, II7, II6, jArr2[8], 6L, 1873313359L);
        long II10 = II(II6, II9, II8, II7, jArr2[15], 10L, 4264355552L);
        long II11 = II(II7, II10, II9, II8, jArr2[6], 15L, 2734768916L);
        long II12 = II(II8, II11, II10, II9, jArr2[13], 21L, 1309151649L);
        long II13 = II(II9, II12, II11, II10, jArr2[4], 6L, 4149444226L);
        long II14 = II(II10, II13, II12, II11, jArr2[11], 10L, 3174756917L);
        long II15 = II(II11, II14, II13, II12, jArr2[2], 15L, 718787259L);
        long II16 = II(II12, II15, II14, II13, jArr2[9], 21L, 3951481745L);
        long[] jArr3 = this.state;
        jArr3[0] = jArr3[0] + II13;
        jArr3[1] = jArr3[1] + II16;
        jArr3[2] = jArr3[2] + II15;
        jArr3[3] = jArr3[3] + II14;
    }

    private void md5Update(byte[] bArr, int i9) {
        int i10;
        byte[] bArr2 = new byte[64];
        long[] jArr = this.count;
        int i11 = ((int) (jArr[0] >>> 3)) & 63;
        long j10 = i9 << 3;
        long j11 = jArr[0] + j10;
        jArr[0] = j11;
        if (j11 < j10) {
            jArr[1] = jArr[1] + 1;
        }
        jArr[1] = jArr[1] + (i9 >>> 29);
        int i12 = 64 - i11;
        if (i9 >= i12) {
            md5Memcpy(this.buffer, bArr, i11, 0, i12);
            md5Transform(this.buffer);
            while (i12 + 63 < i9) {
                md5Memcpy(bArr2, bArr, 0, i12, 64);
                md5Transform(bArr2);
                i12 += 64;
            }
            i10 = i12;
            i11 = 0;
        } else {
            i10 = 0;
        }
        md5Memcpy(this.buffer, bArr, i11, i10, i9 - i10);
    }

    public String getMD5Str(String str) {
        md5Init();
        md5Update(str.getBytes(), str.length());
        md5Final();
        this.digestHexStr = "";
        for (int i9 = 0; i9 < 16; i9++) {
            this.digestHexStr += byteHEX(this.digest[i9]);
        }
        return this.digestHexStr;
    }
}
