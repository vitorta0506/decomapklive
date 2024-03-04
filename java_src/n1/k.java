package n1;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class k implements q1.b<Executor> {

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final k f55269a = new k();
    }

    public static k a() {
        return a.f55269a;
    }

    public static Executor b() {
        return (Executor) q1.d.c(j.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // fi.a
    /* renamed from: c */
    public Executor get() {
        return b();
    }
}
