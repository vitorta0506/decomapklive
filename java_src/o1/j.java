package o1;

import android.content.Context;
/* loaded from: classes.dex */
public final class j implements q1.b<i> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Context> f55487a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<g> f55488b;

    public j(fi.a<Context> aVar, fi.a<g> aVar2) {
        this.f55487a = aVar;
        this.f55488b = aVar2;
    }

    public static j a(fi.a<Context> aVar, fi.a<g> aVar2) {
        return new j(aVar, aVar2);
    }

    public static i c(Context context, Object obj) {
        return new i(context, (g) obj);
    }

    @Override // fi.a
    /* renamed from: b */
    public i get() {
        return c(this.f55487a.get(), this.f55488b.get());
    }
}
