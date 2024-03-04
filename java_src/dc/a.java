package dc;

import ec.f;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* loaded from: classes4.dex */
public class a implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            X509Certificate x509Certificate = (X509Certificate) sSLSession.getPeerCertificates()[0];
            f.b("", "verify: certificate is : " + x509Certificate.getSubjectDN().getName());
            c.a(str, x509Certificate, true);
            return true;
        } catch (SSLException e10) {
            f.d("", "SSLException : " + e10.getMessage());
            return false;
        }
    }
}
