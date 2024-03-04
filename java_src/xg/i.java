package xg;

import io.grpc.internal.GrpcUtil;
import io.grpc.okhttp.internal.Platform;
import io.grpc.okhttp.internal.Protocol;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class i {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f59874b = Logger.getLogger(i.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final Platform f59875c = Platform.e();

    /* renamed from: d  reason: collision with root package name */
    private static i f59876d = d(i.class.getClassLoader());

    /* renamed from: a  reason: collision with root package name */
    protected final Platform f59877a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a extends i {

        /* renamed from: e  reason: collision with root package name */
        private static final io.grpc.okhttp.internal.d<Socket> f59878e;

        /* renamed from: f  reason: collision with root package name */
        private static final io.grpc.okhttp.internal.d<Socket> f59879f;

        /* renamed from: g  reason: collision with root package name */
        private static final io.grpc.okhttp.internal.d<Socket> f59880g;

        /* renamed from: h  reason: collision with root package name */
        private static final io.grpc.okhttp.internal.d<Socket> f59881h;

        /* renamed from: i  reason: collision with root package name */
        private static final io.grpc.okhttp.internal.d<Socket> f59882i;

        /* renamed from: j  reason: collision with root package name */
        private static final io.grpc.okhttp.internal.d<Socket> f59883j;

        /* renamed from: k  reason: collision with root package name */
        private static final Method f59884k;

        /* renamed from: l  reason: collision with root package name */
        private static final Method f59885l;

        /* renamed from: m  reason: collision with root package name */
        private static final Method f59886m;

        /* renamed from: n  reason: collision with root package name */
        private static final Method f59887n;

        /* renamed from: o  reason: collision with root package name */
        private static final Method f59888o;

        /* renamed from: p  reason: collision with root package name */
        private static final Method f59889p;

        /* renamed from: q  reason: collision with root package name */
        private static final Constructor<?> f59890q;

        static {
            Method method;
            Method method2;
            Method method3;
            Method method4;
            Method method5;
            Method method6;
            Class<?> cls;
            Class<?> cls2 = Boolean.TYPE;
            Constructor<?> constructor = null;
            f59878e = new io.grpc.okhttp.internal.d<>(null, "setUseSessionTickets", cls2);
            f59879f = new io.grpc.okhttp.internal.d<>(null, "setHostname", String.class);
            f59880g = new io.grpc.okhttp.internal.d<>(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            f59881h = new io.grpc.okhttp.internal.d<>(null, "setAlpnProtocols", byte[].class);
            f59882i = new io.grpc.okhttp.internal.d<>(byte[].class, "getNpnSelectedProtocol", new Class[0]);
            f59883j = new io.grpc.okhttp.internal.d<>(null, "setNpnProtocols", byte[].class);
            try {
                method2 = SSLParameters.class.getMethod("setApplicationProtocols", String[].class);
                try {
                    method = SSLParameters.class.getMethod("getApplicationProtocols", new Class[0]);
                    try {
                        method3 = SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]);
                        try {
                            cls = Class.forName("android.net.ssl.SSLSockets");
                            method4 = cls.getMethod("isSupportedSocket", SSLSocket.class);
                        } catch (ClassNotFoundException e10) {
                            e = e10;
                            method4 = null;
                        } catch (NoSuchMethodException e11) {
                            e = e11;
                            method4 = null;
                        }
                    } catch (ClassNotFoundException e12) {
                        e = e12;
                        method3 = null;
                        method4 = method3;
                        i.f59874b.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                        method5 = null;
                        f59886m = method2;
                        f59887n = method;
                        f59888o = method3;
                        f59884k = method4;
                        f59885l = method5;
                        method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                        f59889p = method6;
                        f59890q = constructor;
                    } catch (NoSuchMethodException e13) {
                        e = e13;
                        method3 = null;
                        method4 = method3;
                        i.f59874b.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                        method5 = null;
                        f59886m = method2;
                        f59887n = method;
                        f59888o = method3;
                        f59884k = method4;
                        f59885l = method5;
                        method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                        f59889p = method6;
                        f59890q = constructor;
                    }
                    try {
                        method5 = cls.getMethod("setUseSessionTickets", SSLSocket.class, cls2);
                    } catch (ClassNotFoundException e14) {
                        e = e14;
                        i.f59874b.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                        method5 = null;
                        f59886m = method2;
                        f59887n = method;
                        f59888o = method3;
                        f59884k = method4;
                        f59885l = method5;
                        method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                        f59889p = method6;
                        f59890q = constructor;
                    } catch (NoSuchMethodException e15) {
                        e = e15;
                        i.f59874b.log(Level.FINER, "Failed to find Android 10.0+ APIs", (Throwable) e);
                        method5 = null;
                        f59886m = method2;
                        f59887n = method;
                        f59888o = method3;
                        f59884k = method4;
                        f59885l = method5;
                        method6 = SSLParameters.class.getMethod("setServerNames", List.class);
                        constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
                        f59889p = method6;
                        f59890q = constructor;
                    }
                } catch (ClassNotFoundException e16) {
                    e = e16;
                    method = null;
                    method3 = null;
                } catch (NoSuchMethodException e17) {
                    e = e17;
                    method = null;
                    method3 = null;
                }
            } catch (ClassNotFoundException e18) {
                e = e18;
                method = null;
                method2 = null;
                method3 = null;
            } catch (NoSuchMethodException e19) {
                e = e19;
                method = null;
                method2 = null;
                method3 = null;
            }
            f59886m = method2;
            f59887n = method;
            f59888o = method3;
            f59884k = method4;
            f59885l = method5;
            try {
                method6 = SSLParameters.class.getMethod("setServerNames", List.class);
            } catch (ClassNotFoundException e20) {
                e = e20;
                method6 = null;
            } catch (NoSuchMethodException e21) {
                e = e21;
                method6 = null;
            }
            try {
                constructor = Class.forName("javax.net.ssl.SNIHostName").getConstructor(String.class);
            } catch (ClassNotFoundException e22) {
                e = e22;
                i.f59874b.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                f59889p = method6;
                f59890q = constructor;
            } catch (NoSuchMethodException e23) {
                e = e23;
                i.f59874b.log(Level.FINER, "Failed to find Android 7.0+ APIs", (Throwable) e);
                f59889p = method6;
                f59890q = constructor;
            }
            f59889p = method6;
            f59890q = constructor;
        }

        a(Platform platform) {
            super(platform);
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00d4  */
        @Override // xg.i
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void c(javax.net.ssl.SSLSocket r9, java.lang.String r10, java.util.List<io.grpc.okhttp.internal.Protocol> r11) {
            /*
                Method dump skipped, instructions count: 241
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: xg.i.a.c(javax.net.ssl.SSLSocket, java.lang.String, java.util.List):void");
        }

        @Override // xg.i
        public String f(SSLSocket sSLSocket) {
            Method method = f59888o;
            if (method != null) {
                try {
                    return (String) method.invoke(sSLSocket, new Object[0]);
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException(e10);
                } catch (InvocationTargetException e11) {
                    if (e11.getTargetException() instanceof UnsupportedOperationException) {
                        i.f59874b.log(Level.FINER, "Socket unsupported for getApplicationProtocol, will try old methods");
                    } else {
                        throw new RuntimeException(e11);
                    }
                }
            }
            if (this.f59877a.i() == Platform.TlsExtensionType.ALPN_AND_NPN) {
                try {
                    byte[] bArr = (byte[]) f59880g.f(sSLSocket, new Object[0]);
                    if (bArr != null) {
                        return new String(bArr, io.grpc.okhttp.internal.e.f45305c);
                    }
                } catch (Exception e12) {
                    i.f59874b.log(Level.FINE, "Failed calling getAlpnSelectedProtocol()", (Throwable) e12);
                }
            }
            if (this.f59877a.i() != Platform.TlsExtensionType.NONE) {
                try {
                    byte[] bArr2 = (byte[]) f59882i.f(sSLSocket, new Object[0]);
                    if (bArr2 != null) {
                        return new String(bArr2, io.grpc.okhttp.internal.e.f45305c);
                    }
                    return null;
                } catch (Exception e13) {
                    i.f59874b.log(Level.FINE, "Failed calling getNpnSelectedProtocol()", (Throwable) e13);
                    return null;
                }
            }
            return null;
        }

        @Override // xg.i
        public String h(SSLSocket sSLSocket, String str, List<Protocol> list) throws IOException {
            String f10 = f(sSLSocket);
            return f10 == null ? super.h(sSLSocket, str, list) : f10;
        }
    }

    i(Platform platform) {
        this.f59877a = (Platform) com.google.common.base.o.t(platform, "platform");
    }

    static i d(ClassLoader classLoader) {
        boolean z10;
        try {
            classLoader.loadClass("com.android.org.conscrypt.OpenSSLSocketImpl");
        } catch (ClassNotFoundException e10) {
            f59874b.log(Level.FINE, "Unable to find Conscrypt. Skipping", (Throwable) e10);
            try {
                classLoader.loadClass("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e11) {
                f59874b.log(Level.FINE, "Unable to find any OpenSSLSocketImpl. Skipping", (Throwable) e11);
                z10 = false;
            }
        }
        z10 = true;
        if (z10) {
            return new a(f59875c);
        }
        return new i(f59875c);
    }

    public static i e() {
        return f59876d;
    }

    static boolean g(String str) {
        if (str.contains("_")) {
            return false;
        }
        try {
            GrpcUtil.d(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String[] i(List<Protocol> list) {
        ArrayList arrayList = new ArrayList();
        for (Protocol protocol : list) {
            arrayList.add(protocol.toString());
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    protected void c(SSLSocket sSLSocket, String str, List<Protocol> list) {
        this.f59877a.c(sSLSocket, str, list);
    }

    public String f(SSLSocket sSLSocket) {
        return this.f59877a.h(sSLSocket);
    }

    public String h(SSLSocket sSLSocket, String str, List<Protocol> list) throws IOException {
        if (list != null) {
            c(sSLSocket, str, list);
        }
        try {
            sSLSocket.startHandshake();
            String f10 = f(sSLSocket);
            if (f10 != null) {
                return f10;
            }
            throw new RuntimeException("TLS ALPN negotiation failed with protocols: " + list);
        } finally {
            this.f59877a.a(sSLSocket);
        }
    }
}
