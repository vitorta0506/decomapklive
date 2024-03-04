package org.conscrypt.ct;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import org.conscrypt.OpenSSLX509Certificate;
/* loaded from: classes7.dex */
public class CertificateEntry {

    /* renamed from: a  reason: collision with root package name */
    private final LogEntryType f56312a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f56313b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f56314c;

    /* loaded from: classes7.dex */
    public enum LogEntryType {
        X509_ENTRY,
        PRECERT_ENTRY
    }

    private CertificateEntry(LogEntryType logEntryType, byte[] bArr, byte[] bArr2) {
        if (logEntryType == LogEntryType.PRECERT_ENTRY && bArr2 == null) {
            throw new IllegalArgumentException("issuerKeyHash missing for precert entry.");
        }
        if (logEntryType == LogEntryType.X509_ENTRY && bArr2 != null) {
            throw new IllegalArgumentException("unexpected issuerKeyHash for X509 entry.");
        }
        if (bArr2 != null && bArr2.length != 32) {
            throw new IllegalArgumentException("issuerKeyHash must be 32 bytes long");
        }
        this.f56312a = logEntryType;
        this.f56313b = bArr2;
        this.f56314c = bArr;
    }

    public static CertificateEntry a(OpenSSLX509Certificate openSSLX509Certificate, OpenSSLX509Certificate openSSLX509Certificate2) throws CertificateException {
        try {
            if (openSSLX509Certificate.getNonCriticalExtensionOIDs().contains("1.3.6.1.4.1.11129.2.4.2")) {
                byte[] tBSCertificate = openSSLX509Certificate.withDeletedExtension("1.3.6.1.4.1.11129.2.4.2").getTBSCertificate();
                byte[] encoded = openSSLX509Certificate2.getPublicKey().getEncoded();
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(encoded);
                return b(tBSCertificate, messageDigest.digest());
            }
            throw new CertificateException("Certificate does not contain embedded signed timestamps");
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static CertificateEntry b(byte[] bArr, byte[] bArr2) {
        return new CertificateEntry(LogEntryType.PRECERT_ENTRY, bArr, bArr2);
    }

    public static CertificateEntry c(X509Certificate x509Certificate) throws CertificateEncodingException {
        return d(x509Certificate.getEncoded());
    }

    public static CertificateEntry d(byte[] bArr) {
        return new CertificateEntry(LogEntryType.X509_ENTRY, bArr, null);
    }
}
