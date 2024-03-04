package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import oj.v;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.s;
import pj.o;
import vj.e;
/* loaded from: classes7.dex */
public class JCEDHPublicKey implements DHPublicKey {
    static final long serialVersionUID = -216691575254424324L;
    private DHParameterSpec dhSpec;
    private v info;

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f56089y;

    JCEDHPublicKey(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.f56089y = bigInteger;
        this.dhSpec = dHParameterSpec;
    }

    JCEDHPublicKey(DHPublicKey dHPublicKey) {
        this.f56089y = dHPublicKey.getY();
        this.dhSpec = dHPublicKey.getParams();
    }

    JCEDHPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.f56089y = dHPublicKeySpec.getY();
        this.dhSpec = new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    JCEDHPublicKey(v vVar) {
        DHParameterSpec dHParameterSpec;
        this.info = vVar;
        try {
            this.f56089y = ((k) vVar.F()).N();
            s K = s.K(vVar.y().B());
            n x10 = vVar.y().x();
            if (x10.F(gj.c.C0) || isPKCSParam(K)) {
                gj.b y10 = gj.b.y(K);
                dHParameterSpec = y10.z() != null ? new DHParameterSpec(y10.B(), y10.x(), y10.z().intValue()) : new DHParameterSpec(y10.B(), y10.x());
            } else if (!x10.F(o.f56970o4)) {
                throw new IllegalArgumentException("unknown algorithm type: " + x10);
            } else {
                pj.a y11 = pj.a.y(K);
                dHParameterSpec = new DHParameterSpec(y11.B().N(), y11.x().N());
            }
            this.dhSpec = dHParameterSpec;
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    JCEDHPublicKey(e eVar) {
        this.f56089y = eVar.c();
        this.dhSpec = new DHParameterSpec(eVar.b().f(), eVar.b().b(), eVar.b().d());
    }

    private boolean isPKCSParam(s sVar) {
        if (sVar.size() == 2) {
            return true;
        }
        if (sVar.size() > 3) {
            return false;
        }
        return k.K(sVar.M(2)).N().compareTo(BigInteger.valueOf((long) k.K(sVar.M(0)).N().bitLength())) <= 0;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f56089y = (BigInteger) objectInputStream.readObject();
        this.dhSpec = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.dhSpec.getP());
        objectOutputStream.writeObject(this.dhSpec.getG());
        objectOutputStream.writeInt(this.dhSpec.getL());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DH";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        v vVar = this.info;
        return vVar != null ? yj.e.e(vVar) : yj.e.c(new oj.a(gj.c.C0, new gj.b(this.dhSpec.getP(), this.dhSpec.getG(), this.dhSpec.getL())), new k(this.f56089y));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return this.dhSpec;
    }

    @Override // javax.crypto.interfaces.DHPublicKey
    public BigInteger getY() {
        return this.f56089y;
    }
}
