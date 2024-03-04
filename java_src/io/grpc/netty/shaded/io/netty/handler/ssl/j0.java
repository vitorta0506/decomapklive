package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Map;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLException;
import javax.net.ssl.TrustManagerFactory;
/* loaded from: classes5.dex */
public final class j0 extends l0 {
    private final z0 D;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, String[] strArr, long j10, long j11, boolean z10, String str2, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        super(iterable, iVar, applicationProtocolConfig, 0, (Certificate[]) x509CertificateArr2, ClientAuth.NONE, strArr, false, z10, entryArr);
        try {
            s0.d(x509CertificateArr2, privateKey, str);
            try {
                try {
                    this.D = i1.Y(this, this.f44597d, this.f44607n, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, str2, j10, j11);
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

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.j1, io.grpc.netty.shaded.io.netty.handler.ssl.p1
    /* renamed from: P */
    public z0 y() {
        return this.D;
    }
}
