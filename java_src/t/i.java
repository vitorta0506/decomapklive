package t;

import android.util.SparseArray;
/* loaded from: classes.dex */
public class i implements p {

    /* renamed from: a  reason: collision with root package name */
    private SparseArray<o> f57993a = new SparseArray<>();

    public i() {
        c cVar = new c();
        this.f57993a.put(17, cVar);
        this.f57993a.put(1, cVar);
        this.f57993a.put(3, new x());
        this.f57993a.put(5, new d0());
    }

    @Override // t.p
    public o a(int i9) {
        o oVar = this.f57993a.get(i9);
        return oVar == null ? this.f57993a.get(1) : oVar;
    }
}
