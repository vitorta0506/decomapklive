package org.bouncycastle.pqc.jcajce.provider.xmss;

import org.bouncycastle.asn1.n;
/* loaded from: classes7.dex */
class a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static n a(String str) {
        if (str.equals("SHA-256")) {
            return ej.b.f39449c;
        }
        if (str.equals("SHA-512")) {
            return ej.b.f39453e;
        }
        if (str.equals("SHAKE128")) {
            return ej.b.f39469m;
        }
        if (str.equals("SHAKE256")) {
            return ej.b.f39471n;
        }
        throw new IllegalArgumentException("unrecognized digest: " + str);
    }

    public static String b(n nVar) {
        if (nVar.F(ej.b.f39449c)) {
            return "SHA256";
        }
        if (nVar.F(ej.b.f39453e)) {
            return "SHA512";
        }
        if (nVar.F(ej.b.f39469m)) {
            return "SHAKE128";
        }
        if (nVar.F(ej.b.f39471n)) {
            return "SHAKE256";
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + nVar);
    }
}
