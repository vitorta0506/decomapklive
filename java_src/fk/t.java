package fk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public abstract class t {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f39835a = {13, 41, 121, 337, 897, 2305};

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f39836b = new byte[0];

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f39837c = new int[0];

    /* renamed from: d  reason: collision with root package name */
    private static final i[] f39838d = new i[0];

    /* loaded from: classes7.dex */
    static class a implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f39839a;

        a(int i9) {
            this.f39839a = i9;
        }

        @Override // fk.o
        public p a(p pVar) {
            s sVar = pVar instanceof s ? (s) pVar : null;
            if (sVar != null && sVar.a() == this.f39839a) {
                sVar.i(0);
                return sVar;
            }
            s sVar2 = new s();
            sVar2.i(0);
            sVar2.f(this.f39839a);
            if (sVar != null) {
                sVar2.g(sVar.b());
                sVar2.h(sVar.c());
                sVar2.j(sVar.d());
                sVar2.k(sVar.e());
            }
            return sVar2;
        }
    }

    public static void a(i iVar) {
        e i9 = iVar.i();
        if (i9 == null) {
            return;
        }
        BigInteger s10 = i9.s();
        i9.w(iVar, "bc_wnaf", new a(Math.min(16, b(s10 == null ? i9.q() + 1 : s10.bitLength()) + 3)));
    }

    public static int b(int i9) {
        return c(i9, f39835a, 16);
    }

    public static int c(int i9, int[] iArr, int i10) {
        int i11 = 0;
        while (i11 < iArr.length && i9 >= iArr[i11]) {
            i11++;
        }
        return Math.max(2, Math.min(i10, i11 + 2));
    }
}
