package ej;

import ij.c;
import ij.d;
import java.util.Hashtable;
import org.bouncycastle.asn1.n;
import pj.i;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static final Hashtable f39443a = new Hashtable();

    /* renamed from: b  reason: collision with root package name */
    static final Hashtable f39444b = new Hashtable();

    static {
        a("B-571", d.F);
        a("B-409", d.D);
        a("B-283", d.f41420n);
        a("B-233", d.f41426t);
        a("B-163", d.f41418l);
        a("K-571", d.E);
        a("K-409", d.C);
        a("K-283", d.f41419m);
        a("K-233", d.f41425s);
        a("K-163", d.f41408b);
        a("P-521", d.B);
        a("P-384", d.A);
        a("P-256", d.H);
        a("P-224", d.f41432z);
        a("P-192", d.G);
    }

    static void a(String str, n nVar) {
        f39443a.put(str, nVar);
        f39444b.put(nVar, str);
    }

    public static i b(String str) {
        n nVar = (n) f39443a.get(org.bouncycastle.util.i.i(str));
        if (nVar != null) {
            return c(nVar);
        }
        return null;
    }

    public static i c(n nVar) {
        return c.k(nVar);
    }

    public static String d(n nVar) {
        return (String) f39444b.get(nVar);
    }

    public static n e(String str) {
        return (n) f39443a.get(org.bouncycastle.util.i.i(str));
    }
}
