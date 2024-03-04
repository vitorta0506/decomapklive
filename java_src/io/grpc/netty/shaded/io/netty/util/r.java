package io.grpc.netty.shaded.io.netty.util;
/* loaded from: classes5.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45252a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(r.class);

    static {
        ResourceLeakDetector.d(r.class, "touch");
    }

    private r() {
    }

    public static boolean a(Object obj) {
        if (obj instanceof s) {
            return ((s) obj).release();
        }
        return false;
    }

    public static <T> T b(T t10) {
        return t10 instanceof s ? (T) ((s) t10).retain() : t10;
    }

    public static void c(Object obj) {
        try {
            a(obj);
        } catch (Throwable th2) {
            f45252a.warn("Failed to release a message: {}", obj, th2);
        }
    }

    public static <T> T d(T t10, Object obj) {
        return t10 instanceof s ? (T) ((s) t10).touch(obj) : t10;
    }
}
