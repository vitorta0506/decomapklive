package yj;

import oj.v;
/* loaded from: classes7.dex */
public class e {
    public static byte[] a(gj.d dVar) {
        try {
            return dVar.u("DER");
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] b(oj.a aVar, org.bouncycastle.asn1.e eVar) {
        try {
            return a(new gj.d(aVar, eVar.f()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] c(oj.a aVar, org.bouncycastle.asn1.e eVar) {
        try {
            return e(new v(aVar, eVar));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] d(oj.a aVar, byte[] bArr) {
        try {
            return e(new v(aVar, bArr));
        } catch (Exception unused) {
            return null;
        }
    }

    public static byte[] e(v vVar) {
        try {
            return vVar.u("DER");
        } catch (Exception unused) {
            return null;
        }
    }
}
