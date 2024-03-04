package org.bouncycastle.jcajce.provider.asymmetric.elgamal;

import ek.h;
import ek.j;
import fj.a;
import fj.b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import oj.v;
import org.bouncycastle.asn1.k;
import org.bouncycastle.jce.interfaces.ElGamalPublicKey;
import vj.x;
/* loaded from: classes7.dex */
public class BCElGamalPublicKey implements ElGamalPublicKey, DHPublicKey {
    static final long serialVersionUID = 8712728417091216948L;
    private transient h elSpec;

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f56060y;

    BCElGamalPublicKey(j jVar) {
        throw null;
    }

    BCElGamalPublicKey(BigInteger bigInteger, h hVar) {
        this.f56060y = bigInteger;
        this.elSpec = hVar;
    }

    BCElGamalPublicKey(DHPublicKey dHPublicKey) {
        this.f56060y = dHPublicKey.getY();
        this.elSpec = new h(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    BCElGamalPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.f56060y = dHPublicKeySpec.getY();
        this.elSpec = new h(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    BCElGamalPublicKey(v vVar) {
        a y10 = a.y(vVar.x().B());
        try {
            this.f56060y = ((k) vVar.F()).N();
            this.elSpec = new h(y10.z(), y10.x());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    BCElGamalPublicKey(ElGamalPublicKey elGamalPublicKey) {
        this.f56060y = elGamalPublicKey.getY();
        this.elSpec = elGamalPublicKey.getParameters();
    }

    BCElGamalPublicKey(x xVar) {
        throw null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.elSpec = new h((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.elSpec.b());
        objectOutputStream.writeObject(this.elSpec.a());
    }

    public boolean equals(Object obj) {
        if (obj instanceof DHPublicKey) {
            DHPublicKey dHPublicKey = (DHPublicKey) obj;
            return getY().equals(dHPublicKey.getY()) && getParams().getG().equals(dHPublicKey.getParams().getG()) && getParams().getP().equals(dHPublicKey.getParams().getP()) && getParams().getL() == dHPublicKey.getParams().getL();
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return new v(new oj.a(b.f39760l, new a(this.elSpec.b(), this.elSpec.a())), new k(this.f56060y)).u("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalPublicKey
    public h getParameters() {
        return this.elSpec;
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.elSpec.b(), this.elSpec.a());
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalPublicKey, javax.crypto.interfaces.DHPublicKey
    public BigInteger getY() {
        return this.f56060y;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }
}
