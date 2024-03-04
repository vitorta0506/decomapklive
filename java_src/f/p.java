package f;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.a;
import java.util.Collections;
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final Matrix f39551a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    private final Matrix f39552b;

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f39553c;

    /* renamed from: d  reason: collision with root package name */
    private final Matrix f39554d;

    /* renamed from: e  reason: collision with root package name */
    private final float[] f39555e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private a<PointF, PointF> f39556f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private a<?, PointF> f39557g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private a<n.d, n.d> f39558h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private a<Float, Float> f39559i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private a<Integer, Integer> f39560j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private d f39561k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private d f39562l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private a<?, Float> f39563m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private a<?, Float> f39564n;

    public p(i.l lVar) {
        this.f39556f = lVar.c() == null ? null : lVar.c().a();
        this.f39557g = lVar.f() == null ? null : lVar.f().a();
        this.f39558h = lVar.h() == null ? null : lVar.h().a();
        this.f39559i = lVar.g() == null ? null : lVar.g().a();
        d dVar = lVar.i() == null ? null : (d) lVar.i().a();
        this.f39561k = dVar;
        if (dVar != null) {
            this.f39552b = new Matrix();
            this.f39553c = new Matrix();
            this.f39554d = new Matrix();
            this.f39555e = new float[9];
        } else {
            this.f39552b = null;
            this.f39553c = null;
            this.f39554d = null;
            this.f39555e = null;
        }
        this.f39562l = lVar.j() == null ? null : (d) lVar.j().a();
        if (lVar.e() != null) {
            this.f39560j = lVar.e().a();
        }
        if (lVar.k() != null) {
            this.f39563m = lVar.k().a();
        } else {
            this.f39563m = null;
        }
        if (lVar.d() != null) {
            this.f39564n = lVar.d().a();
        } else {
            this.f39564n = null;
        }
    }

    private void d() {
        for (int i9 = 0; i9 < 9; i9++) {
            this.f39555e[i9] = 0.0f;
        }
    }

    public void a(com.airbnb.lottie.model.layer.a aVar) {
        aVar.i(this.f39560j);
        aVar.i(this.f39563m);
        aVar.i(this.f39564n);
        aVar.i(this.f39556f);
        aVar.i(this.f39557g);
        aVar.i(this.f39558h);
        aVar.i(this.f39559i);
        aVar.i(this.f39561k);
        aVar.i(this.f39562l);
    }

    public void b(a.b bVar) {
        a<Integer, Integer> aVar = this.f39560j;
        if (aVar != null) {
            aVar.a(bVar);
        }
        a<?, Float> aVar2 = this.f39563m;
        if (aVar2 != null) {
            aVar2.a(bVar);
        }
        a<?, Float> aVar3 = this.f39564n;
        if (aVar3 != null) {
            aVar3.a(bVar);
        }
        a<PointF, PointF> aVar4 = this.f39556f;
        if (aVar4 != null) {
            aVar4.a(bVar);
        }
        a<?, PointF> aVar5 = this.f39557g;
        if (aVar5 != null) {
            aVar5.a(bVar);
        }
        a<n.d, n.d> aVar6 = this.f39558h;
        if (aVar6 != null) {
            aVar6.a(bVar);
        }
        a<Float, Float> aVar7 = this.f39559i;
        if (aVar7 != null) {
            aVar7.a(bVar);
        }
        d dVar = this.f39561k;
        if (dVar != null) {
            dVar.a(bVar);
        }
        d dVar2 = this.f39562l;
        if (dVar2 != null) {
            dVar2.a(bVar);
        }
    }

    public <T> boolean c(T t10, @Nullable n.c<T> cVar) {
        d dVar;
        d dVar2;
        a<?, Float> aVar;
        a<?, Float> aVar2;
        if (t10 == com.airbnb.lottie.k.f3710f) {
            a<PointF, PointF> aVar3 = this.f39556f;
            if (aVar3 == null) {
                this.f39556f = new q(cVar, new PointF());
                return true;
            }
            aVar3.n(cVar);
            return true;
        } else if (t10 == com.airbnb.lottie.k.f3711g) {
            a<?, PointF> aVar4 = this.f39557g;
            if (aVar4 == null) {
                this.f39557g = new q(cVar, new PointF());
                return true;
            }
            aVar4.n(cVar);
            return true;
        } else {
            if (t10 == com.airbnb.lottie.k.f3712h) {
                a<?, PointF> aVar5 = this.f39557g;
                if (aVar5 instanceof n) {
                    ((n) aVar5).r(cVar);
                    return true;
                }
            }
            if (t10 == com.airbnb.lottie.k.f3713i) {
                a<?, PointF> aVar6 = this.f39557g;
                if (aVar6 instanceof n) {
                    ((n) aVar6).s(cVar);
                    return true;
                }
            }
            if (t10 == com.airbnb.lottie.k.f3719o) {
                a<n.d, n.d> aVar7 = this.f39558h;
                if (aVar7 == null) {
                    this.f39558h = new q(cVar, new n.d());
                    return true;
                }
                aVar7.n(cVar);
                return true;
            } else if (t10 == com.airbnb.lottie.k.f3720p) {
                a<Float, Float> aVar8 = this.f39559i;
                if (aVar8 == null) {
                    this.f39559i = new q(cVar, Float.valueOf(0.0f));
                    return true;
                }
                aVar8.n(cVar);
                return true;
            } else if (t10 == com.airbnb.lottie.k.f3707c) {
                a<Integer, Integer> aVar9 = this.f39560j;
                if (aVar9 == null) {
                    this.f39560j = new q(cVar, 100);
                    return true;
                }
                aVar9.n(cVar);
                return true;
            } else if (t10 == com.airbnb.lottie.k.C && (aVar2 = this.f39563m) != null) {
                if (aVar2 == null) {
                    this.f39563m = new q(cVar, 100);
                    return true;
                }
                aVar2.n(cVar);
                return true;
            } else if (t10 == com.airbnb.lottie.k.D && (aVar = this.f39564n) != null) {
                if (aVar == null) {
                    this.f39564n = new q(cVar, 100);
                    return true;
                }
                aVar.n(cVar);
                return true;
            } else if (t10 == com.airbnb.lottie.k.f3721q && (dVar2 = this.f39561k) != null) {
                if (dVar2 == null) {
                    this.f39561k = new d(Collections.singletonList(new n.a(Float.valueOf(0.0f))));
                }
                this.f39561k.n(cVar);
                return true;
            } else if (t10 != com.airbnb.lottie.k.f3722r || (dVar = this.f39562l) == null) {
                return false;
            } else {
                if (dVar == null) {
                    this.f39562l = new d(Collections.singletonList(new n.a(Float.valueOf(0.0f))));
                }
                this.f39562l.n(cVar);
                return true;
            }
        }
    }

    @Nullable
    public a<?, Float> e() {
        return this.f39564n;
    }

    public Matrix f() {
        float p10;
        this.f39551a.reset();
        a<?, PointF> aVar = this.f39557g;
        if (aVar != null) {
            PointF h10 = aVar.h();
            float f10 = h10.x;
            if (f10 != 0.0f || h10.y != 0.0f) {
                this.f39551a.preTranslate(f10, h10.y);
            }
        }
        a<Float, Float> aVar2 = this.f39559i;
        if (aVar2 != null) {
            if (aVar2 instanceof q) {
                p10 = aVar2.h().floatValue();
            } else {
                p10 = ((d) aVar2).p();
            }
            if (p10 != 0.0f) {
                this.f39551a.preRotate(p10);
            }
        }
        if (this.f39561k != null) {
            d dVar = this.f39562l;
            float cos = dVar == null ? 0.0f : (float) Math.cos(Math.toRadians((-dVar.p()) + 90.0f));
            d dVar2 = this.f39562l;
            float sin = dVar2 == null ? 1.0f : (float) Math.sin(Math.toRadians((-dVar2.p()) + 90.0f));
            d();
            float[] fArr = this.f39555e;
            fArr[0] = cos;
            fArr[1] = sin;
            float f11 = -sin;
            fArr[3] = f11;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.f39552b.setValues(fArr);
            d();
            float[] fArr2 = this.f39555e;
            fArr2[0] = 1.0f;
            fArr2[3] = (float) Math.tan(Math.toRadians(this.f39561k.p()));
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f39553c.setValues(fArr2);
            d();
            float[] fArr3 = this.f39555e;
            fArr3[0] = cos;
            fArr3[1] = f11;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.f39554d.setValues(fArr3);
            this.f39553c.preConcat(this.f39552b);
            this.f39554d.preConcat(this.f39553c);
            this.f39551a.preConcat(this.f39554d);
        }
        a<n.d, n.d> aVar3 = this.f39558h;
        if (aVar3 != null) {
            n.d h11 = aVar3.h();
            if (h11.b() != 1.0f || h11.c() != 1.0f) {
                this.f39551a.preScale(h11.b(), h11.c());
            }
        }
        a<PointF, PointF> aVar4 = this.f39556f;
        if (aVar4 != null) {
            PointF h12 = aVar4.h();
            float f12 = h12.x;
            if (f12 != 0.0f || h12.y != 0.0f) {
                this.f39551a.preTranslate(-f12, -h12.y);
            }
        }
        return this.f39551a;
    }

    public Matrix g(float f10) {
        a<?, PointF> aVar = this.f39557g;
        PointF h10 = aVar == null ? null : aVar.h();
        a<n.d, n.d> aVar2 = this.f39558h;
        n.d h11 = aVar2 == null ? null : aVar2.h();
        this.f39551a.reset();
        if (h10 != null) {
            this.f39551a.preTranslate(h10.x * f10, h10.y * f10);
        }
        if (h11 != null) {
            double d10 = f10;
            this.f39551a.preScale((float) Math.pow(h11.b(), d10), (float) Math.pow(h11.c(), d10));
        }
        a<Float, Float> aVar3 = this.f39559i;
        if (aVar3 != null) {
            float floatValue = aVar3.h().floatValue();
            a<PointF, PointF> aVar4 = this.f39556f;
            PointF h12 = aVar4 != null ? aVar4.h() : null;
            this.f39551a.preRotate(floatValue * f10, h12 == null ? 0.0f : h12.x, h12 != null ? h12.y : 0.0f);
        }
        return this.f39551a;
    }

    @Nullable
    public a<?, Integer> h() {
        return this.f39560j;
    }

    @Nullable
    public a<?, Float> i() {
        return this.f39563m;
    }

    public void j(float f10) {
        a<Integer, Integer> aVar = this.f39560j;
        if (aVar != null) {
            aVar.m(f10);
        }
        a<?, Float> aVar2 = this.f39563m;
        if (aVar2 != null) {
            aVar2.m(f10);
        }
        a<?, Float> aVar3 = this.f39564n;
        if (aVar3 != null) {
            aVar3.m(f10);
        }
        a<PointF, PointF> aVar4 = this.f39556f;
        if (aVar4 != null) {
            aVar4.m(f10);
        }
        a<?, PointF> aVar5 = this.f39557g;
        if (aVar5 != null) {
            aVar5.m(f10);
        }
        a<n.d, n.d> aVar6 = this.f39558h;
        if (aVar6 != null) {
            aVar6.m(f10);
        }
        a<Float, Float> aVar7 = this.f39559i;
        if (aVar7 != null) {
            aVar7.m(f10);
        }
        d dVar = this.f39561k;
        if (dVar != null) {
            dVar.m(f10);
        }
        d dVar2 = this.f39562l;
        if (dVar2 != null) {
            dVar2.m(f10);
        }
    }
}
