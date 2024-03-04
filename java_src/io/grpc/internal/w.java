package io.grpc.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.Provider;
/* loaded from: classes5.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f43102a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f43103b;

    static {
        Method method;
        Method method2 = null;
        try {
            int i9 = org.conscrypt.i.f56362b;
            Method method3 = org.conscrypt.i.class.getMethod("newProvider", new Class[0]);
            method = org.conscrypt.i.class.getMethod("isConscrypt", Provider.class);
            method2 = method3;
        } catch (ClassNotFoundException unused) {
            method = null;
        } catch (NoSuchMethodException e10) {
            throw new AssertionError(e10);
        }
        f43102a = method2;
        f43103b = method;
    }

    public static boolean a(Provider provider) {
        if (b()) {
            try {
                return ((Boolean) f43103b.invoke(null, provider)).booleanValue();
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                throw new AssertionError(e11);
            }
        }
        return false;
    }

    public static boolean b() {
        return f43102a != null;
    }

    public static Provider c() throws Throwable {
        if (b()) {
            return (Provider) f43102a.invoke(null, new Object[0]);
        }
        int i9 = org.conscrypt.i.f56362b;
        throw new AssertionError("Unexpected failure referencing Conscrypt class");
    }
}
