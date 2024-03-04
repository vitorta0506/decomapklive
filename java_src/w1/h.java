package w1;

import android.content.Context;
/* loaded from: classes.dex */
public final class h implements q1.b<String> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Context> f59292a;

    public h(fi.a<Context> aVar) {
        this.f59292a = aVar;
    }

    public static h a(fi.a<Context> aVar) {
        return new h(aVar);
    }

    public static String c(Context context) {
        return (String) q1.d.c(f.b(context), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // fi.a
    /* renamed from: b */
    public String get() {
        return c(this.f59292a.get());
    }
}
