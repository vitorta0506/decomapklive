package f;

import java.util.List;
/* loaded from: classes.dex */
public class l extends g<n.d> {

    /* renamed from: i  reason: collision with root package name */
    private final n.d f39542i;

    public l(List<n.a<n.d>> list) {
        super(list);
        this.f39542i = new n.d();
    }

    @Override // f.a
    /* renamed from: p */
    public n.d i(n.a<n.d> aVar, float f10) {
        n.d dVar;
        n.d dVar2;
        n.d dVar3 = aVar.f55176b;
        if (dVar3 != null && (dVar = aVar.f55177c) != null) {
            n.d dVar4 = dVar3;
            n.d dVar5 = dVar;
            n.c<A> cVar = this.f39512e;
            if (cVar == 0 || (dVar2 = (n.d) cVar.b(aVar.f55181g, aVar.f55182h.floatValue(), dVar4, dVar5, f10, e(), f())) == null) {
                this.f39542i.d(m.g.k(dVar4.b(), dVar5.b(), f10), m.g.k(dVar4.c(), dVar5.c(), f10));
                return this.f39542i;
            }
            return dVar2;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
