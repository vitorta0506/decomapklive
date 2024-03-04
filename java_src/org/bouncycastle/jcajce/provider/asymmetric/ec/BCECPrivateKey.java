package org.bouncycastle.jcajce.provider.asymmetric.ec;

import dk.b;
import ek.e;
import gj.d;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPrivateKeySpec;
import java.util.Enumeration;
import oj.v;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.n0;
import org.bouncycastle.asn1.r;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import pj.g;
import pj.o;
import vj.l;
import vj.p;
import yj.c;
import yj.f;
/* loaded from: classes7.dex */
public class BCECPrivateKey implements ECPrivateKey, org.bouncycastle.jce.interfaces.ECPrivateKey, b {
    static final long serialVersionUID = 994553197664784084L;
    private String algorithm;
    private transient f attrCarrier;
    private transient zj.b configuration;

    /* renamed from: d  reason: collision with root package name */
    private transient BigInteger f56052d;
    private transient ECParameterSpec ecSpec;
    private transient n0 publicKey;
    private boolean withCompression;

    protected BCECPrivateKey() {
        this.algorithm = "EC";
        this.attrCarrier = new f();
    }

    public BCECPrivateKey(String str, e eVar, zj.b bVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        throw null;
    }

    BCECPrivateKey(String str, d dVar, zj.b bVar) throws IOException {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.configuration = bVar;
        populateFromPrivKeyInfo(dVar);
    }

    public BCECPrivateKey(String str, ECPrivateKeySpec eCPrivateKeySpec, zj.b bVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56052d = eCPrivateKeySpec.getS();
        this.ecSpec = eCPrivateKeySpec.getParams();
        this.configuration = bVar;
    }

    public BCECPrivateKey(String str, BCECPrivateKey bCECPrivateKey) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56052d = bCECPrivateKey.f56052d;
        this.ecSpec = bCECPrivateKey.ecSpec;
        this.withCompression = bCECPrivateKey.withCompression;
        this.attrCarrier = bCECPrivateKey.attrCarrier;
        this.publicKey = bCECPrivateKey.publicKey;
        this.configuration = bCECPrivateKey.configuration;
    }

    public BCECPrivateKey(String str, p pVar, BCECPublicKey bCECPublicKey, ek.d dVar, zj.b bVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56052d = pVar.c();
        this.configuration = bVar;
        if (dVar == null) {
            l b10 = pVar.b();
            this.ecSpec = new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue());
        } else {
            this.ecSpec = yj.b.h(yj.b.b(dVar.a(), dVar.e()), dVar);
        }
        try {
            this.publicKey = getPublicKeyDetails(bCECPublicKey);
        } catch (Exception unused) {
            this.publicKey = null;
        }
    }

    public BCECPrivateKey(String str, p pVar, BCECPublicKey bCECPublicKey, ECParameterSpec eCParameterSpec, zj.b bVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56052d = pVar.c();
        this.configuration = bVar;
        if (eCParameterSpec == null) {
            l b10 = pVar.b();
            eCParameterSpec = new ECParameterSpec(yj.b.b(b10.a(), b10.e()), yj.b.f(b10.b()), b10.d(), b10.c().intValue());
        }
        this.ecSpec = eCParameterSpec;
        this.publicKey = getPublicKeyDetails(bCECPublicKey);
    }

    public BCECPrivateKey(String str, p pVar, zj.b bVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.algorithm = str;
        this.f56052d = pVar.c();
        this.ecSpec = null;
        this.configuration = bVar;
    }

    public BCECPrivateKey(ECPrivateKey eCPrivateKey, zj.b bVar) {
        this.algorithm = "EC";
        this.attrCarrier = new f();
        this.f56052d = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.ecSpec = eCPrivateKey.getParams();
        this.configuration = bVar;
    }

    private n0 getPublicKeyDetails(BCECPublicKey bCECPublicKey) {
        try {
            return v.z(r.G(bCECPublicKey.getEncoded())).B();
        } catch (IOException unused) {
            return null;
        }
    }

    private void populateFromPrivKeyInfo(d dVar) throws IOException {
        g x10 = g.x(dVar.B().B());
        this.ecSpec = yj.b.i(x10, yj.b.k(this.configuration, x10));
        org.bouncycastle.asn1.e I = dVar.I();
        if (I instanceof k) {
            this.f56052d = k.K(I).N();
            return;
        }
        ij.a x11 = ij.a.x(I);
        this.f56052d = x11.y();
        this.publicKey = x11.B();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.configuration = BouncyCastleProvider.CONFIGURATION;
        populateFromPrivKeyInfo(d.y(r.G((byte[]) objectInputStream.readObject())));
        this.attrCarrier = new f();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    ek.d engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? yj.b.g(eCParameterSpec) : this.configuration.b();
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCECPrivateKey) {
            BCECPrivateKey bCECPrivateKey = (BCECPrivateKey) obj;
            return getD().equals(bCECPrivateKey.getD()) && engineGetSpec().equals(bCECPrivateKey.engineGetSpec());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // dk.b
    public org.bouncycastle.asn1.e getBagAttribute(n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public BigInteger getD() {
        return this.f56052d;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        g a10 = a.a(this.ecSpec, this.withCompression);
        ECParameterSpec eCParameterSpec = this.ecSpec;
        int h10 = eCParameterSpec == null ? c.h(this.configuration, null, getS()) : c.h(this.configuration, eCParameterSpec.getOrder(), getS());
        try {
            return new d(new oj.a(o.f56983v3, a10), this.publicKey != null ? new ij.a(h10, getS(), this.publicKey, a10) : new ij.a(h10, getS(), a10)).u("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.ECPrivateKey
    public ek.d getParameters() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        if (eCParameterSpec == null) {
            return null;
        }
        return yj.b.g(eCParameterSpec);
    }

    @Override // java.security.interfaces.ECKey
    public ECParameterSpec getParams() {
        return this.ecSpec;
    }

    @Override // java.security.interfaces.ECPrivateKey
    public BigInteger getS() {
        return this.f56052d;
    }

    public int hashCode() {
        return getD().hashCode() ^ engineGetSpec().hashCode();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, org.bouncycastle.asn1.e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return c.i("EC", this.f56052d, engineGetSpec());
    }
}
