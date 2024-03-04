package kj;

import fk.i;
import java.math.BigInteger;
import java.util.Random;
/* loaded from: classes7.dex */
public abstract class e {
    public static i a(fk.e eVar, byte[] bArr) {
        fk.f k10 = eVar.k(BigInteger.valueOf(bArr[bArr.length - 1] & 1));
        fk.f k11 = eVar.k(new BigInteger(1, bArr));
        if (!d(k11).equals(eVar.l())) {
            k11 = k11.b();
        }
        fk.f fVar = null;
        if (k11.i()) {
            fVar = eVar.m().n();
        } else {
            fk.f c10 = c(eVar, k11.o().g().j(eVar.m()).a(eVar.l()).a(k11));
            if (c10 != null) {
                if (!d(c10).equals(k10)) {
                    c10 = c10.b();
                }
                fVar = k11.j(c10);
            }
        }
        if (fVar != null) {
            return eVar.z(k11.t(), fVar.t());
        }
        throw new IllegalArgumentException("Invalid point compression");
    }

    public static byte[] b(i iVar) {
        i y10 = iVar.y();
        fk.f f10 = y10.f();
        byte[] e10 = f10.e();
        if (!f10.i()) {
            if (d(y10.g().d(f10)).h()) {
                int length = e10.length - 1;
                e10[length] = (byte) (e10[length] | 1);
            } else {
                int length2 = e10.length - 1;
                e10[length2] = (byte) (e10[length2] & 254);
            }
        }
        return e10;
    }

    private static fk.f c(fk.e eVar, fk.f fVar) {
        fk.f fVar2;
        if (fVar.i()) {
            return fVar;
        }
        fk.f k10 = eVar.k(fk.d.f39761a);
        Random random = new Random();
        int f10 = fVar.f();
        do {
            fk.f k11 = eVar.k(new BigInteger(f10, random));
            fk.f fVar3 = fVar;
            fVar2 = k10;
            for (int i9 = 1; i9 <= f10 - 1; i9++) {
                fk.f o10 = fVar3.o();
                fVar2 = fVar2.o().a(o10.j(k11));
                fVar3 = o10.a(fVar);
            }
            if (!fVar3.i()) {
                return null;
            }
        } while (fVar2.o().a(fVar2).i());
        return fVar2;
    }

    private static fk.f d(fk.f fVar) {
        fk.f fVar2 = fVar;
        for (int i9 = 1; i9 < fVar.f(); i9++) {
            fVar2 = fVar2.o().a(fVar);
        }
        return fVar2;
    }
}
