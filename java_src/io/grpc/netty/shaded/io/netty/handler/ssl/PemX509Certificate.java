package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.util.IllegalReferenceCountException;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Date;
import java.util.Set;
/* loaded from: classes5.dex */
public final class PemX509Certificate extends X509Certificate implements f1 {
    private static final byte[] BEGIN_CERT;
    private static final byte[] END_CERT;
    private final kg.j content;

    static {
        Charset charset = io.grpc.netty.shaded.io.netty.util.h.f45018f;
        BEGIN_CERT = "-----BEGIN CERTIFICATE-----\n".getBytes(charset);
        END_CERT = "\n-----END CERTIFICATE-----\n".getBytes(charset);
    }

    private PemX509Certificate(kg.j jVar) {
        this.content = (kg.j) io.grpc.netty.shaded.io.netty.util.internal.s.h(jVar, "content");
    }

    private static kg.j append(kg.k kVar, boolean z10, f1 f1Var, int i9, kg.j jVar) {
        kg.j content = f1Var.content();
        if (jVar == null) {
            jVar = newBuffer(kVar, z10, content.P1() * i9);
        }
        jVar.x2(content.m2());
        return jVar;
    }

    private static kg.j newBuffer(kg.k kVar, boolean z10, int i9) {
        return z10 ? kVar.h(i9) : kVar.l(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f1 toPEM(kg.k kVar, boolean z10, X509Certificate... x509CertificateArr) throws CertificateEncodingException {
        io.grpc.netty.shaded.io.netty.util.internal.s.f(x509CertificateArr, "chain");
        if (x509CertificateArr.length == 1) {
            X509Certificate x509Certificate = x509CertificateArr[0];
            if (x509Certificate instanceof f1) {
                return ((f1) x509Certificate).retain();
            }
        }
        kg.j jVar = null;
        try {
            for (X509Certificate x509Certificate2 : x509CertificateArr) {
                if (x509Certificate2 != null) {
                    if (x509Certificate2 instanceof f1) {
                        jVar = append(kVar, z10, (f1) x509Certificate2, x509CertificateArr.length, jVar);
                    } else {
                        jVar = append(kVar, z10, x509Certificate2, x509CertificateArr.length, jVar);
                    }
                } else {
                    throw new IllegalArgumentException("Null element in chain: " + Arrays.toString(x509CertificateArr));
                }
            }
            return new h1(jVar, false);
        } catch (Throwable th2) {
            if (0 != 0) {
                jVar.release();
            }
            throw th2;
        }
    }

    public static PemX509Certificate valueOf(byte[] bArr) {
        return valueOf(kg.s0.k(bArr));
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity() {
        throw new UnsupportedOperationException();
    }

    @Override // kg.l
    public kg.j content() {
        int refCnt = refCnt();
        if (refCnt > 0) {
            return this.content;
        }
        throw new IllegalReferenceCountException(refCnt);
    }

    @Override // java.security.cert.Certificate
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PemX509Certificate) {
            return this.content.equals(((PemX509Certificate) obj).content);
        }
        return false;
    }

    @Override // java.security.cert.X509Certificate
    public int getBasicConstraints() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Extension
    public Set<String> getCriticalExtensionOIDs() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.Certificate
    public byte[] getEncoded() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public Principal getIssuerDN() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getIssuerUniqueID() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getKeyUsage() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Extension
    public Set<String> getNonCriticalExtensionOIDs() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotAfter() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotBefore() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.Certificate
    public PublicKey getPublicKey() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public BigInteger getSerialNumber() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgName() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgOID() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSigAlgParams() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSignature() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public Principal getSubjectDN() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getSubjectUniqueID() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getTBSCertificate() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Certificate
    public int getVersion() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        throw new UnsupportedOperationException();
    }

    @Override // java.security.cert.Certificate
    public int hashCode() {
        return this.content.hashCode();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.f1
    public boolean isSensitive() {
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public int refCnt() {
        return this.content.refCnt();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release() {
        return this.content.release();
    }

    @Override // java.security.cert.Certificate
    public String toString() {
        return this.content.p2(io.grpc.netty.shaded.io.netty.util.h.f45016d);
    }

    @Override // java.security.cert.Certificate
    public void verify(PublicKey publicKey) {
        throw new UnsupportedOperationException();
    }

    public static PemX509Certificate valueOf(kg.j jVar) {
        return new PemX509Certificate(jVar);
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity(Date date) {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public boolean release(int i9) {
        return this.content.release(i9);
    }

    @Override // java.security.cert.Certificate
    public void verify(PublicKey publicKey, String str) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: copy */
    public PemX509Certificate m1559copy() {
        return m1563replace(this.content.N());
    }

    /* renamed from: duplicate */
    public PemX509Certificate m1561duplicate() {
        return m1563replace(this.content.f0());
    }

    /* renamed from: replace */
    public PemX509Certificate m1563replace(kg.j jVar) {
        return new PemX509Certificate(jVar);
    }

    /* renamed from: retainedDuplicate */
    public PemX509Certificate m1568retainedDuplicate() {
        return m1563replace(this.content.V1());
    }

    private static kg.j append(kg.k kVar, boolean z10, X509Certificate x509Certificate, int i9, kg.j jVar) throws CertificateEncodingException {
        kg.j k10 = kg.s0.k(x509Certificate.getEncoded());
        try {
            kg.j r10 = v1.r(kVar, k10);
            if (jVar == null) {
                jVar = newBuffer(kVar, z10, (BEGIN_CERT.length + r10.P1() + END_CERT.length) * i9);
            }
            jVar.A2(BEGIN_CERT);
            jVar.x2(r10);
            jVar.A2(END_CERT);
            r10.release();
            return jVar;
        } finally {
            k10.release();
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public PemX509Certificate retain() {
        this.content.retain();
        return this;
    }

    /* renamed from: touch */
    public PemX509Certificate m1571touch() {
        this.content.q2();
        return this;
    }

    /* renamed from: retain */
    public PemX509Certificate m1566retain(int i9) {
        this.content.U1(i9);
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.s
    public PemX509Certificate touch(Object obj) {
        this.content.touch(obj);
        return this;
    }
}
