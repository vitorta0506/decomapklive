package org.bouncycastle.cert;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import oj.d;
import oj.e;
import oj.f;
import oj.l;
import oj.m;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.s;
/* loaded from: classes7.dex */
public class X509AttributeCertificateHolder implements org.bouncycastle.util.c, Serializable {
    private static d[] EMPTY_ARRAY = new d[0];
    private static final long serialVersionUID = 20170722001L;
    private transient e attrCert;
    private transient m extensions;

    public X509AttributeCertificateHolder(e eVar) {
        init(eVar);
    }

    public X509AttributeCertificateHolder(byte[] bArr) throws IOException {
        this(parseBytes(bArr));
    }

    private void init(e eVar) {
        this.attrCert = eVar;
        this.extensions = eVar.x().z();
    }

    private static e parseBytes(byte[] bArr) throws IOException {
        try {
            return e.y(b.f(bArr));
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init(e.y(objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof X509AttributeCertificateHolder) {
            return this.attrCert.equals(((X509AttributeCertificateHolder) obj).attrCert);
        }
        return false;
    }

    public d[] getAttributes() {
        s y10 = this.attrCert.x().y();
        d[] dVarArr = new d[y10.size()];
        for (int i9 = 0; i9 != y10.size(); i9++) {
            dVarArr[i9] = d.y(y10.M(i9));
        }
        return dVarArr;
    }

    public d[] getAttributes(n nVar) {
        s y10 = this.attrCert.x().y();
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 != y10.size(); i9++) {
            d y11 = d.y(y10.M(i9));
            if (y11.x().F(nVar)) {
                arrayList.add(y11);
            }
        }
        return arrayList.size() == 0 ? EMPTY_ARRAY : (d[]) arrayList.toArray(new d[arrayList.size()]);
    }

    public Set getCriticalExtensionOIDs() {
        return b.b(this.extensions);
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return this.attrCert.getEncoded();
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

    public a getHolder() {
        return new a((s) this.attrCert.x().B().f());
    }

    public qj.a getIssuer() {
        return new qj.a(this.attrCert.x().G());
    }

    public boolean[] getIssuerUniqueID() {
        return b.a(this.attrCert.x().H());
    }

    public Set getNonCriticalExtensionOIDs() {
        return b.d(this.extensions);
    }

    public Date getNotAfter() {
        return b.g(this.attrCert.x().x().y());
    }

    public Date getNotBefore() {
        return b.g(this.attrCert.x().x().z());
    }

    public BigInteger getSerialNumber() {
        return this.attrCert.x().I().N();
    }

    public byte[] getSignature() {
        return this.attrCert.B().M();
    }

    public oj.a getSignatureAlgorithm() {
        return this.attrCert.z();
    }

    public int getVersion() {
        return this.attrCert.x().K().R() + 1;
    }

    public boolean hasExtensions() {
        return this.extensions != null;
    }

    public int hashCode() {
        return this.attrCert.hashCode();
    }

    public boolean isSignatureValid(ok.b bVar) throws CertException {
        f x10 = this.attrCert.x();
        if (b.e(x10.J(), this.attrCert.z())) {
            try {
                ok.a a10 = bVar.a(x10.J());
                OutputStream b10 = a10.b();
                x10.n(b10, "DER");
                b10.close();
                return a10.a(getSignature());
            } catch (Exception e10) {
                throw new CertException("unable to process signature: " + e10.getMessage(), e10);
            }
        }
        throw new CertException("signature invalid - algorithm identifier mismatch");
    }

    public boolean isValidOn(Date date) {
        oj.c x10 = this.attrCert.x().x();
        return (date.before(b.g(x10.z())) || date.after(b.g(x10.y()))) ? false : true;
    }

    public e toASN1Structure() {
        return this.attrCert;
    }
}
