package yj;

import fk.e;
import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.s;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import pj.g;
import pj.i;
import vj.l;
/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static Map f60272a = new HashMap();

    static {
        Enumeration l10 = sj.a.l();
        while (l10.hasMoreElements()) {
            String str = (String) l10.nextElement();
            i a10 = pj.d.a(str);
            if (a10 != null) {
                f60272a.put(a10.x(), sj.a.i(str).x());
            }
        }
        fk.e x10 = sj.a.i("Curve25519").x();
        f60272a.put(new e.f(x10.p().b(), x10.l().t(), x10.m().t(), x10.s(), x10.n()), x10);
    }

    public static fk.e a(EllipticCurve ellipticCurve) {
        ECField field = ellipticCurve.getField();
        BigInteger a10 = ellipticCurve.getA();
        BigInteger b10 = ellipticCurve.getB();
        if (field instanceof ECFieldFp) {
            e.f fVar = new e.f(((ECFieldFp) field).getP(), a10, b10);
            return f60272a.containsKey(fVar) ? (fk.e) f60272a.get(fVar) : fVar;
        }
        ECFieldF2m eCFieldF2m = (ECFieldF2m) field;
        int m10 = eCFieldF2m.getM();
        int[] a11 = c.a(eCFieldF2m.getMidTermsOfReductionPolynomial());
        return new e.C0426e(m10, a11[0], a11[1], a11[2], a10, b10);
    }

    public static EllipticCurve b(fk.e eVar, byte[] bArr) {
        return new EllipticCurve(c(eVar.p()), eVar.l().t(), eVar.m().t(), null);
    }

    public static ECField c(mk.a aVar) {
        if (fk.c.f(aVar)) {
            return new ECFieldFp(aVar.b());
        }
        mk.e c10 = ((mk.f) aVar).c();
        int[] a10 = c10.a();
        return new ECFieldF2m(c10.b(), org.bouncycastle.util.a.C(org.bouncycastle.util.a.n(a10, 1, a10.length - 1)));
    }

    public static fk.i d(fk.e eVar, ECPoint eCPoint) {
        return eVar.f(eCPoint.getAffineX(), eCPoint.getAffineY());
    }

    public static fk.i e(ECParameterSpec eCParameterSpec, ECPoint eCPoint) {
        return d(a(eCParameterSpec.getCurve()), eCPoint);
    }

    public static ECPoint f(fk.i iVar) {
        fk.i y10 = iVar.y();
        return new ECPoint(y10.f().t(), y10.g().t());
    }

    public static ek.d g(ECParameterSpec eCParameterSpec) {
        fk.e a10 = a(eCParameterSpec.getCurve());
        fk.i d10 = d(a10, eCParameterSpec.getGenerator());
        BigInteger order = eCParameterSpec.getOrder();
        BigInteger valueOf = BigInteger.valueOf(eCParameterSpec.getCofactor());
        byte[] seed = eCParameterSpec.getCurve().getSeed();
        return eCParameterSpec instanceof ek.c ? new ek.b(((ek.c) eCParameterSpec).a(), a10, d10, order, valueOf, seed) : new ek.d(a10, d10, order, valueOf, seed);
    }

    public static ECParameterSpec h(EllipticCurve ellipticCurve, ek.d dVar) {
        ECPoint f10 = f(dVar.b());
        return dVar instanceof ek.b ? new ek.c(((ek.b) dVar).f(), ellipticCurve, f10, dVar.d(), dVar.c()) : new ECParameterSpec(ellipticCurve, f10, dVar.d(), dVar.c().intValue());
    }

    public static ECParameterSpec i(g gVar, fk.e eVar) {
        ECParameterSpec cVar;
        if (gVar.B()) {
            n nVar = (n) gVar.y();
            i f10 = c.f(nVar);
            if (f10 == null) {
                Map a10 = BouncyCastleProvider.CONFIGURATION.a();
                if (!a10.isEmpty()) {
                    f10 = (i) a10.get(nVar);
                }
            }
            return new ek.c(c.c(nVar), b(eVar, f10.G()), f(f10.y()), f10.F(), f10.z());
        } else if (gVar.z()) {
            return null;
        } else {
            s K = s.K(gVar.y());
            if (K.size() > 3) {
                i B = i.B(K);
                EllipticCurve b10 = b(eVar, B.G());
                cVar = B.z() != null ? new ECParameterSpec(b10, f(B.y()), B.F(), B.z().intValue()) : new ECParameterSpec(b10, f(B.y()), B.F(), 1);
            } else {
                zi.e z10 = zi.e.z(K);
                ek.b a11 = ck.a.a(zi.b.f(z10.B()));
                cVar = new ek.c(zi.b.f(z10.B()), b(a11.a(), a11.e()), f(a11.b()), a11.d(), a11.c());
            }
            return cVar;
        }
    }

    public static ECParameterSpec j(i iVar) {
        return new ECParameterSpec(b(iVar.x(), null), f(iVar.y()), iVar.F(), iVar.z().intValue());
    }

    public static fk.e k(zj.b bVar, g gVar) {
        Set c10 = bVar.c();
        if (!gVar.B()) {
            if (gVar.z()) {
                return bVar.b().a();
            }
            s K = s.K(gVar.y());
            if (c10.isEmpty()) {
                return (K.size() > 3 ? i.B(K) : zi.b.e(n.P(K.M(0)))).x();
            }
            throw new IllegalStateException("encoded parameters not acceptable");
        }
        n P = n.P(gVar.y());
        if (c10.isEmpty() || c10.contains(P)) {
            i f10 = c.f(P);
            if (f10 == null) {
                f10 = (i) bVar.a().get(P);
            }
            return f10.x();
        }
        throw new IllegalStateException("named curve not acceptable");
    }

    public static l l(zj.b bVar, ECParameterSpec eCParameterSpec) {
        if (eCParameterSpec == null) {
            ek.d b10 = bVar.b();
            return new l(b10.a(), b10.b(), b10.d(), b10.c(), b10.e());
        }
        return c.d(bVar, g(eCParameterSpec));
    }
}
