package h;

import android.graphics.PointF;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final PointF f40213a;

    /* renamed from: b  reason: collision with root package name */
    private final PointF f40214b;

    /* renamed from: c  reason: collision with root package name */
    private final PointF f40215c;

    public a() {
        this.f40213a = new PointF();
        this.f40214b = new PointF();
        this.f40215c = new PointF();
    }

    public PointF a() {
        return this.f40213a;
    }

    public PointF b() {
        return this.f40214b;
    }

    public PointF c() {
        return this.f40215c;
    }

    public void d(float f10, float f11) {
        this.f40213a.set(f10, f11);
    }

    public void e(float f10, float f11) {
        this.f40214b.set(f10, f11);
    }

    public void f(float f10, float f11) {
        this.f40215c.set(f10, f11);
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f40213a = pointF;
        this.f40214b = pointF2;
        this.f40215c = pointF3;
    }
}
