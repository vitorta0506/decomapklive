package com.squareup.okhttp.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes4.dex */
class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f29666a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29667b;

    /* renamed from: c  reason: collision with root package name */
    private final Class[] f29668c;

    public f(Class<?> cls, String str, Class... clsArr) {
        this.f29666a = cls;
        this.f29667b = str;
        this.f29668c = clsArr;
    }

    private Method a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f29667b;
        if (str != null) {
            Method b10 = b(cls, str, this.f29668c);
            if (b10 == null || (cls2 = this.f29666a) == null || cls2.isAssignableFrom(b10.getReturnType())) {
                return b10;
            }
            return null;
        }
        return null;
    }

    private static Method b(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }

    public Object c(T t10, Object... objArr) throws InvocationTargetException {
        Method a10 = a(t10.getClass());
        if (a10 != null) {
            try {
                return a10.invoke(t10, objArr);
            } catch (IllegalAccessException e10) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + a10);
                assertionError.initCause(e10);
                throw assertionError;
            }
        }
        throw new AssertionError("Method " + this.f29667b + " not supported for object " + t10);
    }

    public Object d(T t10, Object... objArr) throws InvocationTargetException {
        Method a10 = a(t10.getClass());
        if (a10 == null) {
            return null;
        }
        try {
            return a10.invoke(t10, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    public Object e(T t10, Object... objArr) {
        try {
            return d(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object f(T t10, Object... objArr) {
        try {
            return c(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public boolean g(T t10) {
        return a(t10.getClass()) != null;
    }
}
