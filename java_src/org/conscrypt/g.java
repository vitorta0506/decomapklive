package org.conscrypt;

import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.interfaces.DSAPublicKey;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.util.List;
/* loaded from: classes7.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f56360a = {"1.2.840.113549.1.1.2", "1.2.840.113549.1.1.3", "1.2.840.113549.1.1.4", "1.2.840.113549.1.1.5", "1.2.840.10040.4.3", "1.2.840.10045.4.1"};

    public static final void a(List<X509Certificate> list) throws CertificateException {
        for (X509Certificate x509Certificate : list) {
            try {
                b(x509Certificate);
            } catch (CertificateException e10) {
                throw new CertificateException("Unacceptable certificate: " + x509Certificate.getSubjectX500Principal(), e10);
            }
        }
    }

    public static final void b(X509Certificate x509Certificate) throws CertificateException {
        c(x509Certificate);
        d(x509Certificate);
    }

    private static void c(X509Certificate x509Certificate) throws CertificateException {
        PublicKey publicKey = x509Certificate.getPublicKey();
        if (publicKey instanceof RSAPublicKey) {
            if (((RSAPublicKey) publicKey).getModulus().bitLength() < 1024) {
                throw new CertificateException("RSA modulus is < 1024 bits");
            }
        } else if (publicKey instanceof ECPublicKey) {
            if (((ECPublicKey) publicKey).getParams().getCurve().getField().getFieldSize() < 160) {
                throw new CertificateException("EC key field size is < 160 bits");
            }
        } else if (publicKey instanceof DSAPublicKey) {
            DSAPublicKey dSAPublicKey = (DSAPublicKey) publicKey;
            int bitLength = dSAPublicKey.getParams().getP().bitLength();
            int bitLength2 = dSAPublicKey.getParams().getQ().bitLength();
            if (bitLength < 1024 || bitLength2 < 160) {
                throw new CertificateException("DSA key length is < (1024, 160) bits");
            }
        } else {
            throw new CertificateException("Rejecting unknown key class " + publicKey.getClass().getName());
        }
    }

    private static void d(X509Certificate x509Certificate) throws CertificateException {
        String sigAlgOID = x509Certificate.getSigAlgOID();
        for (String str : f56360a) {
            if (sigAlgOID.equals(str)) {
                throw new CertificateException("Signature uses an insecure hash function: " + sigAlgOID);
            }
        }
    }
}
