package f;

import java.util.List;
/* loaded from: classes.dex */
public class f extends g<Integer> {
    public f(List<n.a<Integer>> list) {
        super(list);
    }

    public int p() {
        return q(b(), d());
    }

    int q(n.a<Integer> aVar, float f10) {
        Integer num;
        if (aVar.f55176b != null && aVar.f55177c != null) {
            n.c<A> cVar = this.f39512e;
            if (cVar != 0 && (num = (Integer) cVar.b(aVar.f55181g, aVar.f55182h.floatValue(), aVar.f55176b, aVar.f55177c, f10, e(), f())) != null) {
                return num.intValue();
            }
            return m.g.l(aVar.g(), aVar.d(), f10);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.a
    /* renamed from: r */
    public Integer i(n.a<Integer> aVar, float f10) {
        return Integer.valueOf(q(aVar, f10));
    }
}
