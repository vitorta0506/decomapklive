package io.grpc.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class x1 implements e1 {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f43113b = Logger.getLogger(x1.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final Constructor<?> f43114c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f43115d;

    /* renamed from: e  reason: collision with root package name */
    private static final Method f43116e;

    /* renamed from: f  reason: collision with root package name */
    private static final RuntimeException f43117f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object[] f43118g;

    /* renamed from: a  reason: collision with root package name */
    private final Object f43119a;

    static {
        Method method;
        Method method2;
        Constructor<?> constructor;
        try {
            Class<?> cls = Class.forName("java.util.concurrent.atomic.LongAdder");
            method = cls.getMethod("add", Long.TYPE);
            try {
                method2 = cls.getMethod("sum", new Class[0]);
                try {
                    Constructor<?>[] constructors = cls.getConstructors();
                    int length = constructors.length;
                    int i9 = 0;
                    while (true) {
                        if (i9 >= length) {
                            constructor = null;
                            break;
                        }
                        constructor = constructors[i9];
                        if (constructor.getParameterTypes().length == 0) {
                            break;
                        }
                        i9++;
                    }
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                    f43113b.log(Level.FINE, "LongAdder can not be found via reflection, this is normal for JDK7 and below", th);
                    constructor = null;
                    if (th != null) {
                    }
                    f43114c = null;
                    f43115d = null;
                    f43116e = null;
                    f43117f = new RuntimeException(th);
                    f43118g = new Object[]{1L};
                }
            } catch (Throwable th3) {
                th = th3;
                method2 = null;
            }
        } catch (Throwable th4) {
            th = th4;
            method = null;
            method2 = null;
        }
        if (th != null && constructor != null) {
            f43114c = constructor;
            f43115d = method;
            f43116e = method2;
            f43117f = null;
        } else {
            f43114c = null;
            f43115d = null;
            f43116e = null;
            f43117f = new RuntimeException(th);
        }
        f43118g = new Object[]{1L};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x1() {
        RuntimeException runtimeException = f43117f;
        if (runtimeException == null) {
            try {
                this.f43119a = f43114c.newInstance(new Object[0]);
                return;
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException(e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException(e12);
            }
        }
        throw runtimeException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return f43117f == null;
    }

    @Override // io.grpc.internal.e1
    public void add(long j10) {
        try {
            f43115d.invoke(this.f43119a, j10 == 1 ? f43118g : new Object[]{Long.valueOf(j10)});
        } catch (IllegalAccessException e10) {
            throw new RuntimeException(e10);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }
}
