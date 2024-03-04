package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPublicKeySpec;
import oj.v;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.util.i;
import pj.o;
import vj.j;
/* loaded from: classes7.dex */
public class BCDSAPublicKey implements DSAPublicKey {
    private static BigInteger ZERO = BigInteger.valueOf(0);
    private static final long serialVersionUID = 1752452449903495175L;
    private transient DSAParams dsaSpec;
    private transient j lwKeyParams;

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f56049y;

    BCDSAPublicKey(DSAPublicKey dSAPublicKey) {
        this.f56049y = dSAPublicKey.getY();
        this.dsaSpec = dSAPublicKey.getParams();
        this.lwKeyParams = new j(this.f56049y, a.b(this.dsaSpec));
    }

    BCDSAPublicKey(DSAPublicKeySpec dSAPublicKeySpec) {
        this.f56049y = dSAPublicKeySpec.getY();
        this.dsaSpec = new DSAParameterSpec(dSAPublicKeySpec.getP(), dSAPublicKeySpec.getQ(), dSAPublicKeySpec.getG());
        this.lwKeyParams = new j(this.f56049y, a.b(this.dsaSpec));
    }

    public BCDSAPublicKey(v vVar) {
        try {
            this.f56049y = ((k) vVar.F()).N();
            if (isNotNull(vVar.x().B())) {
                oj.j y10 = oj.j.y(vVar.x().B());
                this.dsaSpec = new DSAParameterSpec(y10.z(), y10.B(), y10.x());
            } else {
                this.dsaSpec = null;
            }
            this.lwKeyParams = new j(this.f56049y, a.b(this.dsaSpec));
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    BCDSAPublicKey(j jVar) {
        this.f56049y = jVar.c();
        this.dsaSpec = new DSAParameterSpec(jVar.b().b(), jVar.b().c(), jVar.b().a());
        this.lwKeyParams = jVar;
    }

    private boolean isNotNull(e eVar) {
        return (eVar == null || u0.f55980a.F(eVar.f())) ? false : true;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        BigInteger bigInteger = (BigInteger) objectInputStream.readObject();
        if (bigInteger.equals(ZERO)) {
            this.dsaSpec = null;
        } else {
            this.dsaSpec = new DSAParameterSpec(bigInteger, (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        }
        this.lwKeyParams = new j(this.f56049y, a.b(this.dsaSpec));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        BigInteger g10;
        objectOutputStream.defaultWriteObject();
        DSAParams dSAParams = this.dsaSpec;
        if (dSAParams == null) {
            g10 = ZERO;
        } else {
            objectOutputStream.writeObject(dSAParams.getP());
            objectOutputStream.writeObject(this.dsaSpec.getQ());
            g10 = this.dsaSpec.getG();
        }
        objectOutputStream.writeObject(g10);
    }

    j engineGetKeyParameters() {
        return this.lwKeyParams;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAPublicKey) {
            DSAPublicKey dSAPublicKey = (DSAPublicKey) obj;
            return this.dsaSpec != null ? getY().equals(dSAPublicKey.getY()) && dSAPublicKey.getParams() != null && getParams().getG().equals(dSAPublicKey.getParams().getG()) && getParams().getP().equals(dSAPublicKey.getParams().getP()) && getParams().getQ().equals(dSAPublicKey.getParams().getQ()) : getY().equals(dSAPublicKey.getY()) && dSAPublicKey.getParams() == null;
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "DSA";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        DSAParams dSAParams = this.dsaSpec;
        return dSAParams == null ? yj.e.c(new oj.a(o.f56959h4), new k(this.f56049y)) : yj.e.c(new oj.a(o.f56959h4, new oj.j(dSAParams.getP(), this.dsaSpec.getQ(), this.dsaSpec.getG()).f()), new k(this.f56049y));
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
        return this.f56049y;
    }

    public int hashCode() {
        return this.dsaSpec != null ? ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode() : getY().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append("DSA Public Key [");
        stringBuffer.append(a.a(this.f56049y, getParams()));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(getY().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
