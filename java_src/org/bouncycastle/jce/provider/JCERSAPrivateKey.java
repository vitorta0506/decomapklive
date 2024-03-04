package org.bouncycastle.jce.provider;

import com.tencent.xmagic.license.RSAUtils;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.RSAPrivateKeySpec;
import java.util.Enumeration;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u0;
import vj.e0;
import yj.f;
/* loaded from: classes7.dex */
public class JCERSAPrivateKey implements RSAPrivateKey, dk.b {
    private static BigInteger ZERO = BigInteger.valueOf(0);
    static final long serialVersionUID = 5110188922551353628L;
    private transient f attrCarrier = new f();
    protected BigInteger modulus;
    protected BigInteger privateExponent;

    /* JADX INFO: Access modifiers changed from: protected */
    public JCERSAPrivateKey() {
    }

    JCERSAPrivateKey(RSAPrivateKey rSAPrivateKey) {
        this.modulus = rSAPrivateKey.getModulus();
        this.privateExponent = rSAPrivateKey.getPrivateExponent();
    }

    JCERSAPrivateKey(RSAPrivateKeySpec rSAPrivateKeySpec) {
        this.modulus = rSAPrivateKeySpec.getModulus();
        this.privateExponent = rSAPrivateKeySpec.getPrivateExponent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JCERSAPrivateKey(e0 e0Var) {
        this.modulus = e0Var.c();
        this.privateExponent = e0Var.b();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.modulus = (BigInteger) objectInputStream.readObject();
        f fVar = new f();
        this.attrCarrier = fVar;
        fVar.a(objectInputStream);
        this.privateExponent = (BigInteger) objectInputStream.readObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.modulus);
        this.attrCarrier.b(objectOutputStream);
        objectOutputStream.writeObject(this.privateExponent);
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
        return RSAUtils.RSA;
    }

    @Override // dk.b
    public e getBagAttribute(n nVar) {
        return this.attrCarrier.getBagAttribute(nVar);
    }

    @Override // dk.b
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        oj.a aVar = new oj.a(gj.c.f40124l0, u0.f55980a);
        BigInteger modulus = getModulus();
        BigInteger bigInteger = ZERO;
        BigInteger privateExponent = getPrivateExponent();
        BigInteger bigInteger2 = ZERO;
        return yj.e.b(aVar, new gj.e(modulus, bigInteger, privateExponent, bigInteger2, bigInteger2, bigInteger2, bigInteger2, bigInteger2));
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
    public void setBagAttribute(n nVar, e eVar) {
        this.attrCarrier.setBagAttribute(nVar, eVar);
    }
}
