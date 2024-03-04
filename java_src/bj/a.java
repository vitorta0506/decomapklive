package bj;

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
    static j f1319a = new C0020a();

    /* renamed from: b  reason: collision with root package name */
    static j f1320b = new b();

    /* renamed from: c  reason: collision with root package name */
    static final Hashtable f1321c = new Hashtable();

    /* renamed from: d  reason: collision with root package name */
    static final Hashtable f1322d = new Hashtable();

    /* renamed from: e  reason: collision with root package name */
    static final Hashtable f1323e = new Hashtable();

    /* renamed from: bj.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static class C0020a extends j {
        C0020a() {
        }

        @Override // pj.j
        protected i a() {
            BigInteger g10 = a.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF");
            BigInteger g11 = a.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFC");
            BigInteger g12 = a.g("28E9FA9E9D9F5E344D5A9E4BCF6509A7F39789F515AB8F92DDBCBD414D940E93");
            BigInteger g13 = a.g("FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF7203DF6B21C6052B53BBF40939D54123");
            BigInteger valueOf = BigInteger.valueOf(1L);
            e e10 = a.e(new e.f(g10, g11, g12, g13, valueOf));
            return new i(e10, a.d(e10, "0432C4AE2C1F1981195F9904466A39C9948FE30BBFF2660BE1715A4589334C74C7BC3736A2F4F6779C59BDCEE36B692153D0A9877CC62A474002DF32E52139F0A0"), g13, valueOf, null);
        }
    }

    /* loaded from: classes7.dex */
    static class b extends j {
        b() {
        }

        @Override // pj.j
        protected i a() {
            BigInteger g10 = a.g("BDB6F4FE3E8B1D9E0DA8C0D46F4C318CEFE4AFE3B6B8551F");
            BigInteger g11 = a.g("BB8E5E8FBC115E139FE6A814FE48AAA6F0ADA1AA5DF91985");
            BigInteger g12 = a.g("1854BEBDC31B21B7AEFC80AB0ECD10D5B1B3308E6DBF11C1");
            BigInteger g13 = a.g("BDB6F4FE3E8B1D9E0DA8C0D40FC962195DFAE76F56564677");
            BigInteger valueOf = BigInteger.valueOf(1L);
            e e10 = a.e(new e.f(g10, g11, g12, g13, valueOf));
            return new i(e10, a.d(e10, "044AD5F7048DE709AD51236DE65E4D4B482C836DC6E410664002BB3A02D4AAADACAE24817A4CA3A1B014B5270432DB27D2"), g13, valueOf, null);
        }
    }

    static {
        f("wapip192v1", bj.b.J, f1320b);
        f("sm2p256v1", bj.b.F, f1319a);
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
        f1321c.put(org.bouncycastle.util.i.f(str), nVar);
        f1323e.put(nVar, str);
        f1322d.put(nVar, jVar);
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
        j jVar = (j) f1322d.get(nVar);
        if (jVar == null) {
            return null;
        }
        return jVar.b();
    }

    public static String j(n nVar) {
        return (String) f1323e.get(nVar);
    }

    public static n k(String str) {
        return (n) f1321c.get(org.bouncycastle.util.i.f(str));
    }
}
