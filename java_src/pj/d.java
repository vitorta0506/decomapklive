package pj;
/* loaded from: classes7.dex */
public class d {
    public static i a(String str) {
        i h10 = f.h(str);
        if (h10 == null) {
            h10 = ij.c.j(str);
        }
        if (h10 == null) {
            h10 = ej.a.b(str);
        }
        if (h10 == null) {
            h10 = jj.a.h(str);
        }
        if (h10 == null) {
            h10 = wi.a.h(str);
        }
        if (h10 == null) {
            h10 = zi.b.c(str);
        }
        return h10 == null ? bj.a.h(str) : h10;
    }

    public static i b(org.bouncycastle.asn1.n nVar) {
        i i9 = f.i(nVar);
        if (i9 == null) {
            i9 = ij.c.k(nVar);
        }
        if (i9 == null) {
            i9 = jj.a.i(nVar);
        }
        if (i9 == null) {
            i9 = wi.a.i(nVar);
        }
        if (i9 == null) {
            i9 = zi.b.e(nVar);
        }
        return i9 == null ? bj.a.i(nVar) : i9;
    }

    public static String c(org.bouncycastle.asn1.n nVar) {
        String j10 = f.j(nVar);
        if (j10 == null) {
            j10 = ij.c.l(nVar);
        }
        if (j10 == null) {
            j10 = ej.a.d(nVar);
        }
        if (j10 == null) {
            j10 = jj.a.j(nVar);
        }
        if (j10 == null) {
            j10 = wi.a.j(nVar);
        }
        if (j10 == null) {
            j10 = zi.b.f(nVar);
        }
        if (j10 == null) {
            j10 = bj.a.j(nVar);
        }
        return j10 == null ? sj.a.k(nVar) : j10;
    }

    public static org.bouncycastle.asn1.n d(String str) {
        org.bouncycastle.asn1.n k10 = f.k(str);
        if (k10 == null) {
            k10 = ij.c.m(str);
        }
        if (k10 == null) {
            k10 = ej.a.e(str);
        }
        if (k10 == null) {
            k10 = jj.a.k(str);
        }
        if (k10 == null) {
            k10 = wi.a.k(str);
        }
        if (k10 == null) {
            k10 = zi.b.g(str);
        }
        if (k10 == null) {
            k10 = bj.a.k(str);
        }
        return (k10 == null && str.equals("curve25519")) ? yi.a.f60271c : k10;
    }
}
