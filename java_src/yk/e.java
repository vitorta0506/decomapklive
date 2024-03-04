package yk;

import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.asn1.n;
import rj.f;
import rj.h;
import rj.i;
/* loaded from: classes7.dex */
class e {

    /* renamed from: a  reason: collision with root package name */
    static final oj.a f60276a;

    /* renamed from: b  reason: collision with root package name */
    static final oj.a f60277b;

    /* renamed from: c  reason: collision with root package name */
    static final oj.a f60278c;

    /* renamed from: d  reason: collision with root package name */
    static final oj.a f60279d;

    /* renamed from: e  reason: collision with root package name */
    static final oj.a f60280e;

    /* renamed from: f  reason: collision with root package name */
    static final oj.a f60281f;

    /* renamed from: g  reason: collision with root package name */
    static final oj.a f60282g;

    /* renamed from: h  reason: collision with root package name */
    static final oj.a f60283h;

    /* renamed from: i  reason: collision with root package name */
    static final Map f60284i;

    static {
        n nVar = pk.e.X;
        f60276a = new oj.a(nVar);
        n nVar2 = pk.e.Y;
        f60277b = new oj.a(nVar2);
        f60278c = new oj.a(ej.b.f39463j);
        f60279d = new oj.a(ej.b.f39459h);
        f60280e = new oj.a(ej.b.f39449c);
        f60281f = new oj.a(ej.b.f39453e);
        f60282g = new oj.a(ej.b.f39469m);
        f60283h = new oj.a(ej.b.f39471n);
        HashMap hashMap = new HashMap();
        f60284i = hashMap;
        hashMap.put(nVar, org.bouncycastle.util.e.d(5));
        hashMap.put(nVar2, org.bouncycastle.util.e.d(6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static org.bouncycastle.crypto.e a(n nVar) {
        if (nVar.F(ej.b.f39449c)) {
            return new f();
        }
        if (nVar.F(ej.b.f39453e)) {
            return new h();
        }
        if (nVar.F(ej.b.f39469m)) {
            return new i(128);
        }
        if (nVar.F(ej.b.f39471n)) {
            return new i(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + nVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static oj.a b(int i9) {
        if (i9 != 5) {
            if (i9 == 6) {
                return f60277b;
            }
            throw new IllegalArgumentException("unknown security category: " + i9);
        }
        return f60276a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(oj.a aVar) {
        return ((Integer) f60284i.get(aVar.x())).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static oj.a d(String str) {
        if (str.equals("SHA3-256")) {
            return f60278c;
        }
        if (str.equals("SHA-512/256")) {
            return f60279d;
        }
        throw new IllegalArgumentException("unknown tree digest: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(pk.i iVar) {
        oj.a y10 = iVar.y();
        if (y10.x().F(f60278c.x())) {
            return "SHA3-256";
        }
        if (y10.x().F(f60279d.x())) {
            return "SHA-512/256";
        }
        throw new IllegalArgumentException("unknown tree digest: " + y10.x());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static oj.a f(String str) {
        if (str.equals("SHA-256")) {
            return f60280e;
        }
        if (str.equals("SHA-512")) {
            return f60281f;
        }
        if (str.equals("SHAKE128")) {
            return f60282g;
        }
        if (str.equals("SHAKE256")) {
            return f60283h;
        }
        throw new IllegalArgumentException("unknown tree digest: " + str);
    }
}
