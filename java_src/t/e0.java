package t;

import android.util.SparseArray;
/* loaded from: classes.dex */
public class e0 implements p {

    /* renamed from: a  reason: collision with root package name */
    private SparseArray<o> f57990a = new SparseArray<>();

    public e0() {
        d dVar = new d();
        h0 h0Var = new h0();
        a aVar = new a();
        this.f57990a.put(48, h0Var);
        this.f57990a.put(80, aVar);
        this.f57990a.put(17, dVar);
        this.f57990a.put(16, dVar);
    }

    @Override // t.p
    public o a(int i9) {
        o oVar = this.f57990a.get(i9);
        return oVar == null ? this.f57990a.get(16) : oVar;
    }
}
