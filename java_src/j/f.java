package j;

import android.graphics.PointF;
import e.o;
import i.m;
/* loaded from: classes.dex */
public class f implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f52842a;

    /* renamed from: b  reason: collision with root package name */
    private final m<PointF, PointF> f52843b;

    /* renamed from: c  reason: collision with root package name */
    private final m<PointF, PointF> f52844c;

    /* renamed from: d  reason: collision with root package name */
    private final i.b f52845d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f52846e;

    public f(String str, m<PointF, PointF> mVar, m<PointF, PointF> mVar2, i.b bVar, boolean z10) {
        this.f52842a = str;
        this.f52843b = mVar;
        this.f52844c = mVar2;
        this.f52845d = bVar;
        this.f52846e = z10;
    }

    @Override // j.c
    public e.c a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new o(fVar, aVar, this);
    }

    public i.b b() {
        return this.f52845d;
    }

    public String c() {
        return this.f52842a;
    }

    public m<PointF, PointF> d() {
        return this.f52843b;
    }

    public m<PointF, PointF> e() {
        return this.f52844c;
    }

    public boolean f() {
        return this.f52846e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f52843b + ", size=" + this.f52844c + '}';
    }
}
