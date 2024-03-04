package e;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import f.a;
import java.util.List;
/* loaded from: classes.dex */
public class n implements m, a.b, k {

    /* renamed from: b  reason: collision with root package name */
    private final String f38254b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.f f38255c;

    /* renamed from: d  reason: collision with root package name */
    private final PolystarShape.Type f38256d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f38257e;

    /* renamed from: f  reason: collision with root package name */
    private final f.a<?, Float> f38258f;

    /* renamed from: g  reason: collision with root package name */
    private final f.a<?, PointF> f38259g;

    /* renamed from: h  reason: collision with root package name */
    private final f.a<?, Float> f38260h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final f.a<?, Float> f38261i;

    /* renamed from: j  reason: collision with root package name */
    private final f.a<?, Float> f38262j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private final f.a<?, Float> f38263k;

    /* renamed from: l  reason: collision with root package name */
    private final f.a<?, Float> f38264l;

    /* renamed from: n  reason: collision with root package name */
    private boolean f38266n;

    /* renamed from: a  reason: collision with root package name */
    private final Path f38253a = new Path();

    /* renamed from: m  reason: collision with root package name */
    private b f38265m = new b();

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f38267a;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            f38267a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f38267a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public n(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, PolystarShape polystarShape) {
        this.f38255c = fVar;
        this.f38254b = polystarShape.d();
        PolystarShape.Type j10 = polystarShape.j();
        this.f38256d = j10;
        this.f38257e = polystarShape.k();
        f.a<Float, Float> a10 = polystarShape.g().a();
        this.f38258f = a10;
        f.a<PointF, PointF> a11 = polystarShape.h().a();
        this.f38259g = a11;
        f.a<Float, Float> a12 = polystarShape.i().a();
        this.f38260h = a12;
        f.a<Float, Float> a13 = polystarShape.e().a();
        this.f38262j = a13;
        f.a<Float, Float> a14 = polystarShape.f().a();
        this.f38264l = a14;
        PolystarShape.Type type = PolystarShape.Type.STAR;
        if (j10 == type) {
            this.f38261i = polystarShape.b().a();
            this.f38263k = polystarShape.c().a();
        } else {
            this.f38261i = null;
            this.f38263k = null;
        }
        aVar.i(a10);
        aVar.i(a11);
        aVar.i(a12);
        aVar.i(a13);
        aVar.i(a14);
        if (j10 == type) {
            aVar.i(this.f38261i);
            aVar.i(this.f38263k);
        }
        a10.a(this);
        a11.a(this);
        a12.a(this);
        a13.a(this);
        a14.a(this);
        if (j10 == type) {
            this.f38261i.a(this);
            this.f38263k.a(this);
        }
    }

    private void f() {
        f.a<?, Float> aVar;
        double d10;
        double d11;
        double d12;
        int i9;
        int floor = (int) Math.floor(this.f38258f.h().floatValue());
        double radians = Math.toRadians((this.f38260h == null ? 0.0d : aVar.h().floatValue()) - 90.0d);
        double d13 = floor;
        float floatValue = this.f38264l.h().floatValue() / 100.0f;
        float floatValue2 = this.f38262j.h().floatValue();
        double d14 = floatValue2;
        float cos = (float) (Math.cos(radians) * d14);
        float sin = (float) (Math.sin(radians) * d14);
        this.f38253a.moveTo(cos, sin);
        double d15 = (float) (6.283185307179586d / d13);
        double d16 = radians + d15;
        double ceil = Math.ceil(d13);
        int i10 = 0;
        while (i10 < ceil) {
            float cos2 = (float) (Math.cos(d16) * d14);
            double d17 = ceil;
            float sin2 = (float) (d14 * Math.sin(d16));
            if (floatValue != 0.0f) {
                d11 = d14;
                i9 = i10;
                d10 = d16;
                double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                float cos3 = (float) Math.cos(atan2);
                d12 = d15;
                double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                float f10 = floatValue2 * floatValue * 0.25f;
                this.f38253a.cubicTo(cos - (cos3 * f10), sin - (((float) Math.sin(atan2)) * f10), cos2 + (((float) Math.cos(atan22)) * f10), sin2 + (f10 * ((float) Math.sin(atan22))), cos2, sin2);
            } else {
                d10 = d16;
                d11 = d14;
                d12 = d15;
                i9 = i10;
                this.f38253a.lineTo(cos2, sin2);
            }
            d16 = d10 + d12;
            i10 = i9 + 1;
            sin = sin2;
            cos = cos2;
            ceil = d17;
            d14 = d11;
            d15 = d12;
        }
        PointF h10 = this.f38259g.h();
        this.f38253a.offset(h10.x, h10.y);
        this.f38253a.close();
    }

    private void h() {
        f.a<?, Float> aVar;
        double d10;
        int i9;
        double d11;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        double d12;
        float f16;
        float f17;
        float f18;
        float floatValue = this.f38258f.h().floatValue();
        double radians = Math.toRadians((this.f38260h == null ? 0.0d : aVar.h().floatValue()) - 90.0d);
        double d13 = floatValue;
        float f19 = (float) (6.283185307179586d / d13);
        float f20 = f19 / 2.0f;
        float f21 = floatValue - ((int) floatValue);
        int i10 = (f21 > 0.0f ? 1 : (f21 == 0.0f ? 0 : -1));
        if (i10 != 0) {
            radians += (1.0f - f21) * f20;
        }
        float floatValue2 = this.f38262j.h().floatValue();
        float floatValue3 = this.f38261i.h().floatValue();
        f.a<?, Float> aVar2 = this.f38263k;
        float floatValue4 = aVar2 != null ? aVar2.h().floatValue() / 100.0f : 0.0f;
        f.a<?, Float> aVar3 = this.f38264l;
        float floatValue5 = aVar3 != null ? aVar3.h().floatValue() / 100.0f : 0.0f;
        if (i10 != 0) {
            f12 = ((floatValue2 - floatValue3) * f21) + floatValue3;
            i9 = i10;
            double d14 = f12;
            d10 = d13;
            f10 = (float) (d14 * Math.cos(radians));
            f11 = (float) (d14 * Math.sin(radians));
            this.f38253a.moveTo(f10, f11);
            d11 = radians + ((f19 * f21) / 2.0f);
        } else {
            d10 = d13;
            i9 = i10;
            double d15 = floatValue2;
            float cos = (float) (Math.cos(radians) * d15);
            float sin = (float) (d15 * Math.sin(radians));
            this.f38253a.moveTo(cos, sin);
            d11 = radians + f20;
            f10 = cos;
            f11 = sin;
            f12 = 0.0f;
        }
        double ceil = Math.ceil(d10) * 2.0d;
        int i11 = 0;
        boolean z10 = false;
        while (true) {
            double d16 = i11;
            if (d16 < ceil) {
                float f22 = z10 ? floatValue2 : floatValue3;
                int i12 = (f12 > 0.0f ? 1 : (f12 == 0.0f ? 0 : -1));
                if (i12 == 0 || d16 != ceil - 2.0d) {
                    f13 = f19;
                    f14 = f20;
                } else {
                    f13 = f19;
                    f14 = (f19 * f21) / 2.0f;
                }
                if (i12 == 0 || d16 != ceil - 1.0d) {
                    f15 = f20;
                    d12 = d16;
                    f16 = f22;
                } else {
                    f15 = f20;
                    d12 = d16;
                    f16 = f12;
                }
                double d17 = f16;
                double d18 = ceil;
                float cos2 = (float) (d17 * Math.cos(d11));
                float sin2 = (float) (d17 * Math.sin(d11));
                if (floatValue4 == 0.0f && floatValue5 == 0.0f) {
                    this.f38253a.lineTo(cos2, sin2);
                    f17 = floatValue4;
                    f18 = f12;
                } else {
                    f17 = floatValue4;
                    f18 = f12;
                    double atan2 = (float) (Math.atan2(f11, f10) - 1.5707963267948966d);
                    float cos3 = (float) Math.cos(atan2);
                    float sin3 = (float) Math.sin(atan2);
                    double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                    float cos4 = (float) Math.cos(atan22);
                    float sin4 = (float) Math.sin(atan22);
                    float f23 = z10 ? f17 : floatValue5;
                    float f24 = z10 ? floatValue5 : f17;
                    float f25 = (z10 ? floatValue3 : floatValue2) * f23 * 0.47829f;
                    float f26 = cos3 * f25;
                    float f27 = f25 * sin3;
                    float f28 = (z10 ? floatValue2 : floatValue3) * f24 * 0.47829f;
                    float f29 = cos4 * f28;
                    float f30 = f28 * sin4;
                    if (i9 != 0) {
                        if (i11 == 0) {
                            f26 *= f21;
                            f27 *= f21;
                        } else if (d12 == d18 - 1.0d) {
                            f29 *= f21;
                            f30 *= f21;
                        }
                    }
                    this.f38253a.cubicTo(f10 - f26, f11 - f27, cos2 + f29, sin2 + f30, cos2, sin2);
                }
                d11 += f14;
                z10 = !z10;
                i11++;
                f10 = cos2;
                f11 = sin2;
                floatValue4 = f17;
                f12 = f18;
                f20 = f15;
                f19 = f13;
                ceil = d18;
            } else {
                PointF h10 = this.f38259g.h();
                this.f38253a.offset(h10.x, h10.y);
                this.f38253a.close();
                return;
            }
        }
    }

    private void i() {
        this.f38266n = false;
        this.f38255c.invalidateSelf();
    }

    @Override // f.a.b
    public void a() {
        i();
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            c cVar = list.get(i9);
            if (cVar instanceof s) {
                s sVar = (s) cVar;
                if (sVar.i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f38265m.a(sVar);
                    sVar.c(this);
                }
            }
        }
    }

    @Override // h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        f.a<?, Float> aVar;
        f.a<?, Float> aVar2;
        if (t10 == com.airbnb.lottie.k.f3727w) {
            this.f38258f.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3728x) {
            this.f38260h.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3718n) {
            this.f38259g.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3729y && (aVar2 = this.f38261i) != null) {
            aVar2.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3730z) {
            this.f38262j.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.A && (aVar = this.f38263k) != null) {
            aVar.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.B) {
            this.f38264l.n(cVar);
        }
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        m.g.m(dVar, i9, list, dVar2, this);
    }

    @Override // e.c
    public String getName() {
        return this.f38254b;
    }

    @Override // e.m
    public Path getPath() {
        if (this.f38266n) {
            return this.f38253a;
        }
        this.f38253a.reset();
        if (this.f38257e) {
            this.f38266n = true;
            return this.f38253a;
        }
        int i9 = a.f38267a[this.f38256d.ordinal()];
        if (i9 == 1) {
            h();
        } else if (i9 == 2) {
            f();
        }
        this.f38253a.close();
        this.f38265m.b(this.f38253a);
        this.f38266n = true;
        return this.f38253a;
    }
}
