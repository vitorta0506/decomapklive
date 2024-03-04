package org.conscrypt;

import com.tencent.xmagic.license.RSAUtils;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
/* loaded from: classes7.dex */
public class OpenSSLRSAPublicKey implements RSAPublicKey, x {
    private static final long serialVersionUID = 123125005824688292L;
    private transient boolean fetchedParams;
    private transient w key;
    private BigInteger modulus;
    private BigInteger publicExponent;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OpenSSLRSAPublicKey(w wVar) {
        this.key = wVar;
    }

    private synchronized void ensureReadParams() {
        if (this.fetchedParams) {
            return;
        }
        byte[][] bArr = NativeCrypto.get_RSA_public_params(this.key.a());
        this.modulus = new BigInteger(bArr[0]);
        this.publicExponent = new BigInteger(bArr[1]);
        this.fetchedParams = true;
    }

    static w getInstance(RSAPublicKey rSAPublicKey) throws InvalidKeyException {
        try {
            return new w(NativeCrypto.EVP_PKEY_new_RSA(rSAPublicKey.getModulus().toByteArray(), rSAPublicKey.getPublicExponent().toByteArray(), null, null, null, null, null, null));
        } catch (Exception e10) {
            throw new InvalidKeyException(e10);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.key = new w(NativeCrypto.EVP_PKEY_new_RSA(this.modulus.toByteArray(), this.publicExponent.toByteArray(), null, null, null, null, null, null));
        this.fetchedParams = true;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        ensureReadParams();
        objectOutputStream.defaultWriteObject();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof OpenSSLRSAPublicKey) && this.key.equals(((OpenSSLRSAPublicKey) obj).getOpenSSLKey())) {
            return true;
        }
        if (obj instanceof RSAPublicKey) {
            ensureReadParams();
            RSAPublicKey rSAPublicKey = (RSAPublicKey) obj;
            return this.modulus.equals(rSAPublicKey.getModulus()) && this.publicExponent.equals(rSAPublicKey.getPublicExponent());
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return RSAUtils.RSA;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return NativeCrypto.EVP_marshal_public_key(this.key.a());
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // java.security.interfaces.RSAKey
    public BigInteger getModulus() {
        ensureReadParams();
        return this.modulus;
    }

    @Override // org.conscrypt.x
    public w getOpenSSLKey() {
        return this.key;
    }

    @Override // java.security.interfaces.RSAPublicKey
    public BigInteger getPublicExponent() {
        ensureReadParams();
        return this.publicExponent;
    }

    public int hashCode() {
        ensureReadParams();
        return this.modulus.hashCode() ^ this.publicExponent.hashCode();
    }

    public String toString() {
        ensureReadParams();
        return "OpenSSLRSAPublicKey{modulus=" + this.modulus.toString(16) + ",publicExponent=" + this.publicExponent.toString(16) + '}';
    }

    OpenSSLRSAPublicKey(RSAPublicKeySpec rSAPublicKeySpec) throws InvalidKeySpecException {
        try {
            this.key = new w(NativeCrypto.EVP_PKEY_new_RSA(rSAPublicKeySpec.getModulus().toByteArray(), rSAPublicKeySpec.getPublicExponent().toByteArray(), null, null, null, null, null, null));
        } catch (Exception e10) {
            throw new InvalidKeySpecException(e10);
        }
    }
}
