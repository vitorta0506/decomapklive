package fk;

import java.math.BigInteger;
/* loaded from: classes7.dex */
public class m {

    /* loaded from: classes7.dex */
    static class a implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f39816a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ i f39817b;

        a(e eVar, i iVar) {
            this.f39816a = eVar;
            this.f39817b = iVar;
        }

        private boolean b(l lVar, int i9) {
            return lVar != null && c(lVar.a(), i9);
        }

        private boolean c(g gVar, int i9) {
            return gVar != null && gVar.getSize() >= i9;
        }

        @Override // fk.o
        public p a(p pVar) {
            l lVar = pVar instanceof l ? (l) pVar : null;
            int a10 = m.a(this.f39816a);
            int i9 = a10 > 250 ? 6 : 5;
            int i10 = 1 << i9;
            if (b(lVar, i10)) {
                return lVar;
            }
            int i11 = ((a10 + i9) - 1) / i9;
            i[] iVarArr = new i[i9 + 1];
            iVarArr[0] = this.f39817b;
            for (int i12 = 1; i12 < i9; i12++) {
                iVarArr[i12] = iVarArr[i12 - 1].D(i11);
            }
            iVarArr[i9] = iVarArr[0].C(iVarArr[1]);
            this.f39816a.u(iVarArr);
            i[] iVarArr2 = new i[i10];
            iVarArr2[0] = iVarArr[0];
            for (int i13 = i9 - 1; i13 >= 0; i13--) {
                i iVar = iVarArr[i13];
                int i14 = 1 << i13;
                for (int i15 = i14; i15 < i10; i15 += i14 << 1) {
                    iVarArr2[i15] = iVarArr2[i15 - i14].a(iVar);
                }
            }
            this.f39816a.u(iVarArr2);
            l lVar2 = new l();
            lVar2.d(this.f39816a.e(iVarArr2, 0, i10));
            lVar2.e(iVarArr[i9]);
            lVar2.f(i9);
            return lVar2;
        }
    }

    public static int a(e eVar) {
        BigInteger s10 = eVar.s();
        return s10 == null ? eVar.q() + 1 : s10.bitLength();
    }

    public static l b(i iVar) {
        e i9 = iVar.i();
        return (l) i9.w(iVar, "bc_fixed_point", new a(i9, iVar));
    }
}
