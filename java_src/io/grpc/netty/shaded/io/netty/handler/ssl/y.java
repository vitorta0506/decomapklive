package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.X509Certificate;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.TrustManagerFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
@Deprecated
/* loaded from: classes5.dex */
public final class y extends z {
    /* JADX INFO: Access modifiers changed from: package-private */
    public y(Provider provider, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, String[] strArr, long j10, long j11, String str2) throws SSLException {
        super(L(provider, x509CertificateArr, trustManagerFactory, x509CertificateArr2, privateKey, str, keyManagerFactory, j10, j11, str2), true, iterable, iVar, z.K(applicationProtocolConfig, false), ClientAuth.NONE, strArr, false);
    }

    private static SSLContext L(Provider provider, X509Certificate[] x509CertificateArr, TrustManagerFactory trustManagerFactory, X509Certificate[] x509CertificateArr2, PrivateKey privateKey, String str, KeyManagerFactory keyManagerFactory, long j10, long j11, String str2) throws SSLException {
        TrustManagerFactory trustManagerFactory2;
        SSLContext sSLContext;
        if (x509CertificateArr != null) {
            try {
                trustManagerFactory2 = p1.i(x509CertificateArr, trustManagerFactory, str2);
            } catch (Exception e10) {
                if (e10 instanceof SSLException) {
                    throw ((SSLException) e10);
                }
                throw new SSLException("failed to initialize the client-side SSL context", e10);
            }
        } else {
            trustManagerFactory2 = trustManagerFactory;
        }
        KeyManagerFactory e11 = x509CertificateArr2 != null ? p1.e(x509CertificateArr2, null, privateKey, str, keyManagerFactory, str2) : keyManagerFactory;
        if (provider == null) {
            sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS);
        } else {
            sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS, provider);
        }
        sSLContext.init(e11 == null ? null : e11.getKeyManagers(), trustManagerFactory2 == null ? null : trustManagerFactory2.getTrustManagers(), null);
        SSLSessionContext clientSessionContext = sSLContext.getClientSessionContext();
        if (j10 > 0) {
            clientSessionContext.setSessionCacheSize((int) Math.min(j10, 2147483647L));
        }
        if (j11 > 0) {
            clientSessionContext.setSessionTimeout((int) Math.min(j11, 2147483647L));
        }
        return sSLContext;
    }
}
