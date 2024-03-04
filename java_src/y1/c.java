package y1;
/* loaded from: classes.dex */
public final class c implements q1.b<y1.a> {

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final c f60018a = new c();
    }

    public static c a() {
        return a.f60018a;
    }

    public static y1.a b() {
        return (y1.a) q1.d.c(b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // fi.a
    /* renamed from: c */
    public y1.a get() {
        return b();
    }
}
