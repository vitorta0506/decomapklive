package com.tencent.xmagic.license;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
@Deprecated
/* loaded from: classes4.dex */
public class RSAUtils {
    public static final int DEFAULT_BUFFERSIZE = 117;
    public static final int DEFAULT_KEY_SIZE = 1024;
    public static final byte[] DEFAULT_SPLIT = "#PART#".getBytes();
    public static final String RSA = "RSA";
    public static final String TRANSFORMATION = "RSA/None/PKCS1Padding";

    public static byte[] decryptByPrivateKey(byte[] bArr, byte[] bArr2) throws Exception {
        PrivateKey generatePrivate = KeyFactory.getInstance(RSA).generatePrivate(new PKCS8EncodedKeySpec(bArr2));
        Cipher cipher = Cipher.getInstance(TRANSFORMATION);
        cipher.init(2, generatePrivate);
        return cipher.doFinal(bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0087 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] decryptByPrivateKeyForSpilt(byte[] r12, byte[] r13) throws java.lang.Exception {
        /*
            byte[] r0 = com.tencent.xmagic.license.RSAUtils.DEFAULT_SPLIT
            int r0 = r0.length
            if (r0 > 0) goto La
            byte[] r12 = decryptByPrivateKey(r12, r13)
            return r12
        La:
            int r1 = r12.length
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 1024(0x400, float:1.435E-42)
            r2.<init>(r3)
            r3 = 0
            r4 = 0
            r5 = 0
        L15:
            if (r4 >= r1) goto L89
            r6 = r12[r4]
            int r7 = r1 + (-1)
            r8 = 1
            if (r4 != r7) goto L3e
            int r6 = r1 - r5
            byte[] r7 = new byte[r6]
            java.lang.System.arraycopy(r12, r5, r7, r3, r6)
            byte[] r5 = decryptByPrivateKey(r7, r13)
            int r6 = r5.length
            r7 = 0
        L2b:
            if (r7 >= r6) goto L39
            r9 = r5[r7]
            java.lang.Byte r9 = java.lang.Byte.valueOf(r9)
            r2.add(r9)
            int r7 = r7 + 1
            goto L2b
        L39:
            int r5 = r4 + r0
            int r4 = r5 + (-1)
            goto L63
        L3e:
            byte[] r7 = com.tencent.xmagic.license.RSAUtils.DEFAULT_SPLIT
            r7 = r7[r3]
            if (r6 != r7) goto L63
            if (r0 <= r8) goto L61
            int r6 = r4 + r0
            if (r6 >= r1) goto L63
            r6 = 1
            r7 = 0
        L4c:
            if (r6 >= r0) goto L64
            byte[] r9 = com.tencent.xmagic.license.RSAUtils.DEFAULT_SPLIT
            r9 = r9[r6]
            int r10 = r4 + r6
            r10 = r12[r10]
            if (r9 == r10) goto L59
            goto L64
        L59:
            int r9 = r0 + (-1)
            if (r6 != r9) goto L5e
            r7 = 1
        L5e:
            int r6 = r6 + 1
            goto L4c
        L61:
            r7 = 1
            goto L64
        L63:
            r7 = 0
        L64:
            if (r7 == 0) goto L87
            int r6 = r4 - r5
            byte[] r7 = new byte[r6]
            java.lang.System.arraycopy(r12, r5, r7, r3, r6)
            byte[] r5 = decryptByPrivateKey(r7, r13)
            int r6 = r5.length
            r7 = 0
        L73:
            if (r7 >= r6) goto L81
            r9 = r5[r7]
            java.lang.Byte r9 = java.lang.Byte.valueOf(r9)
            r2.add(r9)
            int r7 = r7 + 1
            goto L73
        L81:
            int r4 = r4 + r0
            int r5 = r4 + (-1)
            r11 = r5
            r5 = r4
            r4 = r11
        L87:
            int r4 = r4 + r8
            goto L15
        L89:
            int r12 = r2.size()
            byte[] r12 = new byte[r12]
            java.util.Iterator r13 = r2.iterator()
        L93:
            boolean r0 = r13.hasNext()
            if (r0 == 0) goto La9
            java.lang.Object r0 = r13.next()
            java.lang.Byte r0 = (java.lang.Byte) r0
            int r1 = r3 + 1
            byte r0 = r0.byteValue()
            r12[r3] = r0
            r3 = r1
            goto L93
        La9:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.xmagic.license.RSAUtils.decryptByPrivateKeyForSpilt(byte[], byte[]):byte[]");
    }

    public static byte[] encryptByPublicKey(byte[] bArr, byte[] bArr2) throws Exception {
        PublicKey generatePublic = KeyFactory.getInstance(RSA).generatePublic(new X509EncodedKeySpec(bArr2));
        Cipher cipher = Cipher.getInstance(TRANSFORMATION);
        cipher.init(1, generatePublic);
        return cipher.doFinal(bArr);
    }
}
