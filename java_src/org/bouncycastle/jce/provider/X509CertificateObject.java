package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oj.g;
import oj.h;
import oj.l;
import oj.m;
import oj.n;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.t0;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.asn1.x;
import org.bouncycastle.util.e;
import org.bouncycastle.util.i;
import yj.f;
/* loaded from: classes7.dex */
public class X509CertificateObject extends X509Certificate implements dk.b {
    private dk.b attrCarrier = new f();
    private g basicConstraints;

    /* renamed from: c  reason: collision with root package name */
    private h f56096c;
    private int hashValue;
    private boolean hashValueSet;
    private boolean[] keyUsage;

    public X509CertificateObject(h hVar) throws CertificateParsingException {
        this.f56096c = hVar;
        try {
            byte[] extensionBytes = getExtensionBytes("2.5.29.19");
            if (extensionBytes != null) {
                this.basicConstraints = g.x(r.G(extensionBytes));
            }
            try {
                byte[] extensionBytes2 = getExtensionBytes("2.5.29.15");
                if (extensionBytes2 == null) {
                    this.keyUsage = null;
                    return;
                }
                n0 P = n0.P(r.G(extensionBytes2));
                byte[] L = P.L();
                int length = (L.length * 8) - P.N();
                int i9 = 9;
                if (length >= 9) {
                    i9 = length;
                }
                this.keyUsage = new boolean[i9];
                for (int i10 = 0; i10 != length; i10++) {
                    this.keyUsage[i10] = (L[i10 / 8] & (128 >>> (i10 % 8))) != 0;
                }
            } catch (Exception e10) {
                throw new CertificateParsingException("cannot construct KeyUsage: " + e10);
            }
        } catch (Exception e11) {
            throw new CertificateParsingException("cannot construct BasicConstraints: " + e11);
        }
    }

    private int calculateHashCode() {
        try {
            byte[] encoded = getEncoded();
            int i9 = 0;
            for (int i10 = 1; i10 < encoded.length; i10++) {
                i9 += encoded[i10] * i10;
            }
            return i9;
        } catch (CertificateEncodingException unused) {
            return 0;
        }
    }

    private void checkSignature(PublicKey publicKey, Signature signature) throws CertificateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (!isAlgIdEqual(this.f56096c.G(), this.f56096c.K().H())) {
            throw new CertificateException("signature algorithm in TBS cert not same as outer cert");
        }
        d.c(signature, this.f56096c.G().B());
        signature.initVerify(publicKey);
        signature.update(getTBSCertificate());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("certificate does not verify with supplied key");
        }
    }

    private static Collection getAlternativeNames(byte[] bArr) throws CertificateParsingException {
        String g10;
        if (bArr == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration N = s.K(bArr).N();
            while (N.hasMoreElements()) {
                n x10 = n.x(N.nextElement());
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(e.d(x10.z()));
                switch (x10.z()) {
                    case 0:
                    case 3:
                    case 5:
                        arrayList2.add(x10.getEncoded());
                        break;
                    case 1:
                    case 2:
                    case 6:
                        g10 = ((x) x10.y()).g();
                        arrayList2.add(g10);
                        break;
                    case 4:
                        g10 = mj.c.y(nj.d.V, x10.y()).toString();
                        arrayList2.add(g10);
                        break;
                    case 7:
                        try {
                            g10 = InetAddress.getByAddress(o.K(x10.y()).M()).getHostAddress();
                            arrayList2.add(g10);
                            break;
                        } catch (UnknownHostException unused) {
                            break;
                        }
                    case 8:
                        g10 = org.bouncycastle.asn1.n.P(x10.y()).O();
                        arrayList2.add(g10);
                        break;
                    default:
                        throw new IOException("Bad tag number: " + x10.z());
                }
                arrayList.add(Collections.unmodifiableList(arrayList2));
            }
            if (arrayList.size() == 0) {
                return null;
            }
            return Collections.unmodifiableCollection(arrayList);
        } catch (Exception e10) {
            throw new CertificateParsingException(e10.getMessage());
        }
    }

    private byte[] getExtensionBytes(String str) {
        l y10;
        m y11 = this.f56096c.K().y();
        if (y11 == null || (y10 = y11.y(new org.bouncycastle.asn1.n(str))) == null) {
            return null;
        }
        return y10.z().M();
    }

    private boolean isAlgIdEqual(oj.a aVar, oj.a aVar2) {
        if (aVar.x().F(aVar2.x())) {
            return aVar.B() == null ? aVar2.B() == null || aVar2.B().equals(u0.f55980a) : aVar2.B() == null ? aVar.B() == null || aVar.B().equals(u0.f55980a) : aVar.B().equals(aVar2.B());
        }
        return false;
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity() throws CertificateExpiredException, CertificateNotYetValidException {
        checkValidity(new Date());
    }

    @Override // java.security.cert.X509Certificate
    public void checkValidity(Date date) throws CertificateExpiredException, CertificateNotYetValidException {
        if (date.getTime() > getNotAfter().getTime()) {
            throw new CertificateExpiredException("certificate expired on " + this.f56096c.x().z());
        } else if (date.getTime() >= getNotBefore().getTime()) {
        } else {
            throw new CertificateNotYetValidException("certificate not valid till " + this.f56096c.H().z());
        }
    }

    @Override // java.security.cert.Certificate
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Certificate) {
            try {
                return org.bouncycastle.util.a.a(getEncoded(), ((Certificate) obj).getEncoded());
            } catch (CertificateEncodingException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // dk.b
    public org.bouncycastle.asn1.e getBagAttribute(org.bouncycastle.asn1.n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.cert.X509Certificate
    public int getBasicConstraints() {
        g gVar = this.basicConstraints;
        if (gVar == null || !gVar.z()) {
            return -1;
        }
        if (this.basicConstraints.y() == null) {
            return Integer.MAX_VALUE;
        }
        return this.basicConstraints.y().intValue();
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        if (getVersion() == 3) {
            HashSet hashSet = new HashSet();
            m y10 = this.f56096c.K().y();
            if (y10 != null) {
                Enumeration H = y10.H();
                while (H.hasMoreElements()) {
                    org.bouncycastle.asn1.n nVar = (org.bouncycastle.asn1.n) H.nextElement();
                    if (y10.y(nVar).G()) {
                        hashSet.add(nVar.O());
                    }
                }
                return hashSet;
            }
            return null;
        }
        return null;
    }

    @Override // java.security.cert.Certificate
    public byte[] getEncoded() throws CertificateEncodingException {
        try {
            return this.f56096c.u("DER");
        } catch (IOException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public List getExtendedKeyUsage() throws CertificateParsingException {
        byte[] extensionBytes = getExtensionBytes("2.5.29.37");
        if (extensionBytes != null) {
            try {
                s sVar = (s) new j(extensionBytes).o();
                ArrayList arrayList = new ArrayList();
                for (int i9 = 0; i9 != sVar.size(); i9++) {
                    arrayList.add(((org.bouncycastle.asn1.n) sVar.M(i9)).O());
                }
                return Collections.unmodifiableList(arrayList);
            } catch (Exception unused) {
                throw new CertificateParsingException("error processing extended key usage extension");
            }
        }
        return null;
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        l y10;
        m y11 = this.f56096c.K().y();
        if (y11 == null || (y10 = y11.y(new org.bouncycastle.asn1.n(str))) == null) {
            return null;
        }
        try {
            return y10.z().getEncoded();
        } catch (Exception e10) {
            throw new IllegalStateException("error parsing " + e10.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public Collection getIssuerAlternativeNames() throws CertificateParsingException {
        return getAlternativeNames(getExtensionBytes(l.f55770i.O()));
    }

    @Override // java.security.cert.X509Certificate
    public Principal getIssuerDN() {
        return new ck.b(this.f56096c.z());
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getIssuerUniqueID() {
        n0 F = this.f56096c.K().F();
        if (F != null) {
            byte[] L = F.L();
            int length = (L.length * 8) - F.N();
            boolean[] zArr = new boolean[length];
            for (int i9 = 0; i9 != length; i9++) {
                zArr[i9] = (L[i9 / 8] & (128 >>> (i9 % 8))) != 0;
            }
            return zArr;
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.f56096c.z().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getKeyUsage() {
        return this.keyUsage;
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        if (getVersion() == 3) {
            HashSet hashSet = new HashSet();
            m y10 = this.f56096c.K().y();
            if (y10 != null) {
                Enumeration H = y10.H();
                while (H.hasMoreElements()) {
                    org.bouncycastle.asn1.n nVar = (org.bouncycastle.asn1.n) H.nextElement();
                    if (!y10.y(nVar).G()) {
                        hashSet.add(nVar.O());
                    }
                }
                return hashSet;
            }
            return null;
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotAfter() {
        return this.f56096c.x().x();
    }

    @Override // java.security.cert.X509Certificate
    public Date getNotBefore() {
        return this.f56096c.H().x();
    }

    @Override // java.security.cert.Certificate
    public PublicKey getPublicKey() {
        try {
            return BouncyCastleProvider.getPublicKey(this.f56096c.J());
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.cert.X509Certificate
    public BigInteger getSerialNumber() {
        return this.f56096c.B().N();
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgName() {
        Provider provider = Security.getProvider(BouncyCastleProvider.PROVIDER_NAME);
        if (provider != null) {
            String property = provider.getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property != null) {
                return property;
            }
        }
        Provider[] providers = Security.getProviders();
        for (int i9 = 0; i9 != providers.length; i9++) {
            Provider provider2 = providers[i9];
            String property2 = provider2.getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property2 != null) {
                return property2;
            }
        }
        return getSigAlgOID();
    }

    @Override // java.security.cert.X509Certificate
    public String getSigAlgOID() {
        return this.f56096c.G().x().O();
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSigAlgParams() {
        if (this.f56096c.G().B() != null) {
            try {
                return this.f56096c.G().B().f().u("DER");
            } catch (IOException unused) {
            }
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getSignature() {
        return this.f56096c.F().M();
    }

    @Override // java.security.cert.X509Certificate
    public Collection getSubjectAlternativeNames() throws CertificateParsingException {
        return getAlternativeNames(getExtensionBytes(l.f55769h.O()));
    }

    @Override // java.security.cert.X509Certificate
    public Principal getSubjectDN() {
        return new ck.b(this.f56096c.I());
    }

    @Override // java.security.cert.X509Certificate
    public boolean[] getSubjectUniqueID() {
        n0 L = this.f56096c.K().L();
        if (L != null) {
            byte[] L2 = L.L();
            int length = (L2.length * 8) - L.N();
            boolean[] zArr = new boolean[length];
            for (int i9 = 0; i9 != length; i9++) {
                zArr[i9] = (L2[i9 / 8] & (128 >>> (i9 % 8))) != 0;
            }
            return zArr;
        }
        return null;
    }

    @Override // java.security.cert.X509Certificate
    public X500Principal getSubjectX500Principal() {
        try {
            return new X500Principal(this.f56096c.I().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override // java.security.cert.X509Certificate
    public byte[] getTBSCertificate() throws CertificateEncodingException {
        try {
            return this.f56096c.K().u("DER");
        } catch (IOException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }

    @Override // java.security.cert.X509Certificate
    public int getVersion() {
        return this.f56096c.L();
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        m y10;
        if (getVersion() != 3 || (y10 = this.f56096c.K().y()) == null) {
            return false;
        }
        Enumeration H = y10.H();
        while (H.hasMoreElements()) {
            org.bouncycastle.asn1.n nVar = (org.bouncycastle.asn1.n) H.nextElement();
            String O = nVar.O();
            if (!O.equals(c.f56123o) && !O.equals(c.f56111c) && !O.equals(c.f56112d) && !O.equals(c.f56113e) && !O.equals(c.f56119k) && !O.equals(c.f56114f) && !O.equals(c.f56116h) && !O.equals(c.f56117i) && !O.equals(c.f56118j) && !O.equals(c.f56120l) && !O.equals(c.f56121m) && y10.y(nVar).G()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.cert.Certificate
    public synchronized int hashCode() {
        if (!this.hashValueSet) {
            this.hashValue = calculateHashCode();
            this.hashValueSet = true;
        }
        return this.hashValue;
    }

    @Override // dk.b
    public void setBagAttribute(org.bouncycastle.asn1.n nVar, org.bouncycastle.asn1.e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }

    @Override // java.security.cert.Certificate
    public String toString() {
        Object dVar;
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append("  [0]         Version: ");
        stringBuffer.append(getVersion());
        stringBuffer.append(d10);
        stringBuffer.append("         SerialNumber: ");
        stringBuffer.append(getSerialNumber());
        stringBuffer.append(d10);
        stringBuffer.append("             IssuerDN: ");
        stringBuffer.append(getIssuerDN());
        stringBuffer.append(d10);
        stringBuffer.append("           Start Date: ");
        stringBuffer.append(getNotBefore());
        stringBuffer.append(d10);
        stringBuffer.append("           Final Date: ");
        stringBuffer.append(getNotAfter());
        stringBuffer.append(d10);
        stringBuffer.append("            SubjectDN: ");
        stringBuffer.append(getSubjectDN());
        stringBuffer.append(d10);
        stringBuffer.append("           Public Key: ");
        stringBuffer.append(getPublicKey());
        stringBuffer.append(d10);
        stringBuffer.append("  Signature Algorithm: ");
        stringBuffer.append(getSigAlgName());
        stringBuffer.append(d10);
        byte[] signature = getSignature();
        stringBuffer.append("            Signature: ");
        stringBuffer.append(new String(org.bouncycastle.util.encoders.d.e(signature, 0, 20)));
        stringBuffer.append(d10);
        int i9 = 20;
        while (i9 < signature.length) {
            int length = signature.length - 20;
            stringBuffer.append("                       ");
            stringBuffer.append(i9 < length ? new String(org.bouncycastle.util.encoders.d.e(signature, i9, 20)) : new String(org.bouncycastle.util.encoders.d.e(signature, i9, signature.length - i9)));
            stringBuffer.append(d10);
            i9 += 20;
        }
        m y10 = this.f56096c.K().y();
        if (y10 != null) {
            Enumeration H = y10.H();
            if (H.hasMoreElements()) {
                stringBuffer.append("       Extensions: \n");
            }
            while (H.hasMoreElements()) {
                org.bouncycastle.asn1.n nVar = (org.bouncycastle.asn1.n) H.nextElement();
                l y11 = y10.y(nVar);
                if (y11.z() != null) {
                    j jVar = new j(y11.z().M());
                    stringBuffer.append("                       critical(");
                    stringBuffer.append(y11.G());
                    stringBuffer.append(") ");
                    try {
                    } catch (Exception unused) {
                        stringBuffer.append(nVar.O());
                        stringBuffer.append(" value = ");
                        stringBuffer.append("*****");
                    }
                    if (nVar.F(l.f55771j)) {
                        dVar = g.x(jVar.o());
                    } else if (nVar.F(l.f55767f)) {
                        dVar = oj.s.x(jVar.o());
                    } else if (nVar.F(dj.a.f38138b)) {
                        dVar = new dj.b((n0) jVar.o());
                    } else if (nVar.F(dj.a.f38140d)) {
                        dVar = new dj.c((t0) jVar.o());
                    } else if (nVar.F(dj.a.f38147k)) {
                        dVar = new dj.d((t0) jVar.o());
                    } else {
                        stringBuffer.append(nVar.O());
                        stringBuffer.append(" value = ");
                        stringBuffer.append(lj.a.c(jVar.o()));
                        stringBuffer.append(d10);
                    }
                    stringBuffer.append(dVar);
                    stringBuffer.append(d10);
                }
                stringBuffer.append(d10);
            }
        }
        return stringBuffer.toString();
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        Signature signature;
        String b10 = d.b(this.f56096c.G());
        try {
            signature = Signature.getInstance(b10, BouncyCastleProvider.PROVIDER_NAME);
        } catch (Exception unused) {
            signature = Signature.getInstance(b10);
        }
        checkSignature(publicKey, signature);
    }

    @Override // java.security.cert.Certificate
    public final void verify(PublicKey publicKey, String str) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException, SignatureException {
        String b10 = d.b(this.f56096c.G());
        checkSignature(publicKey, str != null ? Signature.getInstance(b10, str) : Signature.getInstance(b10));
    }

    @Override // java.security.cert.X509Certificate, java.security.cert.Certificate
    public final void verify(PublicKey publicKey, Provider provider) throws CertificateException, NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        String b10 = d.b(this.f56096c.G());
        checkSignature(publicKey, provider != null ? Signature.getInstance(b10, provider) : Signature.getInstance(b10));
    }
}
