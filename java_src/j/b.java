package j;

import android.graphics.PointF;
import i.m;
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: a  reason: collision with root package name */
    private final String f52825a;

    /* renamed from: b  reason: collision with root package name */
    private final m<PointF, PointF> f52826b;

    /* renamed from: c  reason: collision with root package name */
    private final i.f f52827c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f52828d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f52829e;

    public b(String str, m<PointF, PointF> mVar, i.f fVar, boolean z10, boolean z11) {
        this.f52825a = str;
        this.f52826b = mVar;
        this.f52827c = fVar;
        this.f52828d = z10;
        this.f52829e = z11;
    }

    @Override // j.c
    public e.c a(com.airbnb.lottie.f fVar, com.airbnb.lottie.model.layer.a aVar) {
        return new e.f(fVar, aVar, this);
    }

    public String b() {
        return this.f52825a;
    }

    public m<PointF, PointF> c() {
        return this.f52826b;
    }

    public i.f d() {
        return this.f52827c;
    }

    public boolean e() {
        return this.f52829e;
    }

    public boolean f() {
        return this.f52828d;
    }
}
