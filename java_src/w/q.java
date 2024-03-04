package w;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class q extends a {
    @Override // w.m
    @NonNull
    public n a() {
        n eVar = new e();
        int i9 = this.f59252a;
        if (i9 != 0) {
            eVar = new d(eVar, i9);
        }
        int i10 = this.f59253b;
        return i10 != 0 ? new c(eVar, i10) : eVar;
    }

    @Override // w.m
    @NonNull
    public n b() {
        k kVar = new k();
        int i9 = this.f59252a;
        return i9 != 0 ? new j(kVar, i9) : kVar;
    }
}
