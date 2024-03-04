package org.bouncycastle.cert.jcajce;

import java.security.cert.CRLException;
import java.security.cert.X509CRL;
import oj.i;
import org.bouncycastle.cert.X509CRLHolder;
/* loaded from: classes7.dex */
public class JcaX509CRLHolder extends X509CRLHolder {
    public JcaX509CRLHolder(X509CRL x509crl) throws CRLException {
        super(i.x(x509crl.getEncoded()));
    }
}
