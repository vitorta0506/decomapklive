package rk;
/* loaded from: classes7.dex */
class h {
    public static k a(n nVar, e eVar, int i9, byte[] bArr, byte[] bArr2) throws IllegalArgumentException {
        if (bArr2 == null || bArr2.length < nVar.d()) {
            throw new IllegalArgumentException("root seed is less than " + nVar.d());
        }
        return new k(nVar, eVar, i9, bArr, 1 << nVar.c(), bArr2);
    }

    public static m b(i iVar) {
        return new m(iVar.i().d(), o.c(iVar.i(), iVar.j(), iVar.g()), iVar.k(), iVar.h());
    }

    public static m c(k kVar, byte[] bArr) {
        i f10 = kVar.f();
        f10.c(bArr, 0, bArr.length);
        return b(f10);
    }
}
