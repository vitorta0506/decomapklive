package org.bouncycastle.jce.provider;

import ek.h;
import ek.i;
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
public class JCEElGamalPrivateKey implements ElGamalPrivateKey, DHPrivateKey, dk.b {
    static final long serialVersionUID = 4819350091141529678L;
    private f attrCarrier = new f();
    h elSpec;

    /* renamed from: x  reason: collision with root package name */
    BigInteger f56092x;

    protected JCEElGamalPrivateKey() {
    }

    JCEElGamalPrivateKey(i iVar) {
        throw null;
    }

    JCEElGamalPrivateKey(gj.d dVar) throws IOException {
        fj.a y10 = fj.a.y(dVar.B().B());
        this.f56092x = k.K(dVar.I()).N();
        this.elSpec = new h(y10.z(), y10.x());
    }

    JCEElGamalPrivateKey(DHPrivateKey dHPrivateKey) {
        this.f56092x = dHPrivateKey.getX();
        this.elSpec = new h(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
    }

    JCEElGamalPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.f56092x = dHPrivateKeySpec.getX();
        this.elSpec = new h(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    JCEElGamalPrivateKey(ElGamalPrivateKey elGamalPrivateKey) {
        this.f56092x = elGamalPrivateKey.getX();
        this.elSpec = elGamalPrivateKey.getParameters();
    }

    JCEElGamalPrivateKey(w wVar) {
        throw null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f56092x = (BigInteger) objectInputStream.readObject();
        this.elSpec = new h((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getX());
        objectOutputStream.writeObject(this.elSpec.b());
        objectOutputStream.writeObject(this.elSpec.a());
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
        return yj.e.b(new oj.a(fj.b.f39760l, new fj.a(this.elSpec.b(), this.elSpec.a())), new k(getX()));
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
        return this.f56092x;
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }
}
