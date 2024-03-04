package org.bouncycastle.jcajce.provider.asymmetric.ec;

import ek.c;
import fk.e;
import java.math.BigInteger;
import java.security.spec.ECParameterSpec;
import org.bouncycastle.asn1.l;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u0;
import pj.g;
import pj.i;
import pj.k;
import yj.b;
/* loaded from: classes7.dex */
class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static g a(ECParameterSpec eCParameterSpec, boolean z10) {
        if (!(eCParameterSpec instanceof c)) {
            if (eCParameterSpec == null) {
                return new g((l) u0.f55980a);
            }
            e a10 = b.a(eCParameterSpec.getCurve());
            return new g(new i(a10, new k(b.d(a10, eCParameterSpec.getGenerator()), z10), eCParameterSpec.getOrder(), BigInteger.valueOf(eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed()));
        }
        c cVar = (c) eCParameterSpec;
        n g10 = yj.c.g(cVar.a());
        if (g10 == null) {
            g10 = new n(cVar.a());
        }
        return new g(g10);
    }
}
