package f;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;
/* loaded from: classes.dex */
public class j extends g<PointF> {

    /* renamed from: i  reason: collision with root package name */
    private final PointF f39537i;

    /* renamed from: j  reason: collision with root package name */
    private final float[] f39538j;

    /* renamed from: k  reason: collision with root package name */
    private final PathMeasure f39539k;

    /* renamed from: l  reason: collision with root package name */
    private i f39540l;

    public j(List<? extends n.a<PointF>> list) {
        super(list);
        this.f39537i = new PointF();
        this.f39538j = new float[2];
        this.f39539k = new PathMeasure();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // f.a
    /* renamed from: p */
    public PointF i(n.a<PointF> aVar, float f10) {
        PointF pointF;
        i iVar = (i) aVar;
        Path j10 = iVar.j();
        if (j10 == null) {
            return aVar.f55176b;
        }
        n.c<A> cVar = this.f39512e;
        if (cVar == 0 || (pointF = (PointF) cVar.b(iVar.f55181g, iVar.f55182h.floatValue(), iVar.f55176b, iVar.f55177c, e(), f10, f())) == null) {
            if (this.f39540l != iVar) {
                this.f39539k.setPath(j10, false);
                this.f39540l = iVar;
            }
            PathMeasure pathMeasure = this.f39539k;
            pathMeasure.getPosTan(f10 * pathMeasure.getLength(), this.f39538j, null);
            PointF pointF2 = this.f39537i;
            float[] fArr = this.f39538j;
            pointF2.set(fArr[0], fArr[1]);
            return this.f39537i;
        }
        return pointF;
    }
}
