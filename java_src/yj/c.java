package yj;

import fk.i;
import fk.k;
import java.math.BigInteger;
import org.bouncycastle.asn1.n;
import pj.g;
import vj.l;
import vj.o;
/* loaded from: classes7.dex */
public class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] a(int[] iArr) {
        int[] iArr2 = new int[3];
        if (iArr.length == 1) {
            iArr2[0] = iArr[0];
        } else if (iArr.length != 3) {
            throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
        } else {
            if (iArr[0] < iArr[1] && iArr[0] < iArr[2]) {
                iArr2[0] = iArr[0];
                if (iArr[1] < iArr[2]) {
                    iArr2[1] = iArr[1];
                    iArr2[2] = iArr[2];
                } else {
                    iArr2[1] = iArr[2];
                    iArr2[2] = iArr[1];
                }
            } else if (iArr[1] < iArr[2]) {
                iArr2[0] = iArr[1];
                if (iArr[0] < iArr[2]) {
                    iArr2[1] = iArr[0];
                    iArr2[2] = iArr[2];
                } else {
                    iArr2[1] = iArr[2];
                    iArr2[2] = iArr[0];
                }
            } else {
                iArr2[0] = iArr[2];
                if (iArr[0] < iArr[1]) {
                    iArr2[1] = iArr[0];
                    iArr2[2] = iArr[1];
                } else {
                    iArr2[1] = iArr[1];
                    iArr2[2] = iArr[0];
                }
            }
        }
        return iArr2;
    }

    public static String b(i iVar, ek.d dVar) {
        fk.e a10 = dVar.a();
        return a10 != null ? new org.bouncycastle.util.d(org.bouncycastle.util.a.l(iVar.l(false), a10.l().e(), a10.m().e(), dVar.b().l(false))).toString() : new org.bouncycastle.util.d(iVar.l(false)).toString();
    }

    public static String c(n nVar) {
        return pj.d.c(nVar);
    }

    public static l d(zj.b bVar, ek.d dVar) {
        if (dVar instanceof ek.b) {
            ek.b bVar2 = (ek.b) dVar;
            return new o(g(bVar2.f()), bVar2.a(), bVar2.b(), bVar2.d(), bVar2.c(), bVar2.e());
        } else if (dVar == null) {
            ek.d b10 = bVar.b();
            return new l(b10.a(), b10.b(), b10.d(), b10.c(), b10.e());
        } else {
            return new l(dVar.a(), dVar.b(), dVar.d(), dVar.c(), dVar.e());
        }
    }

    public static l e(zj.b bVar, g gVar) {
        l lVar;
        if (gVar.B()) {
            n P = n.P(gVar.y());
            pj.i f10 = f(P);
            if (f10 == null) {
                f10 = (pj.i) bVar.a().get(P);
            }
            return new o(P, f10);
        }
        if (gVar.z()) {
            ek.d b10 = bVar.b();
            lVar = new l(b10.a(), b10.b(), b10.d(), b10.c(), b10.e());
        } else {
            pj.i B = pj.i.B(gVar.y());
            lVar = new l(B.x(), B.y(), B.F(), B.z(), B.G());
        }
        return lVar;
    }

    public static pj.i f(n nVar) {
        pj.i j10 = sj.a.j(nVar);
        return j10 == null ? pj.d.b(nVar) : j10;
    }

    public static n g(String str) {
        int indexOf = str.indexOf(32);
        if (indexOf > 0) {
            str = str.substring(indexOf + 1);
        }
        try {
            if (str.charAt(0) >= '0' && str.charAt(0) <= '2') {
                return new n(str);
            }
        } catch (IllegalArgumentException unused) {
        }
        return pj.d.d(str);
    }

    public static int h(zj.b bVar, BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger == null) {
            ek.d b10 = bVar.b();
            return b10 == null ? bigInteger2.bitLength() : b10.d().bitLength();
        }
        return bigInteger.bitLength();
    }

    public static String i(String str, BigInteger bigInteger, ek.d dVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = org.bouncycastle.util.i.d();
        i y10 = new k().b(dVar.b(), bigInteger).y();
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(b(y10, dVar));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("            X: ");
        stringBuffer.append(y10.f().t().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(y10.g().t().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }

    public static String j(String str, i iVar, ek.d dVar) {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = org.bouncycastle.util.i.d();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(b(iVar, dVar));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("            X: ");
        stringBuffer.append(iVar.f().t().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(iVar.g().t().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
