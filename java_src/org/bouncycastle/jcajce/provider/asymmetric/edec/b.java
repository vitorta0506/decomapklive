package org.bouncycastle.jcajce.provider.asymmetric.edec;

import org.bouncycastle.util.d;
import org.bouncycastle.util.i;
import vj.h0;
import vj.j0;
import vj.s;
import vj.u;
/* loaded from: classes7.dex */
class b {
    private static String a(byte[] bArr) {
        return new d(bArr).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return !b(bArr, bArr);
        }
        int i9 = 0;
        for (int i10 = 0; i10 != bArr.length; i10++) {
            i9 |= bArr[i10] ^ bArr2[i10];
        }
        return i9 == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str, String str2, vj.a aVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        byte[] encoded = aVar instanceof j0 ? ((j0) aVar).getEncoded() : aVar instanceof u ? ((u) aVar).getEncoded() : aVar instanceof h0 ? ((h0) aVar).getEncoded() : ((s) aVar).getEncoded();
        stringBuffer.append(str2);
        stringBuffer.append(" ");
        stringBuffer.append(str);
        stringBuffer.append(" [");
        stringBuffer.append(a(encoded));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("    public data: ");
        stringBuffer.append(org.bouncycastle.util.encoders.d.f(encoded));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
