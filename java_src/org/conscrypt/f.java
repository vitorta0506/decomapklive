package org.conscrypt;

import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.security.interfaces.ECPublicKey;
import java.security.interfaces.RSAPublicKey;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public final class f implements Comparator<X509Certificate> {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Integer> f56350a;

    /* renamed from: b  reason: collision with root package name */
    private static final Integer f56351b = 6;

    /* renamed from: c  reason: collision with root package name */
    private static final Integer f56352c = 5;

    /* renamed from: d  reason: collision with root package name */
    private static final Integer f56353d = 4;

    /* renamed from: e  reason: collision with root package name */
    private static final Integer f56354e = 3;

    /* renamed from: f  reason: collision with root package name */
    private static final Integer f56355f = 2;

    /* renamed from: g  reason: collision with root package name */
    private static final Integer f56356g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final Integer f56357h = -1;

    static {
        HashMap hashMap = new HashMap();
        f56350a = hashMap;
        hashMap.put("1.2.840.113549.1.1.13", 1);
        hashMap.put("1.2.840.113549.1.1.12", 2);
        hashMap.put("1.2.840.113549.1.1.11", 3);
        hashMap.put("1.2.840.113549.1.1.14", 4);
        hashMap.put("1.2.840.113549.1.1.5", 5);
        hashMap.put("1.2.840.113549.1.1.4", 6);
        hashMap.put("1.2.840.10045.4.3.4", 1);
        hashMap.put("1.2.840.10045.4.3.3", 2);
        hashMap.put("1.2.840.10045.4.3.2", 3);
        hashMap.put("1.2.840.10045.4.3.1", 4);
        hashMap.put("1.2.840.10045.4.1", 5);
    }

    private int b(PublicKey publicKey, PublicKey publicKey2) {
        String algorithm = publicKey.getAlgorithm();
        if (algorithm.equalsIgnoreCase(publicKey2.getAlgorithm())) {
            return 0;
        }
        return "EC".equalsIgnoreCase(algorithm) ? 1 : -1;
    }

    private int c(PublicKey publicKey, PublicKey publicKey2) {
        if (publicKey.getAlgorithm().equalsIgnoreCase(publicKey2.getAlgorithm())) {
            return f(publicKey) - f(publicKey2);
        }
        throw new IllegalArgumentException("Keys are not of the same type");
    }

    private int d(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        Map<String, Integer> map = f56350a;
        Integer num = map.get(x509Certificate.getSigAlgOID());
        Integer num2 = map.get(x509Certificate2.getSigAlgOID());
        if (num == null) {
            num = f56357h;
        }
        if (num2 == null) {
            num2 = f56357h;
        }
        return num2.intValue() - num.intValue();
    }

    private int e(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        PublicKey publicKey = x509Certificate.getPublicKey();
        PublicKey publicKey2 = x509Certificate2.getPublicKey();
        int b10 = b(publicKey, publicKey2);
        if (b10 != 0) {
            return b10;
        }
        int c10 = c(publicKey, publicKey2);
        return c10 != 0 ? c10 : d(x509Certificate, x509Certificate2);
    }

    private int f(PublicKey publicKey) {
        if (publicKey instanceof ECPublicKey) {
            return ((ECPublicKey) publicKey).getParams().getCurve().getField().getFieldSize();
        }
        if (publicKey instanceof RSAPublicKey) {
            return ((RSAPublicKey) publicKey).getModulus().bitLength();
        }
        throw new IllegalArgumentException("Unsupported public key type: " + publicKey.getClass().getName());
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        boolean equals = x509Certificate.getSubjectDN().equals(x509Certificate.getIssuerDN());
        boolean equals2 = x509Certificate2.getSubjectDN().equals(x509Certificate2.getIssuerDN());
        if (equals != equals2) {
            return equals2 ? 1 : -1;
        }
        int e10 = e(x509Certificate2, x509Certificate);
        if (e10 != 0) {
            return e10;
        }
        int compareTo = x509Certificate2.getNotAfter().compareTo(x509Certificate.getNotAfter());
        if (compareTo != 0) {
            return compareTo;
        }
        return x509Certificate2.getNotBefore().compareTo(x509Certificate.getNotBefore());
    }
}
