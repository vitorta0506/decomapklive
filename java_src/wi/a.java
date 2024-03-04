package wi;

import fk.e;
import fk.t;
import java.math.BigInteger;
import java.util.Hashtable;
import org.bouncycastle.asn1.n;
import org.bouncycastle.util.encoders.d;
import pj.i;
import pj.j;
import pj.k;
/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static j f59508a = new C0684a();

    /* renamed from: b  reason: collision with root package name */
    static final Hashtable f59509b = new Hashtable();

    /* renamed from: c  reason: collision with root package name */
    static final Hashtable f59510c = new Hashtable();

    /* renamed from: d  reason: collision with root package name */
    static final Hashtable f59511d = new Hashtable();

    /* renamed from: wi.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static class C0684a extends j {
        C0684a() {
        }

        @Override // pj.j
        protected i a() {
            BigInteger g10 = a.g("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C03");
            BigInteger g11 = a.g("F1FD178C0B3AD58F10126DE8CE42435B3961ADBCABC8CA6DE8FCF353D86E9C00");
            BigInteger g12 = a.g("EE353FCA5428A9300D4ABA754A44C00FDFEC0C9AE4B1A1803075ED967B7BB73F");
            BigInteger g13 = a.g("F1FD178C0B3AD58F10126DE8CE42435B53DC67E140D2BF941FFDD459C6D655E1");
            BigInteger valueOf = BigInteger.valueOf(1L);
            e e10 = a.e(new e.f(g10, g11, g12, g13, valueOf));
            return new i(e10, a.d(e10, "04B6B3D4C356C139EB31183D4749D423958C27D2DCAF98B70164C97A2DD98F5CFF6142E0F7C8B204911F9271F0F3ECEF8C2701C307E8E4C9E183115A1554062CFB"), g13, valueOf, null);
        }
    }

    static {
        f("FRP256v1", b.f59512a, f59508a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static k d(e eVar, String str) {
        k kVar = new k(eVar, d.b(str));
        t.a(kVar.x());
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static e e(e eVar) {
        return eVar;
    }

    static void f(String str, n nVar, j jVar) {
        f59509b.put(org.bouncycastle.util.i.f(str), nVar);
        f59511d.put(nVar, str);
        f59510c.put(nVar, jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BigInteger g(String str) {
        return new BigInteger(1, d.b(str));
    }

    public static i h(String str) {
        n k10 = k(str);
        if (k10 == null) {
            return null;
        }
        return i(k10);
    }

    public static i i(n nVar) {
        j jVar = (j) f59510c.get(nVar);
        if (jVar == null) {
            return null;
        }
        return jVar.b();
    }

    public static String j(n nVar) {
        return (String) f59511d.get(nVar);
    }

    public static n k(String str) {
        return (n) f59509b.get(org.bouncycastle.util.i.f(str));
    }
}
