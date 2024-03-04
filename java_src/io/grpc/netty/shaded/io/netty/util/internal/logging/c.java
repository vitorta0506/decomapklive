package io.grpc.netty.shaded.io.netty.util.internal.logging;
/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f45094a;

    public static c a() {
        if (f45094a == null) {
            f45094a = d(c.class.getName());
        }
        return f45094a;
    }

    public static b b(Class<?> cls) {
        return c(cls.getName());
    }

    public static b c(String str) {
        return a().e(str);
    }

    private static c d(String str) {
        c i9 = i(str);
        if (i9 != null) {
            return i9;
        }
        c g10 = g(str);
        if (g10 != null) {
            return g10;
        }
        c h10 = h(str);
        return h10 != null ? h10 : f(str);
    }

    private static c f(String str) {
        c cVar = e.f45098b;
        cVar.e(str).debug("Using java.util.logging as the default logging framework");
        return cVar;
    }

    private static c g(String str) {
        try {
            c cVar = h.f45103b;
            cVar.e(str).debug("Using Log4J2 as the default logging framework");
            return cVar;
        } catch (Exception | LinkageError unused) {
            return null;
        }
    }

    private static c h(String str) {
        try {
            c cVar = j.f45107b;
            cVar.e(str).debug("Using Log4J as the default logging framework");
            return cVar;
        } catch (Exception | LinkageError unused) {
            return null;
        }
    }

    private static c i(String str) {
        try {
            c cVar = m.f45110c;
            cVar.e(str).debug("Using SLF4J as the default logging framework");
            return cVar;
        } catch (Exception | LinkageError unused) {
            return null;
        }
    }

    protected abstract b e(String str);
}
