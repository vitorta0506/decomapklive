package com.google.android.play.core.internal;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Set;
/* loaded from: classes2.dex */
class o1 extends X509Certificate {

    /* renamed from: a  reason: collision with root package name */
    private final X509Certificate f10592a;

    public o1(X509Certificate x509Certificate) {
        this.f10592a = x509Certificate;
    }

    @Override // java.security.cert.X509Certificate
    public final void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
        this.f10592a.checkValidity();
    }

    @Override // java.security.cert.X509Certificate
    public final int getBasicConstraints() {
        return this.f10592a.getBasicConstraints();
    }

    @Override // java.security.cert.X509Extension
    public final Set getCriticalExtensionOIDs() {
        return this.f10592a.getCriticalExtensionOIDs();
    }

    @Override // java.security.cert.X509Extension
    public final byte[] getExtensionValue(String str) {
        return this.f10592a.getExtensionValue(str);
    }

    @Override // java.security.cert.X509Certificate
    public final Principal getIssuerDN() {
        return this.f10592a.getIssuerDN();
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getIssuerUniqueID() {
        return this.f10592a.getIssuerUniqueID();
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getKeyUsage() {
        return this.f10592a.getKeyUsage();
    }

    @Override // java.security.cert.X509Extension
    public final Set getNonCriticalExtensionOIDs() {
        return this.f10592a.getNonCriticalExtensionOIDs();
    }

    @Override // java.security.cert.X509Certificate
    public final Date getNotAfter() {
        return this.f10592a.getNotAfter();
    }

    @Override // java.security.cert.X509Certificate
    public final Date getNotBefore() {
        return this.f10592a.getNotBefore();
    }

    @Override // java.security.cert.Certificate
    public final PublicKey getPublicKey() {
        return this.f10592a.getPublicKey();
    }

    @Override // java.security.cert.X509Certificate
    public final BigInteger getSerialNumber() {
        return this.f10592a.getSerialNumber();
    }

    @Override // java.security.cert.X509Certificate
    public final String getSigAlgName() {
        return this.f10592a.getSigAlgName();
    }

    @Override // java.security.cert.X509Certificate
    public final String getSigAlgOID() {
        return this.f10592a.getSigAlgOID();
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getSigAlgParams() {
        return this.f10592a.getSigAlgParams();
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getSignature() {
        return this.f10592a.getSignature();
    }

    @Override // java.security.cert.X509Certificate
    public final Principal getSubjectDN() {
        return this.f10592a.getSubjectDN();
    }

    @Override // java.security.cert.X509Certificate
    public final boolean[] getSubjectUniqueID() {
        return this.f10592a.getSubjectUniqueID();
    }

    @Override // java.security.cert.X509Certificate
    public final byte[] getTBSCertificate() throws CertificateEncodingException {
        return this.f10592a.getTBSCertificate();
    }

    @Override // java.security.cert.X509Certificate
    public final int getVersion() {
        return this.f10592a.getVersion();
    }

    @Override // java.security.cert.X509Extension
    public final boolean hasUnsupportedCriticalExtension() {
        return this.f10592a.hasUnsupportedCriticalExtension();
    }

    @Override // java.security.cert.Certificate
    public final String toString() {
        return this.f10592a.toString();
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        this.f10592a.verify(publicKey);
    }

    @Override // java.security.cert.X509Certificate
    public final void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        this.f10592a.checkValidity(date);
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        this.f10592a.verify(publicKey, str);
    }
}
