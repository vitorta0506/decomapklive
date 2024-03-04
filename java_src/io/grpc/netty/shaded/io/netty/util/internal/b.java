package io.grpc.netty.shaded.io.netty.util.internal;
/* loaded from: classes5.dex */
public final class b {
    private static void a(ClassLoader classLoader, String str) {
        try {
            Class.forName(str, true, classLoader);
        } catch (ClassNotFoundException | SecurityException unused) {
        }
    }

    public static void b(Class<?> cls, Class<?>... clsArr) {
        ClassLoader D = t.D(cls);
        for (Class<?> cls2 : clsArr) {
            a(D, cls2.getName());
        }
    }
}
