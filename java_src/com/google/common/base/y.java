package com.google.common.base;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f12407a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f12408b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f12409c;

    static {
        Object b10 = b();
        f12407a = b10;
        f12408b = b10 == null ? null : a();
        f12409c = b10 != null ? d(b10) : null;
    }

    private static Method a() {
        return c("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    private static Object b() {
        try {
            return Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e10) {
            throw e10;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e10) {
            throw e10;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method d(Object obj) {
        try {
            Method c10 = c("getStackTraceDepth", Throwable.class);
            if (c10 == null) {
                return null;
            }
            c10.invoke(obj, new Throwable());
            return c10;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused) {
            return null;
        }
    }

    public static String e(Throwable th2) {
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @Deprecated
    public static RuntimeException f(Throwable th2) {
        k(th2);
        throw new RuntimeException(th2);
    }

    @Deprecated
    public static <X extends Throwable> void g(Throwable th2, Class<X> cls) throws Throwable {
        if (th2 != null) {
            j(th2, cls);
        }
    }

    @Deprecated
    public static void h(Throwable th2) {
        if (th2 != null) {
            k(th2);
        }
    }

    public static <X extends Throwable> void i(Throwable th2, Class<X> cls) throws Throwable {
        g(th2, cls);
        h(th2);
    }

    public static <X extends Throwable> void j(Throwable th2, Class<X> cls) throws Throwable {
        o.s(th2);
        if (cls.isInstance(th2)) {
            throw cls.cast(th2);
        }
    }

    public static void k(Throwable th2) {
        o.s(th2);
        if (!(th2 instanceof RuntimeException)) {
            if (th2 instanceof Error) {
                throw ((Error) th2);
            }
            return;
        }
        throw ((RuntimeException) th2);
    }
}
