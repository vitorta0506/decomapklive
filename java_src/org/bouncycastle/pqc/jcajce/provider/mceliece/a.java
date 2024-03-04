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
/* loaded from: classes7.dex */
public class a extends KeyFactorySpi implements ak.b {
    @Override // ak.b
    public PrivateKey a(d dVar) throws IOException {
        pk.a B = pk.a.B(dVar.I().f());
        return new BCMcElieceCCA2PrivateKey(new sk.b(B.G(), B.F(), B.y(), B.z(), B.H(), null));
    }

    @Override // ak.b
    public PublicKey b(v vVar) throws IOException {
        pk.b z10 = pk.b.z(vVar.F());
        return new BCMcElieceCCA2PublicKey(new sk.c(z10.B(), z10.F(), z10.y(), c.b(z10.x()).getAlgorithmName()));
    }

    @Override // java.security.KeyFactorySpi
    protected PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (!(keySpec instanceof PKCS8EncodedKeySpec)) {
            throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
        }
        try {
            d y10 = d.y(r.G(((PKCS8EncodedKeySpec) keySpec).getEncoded()));
            try {
                if (e.f57026n.F(y10.B().x())) {
                    pk.a B = pk.a.B(y10.I());
                    return new BCMcElieceCCA2PrivateKey(new sk.b(B.G(), B.F(), B.y(), B.z(), B.H(), c.b(B.x()).getAlgorithmName()));
                }
                throw new InvalidKeySpecException("Unable to recognise OID in McEliece public key");
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
                if (e.f57026n.F(z10.x().x())) {
                    pk.b z11 = pk.b.z(z10.F());
                    return new BCMcElieceCCA2PublicKey(new sk.c(z11.B(), z11.F(), z11.y(), c.b(z11.x()).getAlgorithmName()));
                }
                throw new InvalidKeySpecException("Unable to recognise OID in McEliece private key");
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
