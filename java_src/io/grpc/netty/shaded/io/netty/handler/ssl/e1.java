package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.AccessController;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivilegedAction;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class e1 {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44536a;

    /* renamed from: b  reason: collision with root package name */
    private static final d f44537b;

    /* loaded from: classes5.dex */
    static class a implements d {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.e1.d
        public X509TrustManager a(X509TrustManager x509TrustManager) {
            return x509TrustManager;
        }
    }

    /* loaded from: classes5.dex */
    static class b implements X509TrustManager {
        b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            throw new CertificateException();
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            throw new CertificateException();
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return io.grpc.netty.shaded.io.netty.util.internal.h.f45074k;
        }
    }

    /* loaded from: classes5.dex */
    static class c implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SSLContext f44538a;

        c(SSLContext sSLContext) {
            this.f44538a = sSLContext;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                try {
                    long C0 = io.grpc.netty.shaded.io.netty.util.internal.t.C0(SSLContext.class.getDeclaredField("contextSpi"));
                    Object L = io.grpc.netty.shaded.io.netty.util.internal.t.L(this.f44538a, C0);
                    if (L != null) {
                        Class<?> cls = L.getClass();
                        while (true) {
                            try {
                                long C02 = io.grpc.netty.shaded.io.netty.util.internal.t.C0(cls.getDeclaredField("trustManager"));
                                if (io.grpc.netty.shaded.io.netty.util.internal.t.L(L, C02) instanceof X509ExtendedTrustManager) {
                                    return new e(C0, C02);
                                }
                            } catch (NoSuchFieldException unused) {
                            }
                            cls = cls.getSuperclass();
                            if (cls == null) {
                                break;
                            }
                        }
                    }
                    throw new NoSuchFieldException();
                } catch (NoSuchFieldException e10) {
                    return e10;
                }
            } catch (SecurityException e11) {
                return e11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface d {
        X509TrustManager a(X509TrustManager x509TrustManager);
    }

    /* loaded from: classes5.dex */
    private static final class e implements d {

        /* renamed from: a  reason: collision with root package name */
        private final long f44539a;

        /* renamed from: b  reason: collision with root package name */
        private final long f44540b;

        e(long j10, long j11) {
            this.f44539a = j10;
            this.f44540b = j11;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.e1.d
        public X509TrustManager a(X509TrustManager x509TrustManager) {
            if (!(x509TrustManager instanceof X509ExtendedTrustManager)) {
                try {
                    SSLContext a10 = e1.a();
                    a10.init(null, new TrustManager[]{x509TrustManager}, null);
                    Object L = io.grpc.netty.shaded.io.netty.util.internal.t.L(a10, this.f44539a);
                    if (L != null) {
                        Object L2 = io.grpc.netty.shaded.io.netty.util.internal.t.L(L, this.f44540b);
                        if (L2 instanceof X509ExtendedTrustManager) {
                            return (X509TrustManager) L2;
                        }
                    }
                } catch (KeyManagementException e10) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(e10);
                } catch (NoSuchAlgorithmException e11) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(e11);
                } catch (NoSuchProviderException e12) {
                    io.grpc.netty.shaded.io.netty.util.internal.t.R0(e12);
                }
            }
            return x509TrustManager;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [io.grpc.netty.shaded.io.netty.handler.ssl.e1$d] */
    static {
        SSLContext sSLContext;
        io.grpc.netty.shaded.io.netty.util.internal.logging.b b10 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(e1.class);
        f44536a = b10;
        a aVar = new a();
        Throwable th2 = null;
        if (io.grpc.netty.shaded.io.netty.util.internal.t.Q() == null) {
            try {
                sSLContext = b();
                sSLContext.init(null, new TrustManager[]{new b()}, null);
            } catch (Throwable th3) {
                th2 = th3;
                sSLContext = null;
            }
            if (th2 != null) {
                f44536a.debug("Unable to access wrapped TrustManager", th2);
            } else {
                Object doPrivileged = AccessController.doPrivileged(new c(sSLContext));
                if (doPrivileged instanceof Throwable) {
                    f44536a.debug("Unable to access wrapped TrustManager", (Throwable) doPrivileged);
                } else {
                    aVar = (d) doPrivileged;
                }
            }
        } else {
            b10.debug("Unable to access wrapped TrustManager", (Throwable) null);
        }
        f44537b = aVar;
    }

    private e1() {
    }

    static /* synthetic */ SSLContext a() throws NoSuchAlgorithmException, NoSuchProviderException {
        return b();
    }

    private static SSLContext b() throws NoSuchAlgorithmException, NoSuchProviderException {
        return SSLContext.getInstance(SSLSocketFactory.TLS, "SunJSSE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static X509TrustManager c(X509TrustManager x509TrustManager) {
        return f44537b.a(x509TrustManager);
    }
}
