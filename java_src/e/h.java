package e;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.model.content.GradientType;
import f.a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class h implements e, a.b, k {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f38216a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f38217b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f38218c;

    /* renamed from: d  reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f38219d = new LongSparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f38220e = new LongSparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    private final Path f38221f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f38222g;

    /* renamed from: h  reason: collision with root package name */
    private final RectF f38223h;

    /* renamed from: i  reason: collision with root package name */
    private final List<m> f38224i;

    /* renamed from: j  reason: collision with root package name */
    private final GradientType f38225j;

    /* renamed from: k  reason: collision with root package name */
    private final f.a<j.d, j.d> f38226k;

    /* renamed from: l  reason: collision with root package name */
    private final f.a<Integer, Integer> f38227l;

    /* renamed from: m  reason: collision with root package name */
    private final f.a<PointF, PointF> f38228m;

    /* renamed from: n  reason: collision with root package name */
    private final f.a<PointF, PointF> f38229n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private f.a<ColorFilter, ColorFilter> f38230o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private f.q f38231p;

    /* renamed from: q  reason: collision with root package name */
    private final com.airbnb.lottie.f f38232q;

    /* renamed from: r  reason: collision with root package name */
    private final int f38233r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private f.a<Float, Float> f38234s;

    /* renamed from: t  reason: collision with root package name */
    float f38235t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private f.c f38236u;

    public h(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, j.e eVar) {
        Path path = new Path();
        this.f38221f = path;
        this.f38222g = new d.a(1);
        this.f38223h = new RectF();
        this.f38224i = new ArrayList();
        this.f38235t = 0.0f;
        this.f38218c = aVar;
        this.f38216a = eVar.f();
        this.f38217b = eVar.i();
        this.f38232q = fVar;
        this.f38225j = eVar.e();
        path.setFillType(eVar.c());
        this.f38233r = (int) (fVar.q().d() / 32.0f);
        f.a<j.d, j.d> a10 = eVar.d().a();
        this.f38226k = a10;
        a10.a(this);
        aVar.i(a10);
        f.a<Integer, Integer> a11 = eVar.g().a();
        this.f38227l = a11;
        a11.a(this);
        aVar.i(a11);
        f.a<PointF, PointF> a12 = eVar.h().a();
        this.f38228m = a12;
        a12.a(this);
        aVar.i(a12);
        f.a<PointF, PointF> a13 = eVar.b().a();
        this.f38229n = a13;
        a13.a(this);
        aVar.i(a13);
        if (aVar.v() != null) {
            f.a<Float, Float> a14 = aVar.v().a().a();
            this.f38234s = a14;
            a14.a(this);
            aVar.i(this.f38234s);
        }
        if (aVar.x() != null) {
            this.f38236u = new f.c(this, aVar, aVar.x());
        }
    }

    private int[] f(int[] iArr) {
        f.q qVar = this.f38231p;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i9 = 0;
            if (iArr.length == numArr.length) {
                while (i9 < iArr.length) {
                    iArr[i9] = numArr[i9].intValue();
                    i9++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i9 < numArr.length) {
                    iArr[i9] = numArr[i9].intValue();
                    i9++;
                }
            }
        }
        return iArr;
    }

    private int h() {
        int round = Math.round(this.f38228m.f() * this.f38233r);
        int round2 = Math.round(this.f38229n.f() * this.f38233r);
        int round3 = Math.round(this.f38226k.f() * this.f38233r);
        int i9 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i9 = i9 * 31 * round2;
        }
        return round3 != 0 ? i9 * 31 * round3 : i9;
    }

    private LinearGradient i() {
        long h10 = h();
        LinearGradient linearGradient = this.f38219d.get(h10);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF h11 = this.f38228m.h();
        PointF h12 = this.f38229n.h();
        j.d h13 = this.f38226k.h();
        LinearGradient linearGradient2 = new LinearGradient(h11.x, h11.y, h12.x, h12.y, f(h13.a()), h13.b(), Shader.TileMode.CLAMP);
        this.f38219d.put(h10, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient j() {
        long h10 = h();
        RadialGradient radialGradient = this.f38220e.get(h10);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF h11 = this.f38228m.h();
        PointF h12 = this.f38229n.h();
        j.d h13 = this.f38226k.h();
        int[] f10 = f(h13.a());
        float[] b10 = h13.b();
        float f11 = h11.x;
        float f12 = h11.y;
        float hypot = (float) Math.hypot(h12.x - f11, h12.y - f12);
        RadialGradient radialGradient2 = new RadialGradient(f11, f12, hypot <= 0.0f ? 0.001f : hypot, f10, b10, Shader.TileMode.CLAMP);
        this.f38220e.put(h10, radialGradient2);
        return radialGradient2;
    }

    @Override // f.a.b
    public void a() {
        this.f38232q.invalidateSelf();
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        for (int i9 = 0; i9 < list2.size(); i9++) {
            c cVar = list2.get(i9);
            if (cVar instanceof m) {
                this.f38224i.add((m) cVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        f.c cVar2;
        f.c cVar3;
        f.c cVar4;
        f.c cVar5;
        f.c cVar6;
        if (t10 == com.airbnb.lottie.k.f3708d) {
            this.f38227l.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.K) {
            f.a<ColorFilter, ColorFilter> aVar = this.f38230o;
            if (aVar != null) {
                this.f38218c.F(aVar);
            }
            if (cVar == null) {
                this.f38230o = null;
                return;
            }
            f.q qVar = new f.q(cVar);
            this.f38230o = qVar;
            qVar.a(this);
            this.f38218c.i(this.f38230o);
        } else if (t10 == com.airbnb.lottie.k.L) {
            f.q qVar2 = this.f38231p;
            if (qVar2 != null) {
                this.f38218c.F(qVar2);
            }
            if (cVar == null) {
                this.f38231p = null;
                return;
            }
            this.f38219d.clear();
            this.f38220e.clear();
            f.q qVar3 = new f.q(cVar);
            this.f38231p = qVar3;
            qVar3.a(this);
            this.f38218c.i(this.f38231p);
        } else if (t10 == com.airbnb.lottie.k.f3714j) {
            f.a<Float, Float> aVar2 = this.f38234s;
            if (aVar2 != null) {
                aVar2.n(cVar);
                return;
            }
            f.q qVar4 = new f.q(cVar);
            this.f38234s = qVar4;
            qVar4.a(this);
            this.f38218c.i(this.f38234s);
        } else if (t10 == com.airbnb.lottie.k.f3709e && (cVar6 = this.f38236u) != null) {
            cVar6.c(cVar);
        } else if (t10 == com.airbnb.lottie.k.G && (cVar5 = this.f38236u) != null) {
            cVar5.f(cVar);
        } else if (t10 == com.airbnb.lottie.k.H && (cVar4 = this.f38236u) != null) {
            cVar4.d(cVar);
        } else if (t10 == com.airbnb.lottie.k.I && (cVar3 = this.f38236u) != null) {
            cVar3.e(cVar);
        } else if (t10 != com.airbnb.lottie.k.J || (cVar2 = this.f38236u) == null) {
        } else {
            cVar2.g(cVar);
        }
    }

    @Override // e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        this.f38221f.reset();
        for (int i9 = 0; i9 < this.f38224i.size(); i9++) {
            this.f38221f.addPath(this.f38224i.get(i9).getPath(), matrix);
        }
        this.f38221f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        m.g.m(dVar, i9, list, dVar2, this);
    }

    @Override // e.e
    public void g(Canvas canvas, Matrix matrix, int i9) {
        Shader j10;
        if (this.f38217b) {
            return;
        }
        com.airbnb.lottie.c.a("GradientFillContent#draw");
        this.f38221f.reset();
        for (int i10 = 0; i10 < this.f38224i.size(); i10++) {
            this.f38221f.addPath(this.f38224i.get(i10).getPath(), matrix);
        }
        this.f38221f.computeBounds(this.f38223h, false);
        if (this.f38225j == GradientType.LINEAR) {
            j10 = i();
        } else {
            j10 = j();
        }
        j10.setLocalMatrix(matrix);
        this.f38222g.setShader(j10);
        f.a<ColorFilter, ColorFilter> aVar = this.f38230o;
        if (aVar != null) {
            this.f38222g.setColorFilter(aVar.h());
        }
        f.a<Float, Float> aVar2 = this.f38234s;
        if (aVar2 != null) {
            float floatValue = aVar2.h().floatValue();
            if (floatValue == 0.0f) {
                this.f38222g.setMaskFilter(null);
            } else if (floatValue != this.f38235t) {
                this.f38222g.setMaskFilter(new BlurMaskFilter(floatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f38235t = floatValue;
        }
        f.c cVar = this.f38236u;
        if (cVar != null) {
            cVar.b(this.f38222g);
        }
        this.f38222g.setAlpha(m.g.d((int) ((((i9 / 255.0f) * this.f38227l.h().intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.f38221f, this.f38222g);
        com.airbnb.lottie.c.b("GradientFillContent#draw");
    }

    @Override // e.c
    public String getName() {
        return this.f38216a;
    }
}
