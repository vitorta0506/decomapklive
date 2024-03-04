package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.List;
import java.util.function.BiFunction;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
final class t {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44812a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(t.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Method f44813b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f44814c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f44815d;

    /* renamed from: e  reason: collision with root package name */
    private static final Method f44816e;

    /* renamed from: f  reason: collision with root package name */
    private static final Method f44817f;

    /* loaded from: classes5.dex */
    static class a implements PrivilegedExceptionAction<Method> {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return SSLEngine.class.getMethod("getHandshakeApplicationProtocol", new Class[0]);
        }
    }

    /* loaded from: classes5.dex */
    static class b implements PrivilegedExceptionAction<Method> {
        b() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return SSLEngine.class.getMethod("getApplicationProtocol", new Class[0]);
        }
    }

    /* loaded from: classes5.dex */
    static class c implements PrivilegedExceptionAction<Method> {
        c() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
        }
    }

    /* loaded from: classes5.dex */
    static class d implements PrivilegedExceptionAction<Method> {
        d() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return SSLEngine.class.getMethod("setHandshakeApplicationProtocolSelector", BiFunction.class);
        }
    }

    /* loaded from: classes5.dex */
    static class e implements BiFunction<SSLEngine, List<String>, String> {
        e() {
        }

        @Override // java.util.function.BiFunction
        /* renamed from: a */
        public String apply(SSLEngine sSLEngine, List<String> list) {
            return null;
        }
    }

    /* loaded from: classes5.dex */
    static class f implements PrivilegedExceptionAction<Method> {
        f() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return SSLEngine.class.getMethod("getHandshakeApplicationProtocolSelector", new Class[0]);
        }
    }

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5 = null;
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS);
            sSLContext.init(null, null, null);
            SSLEngine createSSLEngine = sSLContext.createSSLEngine();
            Method method6 = (Method) AccessController.doPrivileged(new a());
            method6.invoke(createSSLEngine, new Object[0]);
            method = (Method) AccessController.doPrivileged(new b());
            method.invoke(createSSLEngine, new Object[0]);
            method2 = (Method) AccessController.doPrivileged(new c());
            method2.invoke(createSSLEngine.getSSLParameters(), io.grpc.netty.shaded.io.netty.util.internal.h.f45069f);
            method3 = (Method) AccessController.doPrivileged(new d());
            method3.invoke(createSSLEngine, new e());
            method4 = (Method) AccessController.doPrivileged(new f());
            method4.invoke(createSSLEngine, new Object[0]);
            method5 = method6;
        } catch (Throwable th2) {
            int l02 = io.grpc.netty.shaded.io.netty.util.internal.t.l0();
            if (l02 >= 9) {
                f44812a.error("Unable to initialize JdkAlpnSslUtils, but the detected java version was: {}", Integer.valueOf(l02), th2);
            }
            method = null;
            method2 = null;
            method3 = null;
            method4 = null;
        }
        f44815d = method5;
        f44814c = method;
        f44813b = method2;
        f44816e = method3;
        f44817f = method4;
    }

    private t() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(SSLEngine sSLEngine) {
        try {
            return (String) f44814c.invoke(sSLEngine, new Object[0]);
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(SSLEngine sSLEngine) {
        try {
            return (String) f44815d.invoke(sSLEngine, new Object[0]);
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BiFunction<SSLEngine, List<String>, String> c(SSLEngine sSLEngine) {
        try {
            return (BiFunction) f44817f.invoke(sSLEngine, new Object[0]);
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(SSLEngine sSLEngine, List<String> list) {
        SSLParameters sSLParameters = sSLEngine.getSSLParameters();
        try {
            f44813b.invoke(sSLParameters, (String[]) list.toArray(io.grpc.netty.shaded.io.netty.util.internal.h.f45069f));
            sSLEngine.setSSLParameters(sSLParameters);
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(SSLEngine sSLEngine, BiFunction<SSLEngine, List<String>, String> biFunction) {
        try {
            f44816e.invoke(sSLEngine, biFunction);
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f() {
        return f44814c != null;
    }
}
