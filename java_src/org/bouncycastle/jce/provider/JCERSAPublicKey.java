package org.bouncycastle.jce.provider;

import com.tencent.xmagic.license.RSAUtils;
import gj.f;
import java.io.IOException;
import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import oj.v;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.util.i;
import vj.e0;
import yj.e;
/* loaded from: classes7.dex */
public class JCERSAPublicKey implements RSAPublicKey {
    static final long serialVersionUID = 2675817738516720772L;
    private BigInteger modulus;
    private BigInteger publicExponent;

    JCERSAPublicKey(RSAPublicKey rSAPublicKey) {
        this.modulus = rSAPublicKey.getModulus();
        this.publicExponent = rSAPublicKey.getPublicExponent();
    }

    JCERSAPublicKey(RSAPublicKeySpec rSAPublicKeySpec) {
        this.modulus = rSAPublicKeySpec.getModulus();
        this.publicExponent = rSAPublicKeySpec.getPublicExponent();
    }

    JCERSAPublicKey(v vVar) {
        try {
            f x10 = f.x(vVar.F());
            this.modulus = x10.y();
            this.publicExponent = x10.z();
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in RSA public key");
        }
    }

    JCERSAPublicKey(e0 e0Var) {
        this.modulus = e0Var.c();
        this.publicExponent = e0Var.b();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RSAPublicKey) {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) obj;
            return getModulus().equals(rSAPublicKey.getModulus()) && getPublicExponent().equals(rSAPublicKey.getPublicExponent());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return RSAUtils.RSA;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return e.c(new oj.a(gj.c.f40124l0, u0.f55980a), new f(getModulus(), getPublicExponent()));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // java.security.interfaces.RSAKey
    public BigInteger getModulus() {
        return this.modulus;
    }

    @Override // java.security.interfaces.RSAPublicKey
    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPublicExponent().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append("RSA Public Key");
        stringBuffer.append(d10);
        stringBuffer.append("            modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("    public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
