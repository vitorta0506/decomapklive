package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.ApplicationProtocolConfig;
import io.grpc.netty.shaded.io.netty.internal.tcnative.AsyncSSLPrivateKeyMethod;
import io.grpc.netty.shaded.io.netty.internal.tcnative.CertificateVerifier;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext;
import io.grpc.netty.shaded.io.netty.util.ResourceLeakDetector;
import java.security.PrivateKey;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes5.dex */
public abstract class j1 extends p1 implements io.grpc.netty.shaded.io.netty.util.s {

    /* renamed from: u  reason: collision with root package name */
    private static final Integer f44591u;

    /* renamed from: d  reason: collision with root package name */
    protected long f44597d;

    /* renamed from: e  reason: collision with root package name */
    private final List<String> f44598e;

    /* renamed from: f  reason: collision with root package name */
    private final f0 f44599f;

    /* renamed from: g  reason: collision with root package name */
    private final int f44600g;

    /* renamed from: h  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.v<j1> f44601h;

    /* renamed from: i  reason: collision with root package name */
    private final io.grpc.netty.shaded.io.netty.util.b f44602i;

    /* renamed from: j  reason: collision with root package name */
    final Certificate[] f44603j;

    /* renamed from: k  reason: collision with root package name */
    final ClientAuth f44604k;

    /* renamed from: l  reason: collision with root package name */
    final String[] f44605l;

    /* renamed from: m  reason: collision with root package name */
    final boolean f44606m;

    /* renamed from: n  reason: collision with root package name */
    final p0 f44607n;

    /* renamed from: o  reason: collision with root package name */
    final ReadWriteLock f44608o;

    /* renamed from: p  reason: collision with root package name */
    private volatile int f44609p;

    /* renamed from: q  reason: collision with root package name */
    final boolean f44610q;

    /* renamed from: r  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f44588r = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(j1.class);

    /* renamed from: s  reason: collision with root package name */
    private static final int f44589s = Math.max(1, io.grpc.netty.shaded.io.netty.util.internal.c0.e("io.grpc.netty.shaded.io.netty.handler.ssl.openssl.bioNonApplicationBufferSize", 2048));

    /* renamed from: t  reason: collision with root package name */
    static final boolean f44590t = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.handler.ssl.openssl.useTasks", true);

    /* renamed from: v  reason: collision with root package name */
    private static final ResourceLeakDetector<j1> f44592v = io.grpc.netty.shaded.io.netty.util.t.b().c(j1.class);

    /* renamed from: w  reason: collision with root package name */
    static final boolean f44593w = io.grpc.netty.shaded.io.netty.util.internal.c0.d("jdk.tls.client.enableSessionTicketExtension", false);

    /* renamed from: x  reason: collision with root package name */
    static final boolean f44594x = io.grpc.netty.shaded.io.netty.util.internal.c0.d("jdk.tls.client.enableSessionTicketExtension", true);

    /* renamed from: y  reason: collision with root package name */
    static final boolean f44595y = io.grpc.netty.shaded.io.netty.util.internal.c0.d("jdk.tls.server.enableSessionTicketExtension", false);

    /* renamed from: z  reason: collision with root package name */
    static final boolean f44596z = io.grpc.netty.shaded.io.netty.util.internal.c0.d("jdk.tls.server.enableSessionTicketExtension", true);
    static final boolean A = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.handler.ssl.openssl.sessionCacheServer", true);
    static final boolean B = io.grpc.netty.shaded.io.netty.util.internal.c0.d("io.grpc.netty.shaded.io.netty.handler.ssl.openssl.sessionCacheClient", false);
    static final f0 C = new b();

    /* loaded from: classes5.dex */
    class a extends io.grpc.netty.shaded.io.netty.util.b {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.b
        protected void deallocate() {
            j1.this.I();
            if (j1.this.f44601h != null) {
                j1.this.f44601h.b(j1.this);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.util.s
        public io.grpc.netty.shaded.io.netty.util.s touch(Object obj) {
            if (j1.this.f44601h != null) {
                j1.this.f44601h.a(obj);
            }
            return j1.this;
        }
    }

    /* loaded from: classes5.dex */
    static class b implements f0 {
        b() {
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f0
        public ApplicationProtocolConfig.SelectorFailureBehavior a() {
            return ApplicationProtocolConfig.SelectorFailureBehavior.CHOOSE_MY_LAST_PROTOCOL;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.b
        public List<String> b() {
            return Collections.emptyList();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f0
        public ApplicationProtocolConfig.SelectedListenerFailureBehavior d() {
            return ApplicationProtocolConfig.SelectedListenerFailureBehavior.ACCEPT;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f0
        public ApplicationProtocolConfig.Protocol protocol() {
            return ApplicationProtocolConfig.Protocol.NONE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44612a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f44613b;

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ int[] f44614c;

        static {
            int[] iArr = new int[ApplicationProtocolConfig.SelectedListenerFailureBehavior.values().length];
            f44614c = iArr;
            try {
                iArr[ApplicationProtocolConfig.SelectedListenerFailureBehavior.CHOOSE_MY_LAST_PROTOCOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44614c[ApplicationProtocolConfig.SelectedListenerFailureBehavior.ACCEPT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ApplicationProtocolConfig.SelectorFailureBehavior.values().length];
            f44613b = iArr2;
            try {
                iArr2[ApplicationProtocolConfig.SelectorFailureBehavior.NO_ADVERTISE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f44613b[ApplicationProtocolConfig.SelectorFailureBehavior.CHOOSE_MY_LAST_PROTOCOL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[ApplicationProtocolConfig.Protocol.values().length];
            f44612a = iArr3;
            try {
                iArr3[ApplicationProtocolConfig.Protocol.NPN.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f44612a[ApplicationProtocolConfig.Protocol.ALPN.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f44612a[ApplicationProtocolConfig.Protocol.NPN_AND_ALPN.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f44612a[ApplicationProtocolConfig.Protocol.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes5.dex */
    static abstract class d extends CertificateVerifier {

        /* renamed from: p0  reason: collision with root package name */
        private final p0 f44615p0;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(p0 p0Var) {
            this.f44615p0 = p0Var;
        }
    }

    /* loaded from: classes5.dex */
    private static final class e implements AsyncSSLPrivateKeyMethod {

        /* renamed from: a  reason: collision with root package name */
        private final p0 f44616a;

        /* renamed from: b  reason: collision with root package name */
        private final g0 f44617b;

        /* loaded from: classes5.dex */
        private static final class a implements ug.r {

            /* renamed from: a  reason: collision with root package name */
            private final k1 f44618a;

            /* renamed from: b  reason: collision with root package name */
            private final long f44619b;

            /* renamed from: c  reason: collision with root package name */
            private final rg.b<byte[]> f44620c;

            a(k1 k1Var, long j10, rg.b<byte[]> bVar) {
                this.f44618a = k1Var;
                this.f44619b = j10;
                this.f44620c = bVar;
            }

            @Override // ug.r
            public void e(ug.q<byte[]> qVar) {
                Throwable L = qVar.L();
                if (L == null) {
                    try {
                        this.f44620c.b(this.f44619b, j1.W(qVar.Q()));
                        return;
                    } catch (SignatureException e10) {
                        L = e10;
                        this.f44618a.H(L);
                    }
                }
                this.f44620c.a(this.f44619b, L);
            }
        }

        e(p0 p0Var, g0 g0Var) {
            this.f44616a = p0Var;
            this.f44617b = g0Var;
        }

        private k1 c(long j10) throws SSLException {
            k1 c10 = this.f44616a.c(j10);
            if (c10 != null) {
                return c10;
            }
            throw new SSLException("Could not find a " + io.grpc.netty.shaded.io.netty.util.internal.b0.l(k1.class) + " for sslPointer " + j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.AsyncSSLPrivateKeyMethod
        public void a(long j10, int i9, byte[] bArr, rg.b<byte[]> bVar) {
            try {
                k1 c10 = c(j10);
                this.f44617b.a(c10, i9, bArr).c(new a(c10, j10, bVar));
            } catch (SSLException e10) {
                bVar.a(j10, e10);
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.AsyncSSLPrivateKeyMethod
        public void b(long j10, byte[] bArr, rg.b<byte[]> bVar) {
            try {
                k1 c10 = c(j10);
                this.f44617b.b(c10, bArr).c(new a(c10, j10, bVar));
            } catch (SSLException e10) {
                bVar.a(j10, e10);
            }
        }
    }

    /* loaded from: classes5.dex */
    private static final class g implements rg.c {

        /* renamed from: a  reason: collision with root package name */
        private final p0 f44622a;

        /* renamed from: b  reason: collision with root package name */
        private final u0 f44623b;

        g(p0 p0Var, u0 u0Var) {
            this.f44622a = p0Var;
            this.f44623b = u0Var;
        }

        private k1 c(long j10) throws SSLException {
            k1 c10 = this.f44622a.c(j10);
            if (c10 != null) {
                return c10;
            }
            throw new SSLException("Could not find a " + io.grpc.netty.shaded.io.netty.util.internal.b0.l(k1.class) + " for sslPointer " + j10);
        }

        @Override // rg.c
        public byte[] a(long j10, byte[] bArr) throws Exception {
            k1 c10 = c(j10);
            try {
                return j1.W(this.f44623b.b(c10, bArr));
            } catch (Exception e10) {
                c10.H(e10);
                throw e10;
            }
        }

        @Override // rg.c
        public byte[] b(long j10, int i9, byte[] bArr) throws Exception {
            k1 c10 = c(j10);
            try {
                return j1.W(this.f44623b.a(c10, i9, bArr));
            } catch (Exception e10) {
                c10.H(e10);
                throw e10;
            }
        }
    }

    static {
        Integer num = null;
        try {
            String b10 = io.grpc.netty.shaded.io.netty.util.internal.c0.b("jdk.tls.ephemeralDHKeySize");
            if (b10 != null) {
                try {
                    num = Integer.valueOf(b10);
                } catch (NumberFormatException unused) {
                    f44588r.debug("ReferenceCountedOpenSslContext supports -Djdk.tls.ephemeralDHKeySize={int}, but got: " + b10);
                }
            }
        } catch (Throwable unused2) {
        }
        f44591u = num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j1(Iterable<String> iterable, i iVar, f0 f0Var, int i9, Certificate[] certificateArr, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, boolean z12, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        super(z10);
        boolean z13;
        u0 u0Var;
        g0 g0Var;
        this.f44602i = new a();
        this.f44607n = new f(null);
        this.f44608o = new ReentrantReadWriteLock();
        this.f44609p = f44589s;
        e0.e();
        if (z11 && !e0.k()) {
            throw new IllegalStateException("OCSP is not supported.");
        }
        if (i9 != 1 && i9 != 0) {
            throw new IllegalArgumentException("mode most be either SSL.SSL_MODE_SERVER or SSL.SSL_MODE_CLIENT");
        }
        boolean z14 = f44590t;
        if (entryArr != null) {
            u0Var = null;
            g0Var = null;
            z13 = false;
            for (Map.Entry<r1<?>, Object> entry : entryArr) {
                r1<?> key = entry.getKey();
                if (key == m0.f44704g) {
                    z13 = ((Boolean) entry.getValue()).booleanValue();
                } else if (key == m0.f44703f) {
                    z14 = ((Boolean) entry.getValue()).booleanValue();
                } else if (key == m0.f44705h) {
                    u0Var = (u0) entry.getValue();
                } else if (key == m0.f44706i) {
                    g0Var = (g0) entry.getValue();
                } else {
                    f44588r.debug("Skipping unsupported " + r1.class.getSimpleName() + ": " + entry.getKey());
                }
            }
        } else {
            z13 = false;
            u0Var = null;
            g0Var = null;
        }
        if (u0Var != null && g0Var != null) {
            throw new IllegalArgumentException("You can either only use " + g0.class.getSimpleName() + " or " + u0.class.getSimpleName());
        }
        this.f44610q = z13;
        this.f44601h = z12 ? f44592v.l(this) : null;
        this.f44600g = i9;
        this.f44604k = r() ? (ClientAuth) io.grpc.netty.shaded.io.netty.util.internal.s.h(clientAuth, "clientAuth") : ClientAuth.NONE;
        this.f44605l = strArr;
        this.f44606m = z11;
        this.f44603j = certificateArr == null ? null : (Certificate[]) certificateArr.clone();
        String[] a10 = ((i) io.grpc.netty.shaded.io.netty.util.internal.s.h(iVar, "cipherFilter")).a(iterable, e0.f44522c, e0.a());
        LinkedHashSet linkedHashSet = new LinkedHashSet(a10.length);
        Collections.addAll(linkedHashSet, a10);
        ArrayList arrayList = new ArrayList(linkedHashSet);
        this.f44598e = arrayList;
        this.f44599f = (f0) io.grpc.netty.shaded.io.netty.util.internal.s.h(f0Var, "apn");
        try {
            boolean l10 = e0.l();
            try {
                this.f44597d = SSLContext.make(l10 ? 62 : 30, i9);
                StringBuilder sb2 = new StringBuilder();
                StringBuilder sb3 = new StringBuilder();
                try {
                    if (arrayList.isEmpty()) {
                        SSLContext.setCipherSuite(this.f44597d, "", false);
                        if (l10) {
                            SSLContext.setCipherSuite(this.f44597d, "", true);
                        }
                    } else {
                        h.c(arrayList, sb2, sb3, e0.i());
                        SSLContext.setCipherSuite(this.f44597d, sb2.toString(), false);
                        if (l10) {
                            SSLContext.setCipherSuite(this.f44597d, e0.b(f44588r, sb3.toString()), true);
                        }
                    }
                    int options = SSLContext.getOptions(this.f44597d);
                    int i10 = SSL.f44935b;
                    int i11 = SSL.f44936c;
                    int i12 = SSL.f44937d;
                    int i13 = SSL.f44938e;
                    int i14 = options | i10 | i11 | i12 | i13 | SSL.f44934a | SSL.f44942i | SSL.f44941h;
                    SSLContext.setOptions(this.f44597d, sb2.length() == 0 ? i14 | i10 | i11 | i12 | i13 | SSL.f44939f : i14);
                    long j10 = this.f44597d;
                    SSLContext.setMode(j10, SSLContext.getMode(j10) | SSL.f44951r);
                    Integer num = f44591u;
                    if (num != null) {
                        SSLContext.setTmpDHLength(this.f44597d, num.intValue());
                    }
                    List<String> b10 = f0Var.b();
                    if (!b10.isEmpty()) {
                        String[] strArr2 = (String[]) b10.toArray(new String[0]);
                        int N = N(f0Var.a());
                        int i15 = c.f44612a[f0Var.protocol().ordinal()];
                        if (i15 == 1) {
                            SSLContext.d(this.f44597d, strArr2, N);
                        } else if (i15 == 2) {
                            SSLContext.b(this.f44597d, strArr2, N);
                        } else if (i15 == 3) {
                            SSLContext.d(this.f44597d, strArr2, N);
                            SSLContext.b(this.f44597d, strArr2, N);
                        } else {
                            throw new Error();
                        }
                    }
                    if (z11) {
                        SSLContext.enableOcsp(this.f44597d, q());
                    }
                    SSLContext.setUseTasks(this.f44597d, z14);
                    if (u0Var != null) {
                        SSLContext.f(this.f44597d, new g(this.f44607n, u0Var));
                    }
                    if (g0Var != null) {
                        SSLContext.e(this.f44597d, new e(this.f44607n, g0Var));
                    }
                    SSLContext.c(this.f44597d, e0.f44534o);
                } catch (SSLException e10) {
                    throw e10;
                } catch (Exception e11) {
                    throw new SSLException("failed to set cipher suite: " + this.f44598e, e11);
                }
            } catch (Exception e12) {
                throw new SSLException("failed to create an SSL_CTX", e12);
            }
        } catch (Throwable th2) {
            release();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static X509TrustManager G(TrustManager[] trustManagerArr) {
        for (TrustManager trustManager : trustManagerArr) {
            if (trustManager instanceof X509TrustManager) {
                if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7) {
                    return e1.c((X509TrustManager) trustManager);
                }
                return (X509TrustManager) trustManager;
            }
        }
        throw new IllegalStateException("no X509TrustManager found");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static X509KeyManager H(KeyManager[] keyManagerArr) {
        for (KeyManager keyManager : keyManagerArr) {
            if (keyManager instanceof X509KeyManager) {
                return (X509KeyManager) keyManager;
            }
        }
        throw new IllegalStateException("no X509KeyManager found");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        Lock writeLock = this.f44608o.writeLock();
        writeLock.lock();
        try {
            long j10 = this.f44597d;
            if (j10 != 0) {
                if (this.f44606m) {
                    SSLContext.disableOcsp(j10);
                }
                SSLContext.free(this.f44597d);
                this.f44597d = 0L;
                z0 y10 = y();
                if (y10 != null) {
                    y10.b();
                }
            }
        } finally {
            writeLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void J(long j10) {
        if (j10 != 0) {
            SSL.freeBIO(j10);
        }
    }

    private static long L(kg.j jVar) throws Exception {
        try {
            long newMemBIO = SSL.newMemBIO();
            int P1 = jVar.P1();
            if (SSL.bioWrite(newMemBIO, e0.n(jVar) + jVar.Q1(), P1) == P1) {
                return newMemBIO;
            }
            SSL.freeBIO(newMemBIO);
            throw new IllegalStateException("Could not write data to memory BIO");
        } finally {
            jVar.release();
        }
    }

    private static int N(ApplicationProtocolConfig.SelectorFailureBehavior selectorFailureBehavior) {
        int i9 = c.f44613b[selectorFailureBehavior.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                return 1;
            }
            throw new Error();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s0 O(KeyManagerFactory keyManagerFactory, String str) {
        if (keyManagerFactory instanceof d1) {
            return ((d1) keyManagerFactory).c();
        }
        if (keyManagerFactory instanceof i0) {
            return ((i0) keyManagerFactory).a(str);
        }
        return new s0(H(keyManagerFactory.getKeyManagers()), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void Q(long r16, java.security.cert.X509Certificate[] r18, java.security.PrivateKey r19, java.lang.String r20) throws javax.net.ssl.SSLException {
        /*
            r0 = r19
            r1 = 0
            r3 = 0
            kg.k r4 = kg.k.f53822a     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c javax.net.ssl.SSLException -> L87
            r5 = 1
            r6 = r18
            io.grpc.netty.shaded.io.netty.handler.ssl.f1 r3 = io.grpc.netty.shaded.io.netty.handler.ssl.PemX509Certificate.toPEM(r4, r5, r6)     // Catch: java.lang.Throwable -> L78 java.lang.Exception -> L7c javax.net.ssl.SSLException -> L87
            io.grpc.netty.shaded.io.netty.handler.ssl.f1 r6 = r3.retain()     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L70 javax.net.ssl.SSLException -> L74
            long r14 = R(r4, r6)     // Catch: java.lang.Throwable -> L6c java.lang.Exception -> L70 javax.net.ssl.SSLException -> L74
            io.grpc.netty.shaded.io.netty.handler.ssl.f1 r6 = r3.retain()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62 javax.net.ssl.SSLException -> L67
            long r11 = R(r4, r6)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62 javax.net.ssl.SSLException -> L67
            if (r0 == 0) goto L24
            long r1 = S(r4, r0)     // Catch: java.lang.Exception -> L2a javax.net.ssl.SSLException -> L2d java.lang.Throwable -> L8b
        L24:
            if (r20 != 0) goto L30
            java.lang.String r0 = ""
            r13 = r0
            goto L32
        L2a:
            r0 = move-exception
            goto L7f
        L2d:
            r0 = move-exception
            goto L8a
        L30:
            r13 = r20
        L32:
            r7 = r16
            r9 = r14
            r18 = r3
            r3 = r11
            r11 = r1
            io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext.setCertificateBio(r7, r9, r11, r13)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L53 javax.net.ssl.SSLException -> L58
            r6 = r16
            io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext.setCertificateChainBio(r6, r3, r5)     // Catch: java.lang.Throwable -> L4e java.lang.Exception -> L53 javax.net.ssl.SSLException -> L58
            J(r1)
            J(r14)
            J(r3)
            r18.release()
            return
        L4e:
            r0 = move-exception
            r11 = r3
            r3 = r18
            goto L8c
        L53:
            r0 = move-exception
            r11 = r3
            r3 = r18
            goto L7f
        L58:
            r0 = move-exception
            r11 = r3
            r3 = r18
            goto L8a
        L5d:
            r0 = move-exception
            r18 = r3
            r11 = r1
            goto L8c
        L62:
            r0 = move-exception
            r18 = r3
            r11 = r1
            goto L7f
        L67:
            r0 = move-exception
            r18 = r3
            r11 = r1
            goto L8a
        L6c:
            r0 = move-exception
            r18 = r3
            goto L79
        L70:
            r0 = move-exception
            r18 = r3
            goto L7d
        L74:
            r0 = move-exception
            r18 = r3
            goto L88
        L78:
            r0 = move-exception
        L79:
            r11 = r1
            r14 = r11
            goto L8c
        L7c:
            r0 = move-exception
        L7d:
            r11 = r1
            r14 = r11
        L7f:
            javax.net.ssl.SSLException r4 = new javax.net.ssl.SSLException     // Catch: java.lang.Throwable -> L8b
            java.lang.String r5 = "failed to set certificate and key"
            r4.<init>(r5, r0)     // Catch: java.lang.Throwable -> L8b
            throw r4     // Catch: java.lang.Throwable -> L8b
        L87:
            r0 = move-exception
        L88:
            r11 = r1
            r14 = r11
        L8a:
            throw r0     // Catch: java.lang.Throwable -> L8b
        L8b:
            r0 = move-exception
        L8c:
            J(r1)
            J(r14)
            J(r11)
            if (r3 == 0) goto L9a
            r3.release()
        L9a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.handler.ssl.j1.Q(long, java.security.cert.X509Certificate[], java.security.PrivateKey, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long R(kg.k kVar, f1 f1Var) throws Exception {
        try {
            kg.j content = f1Var.content();
            if (content.h1()) {
                return L(content.W1());
            }
            kg.j h10 = kVar.h(content.P1());
            h10.z2(content, content.Q1(), content.P1());
            long L = L(h10.W1());
            if (f1Var.isSensitive()) {
                v1.y(h10);
            }
            h10.release();
            return L;
        } finally {
            f1Var.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long S(kg.k kVar, PrivateKey privateKey) throws Exception {
        if (privateKey == null) {
            return 0L;
        }
        f1 pem = PemPrivateKey.toPEM(kVar, true, privateKey);
        try {
            return R(kVar, pem.retain());
        } finally {
            pem.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long T(kg.k kVar, X509Certificate... x509CertificateArr) throws Exception {
        if (x509CertificateArr == null) {
            return 0L;
        }
        io.grpc.netty.shaded.io.netty.util.internal.s.f(x509CertificateArr, "certChain");
        f1 pem = PemX509Certificate.toPEM(kVar, true, x509CertificateArr);
        try {
            return R(kVar, pem.retain());
        } finally {
            pem.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f0 U(ApplicationProtocolConfig applicationProtocolConfig) {
        if (applicationProtocolConfig == null) {
            return C;
        }
        int i9 = c.f44612a[applicationProtocolConfig.a().ordinal()];
        if (i9 != 1 && i9 != 2 && i9 != 3) {
            if (i9 == 4) {
                return C;
            }
            throw new Error();
        }
        int i10 = c.f44614c[applicationProtocolConfig.b().ordinal()];
        if (i10 != 1 && i10 != 2) {
            throw new UnsupportedOperationException("OpenSSL provider does not support " + applicationProtocolConfig.b() + " behavior");
        }
        int i11 = c.f44613b[applicationProtocolConfig.c().ordinal()];
        if (i11 != 1 && i11 != 2) {
            throw new UnsupportedOperationException("OpenSSL provider does not support " + applicationProtocolConfig.c() + " behavior");
        }
        return new n0(applicationProtocolConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean V(X509TrustManager x509TrustManager) {
        return io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 7 && (x509TrustManager instanceof X509ExtendedTrustManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] W(byte[] bArr) throws SignatureException {
        if (bArr != null) {
            return bArr;
        }
        throw new SignatureException();
    }

    public int K() {
        return this.f44609p;
    }

    SSLEngine M(kg.k kVar, String str, int i9, boolean z10) {
        return new k1(this, kVar, str, i9, z10, true);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p1
    /* renamed from: P */
    public abstract z0 y();

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p1
    public io.grpc.netty.shaded.io.netty.handler.ssl.b a() {
        return this.f44599f;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p1
    public final boolean q() {
        return this.f44600g == 0;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final int refCnt() {
        return this.f44602i.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final boolean release() {
        return this.f44602i.release();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final io.grpc.netty.shaded.io.netty.util.s retain() {
        this.f44602i.retain();
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public final io.grpc.netty.shaded.io.netty.util.s touch(Object obj) {
        this.f44602i.touch(obj);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p1
    public final SSLEngine v(kg.k kVar, String str, int i9) {
        return M(kVar, str, i9, true);
    }

    /* loaded from: classes5.dex */
    private static final class f implements p0 {

        /* renamed from: a  reason: collision with root package name */
        private final Map<Long, k1> f44621a;

        private f() {
            this.f44621a = io.grpc.netty.shaded.io.netty.util.internal.t.p0();
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p0
        public k1 a(long j10) {
            return this.f44621a.remove(Long.valueOf(j10));
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p0
        public void b(k1 k1Var) {
            this.f44621a.put(Long.valueOf(k1Var.p0()), k1Var);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.ssl.p0
        public k1 c(long j10) {
            return this.f44621a.get(Long.valueOf(j10));
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }
}
