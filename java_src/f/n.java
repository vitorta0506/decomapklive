package f;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import java.util.Collections;
/* loaded from: classes.dex */
public class n extends a<PointF, PointF> {

    /* renamed from: i  reason: collision with root package name */
    private final PointF f39545i;

    /* renamed from: j  reason: collision with root package name */
    private final PointF f39546j;

    /* renamed from: k  reason: collision with root package name */
    private final a<Float, Float> f39547k;

    /* renamed from: l  reason: collision with root package name */
    private final a<Float, Float> f39548l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    protected n.c<Float> f39549m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    protected n.c<Float> f39550n;

    public n(a<Float, Float> aVar, a<Float, Float> aVar2) {
        super(Collections.emptyList());
        this.f39545i = new PointF();
        this.f39546j = new PointF();
        this.f39547k = aVar;
        this.f39548l = aVar2;
        m(f());
    }

    @Override // f.a
    public void m(float f10) {
        this.f39547k.m(f10);
        this.f39548l.m(f10);
        this.f39545i.set(this.f39547k.h().floatValue(), this.f39548l.h().floatValue());
        for (int i9 = 0; i9 < this.f39508a.size(); i9++) {
            this.f39508a.get(i9).a();
        }
    }

    @Override // f.a
    /* renamed from: p */
    public PointF h() {
        return i(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // f.a
    /* renamed from: q */
    public PointF i(n.a<PointF> aVar, float f10) {
        Float f11;
        n.a<Float> b10;
        n.a<Float> b11;
        Float f12 = null;
        if (this.f39549m == null || (b11 = this.f39547k.b()) == null) {
            f11 = null;
        } else {
            float d10 = this.f39547k.d();
            Float f13 = b11.f55182h;
            n.c<Float> cVar = this.f39549m;
            float f14 = b11.f55181g;
            f11 = cVar.b(f14, f13 == null ? f14 : f13.floatValue(), b11.f55176b, b11.f55177c, f10, f10, d10);
        }
        if (this.f39550n != null && (b10 = this.f39548l.b()) != null) {
            float d11 = this.f39548l.d();
            Float f15 = b10.f55182h;
            n.c<Float> cVar2 = this.f39550n;
            float f16 = b10.f55181g;
            f12 = cVar2.b(f16, f15 == null ? f16 : f15.floatValue(), b10.f55176b, b10.f55177c, f10, f10, d11);
        }
        if (f11 == null) {
            this.f39546j.set(this.f39545i.x, 0.0f);
        } else {
            this.f39546j.set(f11.floatValue(), 0.0f);
        }
        if (f12 == null) {
            PointF pointF = this.f39546j;
            pointF.set(pointF.x, this.f39545i.y);
        } else {
            PointF pointF2 = this.f39546j;
            pointF2.set(pointF2.x, f12.floatValue());
        }
        return this.f39546j;
    }

    public void r(@Nullable n.c<Float> cVar) {
        n.c<Float> cVar2 = this.f39549m;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f39549m = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    public void s(@Nullable n.c<Float> cVar) {
        n.c<Float> cVar2 = this.f39550n;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f39550n = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
