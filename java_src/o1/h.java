package o1;

import android.content.Context;
/* loaded from: classes.dex */
public final class h implements q1.b<g> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Context> f55479a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<y1.a> f55480b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<y1.a> f55481c;

    public h(fi.a<Context> aVar, fi.a<y1.a> aVar2, fi.a<y1.a> aVar3) {
        this.f55479a = aVar;
        this.f55480b = aVar2;
        this.f55481c = aVar3;
    }

    public static h a(fi.a<Context> aVar, fi.a<y1.a> aVar2, fi.a<y1.a> aVar3) {
        return new h(aVar, aVar2, aVar3);
    }

    public static g c(Context context, y1.a aVar, y1.a aVar2) {
        return new g(context, aVar, aVar2);
    }

    @Override // fi.a
    /* renamed from: b */
    public g get() {
        return c(this.f55479a.get(), this.f55480b.get(), this.f55481c.get());
    }
}
