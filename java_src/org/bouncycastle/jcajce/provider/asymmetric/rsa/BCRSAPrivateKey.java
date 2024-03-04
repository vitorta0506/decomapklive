package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import com.tencent.xmagic.license.RSAUtils;
import dk.b;
import gj.c;
import gj.e;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.RSAPrivateKeySpec;
import java.util.Enumeration;
import org.bouncycastle.asn1.n;
import org.bouncycastle.util.i;
import vj.e0;
import yj.f;
/* loaded from: classes7.dex */
public class BCRSAPrivateKey implements RSAPrivateKey, b {
    private static BigInteger ZERO = BigInteger.valueOf(0);
    static final long serialVersionUID = 5110188922551353628L;
    protected transient oj.a algorithmIdentifier;
    private byte[] algorithmIdentifierEnc;
    protected transient f attrCarrier;
    protected BigInteger modulus;
    protected BigInteger privateExponent;
    protected transient e0 rsaPrivateKey;

    BCRSAPrivateKey(RSAPrivateKey rSAPrivateKey) {
        oj.a aVar = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(aVar);
        this.algorithmIdentifier = aVar;
        this.attrCarrier = new f();
        this.modulus = rSAPrivateKey.getModulus();
        this.privateExponent = rSAPrivateKey.getPrivateExponent();
        this.rsaPrivateKey = new e0(true, this.modulus, this.privateExponent);
    }

    BCRSAPrivateKey(RSAPrivateKeySpec rSAPrivateKeySpec) {
        oj.a aVar = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(aVar);
        this.algorithmIdentifier = aVar;
        this.attrCarrier = new f();
        this.modulus = rSAPrivateKeySpec.getModulus();
        this.privateExponent = rSAPrivateKeySpec.getPrivateExponent();
        this.rsaPrivateKey = new e0(true, this.modulus, this.privateExponent);
    }

    BCRSAPrivateKey(oj.a aVar, e eVar) {
        oj.a aVar2 = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(aVar2);
        this.algorithmIdentifier = aVar2;
        this.attrCarrier = new f();
        this.algorithmIdentifier = aVar;
        this.algorithmIdentifierEnc = getEncoding(aVar);
        this.modulus = eVar.F();
        this.privateExponent = eVar.I();
        this.rsaPrivateKey = new e0(true, this.modulus, this.privateExponent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCRSAPrivateKey(oj.a aVar, e0 e0Var) {
        oj.a aVar2 = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(aVar2);
        this.algorithmIdentifier = aVar2;
        this.attrCarrier = new f();
        this.algorithmIdentifier = aVar;
        this.algorithmIdentifierEnc = getEncoding(aVar);
        this.modulus = e0Var.c();
        this.privateExponent = e0Var.b();
        this.rsaPrivateKey = e0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BCRSAPrivateKey(e0 e0Var) {
        oj.a aVar = BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER;
        this.algorithmIdentifierEnc = getEncoding(aVar);
        this.algorithmIdentifier = aVar;
        this.attrCarrier = new f();
        this.modulus = e0Var.c();
        this.privateExponent = e0Var.b();
        this.rsaPrivateKey = e0Var;
    }

    private static byte[] getEncoding(oj.a aVar) {
        try {
            return aVar.getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        if (this.algorithmIdentifierEnc == null) {
            this.algorithmIdentifierEnc = getEncoding(BCRSAPublicKey.DEFAULT_ALGORITHM_IDENTIFIER);
        }
        this.algorithmIdentifier = oj.a.y(this.algorithmIdentifierEnc);
        this.attrCarrier = new f();
        this.rsaPrivateKey = new e0(true, this.modulus, this.privateExponent);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
    }

    e0 engineGetKeyParameters() {
        return this.rsaPrivateKey;
    }

    public boolean equals(Object obj) {
        if (obj instanceof RSAPrivateKey) {
            if (obj == this) {
                return true;
            }
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) obj;
            return getModulus().equals(rSAPrivateKey.getModulus()) && getPrivateExponent().equals(rSAPrivateKey.getPrivateExponent());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.algorithmIdentifier.x().F(c.f40151u0) ? "RSASSA-PSS" : RSAUtils.RSA;
    }

    @Override // dk.b
    public org.bouncycastle.asn1.e getBagAttribute(n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        oj.a aVar = this.algorithmIdentifier;
        BigInteger modulus = getModulus();
        BigInteger bigInteger = ZERO;
        BigInteger privateExponent = getPrivateExponent();
        BigInteger bigInteger2 = ZERO;
        return yj.e.b(aVar, new e(modulus, bigInteger, privateExponent, bigInteger2, bigInteger2, bigInteger2, bigInteger2, bigInteger2));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // java.security.interfaces.RSAKey
    public BigInteger getModulus() {
        return this.modulus;
    }

    @Override // java.security.interfaces.RSAPrivateKey
    public BigInteger getPrivateExponent() {
        return this.privateExponent;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPrivateExponent().hashCode();
    }

    @Override // dk.b
    public void setBagAttribute(n nVar, org.bouncycastle.asn1.e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String d10 = i.d();
        stringBuffer.append("RSA Private Key [");
        stringBuffer.append(a.b(getModulus()));
        stringBuffer.append("],[]");
        stringBuffer.append(d10);
        stringBuffer.append("            modulus: ");
        stringBuffer.append(getModulus().toString(16));
        stringBuffer.append(d10);
        return stringBuffer.toString();
    }
}
