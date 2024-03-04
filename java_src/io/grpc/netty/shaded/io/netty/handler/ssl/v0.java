package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.Map;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManagerFactory;
/* loaded from: classes5.dex */
public final class v0 extends l0 {
    private final w0 D;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, long j10, long j11, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, String str2, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        this(x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, iterable, iVar, j1.U(applicationProtocolConfig), j10, j11, clientAuth, strArr, z10, z11, str2, entryArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.j1, io.grpc.netty.shaded.io.netty.handler.ssl.p1
    /* renamed from: X */
    public w0 y() {
        return this.D;
    }

    private v0(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, f0 f0Var, long j10, long j11, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, String str2, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        super(iterable, iVar, f0Var, 1, x509CertificateArr2, clientAuth, strArr, z10, z11, entryArr);
        try {
            s0.d(x509CertificateArr2, privateKey, str);
            try {
                try {
                    this.D = l1.X(this, this.f44597d, this.f44607n, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, str2, j10, j11);
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
