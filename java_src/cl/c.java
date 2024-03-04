package cl;

import java.lang.reflect.Array;
/* loaded from: classes7.dex */
public final class c {
    public static a a(b bVar, i iVar) {
        int d10 = bVar.d();
        int i9 = 1 << d10;
        int g10 = iVar.g();
        int[][] iArr = (int[][]) Array.newInstance(int.class, g10, i9);
        int[][] iArr2 = (int[][]) Array.newInstance(int.class, g10, i9);
        for (int i10 = 0; i10 < i9; i10++) {
            iArr2[0][i10] = bVar.f(iVar.e(i10));
        }
        for (int i11 = 1; i11 < g10; i11++) {
            for (int i12 = 0; i12 < i9; i12++) {
                iArr2[i11][i12] = bVar.h(iArr2[i11 - 1][i12], i12);
            }
        }
        for (int i13 = 0; i13 < g10; i13++) {
            for (int i14 = 0; i14 < i9; i14++) {
                for (int i15 = 0; i15 <= i13; i15++) {
                    iArr[i13][i14] = bVar.a(iArr[i13][i14], bVar.h(iArr2[i15][i14], iVar.f((g10 + i15) - i13)));
                }
            }
        }
        int[][] iArr3 = (int[][]) Array.newInstance(int.class, g10 * d10, (i9 + 31) >>> 5);
        for (int i16 = 0; i16 < i9; i16++) {
            int i17 = i16 >>> 5;
            int i18 = 1 << (i16 & 31);
            for (int i19 = 0; i19 < g10; i19++) {
                int i20 = iArr[i19][i16];
                for (int i21 = 0; i21 < d10; i21++) {
                    if (((i20 >>> i21) & 1) != 0) {
                        int[] iArr4 = iArr3[(((i19 + 1) * d10) - i21) - 1];
                        iArr4[i17] = iArr4[i17] ^ i18;
                    }
                }
            }
        }
        return new a(i9, iArr3);
    }
}
