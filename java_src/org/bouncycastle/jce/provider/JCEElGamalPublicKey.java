package org.bouncycastle.jce.provider;

import ek.h;
import ek.j;
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
import yj.e;
/* loaded from: classes7.dex */
public class JCEElGamalPublicKey implements ElGamalPublicKey, DHPublicKey {
    static final long serialVersionUID = 8712728417091216948L;
    private h elSpec;

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f56093y;

    JCEElGamalPublicKey(j jVar) {
        throw null;
    }

    JCEElGamalPublicKey(BigInteger bigInteger, h hVar) {
        this.f56093y = bigInteger;
        this.elSpec = hVar;
    }

    JCEElGamalPublicKey(DHPublicKey dHPublicKey) {
        this.f56093y = dHPublicKey.getY();
        this.elSpec = new h(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    JCEElGamalPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.f56093y = dHPublicKeySpec.getY();
        this.elSpec = new h(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    JCEElGamalPublicKey(v vVar) {
        fj.a y10 = fj.a.y(vVar.x().B());
        try {
            this.f56093y = ((k) vVar.F()).N();
            this.elSpec = new h(y10.z(), y10.x());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    JCEElGamalPublicKey(ElGamalPublicKey elGamalPublicKey) {
        this.f56093y = elGamalPublicKey.getY();
        this.elSpec = elGamalPublicKey.getParameters();
    }

    JCEElGamalPublicKey(x xVar) {
        throw null;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f56093y = (BigInteger) objectInputStream.readObject();
        this.elSpec = new h((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.elSpec.b());
        objectOutputStream.writeObject(this.elSpec.a());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return e.c(new oj.a(fj.b.f39760l, new fj.a(this.elSpec.b(), this.elSpec.a())), new k(this.f56093y));
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
        return this.f56093y;
    }
}
