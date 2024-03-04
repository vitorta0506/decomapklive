package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.tls.TrustRootIndex;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okio.Buffer;
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static final g f29827a = e();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a extends g {

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f29828b;

        /* renamed from: c  reason: collision with root package name */
        private final f<Socket> f29829c;

        /* renamed from: d  reason: collision with root package name */
        private final f<Socket> f29830d;

        /* renamed from: e  reason: collision with root package name */
        private final Method f29831e;

        /* renamed from: f  reason: collision with root package name */
        private final Method f29832f;

        /* renamed from: g  reason: collision with root package name */
        private final f<Socket> f29833g;

        /* renamed from: h  reason: collision with root package name */
        private final f<Socket> f29834h;

        public a(Class<?> cls, f<Socket> fVar, f<Socket> fVar2, Method method, Method method2, f<Socket> fVar3, f<Socket> fVar4) {
            this.f29828b = cls;
            this.f29829c = fVar;
            this.f29830d = fVar2;
            this.f29831e = method;
            this.f29832f = method2;
            this.f29833g = fVar3;
            this.f29834h = fVar4;
        }

        @Override // com.squareup.okhttp.internal.g
        public void c(SSLSocket sSLSocket, String str, List<Protocol> list) {
            if (str != null) {
                this.f29829c.e(sSLSocket, Boolean.TRUE);
                this.f29830d.e(sSLSocket, str);
            }
            f<Socket> fVar = this.f29834h;
            if (fVar == null || !fVar.g(sSLSocket)) {
                return;
            }
            this.f29834h.f(sSLSocket, g.b(list));
        }

        @Override // com.squareup.okhttp.internal.g
        public void d(Socket socket, InetSocketAddress inetSocketAddress, int i9) throws IOException {
            try {
                socket.connect(inetSocketAddress, i9);
            } catch (AssertionError e10) {
                if (!i.o(e10)) {
                    throw e10;
                }
                throw new IOException(e10);
            } catch (SecurityException e11) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e11);
                throw iOException;
            }
        }

        @Override // com.squareup.okhttp.internal.g
        public String h(SSLSocket sSLSocket) {
            byte[] bArr;
            f<Socket> fVar = this.f29833g;
            if (fVar == null || !fVar.g(sSLSocket) || (bArr = (byte[]) this.f29833g.f(sSLSocket, new Object[0])) == null) {
                return null;
            }
            return new String(bArr, i.f29847c);
        }

        @Override // com.squareup.okhttp.internal.g
        public X509TrustManager k(SSLSocketFactory sSLSocketFactory) {
            Object j10 = g.j(sSLSocketFactory, this.f29828b, "sslParameters");
            if (j10 == null) {
                try {
                    j10 = g.j(sSLSocketFactory, Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, sSLSocketFactory.getClass().getClassLoader()), "sslParameters");
                } catch (ClassNotFoundException unused) {
                    return null;
                }
            }
            X509TrustManager x509TrustManager = (X509TrustManager) g.j(j10, X509TrustManager.class, "x509TrustManager");
            return x509TrustManager != null ? x509TrustManager : (X509TrustManager) g.j(j10, X509TrustManager.class, "trustManager");
        }

        @Override // com.squareup.okhttp.internal.g
        public TrustRootIndex l(X509TrustManager x509TrustManager) {
            TrustRootIndex a10 = se.a.a(x509TrustManager);
            return a10 != null ? a10 : super.l(x509TrustManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b extends g {

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f29835b;

        public b(Class<?> cls) {
            this.f29835b = cls;
        }

        @Override // com.squareup.okhttp.internal.g
        public X509TrustManager k(SSLSocketFactory sSLSocketFactory) {
            Object j10 = g.j(sSLSocketFactory, this.f29835b, "context");
            if (j10 == null) {
                return null;
            }
            return (X509TrustManager) g.j(j10, X509TrustManager.class, "trustManager");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class c extends b {

        /* renamed from: c  reason: collision with root package name */
        private final Method f29836c;

        /* renamed from: d  reason: collision with root package name */
        private final Method f29837d;

        /* renamed from: e  reason: collision with root package name */
        private final Method f29838e;

        /* renamed from: f  reason: collision with root package name */
        private final Class<?> f29839f;

        /* renamed from: g  reason: collision with root package name */
        private final Class<?> f29840g;

        public c(Class<?> cls, Method method, Method method2, Method method3, Class<?> cls2, Class<?> cls3) {
            super(cls);
            this.f29836c = method;
            this.f29837d = method2;
            this.f29838e = method3;
            this.f29839f = cls2;
            this.f29840g = cls3;
        }

        @Override // com.squareup.okhttp.internal.g
        public void a(SSLSocket sSLSocket) {
            try {
                this.f29838e.invoke(null, sSLSocket);
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new AssertionError();
            }
        }

        @Override // com.squareup.okhttp.internal.g
        public void c(SSLSocket sSLSocket, String str, List<Protocol> list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                Protocol protocol = list.get(i9);
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                this.f29836c.invoke(null, sSLSocket, Proxy.newProxyInstance(g.class.getClassLoader(), new Class[]{this.f29839f, this.f29840g}, new d(arrayList)));
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override // com.squareup.okhttp.internal.g
        public String h(SSLSocket sSLSocket) {
            try {
                d dVar = (d) Proxy.getInvocationHandler(this.f29837d.invoke(null, sSLSocket));
                if (!dVar.f29842b && dVar.f29843c == null) {
                    com.squareup.okhttp.internal.d.logger.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                    return null;
                } else if (dVar.f29842b) {
                    return null;
                } else {
                    return dVar.f29843c;
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new AssertionError();
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class d implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f29841a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f29842b;

        /* renamed from: c  reason: collision with root package name */
        private String f29843c;

        public d(List<String> list) {
            this.f29841a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = i.f29846b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f29842b = true;
                return null;
            } else if (name.equals("protocols") && objArr.length == 0) {
                return this.f29841a;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
                    List list = (List) objArr[0];
                    int size = list.size();
                    for (int i9 = 0; i9 < size; i9++) {
                        if (this.f29841a.contains(list.get(i9))) {
                            String str = (String) list.get(i9);
                            this.f29843c = str;
                            return str;
                        }
                    }
                    String str2 = this.f29841a.get(0);
                    this.f29843c = str2;
                    return str2;
                } else if ((name.equals("protocolSelected") || name.equals("selected")) && objArr.length == 1) {
                    this.f29843c = (String) objArr[0];
                    return null;
                } else {
                    return method.invoke(this, objArr);
                }
            }
        }
    }

    static byte[] b(List<Protocol> list) {
        Buffer buffer = new Buffer();
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            Protocol protocol = list.get(i9);
            if (protocol != Protocol.HTTP_1_0) {
                buffer.writeByte(protocol.toString().length());
                buffer.writeUtf8(protocol.toString());
            }
        }
        return buffer.readByteArray();
    }

    private static g e() {
        Class<?> cls;
        Method method;
        Method method2;
        f fVar;
        try {
            try {
                try {
                    cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
                } catch (ClassNotFoundException unused) {
                    return new g();
                }
            } catch (ClassNotFoundException unused2) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            f fVar2 = null;
            f fVar3 = new f(null, "setUseSessionTickets", Boolean.TYPE);
            f fVar4 = new f(null, "setHostname", String.class);
            try {
                Class<?> cls3 = Class.forName("android.net.TrafficStats");
                method2 = cls3.getMethod("tagSocket", Socket.class);
                try {
                    method = cls3.getMethod("untagSocket", Socket.class);
                    try {
                        Class.forName("android.net.Network");
                        fVar = new f(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                        try {
                            fVar2 = new f(null, "setAlpnProtocols", byte[].class);
                        } catch (ClassNotFoundException | NoSuchMethodException unused3) {
                        }
                    } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                        fVar = null;
                    }
                } catch (ClassNotFoundException | NoSuchMethodException unused5) {
                    method = null;
                    fVar = null;
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused6) {
                method = null;
                method2 = null;
                fVar = null;
            }
            return new a(cls2, fVar3, fVar4, method2, method, fVar, fVar2);
        } catch (ClassNotFoundException unused7) {
            Class<?> cls4 = Class.forName("sun.security.ssl.SSLContextImpl");
            try {
                Class<?> cls5 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                Class<?> cls6 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
                return new c(cls4, cls5.getMethod("put", SSLSocket.class, cls6), cls5.getMethod("get", SSLSocket.class), cls5.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
            } catch (ClassNotFoundException | NoSuchMethodException unused8) {
                return new b(cls4);
            }
        }
    }

    public static g f() {
        return f29827a;
    }

    static <T> T j(Object obj, Class<T> cls, String str) {
        Object j10;
        for (Class<?> cls2 = obj.getClass(); cls2 != Object.class; cls2 = cls2.getSuperclass()) {
            try {
                Field declaredField = cls2.getDeclaredField(str);
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(obj);
                if (obj2 != null && cls.isInstance(obj2)) {
                    return cls.cast(obj2);
                }
                return null;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (NoSuchFieldException unused2) {
            }
        }
        if (str.equals("delegate") || (j10 = j(obj, Object.class, "delegate")) == null) {
            return null;
        }
        return (T) j(j10, cls, str);
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void c(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    public void d(Socket socket, InetSocketAddress inetSocketAddress, int i9) throws IOException {
        socket.connect(inetSocketAddress, i9);
    }

    public String g() {
        return "OkHttp";
    }

    public String h(SSLSocket sSLSocket) {
        return null;
    }

    public void i(String str) {
        System.out.println(str);
    }

    public X509TrustManager k(SSLSocketFactory sSLSocketFactory) {
        return null;
    }

    public TrustRootIndex l(X509TrustManager x509TrustManager) {
        return new se.e(x509TrustManager.getAcceptedIssuers());
    }
}
