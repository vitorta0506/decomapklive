package pj;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class n {
    public int a(fk.e eVar) {
        return (eVar.q() + 7) / 8;
    }

    public int b(fk.f fVar) {
        return (fVar.f() + 7) / 8;
    }

    public byte[] c(BigInteger bigInteger, int i9) {
        byte[] byteArray = bigInteger.toByteArray();
        if (i9 < byteArray.length) {
            byte[] bArr = new byte[i9];
            System.arraycopy(byteArray, byteArray.length - i9, bArr, 0, i9);
            return bArr;
        } else if (i9 > byteArray.length) {
            byte[] bArr2 = new byte[i9];
            System.arraycopy(byteArray, 0, bArr2, i9 - byteArray.length, byteArray.length);
            return bArr2;
        } else {
            return byteArray;
        }
    }
}
