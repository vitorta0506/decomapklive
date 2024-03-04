package ug;

import java.util.Arrays;
/* loaded from: classes5.dex */
final class g {

    /* renamed from: a  reason: collision with root package name */
    private r<? extends q<?>>[] f58463a;

    /* renamed from: b  reason: collision with root package name */
    private int f58464b = 2;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(r<? extends q<?>> rVar, r<? extends q<?>> rVar2) {
        this.f58463a = r1;
        r<? extends q<?>>[] rVarArr = {rVar, rVar2};
    }

    public void a(r<? extends q<?>> rVar) {
        r<? extends q<?>>[] rVarArr = this.f58463a;
        int i9 = this.f58464b;
        if (i9 == rVarArr.length) {
            rVarArr = (r[]) Arrays.copyOf(rVarArr, i9 << 1);
            this.f58463a = rVarArr;
        }
        rVarArr[i9] = rVar;
        this.f58464b = i9 + 1;
    }

    public r<? extends q<?>>[] b() {
        return this.f58463a;
    }

    public void c(r<? extends q<?>> rVar) {
        r<? extends q<?>>[] rVarArr = this.f58463a;
        int i9 = this.f58464b;
        for (int i10 = 0; i10 < i9; i10++) {
            if (rVarArr[i10] == rVar) {
                int i11 = (i9 - i10) - 1;
                if (i11 > 0) {
                    System.arraycopy(rVarArr, i10 + 1, rVarArr, i10, i11);
                }
                int i12 = i9 - 1;
                rVarArr[i12] = null;
                this.f58464b = i12;
                return;
            }
        }
    }

    public int d() {
        return this.f58464b;
    }
}
