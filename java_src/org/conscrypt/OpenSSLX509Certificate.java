package org.conscrypt;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import javax.crypto.BadPaddingException;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes7.dex */
public final class OpenSSLX509Certificate extends X509Certificate {
    private static final long serialVersionUID = 1992239142393372128L;
    private final transient long mContext;
    private transient Integer mHashCode;
    private final Date notAfter;
    private final Date notBefore;

    OpenSSLX509Certificate(long j10) throws y {
        this.mContext = j10;
        this.notBefore = toDate(NativeCrypto.X509_get_notBefore(j10, this));
        this.notAfter = toDate(NativeCrypto.X509_get_notAfter(j10, this));
    }

    private static Collection<List<?>> alternativeNameArrayToList(Object[][] objArr) {
        if (objArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object[] objArr2 : objArr) {
            arrayList.add(Collections.unmodifiableList(Arrays.asList(objArr2)));
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public static OpenSSLX509Certificate fromCertificate(Certificate certificate) throws CertificateEncodingException {
        if (certificate instanceof OpenSSLX509Certificate) {
            return (OpenSSLX509Certificate) certificate;
        }
        if (certificate instanceof X509Certificate) {
            return fromX509Der(certificate.getEncoded());
        }
        throw new CertificateEncodingException("Only X.509 certificates are supported");
    }

    public static List<OpenSSLX509Certificate> fromPkcs7DerInputStream(InputStream inputStream) throws y {
        OpenSSLBIOInputStream openSSLBIOInputStream = new OpenSSLBIOInputStream(inputStream, true);
        try {
            try {
                long[] d2i_PKCS7_bio = NativeCrypto.d2i_PKCS7_bio(openSSLBIOInputStream.a(), 1);
                if (d2i_PKCS7_bio == null) {
                    return new ArrayList();
                }
                ArrayList arrayList = new ArrayList(d2i_PKCS7_bio.length);
                for (int i9 = 0; i9 < d2i_PKCS7_bio.length; i9++) {
                    if (d2i_PKCS7_bio[i9] != 0) {
                        arrayList.add(new OpenSSLX509Certificate(d2i_PKCS7_bio[i9]));
                    }
                }
                return arrayList;
            } catch (Exception e10) {
                throw new y(e10);
            }
        } finally {
            openSSLBIOInputStream.c();
        }
    }

    public static List<OpenSSLX509Certificate> fromPkcs7PemInputStream(InputStream inputStream) throws y {
        OpenSSLBIOInputStream openSSLBIOInputStream = new OpenSSLBIOInputStream(inputStream, true);
        try {
            try {
                long[] PEM_read_bio_PKCS7 = NativeCrypto.PEM_read_bio_PKCS7(openSSLBIOInputStream.a(), 1);
                openSSLBIOInputStream.c();
                ArrayList arrayList = new ArrayList(PEM_read_bio_PKCS7.length);
                for (int i9 = 0; i9 < PEM_read_bio_PKCS7.length; i9++) {
                    if (PEM_read_bio_PKCS7[i9] != 0) {
                        arrayList.add(new OpenSSLX509Certificate(PEM_read_bio_PKCS7[i9]));
                    }
                }
                return arrayList;
            } catch (Exception e10) {
                throw new y(e10);
            }
        } catch (Throwable th2) {
            openSSLBIOInputStream.c();
            throw th2;
        }
    }

    public static OpenSSLX509Certificate fromX509Der(byte[] bArr) throws CertificateEncodingException {
        try {
            return new OpenSSLX509Certificate(NativeCrypto.d2i_X509(bArr));
        } catch (y e10) {
            throw new CertificateEncodingException(e10);
        }
    }

    public static OpenSSLX509Certificate fromX509DerInputStream(InputStream inputStream) throws y {
        OpenSSLBIOInputStream openSSLBIOInputStream = new OpenSSLBIOInputStream(inputStream, true);
        try {
            try {
                long d2i_X509_bio = NativeCrypto.d2i_X509_bio(openSSLBIOInputStream.a());
                if (d2i_X509_bio == 0) {
                    return null;
                }
                return new OpenSSLX509Certificate(d2i_X509_bio);
            } catch (Exception e10) {
                throw new y(e10);
            }
        } finally {
            openSSLBIOInputStream.c();
        }
    }

    public static OpenSSLX509Certificate fromX509PemInputStream(InputStream inputStream) throws y {
        OpenSSLBIOInputStream openSSLBIOInputStream = new OpenSSLBIOInputStream(inputStream, true);
        try {
            try {
                long PEM_read_bio_X509 = NativeCrypto.PEM_read_bio_X509(openSSLBIOInputStream.a());
                if (PEM_read_bio_X509 == 0) {
                    return null;
                }
                return new OpenSSLX509Certificate(PEM_read_bio_X509);
            } catch (Exception e10) {
                throw new y(e10);
            }
        } finally {
            openSSLBIOInputStream.c();
        }
    }

    private static Date toDate(long j10) throws y {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar.set(14, 0);
        NativeCrypto.ASN1_TIME_to_Calendar(j10, calendar);
        return calendar.getTime();
    }

    private void verifyInternal(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        Signature signature;
        if (str == null) {
            signature = Signature.getInstance(getSigAlgName());
        } else {
            signature = Signature.getInstance(getSigAlgName(), str);
        }
        signature.initVerify(publicKey);
        signature.update(getTBSCertificate());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("signature did not verify");
        }
    }

    private void verifyOpenSSL(w wVar) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        try {
            NativeCrypto.X509_verify(this.mContext, this, wVar.a());
        } catch (RuntimeException e10) {
            throw new CertificateException(e10);
        } catch (BadPaddingException unused) {
            throw new SignatureException();
        }
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
        checkValidity(new Date());
    }

    @Override // java.security.cert.Certificate
    public boolean equals(Object obj) {
        if (obj instanceof OpenSSLX509Certificate) {
            OpenSSLX509Certificate openSSLX509Certificate = (OpenSSLX509Certificate) obj;
            return NativeCrypto.X509_cmp(this.mContext, this, openSSLX509Certificate.mContext, openSSLX509Certificate) == 0;
        }
        return super.equals(obj);
    }

    protected void finalize() throws Throwable {
        try {
            long j10 = this.mContext;
            if (j10 != 0) {
                NativeCrypto.X509_free(j10, this);
            }
        } finally {
            super.finalize();
        }
    }

    @Override // java.security.cert.X509Certificate
    public int getBasicConstraints() {
        if ((NativeCrypto.get_X509_ex_flags(this.mContext, this) & 16) == 0) {
            return -1;
        }
        int i9 = NativeCrypto.get_X509_ex_pathlen(this.mContext, this);
        if (i9 == -1) {
            return Integer.MAX_VALUE;
        }
        return i9;
    }

    public long getContext() {
        return this.mContext;
    }

    @Override // java.security.cert.X509Extension
    public Set<String> getCriticalExtensionOIDs() {
        String[] strArr = NativeCrypto.get_X509_ext_oids(this.mContext, this, 1);
        if (strArr.length == 0 && NativeCrypto.get_X509_ext_oids(this.mContext, this, 0).length == 0) {
            return null;
        }
        return new HashSet(Arrays.asList(strArr));
    }

    @Override // java.security.cert.Certificate
    public byte[] getEncoded() throws CertificateEncodingException {
        return NativeCrypto.i2d_X509(this.mContext, this);
    }

    @Override // java.security.cert.X509Certificate
    public List<String> getExtendedKeyUsage() throws CertificateParsingException {
        String[] strArr = NativeCrypto.get_X509_ex_xkusage(this.mContext, this);
        if (strArr == null) {
            return null;
        }
        return Arrays.asList(strArr);
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        return NativeCrypto.X509_get_ext_oid(this.mContext, this, str);
    }

    @Override // java.security.cert.X509Certificate
    public Collection<List<?>> getIssuerAlternativeNames() throws CertificateParsingException {
        return alternativeNameArrayToList(NativeCrypto.get_X509_GENERAL_NAME_stack(this.mContext, this, 2));
    }

    @Override // java.security.cert.X509Certificate
    public Principal getIssuerDN() {
        return getIssuerX500Principal();
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getIssuerUniqueID() {
        return NativeCrypto.get_X509_issuerUID(this.mContext, this);
    }

    @Override // java.security.cert.X509Certificate
    public X500Principal getIssuerX500Principal() {
        return new X500Principal(NativeCrypto.X509_get_issuer_name(this.mContext, this));
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getKeyUsage() {
        boolean[] zArr = NativeCrypto.get_X509_ex_kusage(this.mContext, this);
        if (zArr == null) {
            return null;
        }
        if (zArr.length >= 9) {
            return zArr;
        }
        boolean[] zArr2 = new boolean[9];
        System.arraycopy(zArr, 0, zArr2, 0, zArr.length);
        return zArr2;
    }

    @Override // java.security.cert.X509Extension
    public Set<String> getNonCriticalExtensionOIDs() {
        String[] strArr = NativeCrypto.get_X509_ext_oids(this.mContext, this, 0);
        if (strArr.length == 0 && NativeCrypto.get_X509_ext_oids(this.mContext, this, 1).length == 0) {
            return null;
        }
        return new HashSet(Arrays.asList(strArr));
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotAfter() {
        return (Date) this.notAfter.clone();
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotBefore() {
        return (Date) this.notBefore.clone();
    }

    @Override // java.security.cert.Certificate
    public PublicKey getPublicKey() {
        try {
            return new w(NativeCrypto.X509_get_pubkey(this.mContext, this)).b();
        } catch (InvalidKeyException | NoSuchAlgorithmException unused) {
            String str = NativeCrypto.get_X509_pubkey_oid(this.mContext, this);
            byte[] i2d_X509_PUBKEY = NativeCrypto.i2d_X509_PUBKEY(this.mContext, this);
            try {
                return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(i2d_X509_PUBKEY));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException unused2) {
                return new f0(str, i2d_X509_PUBKEY);
            }
        }
    }

    @Override // java.security.cert.X509Certificate
    public BigInteger getSerialNumber() {
        return new BigInteger(NativeCrypto.X509_get_serialNumber(this.mContext, this));
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgName() {
        String sigAlgOID = getSigAlgOID();
        String a10 = r.a(sigAlgOID);
        if (a10 != null) {
            return a10;
        }
        String q10 = a0.q(sigAlgOID);
        return q10 != null ? q10 : sigAlgOID;
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgOID() {
        return NativeCrypto.get_X509_sig_alg_oid(this.mContext, this);
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSigAlgParams() {
        return NativeCrypto.get_X509_sig_alg_parameter(this.mContext, this);
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSignature() {
        return NativeCrypto.get_X509_signature(this.mContext, this);
    }

    @Override // java.security.cert.X509Certificate
    public Collection<List<?>> getSubjectAlternativeNames() throws CertificateParsingException {
        return alternativeNameArrayToList(NativeCrypto.get_X509_GENERAL_NAME_stack(this.mContext, this, 1));
    }

    @Override // java.security.cert.X509Certificate
    public Principal getSubjectDN() {
        return getSubjectX500Principal();
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getSubjectUniqueID() {
        return NativeCrypto.get_X509_subjectUID(this.mContext, this);
    }

    @Override // java.security.cert.X509Certificate
    public X500Principal getSubjectX500Principal() {
        return new X500Principal(NativeCrypto.X509_get_subject_name(this.mContext, this));
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getTBSCertificate() throws CertificateEncodingException {
        return NativeCrypto.get_X509_cert_info_enc(this.mContext, this);
    }

    @Override // java.security.cert.X509Certificate
    public int getVersion() {
        return ((int) NativeCrypto.X509_get_version(this.mContext, this)) + 1;
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        return (NativeCrypto.get_X509_ex_flags(this.mContext, this) & 512) != 0;
    }

    @Override // java.security.cert.Certificate
    public int hashCode() {
        Integer num = this.mHashCode;
        if (num != null) {
            return num.intValue();
        }
        Integer valueOf = Integer.valueOf(super.hashCode());
        this.mHashCode = valueOf;
        return valueOf.intValue();
    }

    @Override // java.security.cert.Certificate
    public String toString() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        long create_BIO_OutputStream = NativeCrypto.create_BIO_OutputStream(byteArrayOutputStream);
        try {
            NativeCrypto.X509_print_ex(create_BIO_OutputStream, this.mContext, this, 0L, 0L);
            return byteArrayOutputStream.toString();
        } finally {
            NativeCrypto.BIO_free_all(create_BIO_OutputStream);
        }
    }

    @Override // java.security.cert.Certificate
    public void verify(PublicKey publicKey) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        if (publicKey instanceof x) {
            verifyOpenSSL(((x) publicKey).getOpenSSLKey());
        } else {
            verifyInternal(publicKey, null);
        }
    }

    public OpenSSLX509Certificate withDeletedExtension(String str) {
        OpenSSLX509Certificate openSSLX509Certificate = new OpenSSLX509Certificate(NativeCrypto.X509_dup(this.mContext, this), this.notBefore, this.notAfter);
        NativeCrypto.X509_delete_ext(openSSLX509Certificate.getContext(), openSSLX509Certificate, str);
        return openSSLX509Certificate;
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        if (getNotBefore().compareTo(date) <= 0) {
            if (getNotAfter().compareTo(date) >= 0) {
                return;
            }
            throw new CertificateExpiredException("Certificate expired at " + getNotAfter().toString() + " (compared to " + date.toString() + ")");
        }
        throw new CertificateNotYetValidException("Certificate not valid until " + getNotBefore().toString() + " (compared to " + date.toString() + ")");
    }

    private OpenSSLX509Certificate(long j10, Date date, Date date2) {
        this.mContext = j10;
        this.notBefore = date;
        this.notAfter = date2;
    }

    @Override // java.security.cert.Certificate
    public void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        verifyInternal(publicKey, str);
    }

    @Override // java.security.cert.X509Certificate, java.security.cert.Certificate
    public void verify(PublicKey publicKey, Provider provider) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        Signature signature;
        if ((publicKey instanceof x) && (provider instanceof OpenSSLProvider)) {
            verifyOpenSSL(((x) publicKey).getOpenSSLKey());
            return;
        }
        if (provider == null) {
            signature = Signature.getInstance(getSigAlgName());
        } else {
            signature = Signature.getInstance(getSigAlgName(), provider);
        }
        signature.initVerify(publicKey);
        signature.update(getTBSCertificate());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("signature did not verify");
        }
    }
}
