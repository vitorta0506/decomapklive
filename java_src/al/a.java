package al;

import oj.v;
import org.bouncycastle.asn1.e;
/* loaded from: classes7.dex */
public class a {
    public static byte[] a(oj.a aVar, e eVar) {
        try {
            return b(new v(aVar, eVar));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] b(v vVar) {
        try {
            return vVar.u("DER");
        } catch (Exception unused) {
            return null;
        }
    }
}
