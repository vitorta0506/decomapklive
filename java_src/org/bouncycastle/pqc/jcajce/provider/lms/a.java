package org.bouncycastle.pqc.jcajce.provider.lms;

import ak.b;
import gj.d;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import oj.v;
import org.bouncycastle.asn1.r;
/* loaded from: classes7.dex */
public class a extends KeyFactorySpi implements b {
    @Override // ak.b
    public PrivateKey a(d dVar) throws IOException {
        return new BCLMSPrivateKey(dVar);
    }

    @Override // ak.b
    public PublicKey b(v vVar) throws IOException {
        return new BCLMSPublicKey(vVar);
    }

    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return a(d.y(r.G(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString(), e10);
            }
        }
        throw new InvalidKeySpecException("unsupported key specification: " + keySpec.getClass() + ".");
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                return b(v.z(((X509EncodedKeySpec) keySpec).getEncoded()));
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString(), e10);
            }
        }
        throw new InvalidKeySpecException("unknown key specification: " + keySpec + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof BCLMSPrivateKey) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
        } else if (!(key instanceof BCLMSPublicKey)) {
            throw new InvalidKeySpecException("unsupported key type: " + key.getClass() + ".");
        } else if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
            return new X509EncodedKeySpec(key.getEncoded());
        }
        throw new InvalidKeySpecException("unknown key specification: " + cls + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof BCLMSPrivateKey) || (key instanceof BCLMSPublicKey)) {
            return key;
        }
        throw new InvalidKeyException("unsupported key type");
    }
}
