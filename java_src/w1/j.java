package w1;
/* loaded from: classes.dex */
public final class j implements q1.b<e> {

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final j f59296a = new j();
    }

    public static j a() {
        return a.f59296a;
    }

    public static e c() {
        return (e) q1.d.c(f.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // fi.a
    /* renamed from: b */
    public e get() {
        return c();
    }
}
