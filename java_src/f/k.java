package f;

import android.graphics.PointF;
import java.util.List;
/* loaded from: classes.dex */
public class k extends g<PointF> {

    /* renamed from: i  reason: collision with root package name */
    private final PointF f39541i;

    public k(List<n.a<PointF>> list) {
        super(list);
        this.f39541i = new PointF();
    }

    @Override // f.a
    /* renamed from: p */
    public PointF i(n.a<PointF> aVar, float f10) {
        return j(aVar, f10, f10, f10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // f.a
    /* renamed from: q */
    public PointF j(n.a<PointF> aVar, float f10, float f11, float f12) {
        PointF pointF;
        PointF pointF2;
        PointF pointF3 = aVar.f55176b;
        if (pointF3 != null && (pointF = aVar.f55177c) != null) {
            PointF pointF4 = pointF3;
            PointF pointF5 = pointF;
            n.c<A> cVar = this.f39512e;
            if (cVar == 0 || (pointF2 = (PointF) cVar.b(aVar.f55181g, aVar.f55182h.floatValue(), pointF4, pointF5, f10, e(), f())) == null) {
                PointF pointF6 = this.f39541i;
                float f13 = pointF4.x;
                float f14 = f13 + (f11 * (pointF5.x - f13));
                float f15 = pointF4.y;
                pointF6.set(f14, f15 + (f12 * (pointF5.y - f15)));
                return this.f39541i;
            }
            return pointF2;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
