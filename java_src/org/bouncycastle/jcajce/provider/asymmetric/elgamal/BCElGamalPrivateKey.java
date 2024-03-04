package org.bouncycastle.jcajce.provider.asymmetric.elgamal;

import dk.b;
import ek.h;
import ek.i;
import fj.a;
import gj.d;
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
import org.bouncycastle.jce.interfaces.ElGamalPrivateKey;
import vj.w;
import yj.f;
/* loaded from: classes7.dex */
public class BCElGamalPrivateKey implements ElGamalPrivateKey, DHPrivateKey, b {
    static final long serialVersionUID = 4819350091141529678L;
    private transient f attrCarrier = new f();
    private transient h elSpec;

    /* renamed from: x  reason: collision with root package name */
    private BigInteger f56059x;

    protected BCElGamalPrivateKey() {
    }

    BCElGamalPrivateKey(i iVar) {
        throw null;
    }

    BCElGamalPrivateKey(d dVar) throws IOException {
        a y10 = a.y(dVar.B().B());
        this.f56059x = k.K(dVar.I()).N();
        this.elSpec = new h(y10.z(), y10.x());
    }

    BCElGamalPrivateKey(DHPrivateKey dHPrivateKey) {
        this.f56059x = dHPrivateKey.getX();
        this.elSpec = new h(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
    }

    BCElGamalPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.f56059x = dHPrivateKeySpec.getX();
        this.elSpec = new h(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    BCElGamalPrivateKey(ElGamalPrivateKey elGamalPrivateKey) {
        this.f56059x = elGamalPrivateKey.getX();
        this.elSpec = elGamalPrivateKey.getParameters();
    }

    BCElGamalPrivateKey(w wVar) {
        throw null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.elSpec = new h((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.attrCarrier = new f();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.elSpec.b());
        objectOutputStream.writeObject(this.elSpec.a());
    }

    public boolean equals(Object obj) {
        if (obj instanceof DHPrivateKey) {
            DHPrivateKey dHPrivateKey = (DHPrivateKey) obj;
            return getX().equals(dHPrivateKey.getX()) && getParams().getG().equals(dHPrivateKey.getParams().getG()) && getParams().getP().equals(dHPrivateKey.getParams().getP()) && getParams().getL() == dHPrivateKey.getParams().getL();
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "ElGamal";
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
            return new d(new oj.a(fj.b.f39760l, new a(this.elSpec.b(), this.elSpec.a())), new k(getX())).u("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalPrivateKey
    public h getParameters() {
        return this.elSpec;
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.elSpec.b(), this.elSpec.a());
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalPrivateKey, javax.crypto.interfaces.DHPrivateKey
    public BigInteger getX() {
        return this.f56059x;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }
}
