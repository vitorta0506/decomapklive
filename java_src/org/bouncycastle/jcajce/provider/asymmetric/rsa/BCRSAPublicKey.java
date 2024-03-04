package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import com.tencent.xmagic.license.RSAUtils;
import gj.c;
import gj.f;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import oj.v;
import org.bouncycastle.asn1.u0;
import org.bouncycastle.util.i;
import vj.e0;
import yj.e;
/* loaded from: classes7.dex */
public class BCRSAPublicKey implements RSAPublicKey {
    static final oj.a DEFAULT_ALGORITHM_IDENTIFIER = new oj.a(c.f40124l0, u0.f55980a);
    static final long serialVersionUID = 2675817738516720772L;
    private transient oj.a algorithmIdentifier;
    private BigInteger modulus;
    private BigInteger publicExponent;
    private transient e0 rsaPublicKey;

    BCRSAPublicKey(RSAPublicKey rSAPublicKey) {
        this.algorithmIdentifier = DEFAULT_ALGORITHM_IDENTIFIER;
        this.modulus = rSAPublicKey.getModulus();
        this.publicExponent = rSAPublicKey.getPublicExponent();
        this.rsaPublicKey = new e0(false, this.modulus, this.publicExponent);
    }

    BCRSAPublicKey(RSAPublicKeySpec rSAPublicKeySpec) {
        this.algorithmIdentifier = DEFAULT_ALGORITHM_IDENTIFIER;
        this.modulus = rSAPublicKeySpec.getModulus();
        this.publicExponent = rSAPublicKeySpec.getPublicExponent();
        this.rsaPublicKey = new e0(false, this.modulus, this.publicExponent);
    }

    BCRSAPublicKey(oj.a aVar, e0 e0Var) {
        this.algorithmIdentifier = aVar;
        this.modulus = e0Var.c();
        this.publicExponent = e0Var.b();
        this.rsaPublicKey = e0Var;
    }

    BCRSAPublicKey(v vVar) {
        populateFromPublicKeyInfo(vVar);
    }

    BCRSAPublicKey(e0 e0Var) {
        this(DEFAULT_ALGORITHM_IDENTIFIER, e0Var);
    }

    private void populateFromPublicKeyInfo(v vVar) {
        try {
            f x10 = f.x(vVar.F());
            this.algorithmIdentifier = vVar.x();
            this.modulus = x10.y();
            this.publicExponent = x10.z();
            this.rsaPublicKey = new e0(false, this.modulus, this.publicExponent);
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in RSA public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        try {
            this.algorithmIdentifier = oj.a.y(objectInputStream.readObject());
        } catch (Exception unused) {
            this.algorithmIdentifier = DEFAULT_ALGORITHM_IDENTIFIER;
        }
        this.rsaPublicKey = new e0(false, this.modulus, this.publicExponent);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        if (this.algorithmIdentifier.equals(DEFAULT_ALGORITHM_IDENTIFIER)) {
            return;
        }
        objectOutputStream.writeObject(this.algorithmIdentifier.getEncoded());
    }

    e0 engineGetKeyParameters() {
        return this.rsaPublicKey;
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
        return this.algorithmIdentifier.x().F(c.f40151u0) ? "RSASSA-PSS" : RSAUtils.RSA;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return e.c(this.algorithmIdentifier, new f(getModulus(), getPublicExponent()));
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
        stringBuffer.append("RSA Public Key [");
        stringBuffer.append(a.b(getModulus()));
        stringBuffer.append("]");
        stringBuffer.append(",[");
        stringBuffer.append(a.a(getPublicExponent()));
        stringBuffer.append("]");
        stringBuffer.append(d10);
        stringBuffer.append("        modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(d10);
        stringBuffer.append("public exponent: ");
        stringBuffer.append(getPublicExponent().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
