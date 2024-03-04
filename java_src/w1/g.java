package w1;
/* loaded from: classes.dex */
public final class g implements q1.b<String> {

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final g f59290a = new g();
    }

    public static g a() {
        return a.f59290a;
    }

    public static String b() {
        return (String) q1.d.c(f.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // fi.a
    /* renamed from: c */
    public String get() {
        return b();
    }
}
