package e;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.ShapeStroke;
/* loaded from: classes.dex */
public class r extends a {

    /* renamed from: r  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f38295r;

    /* renamed from: s  reason: collision with root package name */
    private final String f38296s;

    /* renamed from: t  reason: collision with root package name */
    private final boolean f38297t;

    /* renamed from: u  reason: collision with root package name */
    private final f.a<Integer, Integer> f38298u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private f.a<ColorFilter, ColorFilter> f38299v;

    public r(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, ShapeStroke shapeStroke) {
        super(fVar, aVar, shapeStroke.b().toPaintCap(), shapeStroke.e().toPaintJoin(), shapeStroke.g(), shapeStroke.i(), shapeStroke.j(), shapeStroke.f(), shapeStroke.d());
        this.f38295r = aVar;
        this.f38296s = shapeStroke.h();
        this.f38297t = shapeStroke.k();
        f.a<Integer, Integer> a10 = shapeStroke.c().a();
        this.f38298u = a10;
        a10.a(this);
        aVar.i(a10);
    }

    @Override // e.a, h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        super.c(t10, cVar);
        if (t10 == com.airbnb.lottie.k.f3706b) {
            this.f38298u.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.K) {
            f.a<ColorFilter, ColorFilter> aVar = this.f38299v;
            if (aVar != null) {
                this.f38295r.F(aVar);
            }
            if (cVar == null) {
                this.f38299v = null;
                return;
            }
            f.q qVar = new f.q(cVar);
            this.f38299v = qVar;
            qVar.a(this);
            this.f38295r.i(this.f38298u);
        }
    }

    @Override // e.a, e.e
    public void g(Canvas canvas, Matrix matrix, int i9) {
        if (this.f38297t) {
            return;
        }
        this.f38172i.setColor(((f.b) this.f38298u).p());
        f.a<ColorFilter, ColorFilter> aVar = this.f38299v;
        if (aVar != null) {
            this.f38172i.setColorFilter(aVar.h());
        }
        super.g(canvas, matrix, i9);
    }

    @Override // e.c
    public String getName() {
        return this.f38296s;
    }
}
