package f;

import java.util.List;
/* loaded from: classes.dex */
public class d extends g<Float> {
    public d(List<n.a<Float>> list) {
        super(list);
    }

    public float p() {
        return q(b(), d());
    }

    float q(n.a<Float> aVar, float f10) {
        Float f11;
        if (aVar.f55176b != null && aVar.f55177c != null) {
            n.c<A> cVar = this.f39512e;
            if (cVar != 0 && (f11 = (Float) cVar.b(aVar.f55181g, aVar.f55182h.floatValue(), aVar.f55176b, aVar.f55177c, f10, e(), f())) != null) {
                return f11.floatValue();
            }
            return m.g.k(aVar.f(), aVar.c(), f10);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.a
    /* renamed from: r */
    public Float i(n.a<Float> aVar, float f10) {
        return Float.valueOf(q(aVar, f10));
    }
}
