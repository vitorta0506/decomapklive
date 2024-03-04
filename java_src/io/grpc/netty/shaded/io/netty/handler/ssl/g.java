package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.List;
import java.util.function.BiFunction;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44541a = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(g.class);

    /* renamed from: b  reason: collision with root package name */
    private static final Class f44542b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f44543c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f44544d;

    /* renamed from: e  reason: collision with root package name */
    private static final Method f44545e;

    /* renamed from: f  reason: collision with root package name */
    private static final Method f44546f;

    /* renamed from: g  reason: collision with root package name */
    private static final Method f44547g;

    /* renamed from: h  reason: collision with root package name */
    private static final Method f44548h;

    /* renamed from: i  reason: collision with root package name */
    private static final Class f44549i;

    /* renamed from: j  reason: collision with root package name */
    private static final Method f44550j;

    /* loaded from: classes5.dex */
    static class a implements PrivilegedExceptionAction<Method> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f44551a;

        a(Class cls) {
            this.f44551a = cls;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return this.f44551a.getMethod("select", Object.class, List.class);
        }
    }

    /* loaded from: classes5.dex */
    static class b implements PrivilegedExceptionAction<Method> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f44552a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f44553b;

        b(Class cls, Class cls2) {
            this.f44552a = cls;
            this.f44553b = cls2;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return this.f44552a.getMethod("setParameters", this.f44553b);
        }
    }

    /* loaded from: classes5.dex */
    static class c implements PrivilegedExceptionAction<Method> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f44554a;

        c(Class cls) {
            this.f44554a = cls;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return this.f44554a.getMethod("setApplicationProtocols", String[].class);
        }
    }

    /* loaded from: classes5.dex */
    static class d implements PrivilegedExceptionAction<Method> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f44555a;

        d(Class cls) {
            this.f44555a = cls;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return this.f44555a.getMethod("getApplicationProtocol", new Class[0]);
        }
    }

    /* loaded from: classes5.dex */
    static class e implements PrivilegedExceptionAction<Method> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f44556a;

        e(Class cls) {
            this.f44556a = cls;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return this.f44556a.getMethod("getHandshakeApplicationProtocol", new Class[0]);
        }
    }

    /* loaded from: classes5.dex */
    static class f implements PrivilegedExceptionAction<Method> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f44557a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f44558b;

        f(Class cls, Class cls2) {
            this.f44557a = cls;
            this.f44558b = cls2;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return this.f44557a.getMethod("setBCHandshakeApplicationProtocolSelector", this.f44558b);
        }
    }

    /* renamed from: io.grpc.netty.shaded.io.netty.handler.ssl.g$g  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static class C0493g implements PrivilegedExceptionAction<Method> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Class f44559a;

        C0493g(Class cls) {
            this.f44559a = cls;
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return this.f44559a.getMethod("getBCHandshakeApplicationProtocolSelector", new Class[0]);
        }
    }

    /* loaded from: classes5.dex */
    static class h implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BiFunction f44560a;

        h(BiFunction biFunction) {
            this.f44560a = biFunction;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (method.getName().equals("select")) {
                try {
                    return this.f44560a.apply((SSLEngine) objArr[0], (List) objArr[1]);
                } catch (ClassCastException e10) {
                    throw new RuntimeException("BCApplicationProtocolSelector select method parameter of invalid type.", e10);
                }
            }
            throw new UnsupportedOperationException(String.format("Method '%s' not supported.", method.getName()));
        }
    }

    /* loaded from: classes5.dex */
    static class i implements BiFunction<SSLEngine, List<String>, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f44561a;

        i(Object obj) {
            this.f44561a = obj;
        }

        @Override // java.util.function.BiFunction
        /* renamed from: a */
        public String apply(SSLEngine sSLEngine, List<String> list) {
            try {
                return (String) g.f44550j.invoke(this.f44561a, sSLEngine, list);
            } catch (Exception e10) {
                throw new RuntimeException("Could not call getHandshakeApplicationProtocolSelector", e10);
            }
        }
    }

    static {
        Method method;
        Method method2;
        Class<?> cls;
        Method method3;
        Method method4;
        Method method5;
        Method method6;
        Method method7;
        Class<?> cls2 = null;
        try {
            Class<?> cls3 = Class.forName("org.bouncycastle.jsse.BCSSLEngine");
            Class<?> cls4 = Class.forName("org.bouncycastle.jsse.BCSSLParameters");
            Object newInstance = cls4.newInstance();
            cls = Class.forName("org.bouncycastle.jsse.BCApplicationProtocolSelector");
            method3 = (Method) AccessController.doPrivileged(new a(cls));
            SSLEngine createSSLEngine = v1.f("BCJSSE").createSSLEngine();
            method4 = (Method) AccessController.doPrivileged(new b(cls3, cls4));
            method4.invoke(createSSLEngine, newInstance);
            method6 = (Method) AccessController.doPrivileged(new c(cls4));
            method6.invoke(newInstance, io.grpc.netty.shaded.io.netty.util.internal.h.f45069f);
            method2 = (Method) AccessController.doPrivileged(new d(cls3));
            method2.invoke(createSSLEngine, new Object[0]);
            method5 = (Method) AccessController.doPrivileged(new e(cls3));
            method5.invoke(createSSLEngine, new Object[0]);
            method7 = (Method) AccessController.doPrivileged(new f(cls3, cls));
            method = (Method) AccessController.doPrivileged(new C0493g(cls3));
            method.invoke(createSSLEngine, new Object[0]);
            cls2 = cls4;
        } catch (Throwable th2) {
            f44541a.error("Unable to initialize BouncyCastleAlpnSslUtils.", th2);
            method = null;
            method2 = null;
            cls = null;
            method3 = null;
            method4 = null;
            method5 = null;
            method6 = null;
            method7 = null;
        }
        f44542b = cls2;
        f44543c = method4;
        f44544d = method6;
        f44545e = method2;
        f44546f = method5;
        f44547g = method7;
        f44548h = method;
        f44550j = method3;
        f44549i = cls;
    }

    private g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(SSLEngine sSLEngine) {
        try {
            return (String) f44545e.invoke(sSLEngine, new Object[0]);
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(SSLEngine sSLEngine) {
        try {
            return (String) f44546f.invoke(sSLEngine, new Object[0]);
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BiFunction<SSLEngine, List<String>, String> d(SSLEngine sSLEngine) {
        try {
            return new i(f44548h.invoke(sSLEngine, new Object[0]));
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(SSLEngine sSLEngine, List<String> list) {
        SSLParameters sSLParameters = sSLEngine.getSSLParameters();
        String[] strArr = (String[]) list.toArray(io.grpc.netty.shaded.io.netty.util.internal.h.f45069f);
        try {
            Object newInstance = f44542b.newInstance();
            f44544d.invoke(newInstance, strArr);
            f44543c.invoke(sSLEngine, newInstance);
            sSLEngine.setSSLParameters(sSLParameters);
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(SSLEngine sSLEngine, BiFunction<SSLEngine, List<String>, String> biFunction) {
        try {
            f44547g.invoke(sSLEngine, Proxy.newProxyInstance(g.class.getClassLoader(), new Class[]{f44549i}, new h(biFunction)));
        } catch (UnsupportedOperationException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new IllegalStateException(e11);
        }
    }
}
