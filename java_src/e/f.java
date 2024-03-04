package e;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import f.a;
import java.util.List;
/* loaded from: classes.dex */
public class f implements m, a.b, k {

    /* renamed from: b  reason: collision with root package name */
    private final String f38196b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.f f38197c;

    /* renamed from: d  reason: collision with root package name */
    private final f.a<?, PointF> f38198d;

    /* renamed from: e  reason: collision with root package name */
    private final f.a<?, PointF> f38199e;

    /* renamed from: f  reason: collision with root package name */
    private final j.b f38200f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f38202h;

    /* renamed from: a  reason: collision with root package name */
    private final Path f38195a = new Path();

    /* renamed from: g  reason: collision with root package name */
    private b f38201g = new b();

    public f(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar, j.b bVar) {
        this.f38196b = bVar.b();
        this.f38197c = fVar;
        f.a<PointF, PointF> a10 = bVar.d().a();
        this.f38198d = a10;
        f.a<PointF, PointF> a11 = bVar.c().a();
        this.f38199e = a11;
        this.f38200f = bVar;
        aVar.i(a10);
        aVar.i(a11);
        a10.a(this);
        a11.a(this);
    }

    private void f() {
        this.f38202h = false;
        this.f38197c.invalidateSelf();
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
                    this.f38201g.a(sVar);
                    sVar.c(this);
                }
            }
        }
    }

    @Override // h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        if (t10 == com.airbnb.lottie.k.f3715k) {
            this.f38198d.n(cVar);
        } else if (t10 == com.airbnb.lottie.k.f3718n) {
            this.f38199e.n(cVar);
        }
    }

    @Override // h.e
    public void e(h.d dVar, int i9, List<h.d> list, h.d dVar2) {
        m.g.m(dVar, i9, list, dVar2, this);
    }

    @Override // e.c
    public String getName() {
        return this.f38196b;
    }

    @Override // e.m
    public Path getPath() {
        if (this.f38202h) {
            return this.f38195a;
        }
        this.f38195a.reset();
        if (this.f38200f.e()) {
            this.f38202h = true;
            return this.f38195a;
        }
        PointF h10 = this.f38198d.h();
        float f10 = h10.x / 2.0f;
        float f11 = h10.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.f38195a.reset();
        if (this.f38200f.f()) {
            float f14 = -f11;
            this.f38195a.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f38195a.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f38195a.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f38195a.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f38195a.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f38195a.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f38195a.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f38195a.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f38195a.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f38195a.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF h11 = this.f38199e.h();
        this.f38195a.offset(h11.x, h11.y);
        this.f38195a.close();
        this.f38201g.b(this.f38195a);
        this.f38202h = true;
        return this.f38195a;
    }
}
