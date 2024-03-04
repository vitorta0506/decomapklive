package f;

import android.graphics.Color;
import android.graphics.Paint;
import androidx.annotation.Nullable;
import f.a;
/* loaded from: classes.dex */
public class c implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private final a.b f39522a;

    /* renamed from: b  reason: collision with root package name */
    private final f.a<Integer, Integer> f39523b;

    /* renamed from: c  reason: collision with root package name */
    private final f.a<Float, Float> f39524c;

    /* renamed from: d  reason: collision with root package name */
    private final f.a<Float, Float> f39525d;

    /* renamed from: e  reason: collision with root package name */
    private final f.a<Float, Float> f39526e;

    /* renamed from: f  reason: collision with root package name */
    private final f.a<Float, Float> f39527f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f39528g = true;

    /* loaded from: classes.dex */
    class a extends n.c<Float> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ n.c f39529d;

        a(n.c cVar) {
            this.f39529d = cVar;
        }

        @Override // n.c
        @Nullable
        /* renamed from: d */
        public Float a(n.b<Float> bVar) {
            Float f10 = (Float) this.f39529d.a(bVar);
            if (f10 == null) {
                return null;
            }
            return Float.valueOf(f10.floatValue() * 2.55f);
        }
    }

    public c(a.b bVar, com.airbnb.lottie.model.layer.a aVar, l.j jVar) {
        this.f39522a = bVar;
        f.a<Integer, Integer> a10 = jVar.a().a();
        this.f39523b = a10;
        a10.a(this);
        aVar.i(a10);
        f.a<Float, Float> a11 = jVar.d().a();
        this.f39524c = a11;
        a11.a(this);
        aVar.i(a11);
        f.a<Float, Float> a12 = jVar.b().a();
        this.f39525d = a12;
        a12.a(this);
        aVar.i(a12);
        f.a<Float, Float> a13 = jVar.c().a();
        this.f39526e = a13;
        a13.a(this);
        aVar.i(a13);
        f.a<Float, Float> a14 = jVar.e().a();
        this.f39527f = a14;
        a14.a(this);
        aVar.i(a14);
    }

    @Override // f.a.b
    public void a() {
        this.f39528g = true;
        this.f39522a.a();
    }

    public void b(Paint paint) {
        if (this.f39528g) {
            this.f39528g = false;
            double floatValue = this.f39525d.h().floatValue() * 0.017453292519943295d;
            float floatValue2 = this.f39526e.h().floatValue();
            float sin = ((float) Math.sin(floatValue)) * floatValue2;
            float cos = ((float) Math.cos(floatValue + 3.141592653589793d)) * floatValue2;
            int intValue = this.f39523b.h().intValue();
            paint.setShadowLayer(this.f39527f.h().floatValue(), sin, cos, Color.argb(Math.round(this.f39524c.h().floatValue()), Color.red(intValue), Color.green(intValue), Color.blue(intValue)));
        }
    }

    public void c(@Nullable n.c<Integer> cVar) {
        this.f39523b.n(cVar);
    }

    public void d(@Nullable n.c<Float> cVar) {
        this.f39525d.n(cVar);
    }

    public void e(@Nullable n.c<Float> cVar) {
        this.f39526e.n(cVar);
    }

    public void f(@Nullable n.c<Float> cVar) {
        if (cVar == null) {
            this.f39524c.n(null);
        } else {
            this.f39524c.n(new a(cVar));
        }
    }

    public void g(@Nullable n.c<Float> cVar) {
        this.f39527f.n(cVar);
    }
}
