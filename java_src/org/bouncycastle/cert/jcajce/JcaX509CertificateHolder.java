package org.bouncycastle.cert.jcajce;

import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import oj.h;
import org.bouncycastle.cert.X509CertificateHolder;
/* loaded from: classes7.dex */
public class JcaX509CertificateHolder extends X509CertificateHolder {
    public JcaX509CertificateHolder(X509Certificate x509Certificate) throws CertificateEncodingException {
        super(h.y(x509Certificate.getEncoded()));
    }
}
