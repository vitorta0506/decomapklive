package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPrivateKeySpec;
import java.util.Enumeration;
import oj.j;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.n;
import pj.o;
import vj.i;
import yj.f;
/* loaded from: classes7.dex */
public class JDKDSAPrivateKey implements DSAPrivateKey, dk.b {
    private static final long serialVersionUID = -4677259546958385734L;
    private f attrCarrier = new f();
    DSAParams dsaSpec;

    /* renamed from: x  reason: collision with root package name */
    BigInteger f56094x;

    protected JDKDSAPrivateKey() {
    }

    JDKDSAPrivateKey(gj.d dVar) throws IOException {
        j y10 = j.y(dVar.B().B());
        this.f56094x = k.K(dVar.I()).N();
        this.dsaSpec = new DSAParameterSpec(y10.z(), y10.B(), y10.x());
    }

    JDKDSAPrivateKey(DSAPrivateKey dSAPrivateKey) {
        this.f56094x = dSAPrivateKey.getX();
        this.dsaSpec = dSAPrivateKey.getParams();
    }

    JDKDSAPrivateKey(DSAPrivateKeySpec dSAPrivateKeySpec) {
        this.f56094x = dSAPrivateKeySpec.getX();
        this.dsaSpec = new DSAParameterSpec(dSAPrivateKeySpec.getP(), dSAPrivateKeySpec.getQ(), dSAPrivateKeySpec.getG());
    }

    JDKDSAPrivateKey(i iVar) {
        this.f56094x = iVar.c();
        this.dsaSpec = new DSAParameterSpec(iVar.b().b(), iVar.b().c(), iVar.b().a());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f56094x = (BigInteger) objectInputStream.readObject();
        this.dsaSpec = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        f fVar = new f();
        this.attrCarrier = fVar;
        fVar.a(objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.f56094x);
        objectOutputStream.writeObject(this.dsaSpec.getP());
        objectOutputStream.writeObject(this.dsaSpec.getQ());
        objectOutputStream.writeObject(this.dsaSpec.getG());
        this.attrCarrier.b(objectOutputStream);
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAPrivateKey) {
            DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) obj;
            return getX().equals(dSAPrivateKey.getX()) && getParams().getG().equals(dSAPrivateKey.getParams().getG()) && getParams().getP().equals(dSAPrivateKey.getParams().getP()) && getParams().getQ().equals(dSAPrivateKey.getParams().getQ());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DSA";
    }

    @Override // dk.b
    public e getBagAttribute(n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new gj.d(new oj.a(o.f56959h4, new j(this.dsaSpec.getP(), this.dsaSpec.getQ(), this.dsaSpec.getG())), new k(getX())).u("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // java.security.interfaces.DSAKey
    public DSAParams getParams() {
        return this.dsaSpec;
    }

    @Override // java.security.interfaces.DSAPrivateKey
    public BigInteger getX() {
        return this.f56094x;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }
}
