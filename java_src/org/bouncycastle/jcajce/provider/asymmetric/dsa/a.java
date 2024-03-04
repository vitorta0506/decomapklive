package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import fj.b;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import org.bouncycastle.asn1.n;
import org.bouncycastle.util.d;
import pj.o;
import vj.h;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final n[] f56050a = {o.f56959h4, b.f39758j, o.f56960i4};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(BigInteger bigInteger, DSAParams dSAParams) {
        return new d(org.bouncycastle.util.a.l(bigInteger.toByteArray(), dSAParams.getP().toByteArray(), dSAParams.getQ().toByteArray(), dSAParams.getG().toByteArray())).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h b(DSAParams dSAParams) {
        if (dSAParams != null) {
            return new h(dSAParams.getP(), dSAParams.getQ(), dSAParams.getG());
        }
        return null;
    }
}
