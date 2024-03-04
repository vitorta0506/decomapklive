package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import gj.d;
import gj.e;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import org.bouncycastle.util.i;
import vj.f0;
import yj.f;
/* loaded from: classes7.dex */
public class BCRSAPrivateCrtKey extends BCRSAPrivateKey implements RSAPrivateCrtKey {
    static final long serialVersionUID = 7834723820638524718L;
    private BigInteger crtCoefficient;
    private BigInteger primeExponentP;
    private BigInteger primeExponentQ;
    private BigInteger primeP;
    private BigInteger primeQ;
    private BigInteger publicExponent;

    BCRSAPrivateCrtKey(d dVar) throws IOException {
        this(dVar.B(), e.B(dVar.I()));
    }

    BCRSAPrivateCrtKey(e eVar) {
        this(BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER, eVar);
    }

    BCRSAPrivateCrtKey(RSAPrivateCrtKey rSAPrivateCrtKey) {
        super(new f0(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent(), rSAPrivateCrtKey.getPrivateExponent(), rSAPrivateCrtKey.getPrimeP(), rSAPrivateCrtKey.getPrimeQ(), rSAPrivateCrtKey.getPrimeExponentP(), rSAPrivateCrtKey.getPrimeExponentQ(), rSAPrivateCrtKey.getCrtCoefficient()));
        this.modulus = rSAPrivateCrtKey.getModulus();
        this.publicExponent = rSAPrivateCrtKey.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKey.getPrivateExponent();
        this.primeP = rSAPrivateCrtKey.getPrimeP();
        this.primeQ = rSAPrivateCrtKey.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKey.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKey.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKey.getCrtCoefficient();
    }

    BCRSAPrivateCrtKey(RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec) {
        super(new f0(rSAPrivateCrtKeySpec.getModulus(), rSAPrivateCrtKeySpec.getPublicExponent(), rSAPrivateCrtKeySpec.getPrivateExponent(), rSAPrivateCrtKeySpec.getPrimeP(), rSAPrivateCrtKeySpec.getPrimeQ(), rSAPrivateCrtKeySpec.getPrimeExponentP(), rSAPrivateCrtKeySpec.getPrimeExponentQ(), rSAPrivateCrtKeySpec.getCrtCoefficient()));
        this.modulus = rSAPrivateCrtKeySpec.getModulus();
        this.publicExponent = rSAPrivateCrtKeySpec.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKeySpec.getPrivateExponent();
        this.primeP = rSAPrivateCrtKeySpec.getPrimeP();
        this.primeQ = rSAPrivateCrtKeySpec.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKeySpec.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKeySpec.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKeySpec.getCrtCoefficient();
    }

    BCRSAPrivateCrtKey(oj.a aVar, e eVar) {
        super(aVar, new f0(eVar.F(), eVar.J(), eVar.I(), eVar.G(), eVar.H(), eVar.y(), eVar.z(), eVar.x()));
        this.modulus = eVar.F();
        this.publicExponent = eVar.J();
        this.privateExponent = eVar.I();
        this.primeP = eVar.G();
        this.primeQ = eVar.H();
        this.primeExponentP = eVar.y();
        this.primeExponentQ = eVar.z();
        this.crtCoefficient = eVar.x();
    }

    BCRSAPrivateCrtKey(oj.a aVar, f0 f0Var) {
        super(aVar, f0Var);
        this.publicExponent = f0Var.h();
        this.primeP = f0Var.g();
        this.primeQ = f0Var.i();
        this.primeExponentP = f0Var.e();
        this.primeExponentQ = f0Var.f();
        this.crtCoefficient = f0Var.j();
    }

    BCRSAPrivateCrtKey(f0 f0Var) {
        super(f0Var);
        this.publicExponent = f0Var.h();
        this.primeP = f0Var.g();
        this.primeQ = f0Var.i();
        this.primeExponentP = f0Var.e();
        this.primeExponentQ = f0Var.f();
        this.crtCoefficient = f0Var.j();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.attrCarrier = new f();
        this.rsaPrivateKey = new f0(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RSAPrivateCrtKey) {
            RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) obj;
            return getModulus().equals(rSAPrivateCrtKey.getModulus()) && getPublicExponent().equals(rSAPrivateCrtKey.getPublicExponent()) && getPrivateExponent().equals(rSAPrivateCrtKey.getPrivateExponent()) && getPrimeP().equals(rSAPrivateCrtKey.getPrimeP()) && getPrimeQ().equals(rSAPrivateCrtKey.getPrimeQ()) && getPrimeExponentP().equals(rSAPrivateCrtKey.getPrimeExponentP()) && getPrimeExponentQ().equals(rSAPrivateCrtKey.getPrimeExponentQ()) && getCrtCoefficient().equals(rSAPrivateCrtKey.getCrtCoefficient());
        }
        return false;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getCrtCoefficient() {
        return this.crtCoefficient;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey, java.security.Key
    public byte[] getEncoded() {
        return yj.e.b(this.algorithmIdentifier, new e(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient()));
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey, java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPrimeExponentP() {
        return this.primeExponentP;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPrimeExponentQ() {
        return this.primeExponentQ;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPrimeP() {
        return this.primeP;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPrimeQ() {
        return this.primeQ;
    }

    @Override // java.security.interfaces.RSAPrivateCrtKey
    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey
    public int hashCode() {
        return (getModulus().hashCode() ^ getPublicExponent().hashCode()) ^ getPrivateExponent().hashCode();
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.rsa.BCRSAPrivateKey
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append("RSA Private CRT Key [");
        stringBuffer.append(a.b(getModulus()));
        stringBuffer.append("]");
        stringBuffer.append(",[");
        stringBuffer.append(a.a(getPublicExponent()));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("             modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("     public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
