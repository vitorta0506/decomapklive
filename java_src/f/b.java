package f;

import java.util.List;
/* loaded from: classes.dex */
public class b extends g<Integer> {
    public b(List<n.a<Integer>> list) {
        super(list);
    }

    public int p() {
        return q(b(), d());
    }

    public int q(n.a<Integer> aVar, float f10) {
        Integer num;
        Integer num2 = aVar.f55176b;
        if (num2 != null && aVar.f55177c != null) {
            int intValue = num2.intValue();
            int intValue2 = aVar.f55177c.intValue();
            n.c<A> cVar = this.f39512e;
            if (cVar != 0 && (num = (Integer) cVar.b(aVar.f55181g, aVar.f55182h.floatValue(), Integer.valueOf(intValue), Integer.valueOf(intValue2), f10, e(), f())) != null) {
                return num.intValue();
            }
            return m.b.c(m.g.c(f10, 0.0f, 1.0f), intValue, intValue2);
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
