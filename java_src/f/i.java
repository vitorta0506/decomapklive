package f;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class i extends n.a<PointF> {
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Path f39535q;

    /* renamed from: r  reason: collision with root package name */
    private final n.a<PointF> f39536r;

    public i(com.airbnb.lottie.d dVar, n.a<PointF> aVar) {
        super(dVar, aVar.f55176b, aVar.f55177c, aVar.f55178d, aVar.f55179e, aVar.f55180f, aVar.f55181g, aVar.f55182h);
        this.f39536r = aVar;
        i();
    }

    public void i() {
        T t10;
        T t11;
        T t12 = this.f55177c;
        boolean z10 = (t12 == 0 || (t11 = this.f55176b) == 0 || !((PointF) t11).equals(((PointF) t12).x, ((PointF) t12).y)) ? false : true;
        T t13 = this.f55176b;
        if (t13 == 0 || (t10 = this.f55177c) == 0 || z10) {
            return;
        }
        n.a<PointF> aVar = this.f39536r;
        this.f39535q = m.h.d((PointF) t13, (PointF) t10, aVar.f55189o, aVar.f55190p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Path j() {
        return this.f39535q;
    }
}
