package w;

import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class b extends a {
    @Override // w.m
    @NonNull
    public n a() {
        n iVar = new i();
        int i9 = this.f59252a;
        if (i9 != 0) {
            iVar = new h(iVar, i9);
        }
        int i10 = this.f59253b;
        return i10 != 0 ? new c(iVar, i10) : iVar;
    }

    @Override // w.m
    @NonNull
    public n b() {
        g gVar = new g();
        int i9 = this.f59252a;
        return i9 != 0 ? new f(gVar, i9) : gVar;
    }
}
