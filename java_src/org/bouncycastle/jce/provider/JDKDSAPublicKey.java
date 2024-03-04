package org.bouncycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPublicKeySpec;
import oj.j;
import oj.v;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.util.i;
import pj.o;
/* loaded from: classes7.dex */
public class JDKDSAPublicKey implements DSAPublicKey {
    private static final long serialVersionUID = 1752452449903495175L;
    private DSAParams dsaSpec;

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f56095y;

    JDKDSAPublicKey(BigInteger bigInteger, DSAParameterSpec dSAParameterSpec) {
        this.f56095y = bigInteger;
        this.dsaSpec = dSAParameterSpec;
    }

    JDKDSAPublicKey(DSAPublicKey dSAPublicKey) {
        this.f56095y = dSAPublicKey.getY();
        this.dsaSpec = dSAPublicKey.getParams();
    }

    JDKDSAPublicKey(DSAPublicKeySpec dSAPublicKeySpec) {
        this.f56095y = dSAPublicKeySpec.getY();
        this.dsaSpec = new DSAParameterSpec(dSAPublicKeySpec.getP(), dSAPublicKeySpec.getQ(), dSAPublicKeySpec.getG());
    }

    JDKDSAPublicKey(v vVar) {
        try {
            this.f56095y = ((k) vVar.F()).N();
            if (isNotNull(vVar.x().B())) {
                j y10 = j.y(vVar.x().B());
                this.dsaSpec = new DSAParameterSpec(y10.z(), y10.B(), y10.x());
            }
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    JDKDSAPublicKey(vj.j jVar) {
        this.f56095y = jVar.c();
        this.dsaSpec = new DSAParameterSpec(jVar.b().b(), jVar.b().c(), jVar.b().a());
    }

    private boolean isNotNull(e eVar) {
        return (eVar == null || u0.f55980a.B(eVar)) ? false : true;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.f56095y = (BigInteger) objectInputStream.readObject();
        this.dsaSpec = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.f56095y);
        objectOutputStream.writeObject(this.dsaSpec.getP());
        objectOutputStream.writeObject(this.dsaSpec.getQ());
        objectOutputStream.writeObject(this.dsaSpec.getG());
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAPublicKey) {
            DSAPublicKey dSAPublicKey = (DSAPublicKey) obj;
            return getY().equals(dSAPublicKey.getY()) && getParams().getG().equals(dSAPublicKey.getParams().getG()) && getParams().getP().equals(dSAPublicKey.getParams().getP()) && getParams().getQ().equals(dSAPublicKey.getParams().getQ());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DSA";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            DSAParams dSAParams = this.dsaSpec;
            return dSAParams == null ? new v(new oj.a(o.f56959h4), new k(this.f56095y)).u("DER") : new v(new oj.a(o.f56959h4, new j(dSAParams.getP(), this.dsaSpec.getQ(), this.dsaSpec.getG())), new k(this.f56095y)).u("DER");
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // java.security.interfaces.DSAKey
    public DSAParams getParams() {
        return this.dsaSpec;
    }

    @Override // java.security.interfaces.DSAPublicKey
    public BigInteger getY() {
        return this.f56095y;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append("DSA Public Key");
        stringBuffer.append(d10);
        stringBuffer.append("            y: ");
        stringBuffer.append(getY().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
