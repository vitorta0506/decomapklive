package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.X509Certificate;
import java.util.Objects;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.TrustManagerFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
@Deprecated
/* loaded from: classes5.dex */
public final class b0 extends z {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(Provider provider, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, long j10, long j11, ClientAuth clientAuth, String[] strArr, boolean z10, String str2) throws SSLException {
        super(L(provider, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, j10, j11, str2), false, iterable, iVar, z.K(applicationProtocolConfig, true), clientAuth, strArr, z10);
    }

    private static SSLContext L(Provider provider, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, long j10, long j11, String str2) throws SSLException {
        KeyManagerFactory keyManagerFactory2;
        TrustManagerFactory trustManagerFactory2;
        SSLContext sSLContext;
        if (privateKey == null) {
            keyManagerFactory2 = keyManagerFactory;
            Objects.requireNonNull(keyManagerFactory2, "key, keyManagerFactory");
        } else {
            keyManagerFactory2 = keyManagerFactory;
        }
        if (x509CertificateArr != null) {
            try {
                trustManagerFactory2 = p1.i(x509CertificateArr, trustManagerFactory, str2);
            } catch (Exception e10) {
                if (e10 instanceof SSLException) {
                    throw ((SSLException) e10);
                }
                throw new SSLException("failed to initialize the server-side SSL context", e10);
            }
        } else {
            trustManagerFactory2 = trustManagerFactory;
        }
        if (privateKey != null) {
            keyManagerFactory2 = p1.e(x509CertificateArr2, null, privateKey, str, keyManagerFactory, null);
        }
        if (provider == null) {
            sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS);
        } else {
            sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS, provider);
        }
        sSLContext.init(keyManagerFactory2.getKeyManagers(), trustManagerFactory2 == null ? null : trustManagerFactory2.getTrustManagers(), null);
        SSLSessionContext serverSessionContext = sSLContext.getServerSessionContext();
        if (j10 > 0) {
            serverSessionContext.setSessionCacheSize((int) Math.min(j10, 2147483647L));
        }
        if (j11 > 0) {
            serverSessionContext.setSessionTimeout((int) Math.min(j11, 2147483647L));
        }
        return sSLContext;
    }
}
