package org.bouncycastle.crypto;
/* loaded from: classes7.dex */
public abstract class h {
    public static byte[] a(char[] cArr) {
        if (cArr == null || cArr.length <= 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[(cArr.length + 1) * 2];
        for (int i9 = 0; i9 != cArr.length; i9++) {
            int i10 = i9 * 2;
            bArr[i10] = (byte) (cArr[i9] >>> '\b');
            bArr[i10 + 1] = (byte) cArr[i9];
        }
        return bArr;
    }

    public static byte[] b(char[] cArr) {
        if (cArr != null) {
            int length = cArr.length;
            byte[] bArr = new byte[length];
            for (int i9 = 0; i9 != length; i9++) {
                bArr[i9] = (byte) cArr[i9];
            }
            return bArr;
        }
        return new byte[0];
    }

    public static byte[] c(char[] cArr) {
        return cArr != null ? org.bouncycastle.util.i.h(cArr) : new byte[0];
    }
}
