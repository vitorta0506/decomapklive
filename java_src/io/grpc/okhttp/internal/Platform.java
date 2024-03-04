package io.grpc.okhttp.internal;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.Socket;
import java.security.AccessController;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import okio.Buffer;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
public class Platform {

    /* renamed from: b  reason: collision with root package name */
    public static final Logger f45258b = Logger.getLogger(Platform.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f45259c = {"com.google.android.gms.org.conscrypt.OpenSSLProvider", "org.conscrypt.OpenSSLProvider", "com.android.org.conscrypt.OpenSSLProvider", "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider", "com.google.android.libraries.stitch.sslguard.SslGuardProvider"};

    /* renamed from: d  reason: collision with root package name */
    private static final Platform f45260d = d();

    /* renamed from: a  reason: collision with root package name */
    private final Provider f45261a;

    /* loaded from: classes5.dex */
    public enum TlsExtensionType {
        ALPN_AND_NPN,
        NPN,
        NONE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements PrivilegedExceptionAction<Method> {
        a() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return SSLEngine.class.getMethod("getApplicationProtocol", new Class[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements PrivilegedExceptionAction<Method> {
        b() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class c implements PrivilegedExceptionAction<Method> {
        c() {
        }

        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Method run() throws Exception {
            return SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class d extends Platform {

        /* renamed from: e  reason: collision with root package name */
        private final io.grpc.okhttp.internal.d<Socket> f45262e;

        /* renamed from: f  reason: collision with root package name */
        private final io.grpc.okhttp.internal.d<Socket> f45263f;

        /* renamed from: g  reason: collision with root package name */
        private final Method f45264g;

        /* renamed from: h  reason: collision with root package name */
        private final Method f45265h;

        /* renamed from: i  reason: collision with root package name */
        private final io.grpc.okhttp.internal.d<Socket> f45266i;

        /* renamed from: j  reason: collision with root package name */
        private final io.grpc.okhttp.internal.d<Socket> f45267j;

        /* renamed from: k  reason: collision with root package name */
        private final TlsExtensionType f45268k;

        public d(io.grpc.okhttp.internal.d<Socket> dVar, io.grpc.okhttp.internal.d<Socket> dVar2, Method method, Method method2, io.grpc.okhttp.internal.d<Socket> dVar3, io.grpc.okhttp.internal.d<Socket> dVar4, Provider provider, TlsExtensionType tlsExtensionType) {
            super(provider);
            this.f45262e = dVar;
            this.f45263f = dVar2;
            this.f45264g = method;
            this.f45265h = method2;
            this.f45266i = dVar3;
            this.f45267j = dVar4;
            this.f45268k = tlsExtensionType;
        }

        @Override // io.grpc.okhttp.internal.Platform
        public void c(SSLSocket sSLSocket, String str, List<Protocol> list) {
            if (str != null) {
                this.f45262e.e(sSLSocket, Boolean.TRUE);
                this.f45263f.e(sSLSocket, str);
            }
            if (this.f45267j.g(sSLSocket)) {
                this.f45267j.f(sSLSocket, Platform.b(list));
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        public String h(SSLSocket sSLSocket) {
            byte[] bArr;
            if (this.f45266i.g(sSLSocket) && (bArr = (byte[]) this.f45266i.f(sSLSocket, new Object[0])) != null) {
                return new String(bArr, io.grpc.okhttp.internal.e.f45305c);
            }
            return null;
        }

        @Override // io.grpc.okhttp.internal.Platform
        public TlsExtensionType i() {
            return this.f45268k;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class e extends Platform {

        /* renamed from: e  reason: collision with root package name */
        private final Method f45269e;

        /* renamed from: f  reason: collision with root package name */
        private final Method f45270f;

        /* synthetic */ e(Provider provider, Method method, Method method2, a aVar) {
            this(provider, method, method2);
        }

        @Override // io.grpc.okhttp.internal.Platform
        public void c(SSLSocket sSLSocket, String str, List<Protocol> list) {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            ArrayList arrayList = new ArrayList(list.size());
            for (Protocol protocol : list) {
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                this.f45269e.invoke(sSLParameters, arrayList.toArray(new String[arrayList.size()]));
                sSLSocket.setSSLParameters(sSLParameters);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            } catch (InvocationTargetException e11) {
                throw new RuntimeException(e11);
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        public String h(SSLSocket sSLSocket) {
            try {
                return (String) this.f45270f.invoke(sSLSocket, new Object[0]);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            } catch (InvocationTargetException e11) {
                throw new RuntimeException(e11);
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        public TlsExtensionType i() {
            return TlsExtensionType.ALPN_AND_NPN;
        }

        private e(Provider provider, Method method, Method method2) {
            super(provider);
            this.f45269e = method;
            this.f45270f = method2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class f extends Platform {

        /* renamed from: e  reason: collision with root package name */
        private final Method f45271e;

        /* renamed from: f  reason: collision with root package name */
        private final Method f45272f;

        /* renamed from: g  reason: collision with root package name */
        private final Method f45273g;

        /* renamed from: h  reason: collision with root package name */
        private final Class<?> f45274h;

        /* renamed from: i  reason: collision with root package name */
        private final Class<?> f45275i;

        public f(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2, Provider provider) {
            super(provider);
            this.f45271e = method;
            this.f45272f = method2;
            this.f45273g = method3;
            this.f45274h = cls;
            this.f45275i = cls2;
        }

        @Override // io.grpc.okhttp.internal.Platform
        public void a(SSLSocket sSLSocket) {
            try {
                this.f45273g.invoke(null, sSLSocket);
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException e10) {
                Platform.f45258b.log(Level.FINE, "Failed to remove SSLSocket from Jetty ALPN", (Throwable) e10);
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
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
                this.f45271e.invoke(null, sSLSocket, Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.f45274h, this.f45275i}, new g(arrayList)));
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                throw new AssertionError(e11);
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        public String h(SSLSocket sSLSocket) {
            try {
                g gVar = (g) Proxy.getInvocationHandler(this.f45272f.invoke(null, sSLSocket));
                if (!gVar.f45277b && gVar.f45278c == null) {
                    Platform.f45258b.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                    return null;
                } else if (gVar.f45277b) {
                    return null;
                } else {
                    return gVar.f45278c;
                }
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            } catch (InvocationTargetException unused2) {
                throw new AssertionError();
            }
        }

        @Override // io.grpc.okhttp.internal.Platform
        public TlsExtensionType i() {
            return TlsExtensionType.ALPN_AND_NPN;
        }
    }

    /* loaded from: classes5.dex */
    private static class g implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f45276a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f45277b;

        /* renamed from: c  reason: collision with root package name */
        private String f45278c;

        public g(List<String> list) {
            this.f45276a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = io.grpc.okhttp.internal.e.f45304b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f45277b = true;
                return null;
            } else if (name.equals("protocols") && objArr.length == 0) {
                return this.f45276a;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
                    List list = (List) objArr[0];
                    int size = list.size();
                    for (int i9 = 0; i9 < size; i9++) {
                        if (this.f45276a.contains(list.get(i9))) {
                            String str = (String) list.get(i9);
                            this.f45278c = str;
                            return str;
                        }
                    }
                    String str2 = this.f45276a.get(0);
                    this.f45278c = str2;
                    return str2;
                } else if ((name.equals("protocolSelected") || name.equals("selected")) && objArr.length == 1) {
                    this.f45278c = (String) objArr[0];
                    return null;
                } else {
                    return method.invoke(this, objArr);
                }
            }
        }
    }

    public Platform(Provider provider) {
        this.f45261a = provider;
    }

    public static byte[] b(List<Protocol> list) {
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

    private static Platform d() {
        Method method;
        Method method2;
        TlsExtensionType tlsExtensionType;
        Provider f10 = f();
        if (f10 != null) {
            io.grpc.okhttp.internal.d dVar = new io.grpc.okhttp.internal.d(null, "setUseSessionTickets", Boolean.TYPE);
            io.grpc.okhttp.internal.d dVar2 = new io.grpc.okhttp.internal.d(null, "setHostname", String.class);
            io.grpc.okhttp.internal.d dVar3 = new io.grpc.okhttp.internal.d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            io.grpc.okhttp.internal.d dVar4 = new io.grpc.okhttp.internal.d(null, "setAlpnProtocols", byte[].class);
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                method = cls.getMethod("tagSocket", Socket.class);
                try {
                    method2 = cls.getMethod("untagSocket", Socket.class);
                } catch (ClassNotFoundException | NoSuchMethodException unused) {
                    method2 = null;
                    if (f10.getName().equals("GmsCore_OpenSSL")) {
                    }
                    tlsExtensionType = TlsExtensionType.ALPN_AND_NPN;
                    return new d(dVar, dVar2, method, method2, dVar3, dVar4, f10, tlsExtensionType);
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                method = null;
            }
            if (f10.getName().equals("GmsCore_OpenSSL") && !f10.getName().equals("Conscrypt") && !f10.getName().equals("Ssl_Guard")) {
                if (k()) {
                    tlsExtensionType = TlsExtensionType.ALPN_AND_NPN;
                } else if (j()) {
                    tlsExtensionType = TlsExtensionType.NPN;
                } else {
                    tlsExtensionType = TlsExtensionType.NONE;
                }
            } else {
                tlsExtensionType = TlsExtensionType.ALPN_AND_NPN;
            }
            return new d(dVar, dVar2, method, method2, dVar3, dVar4, f10, tlsExtensionType);
        }
        try {
            Provider provider = SSLContext.getDefault().getProvider();
            try {
                SSLContext sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS, provider);
                sSLContext.init(null, null, null);
                ((Method) AccessController.doPrivileged(new a())).invoke(sSLContext.createSSLEngine(), new Object[0]);
                return new e(provider, (Method) AccessController.doPrivileged(new b()), (Method) AccessController.doPrivileged(new c()), null);
            } catch (IllegalAccessException | InvocationTargetException | KeyManagementException | NoSuchAlgorithmException | PrivilegedActionException unused3) {
                try {
                    Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                    Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
                    return new f(cls2.getMethod("put", SSLSocket.class, cls3), cls2.getMethod("get", SSLSocket.class), cls2.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"), provider);
                } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                    return new Platform(provider);
                }
            }
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Platform e() {
        return f45260d;
    }

    private static Provider f() {
        Provider[] providers;
        String[] strArr;
        for (Provider provider : Security.getProviders()) {
            for (String str : f45259c) {
                if (str.equals(provider.getClass().getName())) {
                    f45258b.log(Level.FINE, "Found registered provider {0}", str);
                    return provider;
                }
            }
        }
        f45258b.log(Level.WARNING, "Unable to find Conscrypt");
        return null;
    }

    private static boolean j() {
        try {
            Platform.class.getClassLoader().loadClass("android.app.ActivityOptions");
            return true;
        } catch (ClassNotFoundException e10) {
            f45258b.log(Level.FINE, "Can't find class", (Throwable) e10);
            return false;
        }
    }

    private static boolean k() {
        try {
            Platform.class.getClassLoader().loadClass("android.net.Network");
            return true;
        } catch (ClassNotFoundException e10) {
            f45258b.log(Level.FINE, "Can't find class", (Throwable) e10);
            return false;
        }
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void c(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    public Provider g() {
        return this.f45261a;
    }

    public String h(SSLSocket sSLSocket) {
        return null;
    }

    public TlsExtensionType i() {
        return TlsExtensionType.NONE;
    }
}
