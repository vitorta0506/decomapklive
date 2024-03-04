package org.bouncycastle.jce.provider;

import gj.e;
import java.io.IOException;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.util.i;
import vj.f0;
/* loaded from: classes7.dex */
public class JCERSAPrivateCrtKey extends JCERSAPrivateKey implements RSAPrivateCrtKey {
    static final long serialVersionUID = 7834723820638524718L;
    private BigInteger crtCoefficient;
    private BigInteger primeExponentP;
    private BigInteger primeExponentQ;
    private BigInteger primeP;
    private BigInteger primeQ;
    private BigInteger publicExponent;

    JCERSAPrivateCrtKey(gj.d dVar) throws IOException {
        this(e.B(dVar.I()));
    }

    JCERSAPrivateCrtKey(e eVar) {
        this.modulus = eVar.F();
        this.publicExponent = eVar.J();
        this.privateExponent = eVar.I();
        this.primeP = eVar.G();
        this.primeQ = eVar.H();
        this.primeExponentP = eVar.y();
        this.primeExponentQ = eVar.z();
        this.crtCoefficient = eVar.x();
    }

    JCERSAPrivateCrtKey(RSAPrivateCrtKey rSAPrivateCrtKey) {
        this.modulus = rSAPrivateCrtKey.getModulus();
        this.publicExponent = rSAPrivateCrtKey.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKey.getPrivateExponent();
        this.primeP = rSAPrivateCrtKey.getPrimeP();
        this.primeQ = rSAPrivateCrtKey.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKey.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKey.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKey.getCrtCoefficient();
    }

    JCERSAPrivateCrtKey(RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec) {
        this.modulus = rSAPrivateCrtKeySpec.getModulus();
        this.publicExponent = rSAPrivateCrtKeySpec.getPublicExponent();
        this.privateExponent = rSAPrivateCrtKeySpec.getPrivateExponent();
        this.primeP = rSAPrivateCrtKeySpec.getPrimeP();
        this.primeQ = rSAPrivateCrtKeySpec.getPrimeQ();
        this.primeExponentP = rSAPrivateCrtKeySpec.getPrimeExponentP();
        this.primeExponentQ = rSAPrivateCrtKeySpec.getPrimeExponentQ();
        this.crtCoefficient = rSAPrivateCrtKeySpec.getCrtCoefficient();
    }

    JCERSAPrivateCrtKey(f0 f0Var) {
        super(f0Var);
        this.publicExponent = f0Var.h();
        this.primeP = f0Var.g();
        this.primeQ = f0Var.i();
        this.primeExponentP = f0Var.e();
        this.primeExponentQ = f0Var.f();
        this.crtCoefficient = f0Var.j();
    }

    @Override // org.bouncycastle.jce.provider.JCERSAPrivateKey
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

    @Override // org.bouncycastle.jce.provider.JCERSAPrivateKey, java.security.Key
    public byte[] getEncoded() {
        return yj.e.b(new oj.a(gj.c.f40124l0, u0.f55980a), new e(getModulus(), getPublicExponent(), getPrivateExponent(), getPrimeP(), getPrimeQ(), getPrimeExponentP(), getPrimeExponentQ(), getCrtCoefficient()));
    }

    @Override // org.bouncycastle.jce.provider.JCERSAPrivateKey, java.security.Key
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

    @Override // org.bouncycastle.jce.provider.JCERSAPrivateKey
    public int hashCode() {
        return (getModulus().hashCode() ^ getPublicExponent().hashCode()) ^ getPrivateExponent().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append("RSA Private CRT Key");
        stringBuffer.append(d10);
        stringBuffer.append("            modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("    public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("   private exponent: ");
        stringBuffer.append(getPrivateExponent().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("             primeP: ");
        stringBuffer.append(getPrimeP().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("             primeQ: ");
        stringBuffer.append(getPrimeQ().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("     primeExponentP: ");
        stringBuffer.append(getPrimeExponentP().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("     primeExponentQ: ");
        stringBuffer.append(getPrimeExponentQ().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("     crtCoefficient: ");
        stringBuffer.append(getCrtCoefficient().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
