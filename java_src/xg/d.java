package xg;

import io.grpc.ChannelLogger;
import io.grpc.TlsChannelCredentials;
import io.grpc.b0;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.c1;
import io.grpc.internal.f2;
import io.grpc.internal.h;
import io.grpc.internal.h1;
import io.grpc.internal.p2;
import io.grpc.internal.s;
import io.grpc.internal.u;
import io.grpc.okhttp.NegotiationType;
import io.grpc.okhttp.internal.CipherSuite;
import io.grpc.okhttp.internal.Platform;
import io.grpc.okhttp.internal.TlsVersion;
import io.grpc.okhttp.internal.a;
import io.grpc.r0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.EnumSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
/* loaded from: classes5.dex */
public final class d extends io.grpc.internal.b<d> {

    /* renamed from: r  reason: collision with root package name */
    private static final Logger f59756r = Logger.getLogger(d.class.getName());

    /* renamed from: s  reason: collision with root package name */
    static final io.grpc.okhttp.internal.a f59757s = new a.b(io.grpc.okhttp.internal.a.f45280f).f(CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256).i(TlsVersion.TLS_1_2).h(true).e();

    /* renamed from: t  reason: collision with root package name */
    private static final long f59758t = TimeUnit.DAYS.toNanos(1000);

    /* renamed from: u  reason: collision with root package name */
    private static final f2.d<Executor> f59759u = new a();

    /* renamed from: v  reason: collision with root package name */
    private static final EnumSet<TlsChannelCredentials.Feature> f59760v = EnumSet.of(TlsChannelCredentials.Feature.MTLS, TlsChannelCredentials.Feature.CUSTOM_MANAGERS);

    /* renamed from: b  reason: collision with root package name */
    private final h1 f59761b;

    /* renamed from: c  reason: collision with root package name */
    private p2.b f59762c;

    /* renamed from: d  reason: collision with root package name */
    private Executor f59763d;

    /* renamed from: e  reason: collision with root package name */
    private ScheduledExecutorService f59764e;

    /* renamed from: f  reason: collision with root package name */
    private SocketFactory f59765f;

    /* renamed from: g  reason: collision with root package name */
    private SSLSocketFactory f59766g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f59767h;

    /* renamed from: i  reason: collision with root package name */
    private HostnameVerifier f59768i;

    /* renamed from: j  reason: collision with root package name */
    private io.grpc.okhttp.internal.a f59769j;

    /* renamed from: k  reason: collision with root package name */
    private c f59770k;

    /* renamed from: l  reason: collision with root package name */
    private long f59771l;

    /* renamed from: m  reason: collision with root package name */
    private long f59772m;

    /* renamed from: n  reason: collision with root package name */
    private int f59773n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f59774o;

    /* renamed from: p  reason: collision with root package name */
    private int f59775p;

    /* renamed from: q  reason: collision with root package name */
    private final boolean f59776q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements f2.d<Executor> {
        a() {
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: c */
        public void b(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }

        @Override // io.grpc.internal.f2.d
        /* renamed from: d */
        public Executor a() {
            return Executors.newCachedThreadPool(GrpcUtil.k("grpc-okhttp-%d", true));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f59777a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f59778b;

        static {
            int[] iArr = new int[c.values().length];
            f59778b = iArr;
            try {
                iArr[c.PLAINTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f59778b[c.TLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[NegotiationType.values().length];
            f59777a = iArr2;
            try {
                iArr2[NegotiationType.TLS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f59777a[NegotiationType.PLAINTEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum c {
        TLS,
        PLAINTEXT
    }

    /* renamed from: xg.d$d  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private final class C0692d implements h1.b {
        private C0692d() {
        }

        @Override // io.grpc.internal.h1.b
        public int a() {
            return d.this.D();
        }

        /* synthetic */ C0692d(d dVar, a aVar) {
            this();
        }
    }

    /* loaded from: classes5.dex */
    private final class e implements h1.c {
        private e() {
        }

        @Override // io.grpc.internal.h1.c
        public s a() {
            return d.this.z();
        }

        /* synthetic */ e(d dVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f implements s {

        /* renamed from: a  reason: collision with root package name */
        private final Executor f59784a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f59785b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f59786c;

        /* renamed from: d  reason: collision with root package name */
        private final p2.b f59787d;

        /* renamed from: e  reason: collision with root package name */
        private final SocketFactory f59788e;

        /* renamed from: f  reason: collision with root package name */
        private final SSLSocketFactory f59789f;

        /* renamed from: g  reason: collision with root package name */
        private final HostnameVerifier f59790g;

        /* renamed from: h  reason: collision with root package name */
        private final io.grpc.okhttp.internal.a f59791h;

        /* renamed from: i  reason: collision with root package name */
        private final int f59792i;

        /* renamed from: j  reason: collision with root package name */
        private final boolean f59793j;

        /* renamed from: k  reason: collision with root package name */
        private final long f59794k;

        /* renamed from: l  reason: collision with root package name */
        private final io.grpc.internal.h f59795l;

        /* renamed from: m  reason: collision with root package name */
        private final long f59796m;

        /* renamed from: n  reason: collision with root package name */
        private final int f59797n;

        /* renamed from: o  reason: collision with root package name */
        private final boolean f59798o;

        /* renamed from: p  reason: collision with root package name */
        private final int f59799p;

        /* renamed from: q  reason: collision with root package name */
        private final ScheduledExecutorService f59800q;

        /* renamed from: r  reason: collision with root package name */
        private final boolean f59801r;

        /* renamed from: s  reason: collision with root package name */
        private boolean f59802s;

        /* loaded from: classes5.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h.b f59803a;

            a(h.b bVar) {
                this.f59803a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f59803a.a();
            }
        }

        /* synthetic */ f(Executor executor, ScheduledExecutorService scheduledExecutorService, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, io.grpc.okhttp.internal.a aVar, int i9, boolean z10, long j10, long j11, int i10, boolean z11, int i11, p2.b bVar, boolean z12, a aVar2) {
            this(executor, scheduledExecutorService, socketFactory, sSLSocketFactory, hostnameVerifier, aVar, i9, z10, j10, j11, i10, z11, i11, bVar, z12);
        }

        @Override // io.grpc.internal.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f59802s) {
                return;
            }
            this.f59802s = true;
            if (this.f59786c) {
                f2.f(GrpcUtil.f42362u, this.f59800q);
            }
            if (this.f59785b) {
                f2.f(d.f59759u, this.f59784a);
            }
        }

        @Override // io.grpc.internal.s
        public u h1(SocketAddress socketAddress, s.a aVar, ChannelLogger channelLogger) {
            if (!this.f59802s) {
                h.b d10 = this.f59795l.d();
                xg.g gVar = new xg.g((InetSocketAddress) socketAddress, aVar.a(), aVar.d(), aVar.b(), this.f59784a, this.f59788e, this.f59789f, this.f59790g, this.f59791h, this.f59792i, this.f59797n, aVar.c(), new a(d10), this.f59799p, this.f59787d.a(), this.f59801r);
                if (this.f59793j) {
                    gVar.U(true, d10.b(), this.f59796m, this.f59798o);
                }
                return gVar;
            }
            throw new IllegalStateException("The transport factory is closed.");
        }

        @Override // io.grpc.internal.s
        public ScheduledExecutorService o0() {
            return this.f59800q;
        }

        private f(Executor executor, ScheduledExecutorService scheduledExecutorService, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, io.grpc.okhttp.internal.a aVar, int i9, boolean z10, long j10, long j11, int i10, boolean z11, int i11, p2.b bVar, boolean z12) {
            boolean z13 = scheduledExecutorService == null;
            this.f59786c = z13;
            this.f59800q = z13 ? (ScheduledExecutorService) f2.d(GrpcUtil.f42362u) : scheduledExecutorService;
            this.f59788e = socketFactory;
            this.f59789f = sSLSocketFactory;
            this.f59790g = hostnameVerifier;
            this.f59791h = aVar;
            this.f59792i = i9;
            this.f59793j = z10;
            this.f59794k = j10;
            this.f59795l = new io.grpc.internal.h("keepalive time nanos", j10);
            this.f59796m = j11;
            this.f59797n = i10;
            this.f59798o = z11;
            this.f59799p = i11;
            this.f59801r = z12;
            boolean z14 = executor == null;
            this.f59785b = z14;
            this.f59787d = (p2.b) com.google.common.base.o.t(bVar, "transportTracerFactory");
            if (z14) {
                this.f59784a = (Executor) f2.d(d.f59759u);
            } else {
                this.f59784a = executor;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final SSLSocketFactory f59805a;

        /* renamed from: b  reason: collision with root package name */
        public final io.grpc.b f59806b;

        /* renamed from: c  reason: collision with root package name */
        public final String f59807c;

        private g(SSLSocketFactory sSLSocketFactory, io.grpc.b bVar, String str) {
            this.f59805a = sSLSocketFactory;
            this.f59806b = bVar;
            this.f59807c = str;
        }

        public static g a(String str) {
            return new g(null, null, (String) com.google.common.base.o.t(str, "error"));
        }

        public static g b(SSLSocketFactory sSLSocketFactory) {
            return new g((SSLSocketFactory) com.google.common.base.o.t(sSLSocketFactory, "factory"), null, null);
        }

        public static g c() {
            return new g(null, null, null);
        }

        public g d(io.grpc.b bVar) {
            com.google.common.base.o.t(bVar, "callCreds");
            if (this.f59807c != null) {
                return this;
            }
            io.grpc.b bVar2 = this.f59806b;
            if (bVar2 != null) {
                bVar = new io.grpc.m(bVar2, bVar);
            }
            return new g(this.f59805a, bVar, null);
        }
    }

    private d(String str, int i9) {
        this(GrpcUtil.b(str, i9));
    }

    static TrustManager[] B(byte[] bArr) throws GeneralSecurityException {
        KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
        try {
            keyStore.load(null, null);
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                X509Certificate x509Certificate = (X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream);
                keyStore.setCertificateEntry(x509Certificate.getSubjectX500Principal().getName("RFC2253"), x509Certificate);
                GrpcUtil.f(byteArrayInputStream);
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                return trustManagerFactory.getTrustManagers();
            } catch (Throwable th2) {
                GrpcUtil.f(byteArrayInputStream);
                throw th2;
            }
        } catch (IOException e10) {
            throw new GeneralSecurityException(e10);
        }
    }

    public static d C(String str, int i9) {
        return new d(str, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g J(io.grpc.e eVar) {
        KeyManager[] keyManagerArr;
        TrustManager[] B;
        if (eVar instanceof TlsChannelCredentials) {
            TlsChannelCredentials tlsChannelCredentials = (TlsChannelCredentials) eVar;
            Set<TlsChannelCredentials.Feature> h10 = tlsChannelCredentials.h(f59760v);
            if (!h10.isEmpty()) {
                return g.a("TLS features not understood: " + h10);
            }
            if (tlsChannelCredentials.c() != null) {
                keyManagerArr = (KeyManager[]) tlsChannelCredentials.c().toArray(new KeyManager[0]);
            } else if (tlsChannelCredentials.d() != null) {
                return g.a("byte[]-based private key unsupported. Use KeyManager");
            } else {
                keyManagerArr = null;
            }
            if (tlsChannelCredentials.g() != null) {
                B = (TrustManager[]) tlsChannelCredentials.g().toArray(new TrustManager[0]);
            } else if (tlsChannelCredentials.f() != null) {
                try {
                    B = B(tlsChannelCredentials.f());
                } catch (GeneralSecurityException e10) {
                    f59756r.log(Level.FINE, "Exception loading root certificates from credential", (Throwable) e10);
                    return g.a("Unable to load root certificates: " + e10.getMessage());
                }
            } else {
                B = null;
            }
            try {
                SSLContext sSLContext = SSLContext.getInstance(org.apache.http.conn.ssl.SSLSocketFactory.TLS, Platform.e().g());
                sSLContext.init(keyManagerArr, B, null);
                return g.b(sSLContext.getSocketFactory());
            } catch (GeneralSecurityException e11) {
                throw new RuntimeException("TLS Provider failure", e11);
            }
        } else if (eVar instanceof b0) {
            return g.c();
        } else {
            if (eVar instanceof io.grpc.n) {
                io.grpc.n nVar = (io.grpc.n) eVar;
                return J(nVar.c()).d(nVar.b());
            } else if (eVar instanceof p) {
                return g.b(((p) eVar).a());
            } else {
                if (eVar instanceof io.grpc.f) {
                    StringBuilder sb2 = new StringBuilder();
                    for (io.grpc.e eVar2 : ((io.grpc.f) eVar).a()) {
                        g J = J(eVar2);
                        if (J.f59807c == null) {
                            return J;
                        }
                        sb2.append(", ");
                        sb2.append(J.f59807c);
                    }
                    return g.a(sb2.substring(2));
                }
                return g.a("Unsupported credential type: " + eVar.getClass().getName());
            }
        }
    }

    SSLSocketFactory A() {
        int i9 = b.f59778b[this.f59770k.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                try {
                    if (this.f59766g == null) {
                        this.f59766g = SSLContext.getInstance("Default", Platform.e().g()).getSocketFactory();
                    }
                    return this.f59766g;
                } catch (GeneralSecurityException e10) {
                    throw new RuntimeException("TLS Provider failure", e10);
                }
            }
            throw new RuntimeException("Unknown negotiation type: " + this.f59770k);
        }
        return null;
    }

    int D() {
        int i9 = b.f59778b[this.f59770k.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return 443;
            }
            throw new AssertionError(this.f59770k + " not handled");
        }
        return 80;
    }

    @Override // io.grpc.r0
    /* renamed from: E */
    public d i(long j10, TimeUnit timeUnit) {
        com.google.common.base.o.e(j10 > 0, "keepalive time must be positive");
        long nanos = timeUnit.toNanos(j10);
        this.f59771l = nanos;
        long l10 = c1.l(nanos);
        this.f59771l = l10;
        if (l10 >= f59758t) {
            this.f59771l = Long.MAX_VALUE;
        }
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: F */
    public d j(long j10, TimeUnit timeUnit) {
        com.google.common.base.o.e(j10 > 0, "keepalive timeout must be positive");
        long nanos = timeUnit.toNanos(j10);
        this.f59772m = nanos;
        this.f59772m = c1.m(nanos);
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: G */
    public d k(boolean z10) {
        this.f59774o = z10;
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: H */
    public d l(int i9) {
        com.google.common.base.o.e(i9 >= 0, "negative max");
        this.f42426a = i9;
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: I */
    public d m(int i9) {
        com.google.common.base.o.e(i9 > 0, "maxInboundMetadataSize must be > 0");
        this.f59775p = i9;
        return this;
    }

    @Override // io.grpc.internal.b
    protected r0<?> q() {
        return this.f59761b;
    }

    s z() {
        return new f(this.f59763d, this.f59764e, this.f59765f, A(), this.f59768i, this.f59769j, this.f42426a, this.f59771l != Long.MAX_VALUE, this.f59771l, this.f59772m, this.f59773n, this.f59774o, this.f59775p, this.f59762c, false, null);
    }

    private d(String str) {
        this.f59762c = p2.a();
        this.f59769j = f59757s;
        this.f59770k = c.TLS;
        this.f59771l = Long.MAX_VALUE;
        this.f59772m = GrpcUtil.f42354m;
        this.f59773n = 65535;
        this.f59775p = Integer.MAX_VALUE;
        this.f59776q = false;
        this.f59761b = new h1(str, new e(this, null), new C0692d(this, null));
        this.f59767h = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, io.grpc.e eVar, io.grpc.b bVar, SSLSocketFactory sSLSocketFactory) {
        this.f59762c = p2.a();
        this.f59769j = f59757s;
        c cVar = c.TLS;
        this.f59770k = cVar;
        this.f59771l = Long.MAX_VALUE;
        this.f59772m = GrpcUtil.f42354m;
        this.f59773n = 65535;
        this.f59775p = Integer.MAX_VALUE;
        this.f59776q = false;
        this.f59761b = new h1(str, eVar, bVar, new e(this, null), new C0692d(this, null));
        this.f59766g = sSLSocketFactory;
        this.f59770k = sSLSocketFactory == null ? c.PLAINTEXT : cVar;
        this.f59767h = true;
    }
}
