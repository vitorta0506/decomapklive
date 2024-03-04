package org.bouncycastle.cert;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.Set;
import oj.h;
import oj.l;
import oj.m;
import oj.v;
import oj.x;
import org.bouncycastle.asn1.n;
/* loaded from: classes7.dex */
public class X509CertificateHolder implements org.bouncycastle.util.c, Serializable {
    private static final long serialVersionUID = 20170722001L;
    private transient m extensions;
    private transient h x509Certificate;

    public X509CertificateHolder(h hVar) {
        init(hVar);
    }

    public X509CertificateHolder(byte[] bArr) throws IOException {
        this(parseBytes(bArr));
    }

    private void init(h hVar) {
        this.x509Certificate = hVar;
        this.extensions = hVar.K().y();
    }

    private static h parseBytes(byte[] bArr) throws IOException {
        try {
            return h.y(b.f(bArr));
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init(h.y(objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof X509CertificateHolder) {
            return this.x509Certificate.equals(((X509CertificateHolder) obj).x509Certificate);
        }
        return false;
    }

    public Set getCriticalExtensionOIDs() {
        return b.b(this.extensions);
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return this.x509Certificate.getEncoded();
    }

    public l getExtension(n nVar) {
        m mVar = this.extensions;
        if (mVar != null) {
            return mVar.y(nVar);
        }
        return null;
    }

    public List getExtensionOIDs() {
        return b.c(this.extensions);
    }

    public m getExtensions() {
        return this.extensions;
    }

    public mj.c getIssuer() {
        return mj.c.x(this.x509Certificate.z());
    }

    public Set getNonCriticalExtensionOIDs() {
        return b.d(this.extensions);
    }

    public Date getNotAfter() {
        return this.x509Certificate.x().x();
    }

    public Date getNotBefore() {
        return this.x509Certificate.H().x();
    }

    public BigInteger getSerialNumber() {
        return this.x509Certificate.B().N();
    }

    public byte[] getSignature() {
        return this.x509Certificate.F().M();
    }

    public oj.a getSignatureAlgorithm() {
        return this.x509Certificate.G();
    }

    public mj.c getSubject() {
        return mj.c.x(this.x509Certificate.I());
    }

    public v getSubjectPublicKeyInfo() {
        return this.x509Certificate.J();
    }

    public int getVersion() {
        return this.x509Certificate.L();
    }

    public int getVersionNumber() {
        return this.x509Certificate.L();
    }

    public boolean hasExtensions() {
        return this.extensions != null;
    }

    public int hashCode() {
        return this.x509Certificate.hashCode();
    }

    public boolean isSignatureValid(ok.b bVar) throws CertException {
        x K = this.x509Certificate.K();
        if (b.e(K.H(), this.x509Certificate.G())) {
            try {
                ok.a a10 = bVar.a(K.H());
                OutputStream b10 = a10.b();
                K.n(b10, "DER");
                b10.close();
                return a10.a(getSignature());
            } catch (Exception e10) {
                throw new CertException("unable to process signature: " + e10.getMessage(), e10);
            }
        }
        throw new CertException("signature invalid - algorithm identifier mismatch");
    }

    public boolean isValidOn(Date date) {
        return (date.before(this.x509Certificate.H().x()) || date.after(this.x509Certificate.x().x())) ? false : true;
    }

    public h toASN1Structure() {
        return this.x509Certificate;
    }
}
