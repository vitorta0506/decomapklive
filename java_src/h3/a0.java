package h3;

import com.google.android.exoplayer2.n3;
import com.google.common.collect.ImmutableList;
import h3.u;
import java.util.Arrays;
import java.util.List;
import v2.o0;
import v2.q0;
/* loaded from: classes2.dex */
public final class a0 {
    public static n3 a(u.a aVar, v[] vVarArr) {
        List[] listArr = new List[vVarArr.length];
        for (int i9 = 0; i9 < vVarArr.length; i9++) {
            v vVar = vVarArr[i9];
            listArr[i9] = vVar != null ? ImmutableList.of(vVar) : ImmutableList.of();
        }
        return b(aVar, listArr);
    }

    public static n3 b(u.a aVar, List<? extends v>[] listArr) {
        boolean z10;
        ImmutableList.b bVar = new ImmutableList.b();
        for (int i9 = 0; i9 < aVar.d(); i9++) {
            q0 f10 = aVar.f(i9);
            List<? extends v> list = listArr[i9];
            for (int i10 = 0; i10 < f10.f58920a; i10++) {
                o0 b10 = f10.b(i10);
                boolean z11 = aVar.a(i9, i10, false) != 0;
                int i11 = b10.f58912a;
                int[] iArr = new int[i11];
                boolean[] zArr = new boolean[i11];
                for (int i12 = 0; i12 < b10.f58912a; i12++) {
                    iArr[i12] = aVar.g(i9, i10, i12);
                    int i13 = 0;
                    while (true) {
                        if (i13 >= list.size()) {
                            z10 = false;
                            break;
                        }
                        v vVar = list.get(i13);
                        if (vVar.h().equals(b10) && vVar.g(i12) != -1) {
                            z10 = true;
                            break;
                        }
                        i13++;
                    }
                    zArr[i12] = z10;
                }
                bVar.a(new n3.a(b10, z11, iArr, zArr));
            }
        }
        q0 h10 = aVar.h();
        for (int i14 = 0; i14 < h10.f58920a; i14++) {
            o0 b11 = h10.b(i14);
            int[] iArr2 = new int[b11.f58912a];
            Arrays.fill(iArr2, 0);
            bVar.a(new n3.a(b11, false, iArr2, new boolean[b11.f58912a]));
        }
        return new n3(bVar.j());
    }
}
