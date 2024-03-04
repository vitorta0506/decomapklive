package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.s;
import pj.o;
import yj.f;
/* loaded from: classes7.dex */
public class JCEDHPrivateKey implements DHPrivateKey, dk.b {
    static final long serialVersionUID = 311058815616901812L;
    private dk.b attrCarrier = new f();
    private DHParameterSpec dhSpec;
    private gj.d info;

    /* renamed from: x  reason: collision with root package name */
    BigInteger f56088x;

    protected JCEDHPrivateKey() {
    }

    JCEDHPrivateKey(gj.d dVar) throws IOException {
        DHParameterSpec dHParameterSpec;
        s K = s.K(dVar.B().B());
        k K2 = k.K(dVar.I());
        n x10 = dVar.B().x();
        this.info = dVar;
        this.f56088x = K2.N();
        if (x10.F(gj.c.C0)) {
            gj.b y10 = gj.b.y(K);
            dHParameterSpec = y10.z() != null ? new DHParameterSpec(y10.B(), y10.x(), y10.z().intValue()) : new DHParameterSpec(y10.B(), y10.x());
        } else if (!x10.F(o.f56970o4)) {
            throw new IllegalArgumentException("unknown algorithm type: " + x10);
        } else {
            pj.a y11 = pj.a.y(K);
            dHParameterSpec = new DHParameterSpec(y11.B().N(), y11.x().N());
        }
        this.dhSpec = dHParameterSpec;
    }

    JCEDHPrivateKey(DHPrivateKey dHPrivateKey) {
        this.f56088x = dHPrivateKey.getX();
        this.dhSpec = dHPrivateKey.getParams();
    }

    JCEDHPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.f56088x = dHPrivateKeySpec.getX();
        this.dhSpec = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    JCEDHPrivateKey(vj.d dVar) {
        this.f56088x = dVar.c();
        this.dhSpec = new DHParameterSpec(dVar.b().f(), dVar.b().b(), dVar.b().d());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f56088x = (BigInteger) objectInputStream.readObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getX());
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DH";
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
            gj.d dVar = this.info;
            return dVar != null ? dVar.u("DER") : new gj.d(new oj.a(gj.c.C0, new gj.b(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL())), new k(getX())).u("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override // javax.crypto.interfaces.DHPrivateKey
    public BigInteger getX() {
        return this.f56088x;
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }
}
