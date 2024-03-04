package ck;

import org.bouncycastle.asn1.n;
import pj.i;
/* loaded from: classes7.dex */
public class a {
    public static ek.b a(String str) {
        i c10 = zi.b.c(str);
        if (c10 == null) {
            try {
                c10 = zi.b.e(new n(str));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        if (c10 == null) {
            return null;
        }
        return new ek.b(str, c10.x(), c10.y(), c10.F(), c10.z(), c10.G());
    }
}
