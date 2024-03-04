package fk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(i iVar) {
        if (iVar.w()) {
            return iVar;
        }
        throw new IllegalStateException("Invalid result");
    }

    public static i b(e eVar, i iVar) {
        if (eVar.j(iVar.i())) {
            return eVar.t(iVar);
        }
        throw new IllegalArgumentException("Point must be on the same curve");
    }

    public static boolean c(e eVar) {
        return d(eVar.p());
    }

    public static boolean d(mk.a aVar) {
        return aVar.a() > 1 && aVar.b().equals(d.f39763c) && (aVar instanceof mk.f);
    }

    public static boolean e(e eVar) {
        return f(eVar.p());
    }

    public static boolean f(mk.a aVar) {
        return aVar.a() == 1;
    }

    public static void g(f[] fVarArr, int i9, int i10, f fVar) {
        f[] fVarArr2 = new f[i10];
        int i11 = 0;
        fVarArr2[0] = fVarArr[i9];
        while (true) {
            i11++;
            if (i11 >= i10) {
                break;
            }
            fVarArr2[i11] = fVarArr2[i11 - 1].j(fVarArr[i9 + i11]);
        }
        int i12 = i11 - 1;
        if (fVar != null) {
            fVarArr2[i12] = fVarArr2[i12].j(fVar);
        }
        f g10 = fVarArr2[i12].g();
        while (i12 > 0) {
            int i13 = i12 - 1;
            int i14 = i12 + i9;
            f fVar2 = fVarArr[i14];
            fVarArr[i14] = fVarArr2[i13].j(g10);
            g10 = g10.j(fVar2);
            i12 = i13;
        }
        fVarArr[i9] = g10;
    }

    public static i h(i iVar, BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        i r10 = iVar.i().r();
        int bitLength = abs.bitLength();
        if (bitLength > 0) {
            if (abs.testBit(0)) {
                r10 = iVar;
            }
            for (int i9 = 1; i9 < bitLength; i9++) {
                iVar = iVar.E();
                if (abs.testBit(i9)) {
                    r10 = r10.a(iVar);
                }
            }
        }
        return bigInteger.signum() < 0 ? r10.x() : r10;
    }
}
