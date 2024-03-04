package org.bouncycastle.pqc.jcajce.provider.mceliece;

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
import pk.e;
import sk.f;
import sk.g;
/* loaded from: classes7.dex */
public class b extends KeyFactorySpi implements ak.b {
    @Override // ak.b
    public PrivateKey a(d dVar) throws IOException {
        pk.c z10 = pk.c.z(dVar.I().f());
        return new BCMcEliecePrivateKey(new f(z10.F(), z10.B(), z10.x(), z10.y(), z10.G(), z10.H(), z10.I()));
    }

    @Override // ak.b
    public PublicKey b(v vVar) throws IOException {
        pk.d y10 = pk.d.y(vVar.F());
        return new BCMcEliecePublicKey(new g(y10.z(), y10.B(), y10.x()));
    }

    @Override // java.security.KeyFactorySpi
    protected PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            d y10 = d.y(r.G(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (e.f57025m.F(y10.B().x())) {
                    pk.c z10 = pk.c.z(y10.I());
                    return new BCMcEliecePrivateKey(new f(z10.F(), z10.B(), z10.x(), z10.y(), z10.G(), z10.H(), z10.I()));
                }
                throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
            } catch (IOException unused) {
                throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec.");
            }
        } catch (IOException e10) {
            throw new InvalidKeySpecException("Unable to decode PKCS8EncodedKeySpec: " + e10);
        }
    }

    @Override // java.security.KeyFactorySpi
    protected PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof X509EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            v z10 = v.z(r.G(((X509EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (e.f57025m.F(z10.x().x())) {
                    pk.d y10 = pk.d.y(z10.F());
                    return new BCMcEliecePublicKey(new g(y10.z(), y10.B(), y10.x()));
                }
                throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
            } catch (IOException e10) {
                throw new InvalidKeySpecException("Unable to decode X509EncodedKeySpec: " + e10.getMessage());
            }
        } catch (IOException e11) {
            throw new InvalidKeySpecException(e11.toString());
        }
    }

    @Override // java.security.KeyFactorySpi
    protected KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        return null;
    }

    @Override // java.security.KeyFactorySpi
    protected Key engineTranslateKey(Key key) throws InvalidKeyException {
        return null;
    }
}
