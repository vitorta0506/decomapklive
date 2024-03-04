package e;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import f.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class g implements e, a.b, k {

    /* renamed from: a  reason: collision with root package name */
    private final Path f38203a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f38204b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f38205c;

    /* renamed from: d  reason: collision with root package name */
    private final String f38206d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f38207e;

    /* renamed from: f  reason: collision with root package name */
    private final List<m> f38208f;

    /* renamed from: g  reason: collision with root package name */
    private final f.a<Integer, Integer> f38209g;

    /* renamed from: h  reason: collision with root package name */
    private final f.a<Integer, Integer> f38210h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private f.a<ColorFilter, ColorFilter> f38211i;

    /* renamed from: j  reason: collision with root package name */
    private final com.airbnb.lottie.f f38212j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private f.a<Float, Float> f38213k;

    /* renamed from: l  reason: collision with root package name */
    float f38214l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private f.c f38215m;

    public g(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, j.i iVar) {
        Path path = new Path();
        this.f38203a = path;
        this.f38204b = new d.a(1);
        this.f38208f = new ArrayList();
        this.f38205c = aVar;
        this.f38206d = iVar.d();
        this.f38207e = iVar.f();
        this.f38212j = fVar;
        if (aVar.v() != null) {
            f.a<Float, Float> a10 = aVar.v().a().a();
            this.f38213k = a10;
            a10.a(this);
            aVar.i(this.f38213k);
        }
        if (aVar.x() != null) {
            this.f38215m = new f.c(this, aVar, aVar.x());
        }
        if (iVar.b() != null && iVar.e() != null) {
            path.setFillType(iVar.c());
            f.a<Integer, Integer> a11 = iVar.b().a();
            this.f38209g = a11;
            a11.a(this);
            aVar.i(a11);
            f.a<Integer, Integer> a12 = iVar.e().a();
            this.f38210h = a12;
            a12.a(this);
            aVar.i(a12);
            return;
        }
        this.f38209g = null;
        this.f38210h = null;
    }

    @Override // f.a.b
    public void a() {
        this.f38212j.invalidateSelf();
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        for (int i9 = 0; i9 < list2.size(); i9++) {
            c cVar = list2.get(i9);
            if (cVar instanceof m) {
                this.f38208f.add((m) cVar);
            }
        }
    }

    @Override // h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        f.c cVar2;
        f.c cVar3;
        f.c cVar4;
        f.c cVar5;
        f.c cVar6;
        if (t10 == com.airbnb.lottie.k.f3705a) {
            this.f38209g.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3708d) {
            this.f38210h.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.K) {
            f.a<ColorFilter, ColorFilter> aVar = this.f38211i;
            if (aVar != null) {
                this.f38205c.F(aVar);
            }
            if (cVar == null) {
                this.f38211i = null;
                return;
            }
            f.q qVar = new f.q(cVar);
            this.f38211i = qVar;
            qVar.a(this);
            this.f38205c.i(this.f38211i);
        } else if (t10 == com.airbnb.lottie.k.f3714j) {
            f.a<Float, Float> aVar2 = this.f38213k;
            if (aVar2 != null) {
                aVar2.n(cVar);
                return;
            }
            f.q qVar2 = new f.q(cVar);
            this.f38213k = qVar2;
            qVar2.a(this);
            this.f38205c.i(this.f38213k);
        } else if (t10 == com.airbnb.lottie.k.f3709e && (cVar6 = this.f38215m) != null) {
            cVar6.c(cVar);
        } else if (t10 == com.airbnb.lottie.k.G && (cVar5 = this.f38215m) != null) {
            cVar5.f(cVar);
        } else if (t10 == com.airbnb.lottie.k.H && (cVar4 = this.f38215m) != null) {
            cVar4.d(cVar);
        } else if (t10 == com.airbnb.lottie.k.I && (cVar3 = this.f38215m) != null) {
            cVar3.e(cVar);
        } else if (t10 != com.airbnb.lottie.k.J || (cVar2 = this.f38215m) == null) {
        } else {
            cVar2.g(cVar);
        }
    }

    @Override // e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        this.f38203a.reset();
        for (int i9 = 0; i9 < this.f38208f.size(); i9++) {
            this.f38203a.addPath(this.f38208f.get(i9).getPath(), matrix);
        }
        this.f38203a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        m.g.m(dVar, i9, list, dVar2, this);
    }

    @Override // e.e
    public void g(Canvas canvas, Matrix matrix, int i9) {
        if (this.f38207e) {
            return;
        }
        com.airbnb.lottie.c.a("FillContent#draw");
        this.f38204b.setColor(((f.b) this.f38209g).p());
        this.f38204b.setAlpha(m.g.d((int) ((((i9 / 255.0f) * this.f38210h.h().intValue()) / 100.0f) * 255.0f), 0, 255));
        f.a<ColorFilter, ColorFilter> aVar = this.f38211i;
        if (aVar != null) {
            this.f38204b.setColorFilter(aVar.h());
        }
        f.a<Float, Float> aVar2 = this.f38213k;
        if (aVar2 != null) {
            float floatValue = aVar2.h().floatValue();
            if (floatValue == 0.0f) {
                this.f38204b.setMaskFilter(null);
            } else if (floatValue != this.f38214l) {
                this.f38204b.setMaskFilter(this.f38205c.w(floatValue));
            }
            this.f38214l = floatValue;
        }
        f.c cVar = this.f38215m;
        if (cVar != null) {
            cVar.b(this.f38204b);
        }
        this.f38203a.reset();
        for (int i10 = 0; i10 < this.f38208f.size(); i10++) {
            this.f38203a.addPath(this.f38208f.get(i10).getPath(), matrix);
        }
        canvas.drawPath(this.f38203a, this.f38204b);
        com.airbnb.lottie.c.b("FillContent#draw");
    }

    @Override // e.c
    public String getName() {
        return this.f38206d;
    }
}
