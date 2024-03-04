package e;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import f.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class a implements a.b, k, e {

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.f f38168e;

    /* renamed from: f  reason: collision with root package name */
    protected final com.airbnb.lottie.model.layer.a f38169f;

    /* renamed from: h  reason: collision with root package name */
    private final float[] f38171h;

    /* renamed from: i  reason: collision with root package name */
    final Paint f38172i;

    /* renamed from: j  reason: collision with root package name */
    private final f.a<?, Float> f38173j;

    /* renamed from: k  reason: collision with root package name */
    private final f.a<?, Integer> f38174k;

    /* renamed from: l  reason: collision with root package name */
    private final List<f.a<?, Float>> f38175l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final f.a<?, Float> f38176m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private f.a<ColorFilter, ColorFilter> f38177n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private f.a<Float, Float> f38178o;

    /* renamed from: p  reason: collision with root package name */
    float f38179p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private f.c f38180q;

    /* renamed from: a  reason: collision with root package name */
    private final PathMeasure f38164a = new PathMeasure();

    /* renamed from: b  reason: collision with root package name */
    private final Path f38165b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final Path f38166c = new Path();

    /* renamed from: d  reason: collision with root package name */
    private final RectF f38167d = new RectF();

    /* renamed from: g  reason: collision with root package name */
    private final List<b> f38170g = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<m> f38181a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final s f38182b;

        private b(@Nullable s sVar) {
            this.f38181a = new ArrayList();
            this.f38182b = sVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, Paint.Cap cap, Paint.Join join, float f10, i.d dVar, i.b bVar, List<i.b> list, i.b bVar2) {
        d.a aVar2 = new d.a(1);
        this.f38172i = aVar2;
        this.f38179p = 0.0f;
        this.f38168e = fVar;
        this.f38169f = aVar;
        aVar2.setStyle(Paint.Style.STROKE);
        aVar2.setStrokeCap(cap);
        aVar2.setStrokeJoin(join);
        aVar2.setStrokeMiter(f10);
        this.f38174k = dVar.a();
        this.f38173j = bVar.a();
        if (bVar2 == null) {
            this.f38176m = null;
        } else {
            this.f38176m = bVar2.a();
        }
        this.f38175l = new ArrayList(list.size());
        this.f38171h = new float[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            this.f38175l.add(list.get(i9).a());
        }
        aVar.i(this.f38174k);
        aVar.i(this.f38173j);
        for (int i10 = 0; i10 < this.f38175l.size(); i10++) {
            aVar.i(this.f38175l.get(i10));
        }
        f.a<?, Float> aVar3 = this.f38176m;
        if (aVar3 != null) {
            aVar.i(aVar3);
        }
        this.f38174k.a(this);
        this.f38173j.a(this);
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f38175l.get(i11).a(this);
        }
        f.a<?, Float> aVar4 = this.f38176m;
        if (aVar4 != null) {
            aVar4.a(this);
        }
        if (aVar.v() != null) {
            f.a<Float, Float> a10 = aVar.v().a().a();
            this.f38178o = a10;
            a10.a(this);
            aVar.i(this.f38178o);
        }
        if (aVar.x() != null) {
            this.f38180q = new f.c(this, aVar, aVar.x());
        }
    }

    private void f(Matrix matrix) {
        com.airbnb.lottie.c.a("StrokeContent#applyDashPattern");
        if (this.f38175l.isEmpty()) {
            com.airbnb.lottie.c.b("StrokeContent#applyDashPattern");
            return;
        }
        float g10 = m.h.g(matrix);
        for (int i9 = 0; i9 < this.f38175l.size(); i9++) {
            this.f38171h[i9] = this.f38175l.get(i9).h().floatValue();
            if (i9 % 2 == 0) {
                float[] fArr = this.f38171h;
                if (fArr[i9] < 1.0f) {
                    fArr[i9] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f38171h;
                if (fArr2[i9] < 0.1f) {
                    fArr2[i9] = 0.1f;
                }
            }
            float[] fArr3 = this.f38171h;
            fArr3[i9] = fArr3[i9] * g10;
        }
        f.a<?, Float> aVar = this.f38176m;
        this.f38172i.setPathEffect(new DashPathEffect(this.f38171h, aVar == null ? 0.0f : g10 * aVar.h().floatValue()));
        com.airbnb.lottie.c.b("StrokeContent#applyDashPattern");
    }

    private void h(Canvas canvas, b bVar, Matrix matrix) {
        com.airbnb.lottie.c.a("StrokeContent#applyTrimPath");
        if (bVar.f38182b == null) {
            com.airbnb.lottie.c.b("StrokeContent#applyTrimPath");
            return;
        }
        this.f38165b.reset();
        for (int size = bVar.f38181a.size() - 1; size >= 0; size--) {
            this.f38165b.addPath(((m) bVar.f38181a.get(size)).getPath(), matrix);
        }
        this.f38164a.setPath(this.f38165b, false);
        float length = this.f38164a.getLength();
        while (this.f38164a.nextContour()) {
            length += this.f38164a.getLength();
        }
        float floatValue = (bVar.f38182b.f().h().floatValue() * length) / 360.0f;
        float floatValue2 = ((bVar.f38182b.h().h().floatValue() * length) / 100.0f) + floatValue;
        float floatValue3 = ((bVar.f38182b.e().h().floatValue() * length) / 100.0f) + floatValue;
        float f10 = 0.0f;
        for (int size2 = bVar.f38181a.size() - 1; size2 >= 0; size2--) {
            this.f38166c.set(((m) bVar.f38181a.get(size2)).getPath());
            this.f38166c.transform(matrix);
            this.f38164a.setPath(this.f38166c, false);
            float length2 = this.f38164a.getLength();
            if (floatValue3 > length) {
                float f11 = floatValue3 - length;
                if (f11 < f10 + length2 && f10 < f11) {
                    m.h.a(this.f38166c, floatValue2 > length ? (floatValue2 - length) / length2 : 0.0f, Math.min(f11 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.f38166c, this.f38172i);
                    f10 += length2;
                }
            }
            float f12 = f10 + length2;
            if (f12 >= floatValue2 && f10 <= floatValue3) {
                if (f12 <= floatValue3 && floatValue2 < f10) {
                    canvas.drawPath(this.f38166c, this.f38172i);
                } else {
                    m.h.a(this.f38166c, floatValue2 < f10 ? 0.0f : (floatValue2 - f10) / length2, floatValue3 <= f12 ? (floatValue3 - f10) / length2 : 1.0f, 0.0f);
                    canvas.drawPath(this.f38166c, this.f38172i);
                }
            }
            f10 += length2;
        }
        com.airbnb.lottie.c.b("StrokeContent#applyTrimPath");
    }

    @Override // f.a.b
    public void a() {
        this.f38168e.invalidateSelf();
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        s sVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof s) {
                s sVar2 = (s) cVar;
                if (sVar2.i() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    sVar = sVar2;
                }
            }
        }
        if (sVar != null) {
            sVar.c(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            c cVar2 = list2.get(size2);
            if (cVar2 instanceof s) {
                s sVar3 = (s) cVar2;
                if (sVar3.i() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (bVar != null) {
                        this.f38170g.add(bVar);
                    }
                    bVar = new b(sVar3);
                    sVar3.c(this);
                }
            }
            if (cVar2 instanceof m) {
                if (bVar == null) {
                    bVar = new b(sVar);
                }
                bVar.f38181a.add((m) cVar2);
            }
        }
        if (bVar != null) {
            this.f38170g.add(bVar);
        }
    }

    @Override // h.e
    @CallSuper
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        f.c cVar2;
        f.c cVar3;
        f.c cVar4;
        f.c cVar5;
        f.c cVar6;
        if (t10 == com.airbnb.lottie.k.f3708d) {
            this.f38174k.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3723s) {
            this.f38173j.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.K) {
            f.a<ColorFilter, ColorFilter> aVar = this.f38177n;
            if (aVar != null) {
                this.f38169f.F(aVar);
            }
            if (cVar == null) {
                this.f38177n = null;
                return;
            }
            f.q qVar = new f.q(cVar);
            this.f38177n = qVar;
            qVar.a(this);
            this.f38169f.i(this.f38177n);
        } else if (t10 == com.airbnb.lottie.k.f3714j) {
            f.a<Float, Float> aVar2 = this.f38178o;
            if (aVar2 != null) {
                aVar2.n(cVar);
                return;
            }
            f.q qVar2 = new f.q(cVar);
            this.f38178o = qVar2;
            qVar2.a(this);
            this.f38169f.i(this.f38178o);
        } else if (t10 == com.airbnb.lottie.k.f3709e && (cVar6 = this.f38180q) != null) {
            cVar6.c(cVar);
        } else if (t10 == com.airbnb.lottie.k.G && (cVar5 = this.f38180q) != null) {
            cVar5.f(cVar);
        } else if (t10 == com.airbnb.lottie.k.H && (cVar4 = this.f38180q) != null) {
            cVar4.d(cVar);
        } else if (t10 == com.airbnb.lottie.k.I && (cVar3 = this.f38180q) != null) {
            cVar3.e(cVar);
        } else if (t10 != com.airbnb.lottie.k.J || (cVar2 = this.f38180q) == null) {
        } else {
            cVar2.g(cVar);
        }
    }

    @Override // e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        com.airbnb.lottie.c.a("StrokeContent#getBounds");
        this.f38165b.reset();
        for (int i9 = 0; i9 < this.f38170g.size(); i9++) {
            b bVar = this.f38170g.get(i9);
            for (int i10 = 0; i10 < bVar.f38181a.size(); i10++) {
                this.f38165b.addPath(((m) bVar.f38181a.get(i10)).getPath(), matrix);
            }
        }
        this.f38165b.computeBounds(this.f38167d, false);
        float p10 = ((f.d) this.f38173j).p();
        RectF rectF2 = this.f38167d;
        float f10 = p10 / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f38167d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.airbnb.lottie.c.b("StrokeContent#getBounds");
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        m.g.m(dVar, i9, list, dVar2, this);
    }

    @Override // e.e
    public void g(Canvas canvas, Matrix matrix, int i9) {
        com.airbnb.lottie.c.a("StrokeContent#draw");
        if (m.h.h(matrix)) {
            com.airbnb.lottie.c.b("StrokeContent#draw");
            return;
        }
        this.f38172i.setAlpha(m.g.d((int) ((((i9 / 255.0f) * ((f.f) this.f38174k).p()) / 100.0f) * 255.0f), 0, 255));
        this.f38172i.setStrokeWidth(((f.d) this.f38173j).p() * m.h.g(matrix));
        if (this.f38172i.getStrokeWidth() <= 0.0f) {
            com.airbnb.lottie.c.b("StrokeContent#draw");
            return;
        }
        f(matrix);
        f.a<ColorFilter, ColorFilter> aVar = this.f38177n;
        if (aVar != null) {
            this.f38172i.setColorFilter(aVar.h());
        }
        f.a<Float, Float> aVar2 = this.f38178o;
        if (aVar2 != null) {
            float floatValue = aVar2.h().floatValue();
            if (floatValue == 0.0f) {
                this.f38172i.setMaskFilter(null);
            } else if (floatValue != this.f38179p) {
                this.f38172i.setMaskFilter(this.f38169f.w(floatValue));
            }
            this.f38179p = floatValue;
        }
        f.c cVar = this.f38180q;
        if (cVar != null) {
            cVar.b(this.f38172i);
        }
        for (int i10 = 0; i10 < this.f38170g.size(); i10++) {
            b bVar = this.f38170g.get(i10);
            if (bVar.f38182b != null) {
                h(canvas, bVar, matrix);
            } else {
                com.airbnb.lottie.c.a("StrokeContent#buildPath");
                this.f38165b.reset();
                for (int size = bVar.f38181a.size() - 1; size >= 0; size--) {
                    this.f38165b.addPath(((m) bVar.f38181a.get(size)).getPath(), matrix);
                }
                com.airbnb.lottie.c.b("StrokeContent#buildPath");
                com.airbnb.lottie.c.a("StrokeContent#drawPath");
                canvas.drawPath(this.f38165b, this.f38172i);
                com.airbnb.lottie.c.b("StrokeContent#drawPath");
            }
        }
        com.airbnb.lottie.c.b("StrokeContent#draw");
    }
}
