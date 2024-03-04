package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import dk.b;
import gj.d;
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
public class BCDSAPrivateKey implements DSAPrivateKey, b {
    private static final long serialVersionUID = -4677259546958385734L;
    private transient f attrCarrier = new f();
    private transient DSAParams dsaSpec;

    /* renamed from: x  reason: collision with root package name */
    private BigInteger f56048x;

    protected BCDSAPrivateKey() {
    }

    public BCDSAPrivateKey(d dVar) throws IOException {
        j y10 = j.y(dVar.B().B());
        this.f56048x = ((k) dVar.I()).N();
        this.dsaSpec = new DSAParameterSpec(y10.z(), y10.B(), y10.x());
    }

    BCDSAPrivateKey(DSAPrivateKey dSAPrivateKey) {
        this.f56048x = dSAPrivateKey.getX();
        this.dsaSpec = dSAPrivateKey.getParams();
    }

    BCDSAPrivateKey(DSAPrivateKeySpec dSAPrivateKeySpec) {
        this.f56048x = dSAPrivateKeySpec.getX();
        this.dsaSpec = new DSAParameterSpec(dSAPrivateKeySpec.getP(), dSAPrivateKeySpec.getQ(), dSAPrivateKeySpec.getG());
    }

    BCDSAPrivateKey(i iVar) {
        this.f56048x = iVar.c();
        this.dsaSpec = new DSAParameterSpec(iVar.b().b(), iVar.b().c(), iVar.b().a());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.dsaSpec = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.attrCarrier = new f();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.dsaSpec.getP());
        objectOutputStream.writeObject(this.dsaSpec.getQ());
        objectOutputStream.writeObject(this.dsaSpec.getG());
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
        return yj.e.b(new oj.a(o.f56959h4, new j(this.dsaSpec.getP(), this.dsaSpec.getQ(), this.dsaSpec.getG()).f()), new k(getX()));
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
        return this.f56048x;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = org.bouncycastle.util.i.d();
        BigInteger modPow = getParams().getG().modPow(this.f56048x, getParams().getP());
        stringBuffer.append("DSA Private Key [");
        stringBuffer.append(a.a(modPow, getParams()));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(modPow.toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
