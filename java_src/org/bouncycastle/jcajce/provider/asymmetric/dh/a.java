package org.bouncycastle.jcajce.provider.asymmetric.dh;

import java.math.BigInteger;
import org.bouncycastle.util.d;
import org.bouncycastle.util.i;
import vj.c;
/* loaded from: classes7.dex */
class a {
    private static String a(BigInteger bigInteger, c cVar) {
        return new d(org.bouncycastle.util.a.k(bigInteger.toByteArray(), cVar.f().toByteArray(), cVar.b().toByteArray())).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str, BigInteger bigInteger, c cVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        BigInteger modPow = cVar.b().modPow(bigInteger, cVar.f());
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(a(modPow, cVar));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("              Y: ");
        stringBuffer.append(modPow.toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str, BigInteger bigInteger, c cVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(a(bigInteger, cVar));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("             Y: ");
        stringBuffer.append(bigInteger.toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
