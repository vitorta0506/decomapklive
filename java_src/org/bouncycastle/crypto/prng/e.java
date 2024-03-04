package org.bouncycastle.crypto.prng;
/* loaded from: classes7.dex */
public class e {
    public static byte[] a(c cVar, int i9) {
        byte[] bArr = new byte[i9];
        if (i9 * 8 <= cVar.b()) {
            System.arraycopy(cVar.a(), 0, bArr, 0, i9);
        } else {
            int b10 = cVar.b() / 8;
            for (int i10 = 0; i10 < i9; i10 += b10) {
                byte[] a10 = cVar.a();
                int i11 = i9 - i10;
                if (a10.length <= i11) {
                    System.arraycopy(a10, 0, bArr, i10, a10.length);
                } else {
                    System.arraycopy(a10, 0, bArr, i10, i11);
                }
            }
        }
        return bArr;
    }
}
