package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.handler.ssl.j1;
import io.grpc.netty.shaded.io.netty.internal.tcnative.CertificateCallback;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SniHostNameMatcher;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.Map;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes5.dex */
public final class l1 extends j1 {
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b E = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(l1.class);
    private static final byte[] F = {110, 101, 116, 116, 121};
    private final w0 D;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class a extends j1.d {

        /* renamed from: q0  reason: collision with root package name */
        private final X509ExtendedTrustManager f44694q0;

        a(p0 p0Var, X509ExtendedTrustManager x509ExtendedTrustManager) {
            super(p0Var);
            this.f44694q0 = x509ExtendedTrustManager;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b implements CertificateCallback {

        /* renamed from: a  reason: collision with root package name */
        private final p0 f44695a;

        /* renamed from: b  reason: collision with root package name */
        private final r0 f44696b;

        b(p0 p0Var, r0 r0Var) {
            this.f44695a = p0Var;
            this.f44696b = r0Var;
        }

        @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.CertificateCallback
        public void a(long j10, byte[] bArr, byte[][] bArr2) throws Exception {
            k1 c10 = this.f44695a.c(j10);
            if (c10 == null) {
                return;
            }
            try {
                this.f44696b.e(c10);
            } catch (Throwable th2) {
                c10.H(th2);
                if (th2 instanceof Exception) {
                    throw th2;
                }
                throw new SSLException(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class c implements SniHostNameMatcher {

        /* renamed from: a  reason: collision with root package name */
        private final p0 f44697a;

        c(p0 p0Var) {
            this.f44697a = p0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d extends j1.d {

        /* renamed from: q0  reason: collision with root package name */
        private final X509TrustManager f44698q0;

        d(p0 p0Var, X509TrustManager x509TrustManager) {
            super(p0Var);
            this.f44698q0 = x509TrustManager;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l1(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, long j10, long j11, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, String str2, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        this(x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, iVar, j1.U(applicationProtocolConfig), j10, j11, clientAuth, strArr, z10, z11, str2, entryArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w0 X(j1 j1Var, long j10, p0 p0Var, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, String str2, long j11, long j12) throws SSLException {
        KeyManagerFactory keyManagerFactory2;
        s0 O;
        TrustManagerFactory trustManagerFactory2;
        s0 s0Var = null;
        try {
            try {
                SSLContext.setVerify(j10, 0, 10);
                if (e0.r()) {
                    if (keyManagerFactory == null) {
                        char[] s10 = p1.s(str);
                        KeyStore h10 = p1.h(x509CertificateArr2, privateKey, s10, str2);
                        if (h10.aliases().hasMoreElements()) {
                            keyManagerFactory2 = new d1();
                        } else {
                            keyManagerFactory2 = new i0(KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm()));
                        }
                        keyManagerFactory2.init(h10, s10);
                    } else {
                        keyManagerFactory2 = keyManagerFactory;
                    }
                    O = j1.O(keyManagerFactory2, str);
                    try {
                        try {
                            SSLContext.setCertificateCallback(j10, new b(p0Var, new r0(O)));
                        } catch (Exception e10) {
                            e = e10;
                            throw new SSLException("failed to set certificate and key", e);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        s0Var = O;
                        if (s0Var != null) {
                            s0Var.b();
                        }
                        throw th;
                    }
                } else if (keyManagerFactory == null) {
                    io.grpc.netty.shaded.io.netty.util.internal.s.h(x509CertificateArr2, "keyCertChain");
                    j1.Q(j10, x509CertificateArr2, privateKey, str);
                    O = null;
                } else {
                    throw new IllegalArgumentException("KeyManagerFactory not supported");
                }
                try {
                    if (x509CertificateArr != null) {
                        trustManagerFactory2 = p1.i(x509CertificateArr, trustManagerFactory, str2);
                    } else if (trustManagerFactory == null) {
                        trustManagerFactory2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                        trustManagerFactory2.init((KeyStore) null);
                    } else {
                        trustManagerFactory2 = trustManagerFactory;
                    }
                    X509TrustManager G = j1.G(trustManagerFactory2.getTrustManagers());
                    Z(j10, p0Var, G);
                    X509Certificate[] acceptedIssuers = G.getAcceptedIssuers();
                    long j13 = 0;
                    if (acceptedIssuers != null && acceptedIssuers.length > 0) {
                        try {
                            long T = j1.T(kg.k.f53822a, acceptedIssuers);
                            try {
                                if (SSLContext.setCACertificateBio(j10, T)) {
                                    j1.J(T);
                                } else {
                                    throw new SSLException("unable to setup accepted issuers for trustmanager " + G);
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                j13 = T;
                                j1.J(j13);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }
                    if (io.grpc.netty.shaded.io.netty.util.internal.t.l0() >= 8) {
                        SSLContext.setSniHostnameMatcher(j10, new c(p0Var));
                    }
                    w0 w0Var = new w0(j1Var, O);
                    w0Var.i(F);
                    w0Var.e(j1.A);
                    if (j11 > 0) {
                        w0Var.setSessionCacheSize((int) Math.min(j11, 2147483647L));
                    }
                    if (j12 > 0) {
                        w0Var.setSessionTimeout((int) Math.min(j12, 2147483647L));
                    }
                    return w0Var;
                } catch (SSLException e11) {
                    throw e11;
                } catch (Exception e12) {
                    throw new SSLException("unable to setup trustmanager", e12);
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Exception e13) {
            e = e13;
        }
    }

    private static void Z(long j10, p0 p0Var, X509TrustManager x509TrustManager) {
        if (j1.V(x509TrustManager)) {
            SSLContext.setCertVerifyCallback(j10, new a(p0Var, (X509ExtendedTrustManager) x509TrustManager));
        } else {
            SSLContext.setCertVerifyCallback(j10, new d(p0Var, x509TrustManager));
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.j1, io.grpc.netty.shaded.io.netty.handler.ssl.p1
    /* renamed from: Y */
    public w0 y() {
        return this.D;
    }

    l1(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, f0 f0Var, long j10, long j11, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, String str2, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        super(iterable, iVar, f0Var, 1, x509CertificateArr2, clientAuth, strArr, z10, z11, true, entryArr);
        try {
            try {
                w0 X = X(this, this.f44597d, this.f44607n, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, str2, j10, j11);
                try {
                    this.D = X;
                    if (j1.f44595y) {
                        X.g(new c1[0]);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    release();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
