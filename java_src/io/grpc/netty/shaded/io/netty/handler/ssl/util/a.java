package io.grpc.netty.shaded.io.netty.handler.ssl.util;

import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.SignatureException;
import java.util.Date;
import javax.security.cert.CertificateException;
import javax.security.cert.CertificateExpiredException;
import javax.security.cert.CertificateNotYetValidException;
import javax.security.cert.X509Certificate;
/* loaded from: classes5.dex */
public final class a extends X509Certificate {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f44823a;

    /* renamed from: b  reason: collision with root package name */
    private X509Certificate f44824b;

    public a(byte[] bArr) {
        this.f44823a = (byte[]) s.h(bArr, "bytes");
    }

    private X509Certificate a() {
        X509Certificate x509Certificate = this.f44824b;
        if (x509Certificate == null) {
            try {
                X509Certificate x509Certificate2 = X509Certificate.getInstance(this.f44823a);
                this.f44824b = x509Certificate2;
                return x509Certificate2;
            } catch (CertificateException e10) {
                throw new IllegalStateException(e10);
            }
        }
        return x509Certificate;
    }

    @Override // javax.security.cert.X509Certificate
    public void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
        a().checkValidity();
    }

    @Override // javax.security.cert.Certificate
    public byte[] getEncoded() {
        return (byte[]) this.f44823a.clone();
    }

    @Override // javax.security.cert.X509Certificate
    public Principal getIssuerDN() {
        return a().getIssuerDN();
    }

    @Override // javax.security.cert.X509Certificate
    public Date getNotAfter() {
        return a().getNotAfter();
    }

    @Override // javax.security.cert.X509Certificate
    public Date getNotBefore() {
        return a().getNotBefore();
    }

    @Override // javax.security.cert.Certificate
    public PublicKey getPublicKey() {
        return a().getPublicKey();
    }

    @Override // javax.security.cert.X509Certificate
    public BigInteger getSerialNumber() {
        return a().getSerialNumber();
    }

    @Override // javax.security.cert.X509Certificate
    public String getSigAlgName() {
        return a().getSigAlgName();
    }

    @Override // javax.security.cert.X509Certificate
    public String getSigAlgOID() {
        return a().getSigAlgOID();
    }

    @Override // javax.security.cert.X509Certificate
    public byte[] getSigAlgParams() {
        return a().getSigAlgParams();
    }

    @Override // javax.security.cert.X509Certificate
    public Principal getSubjectDN() {
        return a().getSubjectDN();
    }

    @Override // javax.security.cert.X509Certificate
    public int getVersion() {
        return a().getVersion();
    }

    @Override // javax.security.cert.Certificate
    public String toString() {
        return a().toString();
    }

    @Override // javax.security.cert.Certificate
    public void verify(PublicKey publicKey) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        a().verify(publicKey);
    }

    @Override // javax.security.cert.X509Certificate
    public void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        a().checkValidity(date);
    }

    @Override // javax.security.cert.Certificate
    public void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        a().verify(publicKey, str);
    }
}
