package rk;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
class b {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, org.bouncycastle.asn1.n> f57541a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static Map<org.bouncycastle.asn1.n, String> f57542b = new HashMap();

    static {
        Map<String, org.bouncycastle.asn1.n> map = f57541a;
        org.bouncycastle.asn1.n nVar = ej.b.f39449c;
        map.put("SHA-256", nVar);
        Map<String, org.bouncycastle.asn1.n> map2 = f57541a;
        org.bouncycastle.asn1.n nVar2 = ej.b.f39453e;
        map2.put("SHA-512", nVar2);
        Map<String, org.bouncycastle.asn1.n> map3 = f57541a;
        org.bouncycastle.asn1.n nVar3 = ej.b.f39469m;
        map3.put("SHAKE128", nVar3);
        Map<String, org.bouncycastle.asn1.n> map4 = f57541a;
        org.bouncycastle.asn1.n nVar4 = ej.b.f39471n;
        map4.put("SHAKE256", nVar4);
        f57542b.put(nVar, "SHA-256");
        f57542b.put(nVar2, "SHA-512");
        f57542b.put(nVar3, "SHAKE128");
        f57542b.put(nVar4, "SHAKE256");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static org.bouncycastle.crypto.e a(org.bouncycastle.asn1.n nVar) {
        if (nVar.F(ej.b.f39449c)) {
            return new rj.f();
        }
        if (nVar.F(ej.b.f39453e)) {
            return new rj.h();
        }
        if (nVar.F(ej.b.f39469m)) {
            return new rj.i(128);
        }
        if (nVar.F(ej.b.f39471n)) {
            return new rj.i(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + nVar);
    }
}
