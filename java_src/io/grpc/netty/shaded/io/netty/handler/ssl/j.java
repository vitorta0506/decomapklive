package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.net.ssl.SSLEngine;
/* loaded from: classes5.dex */
final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f44587a;

    static {
        Method method;
        if ((io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 8 && io.grpc.netty.shaded.io.netty.util.internal.t.l0() < 15) || io.grpc.netty.shaded.io.netty.util.internal.t.c0()) {
            try {
                Class.forName("org.conscrypt.OpenSSLProvider", true, io.grpc.netty.shaded.io.netty.util.internal.t.D(k.class)).newInstance();
                method = Class.forName("org.conscrypt.i", true, io.grpc.netty.shaded.io.netty.util.internal.t.D(k.class)).getMethod("isConscrypt", SSLEngine.class);
            } catch (Throwable unused) {
            }
            f44587a = method;
        }
        method = null;
        f44587a = method;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return f44587a != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(SSLEngine sSLEngine) {
        try {
            Method method = f44587a;
            if (method != null) {
                return ((Boolean) method.invoke(null, sSLEngine)).booleanValue();
            }
            return false;
        } catch (IllegalAccessException unused) {
            return false;
        } catch (InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }
}
