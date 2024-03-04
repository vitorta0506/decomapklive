package cn.jiguang.net;

import cn.jiguang.as.d;
import java.io.ByteArrayInputStream;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes.dex */
public class SSLTrustManager implements X509TrustManager {

    /* renamed from: a  reason: collision with root package name */
    private X509TrustManager f2685a;

    public SSLTrustManager(String str) {
        TrustManager[] trustManagers;
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
            byteArrayInputStream.close();
            KeyStore.TrustedCertificateEntry trustedCertificateEntry = new KeyStore.TrustedCertificateEntry((X509Certificate) certificateFactory.generateCertificate(byteArrayInputStream));
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setEntry("ca_root", trustedCertificateEntry, null);
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
                if (trustManager instanceof X509TrustManager) {
                    this.f2685a = (X509TrustManager) trustManager;
                    return;
                }
            }
        } catch (Throwable th2) {
            d.g("SSLTrustManager", "init trustManager failed, error:" + th2);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        d.c("SSLTrustManager", "checkClientTrusted");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        StringBuilder sb2;
        String localizedMessage;
        d.c("SSLTrustManager", "checkServerTrusted");
        if (x509CertificateArr == null || x509CertificateArr.length == 0 || x509CertificateArr[0] == null) {
            throw new CertificateException("Check Server x509Certificates is empty");
        }
        try {
            x509CertificateArr[0].checkValidity();
        } catch (CertificateExpiredException e10) {
            sb2 = new StringBuilder();
            sb2.append("checkServerTrusted: CertificateExpiredException:");
            localizedMessage = e10.getLocalizedMessage();
            sb2.append(localizedMessage);
            d.g("SSLTrustManager", sb2.toString());
        } catch (CertificateNotYetValidException e11) {
            sb2 = new StringBuilder();
            sb2.append("checkServerTrusted: CertificateNotYetValidException:");
            localizedMessage = e11.getLocalizedMessage();
            sb2.append(localizedMessage);
            d.g("SSLTrustManager", sb2.toString());
        } catch (Throwable th2) {
            sb2 = new StringBuilder();
            sb2.append("checkServerTrusted failed, error");
            localizedMessage = th2.getLocalizedMessage();
            sb2.append(localizedMessage);
            d.g("SSLTrustManager", sb2.toString());
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        d.c("SSLTrustManager", "getAcceptedIssuers");
        return this.f2685a.getAcceptedIssuers();
    }
}
