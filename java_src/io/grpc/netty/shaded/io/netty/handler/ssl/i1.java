package io.grpc.netty.shaded.io.netty.handler.ssl;

import com.tencent.xmagic.license.RSAUtils;
import io.grpc.netty.shaded.io.netty.handler.ssl.j1;
import io.grpc.netty.shaded.io.netty.internal.tcnative.CertificateCallback;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSL;
import io.grpc.netty.shaded.io.netty.internal.tcnative.SSLContext;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509TrustManager;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes5.dex */
public final class i1 extends j1 {
    private static final Set<String> E = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList(RSAUtils.RSA, "DH_RSA", "EC", "EC_RSA", "EC_EC")));
    private final z0 D;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class a extends j1.d {

        /* renamed from: q0  reason: collision with root package name */
        private final X509ExtendedTrustManager f44583q0;

        a(p0 p0Var, X509ExtendedTrustManager x509ExtendedTrustManager) {
            super(p0Var);
            this.f44583q0 = x509ExtendedTrustManager;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b implements CertificateCallback {

        /* renamed from: a  reason: collision with root package name */
        private final p0 f44584a;

        /* renamed from: b  reason: collision with root package name */
        private final r0 f44585b;

        b(p0 p0Var, r0 r0Var) {
            this.f44584a = p0Var;
            this.f44585b = r0Var;
        }

        private static String b(byte b10) {
            if (b10 != 1) {
                if (b10 != 3) {
                    switch (b10) {
                        case 64:
                            return "EC";
                        case 65:
                            return "EC_RSA";
                        case 66:
                            return "EC_EC";
                        default:
                            return null;
                    }
                }
                return "DH_RSA";
            }
            return RSAUtils.RSA;
        }

        private static Set<String> c(byte[] bArr) {
            if (bArr == null) {
                return i1.E;
            }
            HashSet hashSet = new HashSet(bArr.length);
            for (byte b10 : bArr) {
                String b11 = b(b10);
                if (b11 != null) {
                    hashSet.add(b11);
                }
            }
            return hashSet;
        }

        @Override // io.grpc.netty.shaded.io.netty.internal.tcnative.CertificateCallback
        public void a(long j10, byte[] bArr, byte[][] bArr2) throws Exception {
            X500Principal[] x500PrincipalArr;
            k1 c10 = this.f44584a.c(j10);
            if (c10 == null) {
                return;
            }
            try {
                Set<String> c11 = c(bArr);
                String[] strArr = (String[]) c11.toArray(new String[0]);
                if (bArr2 == null) {
                    x500PrincipalArr = null;
                } else {
                    X500Principal[] x500PrincipalArr2 = new X500Principal[bArr2.length];
                    for (int i9 = 0; i9 < bArr2.length; i9++) {
                        x500PrincipalArr2[i9] = new X500Principal(bArr2[i9]);
                    }
                    x500PrincipalArr = x500PrincipalArr2;
                }
                this.f44585b.d(c10, strArr, x500PrincipalArr);
            } catch (Throwable th2) {
                c10.H(th2);
                if (th2 instanceof Exception) {
                    throw th2;
                }
                throw new SSLException(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c extends z0 {
        c(j1 j1Var, s0 s0Var) {
            super(j1Var, s0Var, SSL.f44945l, new k0(j1Var.f44607n));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d extends j1.d {

        /* renamed from: q0  reason: collision with root package name */
        private final X509TrustManager f44586q0;

        d(p0 p0Var, X509TrustManager x509TrustManager) {
            super(p0Var);
            this.f44586q0 = x509TrustManager;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, String[] strArr, long j10, long j11, boolean z10, String str2, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        super(iterable, iVar, j1.U(applicationProtocolConfig), 0, x509CertificateArr2, ClientAuth.NONE, strArr, false, z10, true, entryArr);
        try {
            try {
                try {
                    this.D = Y(this, this.f44597d, this.f44607n, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, str2, j10, j11);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0 Y(j1 j1Var, long j10, p0 p0Var, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, String str2, long j11, long j12) throws SSLException {
        s0 O;
        KeyManagerFactory i0Var;
        TrustManagerFactory trustManagerFactory2;
        if ((privateKey == null && x509CertificateArr2 != null) || (privateKey != null && x509CertificateArr2 == null)) {
            throw new IllegalArgumentException("Either both keyCertChain and key needs to be null or none of them");
        }
        s0 s0Var = null;
        try {
            try {
                if (e0.r()) {
                    if (keyManagerFactory == null && x509CertificateArr2 != null) {
                        char[] s10 = p1.s(str);
                        KeyStore h10 = p1.h(x509CertificateArr2, privateKey, s10, str2);
                        if (h10.aliases().hasMoreElements()) {
                            i0Var = new d1();
                        } else {
                            i0Var = new i0(KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm()));
                        }
                        i0Var.init(h10, s10);
                        O = j1.O(i0Var, str);
                    } else {
                        O = keyManagerFactory != null ? j1.O(keyManagerFactory, str) : null;
                    }
                    if (O != null) {
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
                    }
                } else if (keyManagerFactory != null) {
                    throw new IllegalArgumentException("KeyManagerFactory not supported");
                } else {
                    if (x509CertificateArr2 != null) {
                        j1.Q(j10, x509CertificateArr2, privateKey, str);
                    }
                    O = null;
                }
                SSLContext.setVerify(j10, 1, 10);
                try {
                    if (x509CertificateArr != null) {
                        trustManagerFactory2 = p1.i(x509CertificateArr, trustManagerFactory, str2);
                    } else if (trustManagerFactory == null) {
                        trustManagerFactory2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                        trustManagerFactory2.init((KeyStore) null);
                    } else {
                        trustManagerFactory2 = trustManagerFactory;
                    }
                    Z(j10, p0Var, j1.G(trustManagerFactory2.getTrustManagers()));
                    c cVar = new c(j1Var, O);
                    cVar.e(j1.B);
                    if (j11 > 0) {
                        cVar.setSessionCacheSize((int) Math.min(j11, 2147483647L));
                    }
                    if (j12 > 0) {
                        cVar.setSessionTimeout((int) Math.min(j12, 2147483647L));
                    }
                    if (j1.f44593w) {
                        cVar.g(new c1[0]);
                    }
                    return cVar;
                } catch (Exception e11) {
                    if (O != null) {
                        O.b();
                    }
                    throw new SSLException("unable to setup trustmanager", e11);
                }
            } catch (Exception e12) {
                e = e12;
            }
        } catch (Throwable th3) {
            th = th3;
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
    /* renamed from: P */
    public z0 y() {
        return this.D;
    }
}
