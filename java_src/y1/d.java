package y1;
/* loaded from: classes.dex */
public final class d implements q1.b<y1.a> {

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final d f60019a = new d();
    }

    public static d a() {
        return a.f60019a;
    }

    public static y1.a c() {
        return (y1.a) q1.d.c(b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // fi.a
    /* renamed from: b */
    public y1.a get() {
        return c();
    }
}
