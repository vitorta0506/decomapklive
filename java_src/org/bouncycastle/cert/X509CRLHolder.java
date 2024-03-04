package org.bouncycastle.cert;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Set;
import oj.i;
import oj.l;
import oj.m;
import oj.n;
import oj.o;
import oj.r;
import oj.w;
import oj.y;
import org.bouncycastle.asn1.j;
/* loaded from: classes7.dex */
public class X509CRLHolder implements org.bouncycastle.util.c, Serializable {
    private static final long serialVersionUID = 20170722001L;
    private transient m extensions;
    private transient boolean isIndirect;
    private transient o issuerName;
    private transient i x509CRL;

    public X509CRLHolder(InputStream inputStream) throws IOException {
        this(parseStream(inputStream));
    }

    public X509CRLHolder(i iVar) {
        init(iVar);
    }

    public X509CRLHolder(byte[] bArr) throws IOException {
        this(parseStream(new ByteArrayInputStream(bArr)));
    }

    private void init(i iVar) {
        this.x509CRL = iVar;
        m x10 = iVar.I().x();
        this.extensions = x10;
        this.isIndirect = isIndirectCRL(x10);
        this.issuerName = new o(new n(iVar.y()));
    }

    private static boolean isIndirectCRL(m mVar) {
        l y10;
        return (mVar == null || (y10 = mVar.y(l.f55777p)) == null || !r.z(y10.F()).B()) ? false : true;
    }

    private static i parseStream(InputStream inputStream) throws IOException {
        try {
            org.bouncycastle.asn1.r o10 = new j(inputStream, true).o();
            if (o10 != null) {
                return i.x(o10);
            }
            throw new IOException("no content found");
        } catch (ClassCastException e10) {
            throw new CertIOException("malformed data: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw new CertIOException("malformed data: " + e11.getMessage(), e11);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        init(i.x(objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof X509CRLHolder) {
            return this.x509CRL.equals(((X509CRLHolder) obj).x509CRL);
        }
        return false;
    }

    public Set getCriticalExtensionOIDs() {
        return b.b(this.extensions);
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return this.x509CRL.getEncoded();
    }

    public l getExtension(org.bouncycastle.asn1.n nVar) {
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
        return mj.c.x(this.x509CRL.y());
    }

    public Date getNextUpdate() {
        y z10 = this.x509CRL.z();
        if (z10 != null) {
            return z10.x();
        }
        return null;
    }

    public Set getNonCriticalExtensionOIDs() {
        return b.d(this.extensions);
    }

    public c getRevokedCertificate(BigInteger bigInteger) {
        l y10;
        o oVar = this.issuerName;
        Enumeration B = this.x509CRL.B();
        while (B.hasMoreElements()) {
            w.b bVar = (w.b) B.nextElement();
            if (bVar.z().O(bigInteger)) {
                return new c(bVar, this.isIndirect, oVar);
            }
            if (this.isIndirect && bVar.B() && (y10 = bVar.x().y(l.f55778q)) != null) {
                oVar = o.x(y10.F());
            }
        }
        return null;
    }

    public Collection getRevokedCertificates() {
        ArrayList arrayList = new ArrayList(this.x509CRL.F().length);
        o oVar = this.issuerName;
        Enumeration B = this.x509CRL.B();
        while (B.hasMoreElements()) {
            c cVar = new c((w.b) B.nextElement(), this.isIndirect, oVar);
            arrayList.add(cVar);
            oVar = cVar.a();
        }
        return arrayList;
    }

    public Date getThisUpdate() {
        return this.x509CRL.J().x();
    }

    public boolean hasExtensions() {
        return this.extensions != null;
    }

    public int hashCode() {
        return this.x509CRL.hashCode();
    }

    public boolean isSignatureValid(ok.b bVar) throws CertException {
        w I = this.x509CRL.I();
        if (b.e(I.H(), this.x509CRL.H())) {
            try {
                ok.a a10 = bVar.a(I.H());
                OutputStream b10 = a10.b();
                I.n(b10, "DER");
                b10.close();
                return a10.a(this.x509CRL.G().M());
            } catch (Exception e10) {
                throw new CertException("unable to process signature: " + e10.getMessage(), e10);
            }
        }
        throw new CertException("signature invalid - algorithm identifier mismatch");
    }

    public i toASN1Structure() {
        return this.x509CRL;
    }
}
