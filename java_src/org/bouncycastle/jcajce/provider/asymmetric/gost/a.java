package org.bouncycastle.jcajce.provider.asymmetric.gost;

import java.math.BigInteger;
import org.bouncycastle.util.d;
import org.bouncycastle.util.i;
import vj.z;
/* loaded from: classes7.dex */
class a {
    private static String a(BigInteger bigInteger, z zVar) {
        return new d(org.bouncycastle.util.a.k(bigInteger.toByteArray(), zVar.b().toByteArray(), zVar.a().toByteArray())).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str, BigInteger bigInteger, z zVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        BigInteger modPow = zVar.a().modPow(bigInteger, zVar.b());
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(a(modPow, zVar));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("                  Y: ");
        stringBuffer.append(modPow.toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str, BigInteger bigInteger, z zVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(a(bigInteger, zVar));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("                 Y: ");
        stringBuffer.append(bigInteger.toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
