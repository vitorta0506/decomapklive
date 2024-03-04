package com.google.android.gms.internal.recaptcha;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class i8 {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f8756a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f8757b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f8758c;

    static {
        Object b10 = b();
        f8756a = b10;
        f8757b = b10 == null ? null : c("getStackTraceElement", Throwable.class, Integer.TYPE);
        f8758c = b10 != null ? d(b10) : null;
    }

    public static void a(Throwable th2) {
        if (!(th2 instanceof RuntimeException)) {
            if (th2 instanceof Error) {
                throw ((Error) th2);
            }
            return;
        }
        throw ((RuntimeException) th2);
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
}
