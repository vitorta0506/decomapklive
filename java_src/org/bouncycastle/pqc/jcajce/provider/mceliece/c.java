package org.bouncycastle.pqc.jcajce.provider.mceliece;

import org.bouncycastle.asn1.u0;
import org.bouncycastle.crypto.e;
/* loaded from: classes7.dex */
class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static oj.a a(String str) {
        if (str.equals("SHA-1")) {
            return new oj.a(fj.b.f39757i, u0.f55980a);
        }
        if (str.equals("SHA-224")) {
            return new oj.a(ej.b.f39455f, u0.f55980a);
        }
        if (str.equals("SHA-256")) {
            return new oj.a(ej.b.f39449c, u0.f55980a);
        }
        if (str.equals("SHA-384")) {
            return new oj.a(ej.b.f39451d, u0.f55980a);
        }
        if (str.equals("SHA-512")) {
            return new oj.a(ej.b.f39453e, u0.f55980a);
        }
        throw new IllegalArgumentException("unrecognised digest algorithm: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e b(oj.a aVar) {
        if (aVar.x().F(fj.b.f39757i)) {
            return xj.a.a();
        }
        if (aVar.x().F(ej.b.f39455f)) {
            return xj.a.b();
        }
        if (aVar.x().F(ej.b.f39449c)) {
            return xj.a.c();
        }
        if (aVar.x().F(ej.b.f39451d)) {
            return xj.a.d();
        }
        if (aVar.x().F(ej.b.f39453e)) {
            return xj.a.e();
        }
        throw new IllegalArgumentException("unrecognised OID in digest algorithm identifier: " + aVar.x());
    }
}
