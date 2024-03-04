package e;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import f.a;
import java.util.List;
/* loaded from: classes.dex */
public class o implements a.b, k, m {

    /* renamed from: c  reason: collision with root package name */
    private final String f38270c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f38271d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.f f38272e;

    /* renamed from: f  reason: collision with root package name */
    private final f.a<?, PointF> f38273f;

    /* renamed from: g  reason: collision with root package name */
    private final f.a<?, PointF> f38274g;

    /* renamed from: h  reason: collision with root package name */
    private final f.a<?, Float> f38275h;

    /* renamed from: j  reason: collision with root package name */
    private boolean f38277j;

    /* renamed from: a  reason: collision with root package name */
    private final Path f38268a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final RectF f38269b = new RectF();

    /* renamed from: i  reason: collision with root package name */
    private b f38276i = new b();

    public o(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, j.f fVar2) {
        this.f38270c = fVar2.c();
        this.f38271d = fVar2.f();
        this.f38272e = fVar;
        f.a<PointF, PointF> a10 = fVar2.d().a();
        this.f38273f = a10;
        f.a<PointF, PointF> a11 = fVar2.e().a();
        this.f38274g = a11;
        f.a<Float, Float> a12 = fVar2.b().a();
        this.f38275h = a12;
        aVar.i(a10);
        aVar.i(a11);
        aVar.i(a12);
        a10.a(this);
        a11.a(this);
        a12.a(this);
    }

    private void f() {
        this.f38277j = false;
        this.f38272e.invalidateSelf();
    }

    @Override // f.a.b
    public void a() {
        f();
    }

    @Override // e.c
    public void b(List<c> list, List<c> list2) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            c cVar = list.get(i9);
            if (cVar instanceof s) {
                s sVar = (s) cVar;
                if (sVar.i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f38276i.a(sVar);
                    sVar.c(this);
                }
            }
        }
    }

    @Override // h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        if (t10 == com.airbnb.lottie.k.f3716l) {
            this.f38274g.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3718n) {
            this.f38273f.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3717m) {
            this.f38275h.n(cVar);
        }
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        m.g.m(dVar, i9, list, dVar2, this);
    }

    @Override // e.c
    public String getName() {
        return this.f38270c;
    }

    @Override // e.m
    public Path getPath() {
        if (this.f38277j) {
            return this.f38268a;
        }
        this.f38268a.reset();
        if (this.f38271d) {
            this.f38277j = true;
            return this.f38268a;
        }
        PointF h10 = this.f38274g.h();
        float f10 = h10.x / 2.0f;
        float f11 = h10.y / 2.0f;
        f.a<?, Float> aVar = this.f38275h;
        float p10 = aVar == null ? 0.0f : ((f.d) aVar).p();
        float min = Math.min(f10, f11);
        if (p10 > min) {
            p10 = min;
        }
        PointF h11 = this.f38273f.h();
        this.f38268a.moveTo(h11.x + f10, (h11.y - f11) + p10);
        this.f38268a.lineTo(h11.x + f10, (h11.y + f11) - p10);
        int i9 = (p10 > 0.0f ? 1 : (p10 == 0.0f ? 0 : -1));
        if (i9 > 0) {
            RectF rectF = this.f38269b;
            float f12 = h11.x;
            float f13 = p10 * 2.0f;
            float f14 = h11.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f38268a.arcTo(this.f38269b, 0.0f, 90.0f, false);
        }
        this.f38268a.lineTo((h11.x - f10) + p10, h11.y + f11);
        if (i9 > 0) {
            RectF rectF2 = this.f38269b;
            float f15 = h11.x;
            float f16 = h11.y;
            float f17 = p10 * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f38268a.arcTo(this.f38269b, 90.0f, 90.0f, false);
        }
        this.f38268a.lineTo(h11.x - f10, (h11.y - f11) + p10);
        if (i9 > 0) {
            RectF rectF3 = this.f38269b;
            float f18 = h11.x;
            float f19 = h11.y;
            float f20 = p10 * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f38268a.arcTo(this.f38269b, 180.0f, 90.0f, false);
        }
        this.f38268a.lineTo((h11.x + f10) - p10, h11.y - f11);
        if (i9 > 0) {
            RectF rectF4 = this.f38269b;
            float f21 = h11.x;
            float f22 = p10 * 2.0f;
            float f23 = h11.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f38268a.arcTo(this.f38269b, 270.0f, 90.0f, false);
        }
        this.f38268a.close();
        this.f38276i.b(this.f38268a);
        this.f38277j = true;
        return this.f38268a;
    }
}
