package org.bouncycastle.pqc.crypto.xmss;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, org.bouncycastle.asn1.n> f56140a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static Map<org.bouncycastle.asn1.n, String> f56141b = new HashMap();

    static {
        Map<String, org.bouncycastle.asn1.n> map = f56140a;
        org.bouncycastle.asn1.n nVar = ej.b.f39449c;
        map.put("SHA-256", nVar);
        Map<String, org.bouncycastle.asn1.n> map2 = f56140a;
        org.bouncycastle.asn1.n nVar2 = ej.b.f39453e;
        map2.put("SHA-512", nVar2);
        Map<String, org.bouncycastle.asn1.n> map3 = f56140a;
        org.bouncycastle.asn1.n nVar3 = ej.b.f39469m;
        map3.put("SHAKE128", nVar3);
        Map<String, org.bouncycastle.asn1.n> map4 = f56140a;
        org.bouncycastle.asn1.n nVar4 = ej.b.f39471n;
        map4.put("SHAKE256", nVar4);
        f56141b.put(nVar, "SHA-256");
        f56141b.put(nVar2, "SHA-512");
        f56141b.put(nVar3, "SHAKE128");
        f56141b.put(nVar4, "SHAKE256");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(org.bouncycastle.asn1.n nVar) {
        String str = f56141b.get(nVar);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unrecognized digest oid: " + nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static org.bouncycastle.asn1.n c(String str) {
        org.bouncycastle.asn1.n nVar = f56140a.get(str);
        if (nVar != null) {
            return nVar;
        }
        throw new IllegalArgumentException("unrecognized digest name: " + str);
    }
}
