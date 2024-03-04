package zk;

import ak.b;
import bl.c;
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
import org.bouncycastle.pqc.jcajce.provider.rainbow.BCRainbowPrivateKey;
import org.bouncycastle.pqc.jcajce.provider.rainbow.BCRainbowPublicKey;
import pk.g;
import pk.h;
/* loaded from: classes7.dex */
public class a extends KeyFactorySpi implements b {
    @Override // ak.b
    public PrivateKey a(d dVar) throws IOException {
        g z10 = g.z(dVar.I());
        return new BCRainbowPrivateKey(z10.B(), z10.x(), z10.F(), z10.y(), z10.H(), z10.G());
    }

    @Override // ak.b
    public PublicKey b(v vVar) throws IOException {
        h F = h.F(vVar.F());
        return new BCRainbowPublicKey(F.B(), F.x(), F.z(), F.y());
    }

    @Override // java.security.KeyFactorySpi
    public PrivateKey engineGeneratePrivate(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof bl.b) {
            return new BCRainbowPrivateKey((bl.b) keySpec);
        }
        if (keySpec instanceof PKCS8EncodedKeySpec) {
            try {
                return a(d.y(r.G(((PKCS8EncodedKeySpec) keySpec).getEncoded())));
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString());
            }
        }
        throw new InvalidKeySpecException("Unsupported key specification: " + keySpec.getClass() + ".");
    }

    @Override // java.security.KeyFactorySpi
    public PublicKey engineGeneratePublic(KeySpec keySpec) throws InvalidKeySpecException {
        if (keySpec instanceof c) {
            return new BCRainbowPublicKey((c) keySpec);
        }
        if (keySpec instanceof X509EncodedKeySpec) {
            try {
                return b(v.z(((X509EncodedKeySpec) keySpec).getEncoded()));
            } catch (Exception e10) {
                throw new InvalidKeySpecException(e10.toString());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + keySpec + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final KeySpec engineGetKeySpec(Key key, Class cls) throws InvalidKeySpecException {
        if (key instanceof BCRainbowPrivateKey) {
            if (PKCS8EncodedKeySpec.class.isAssignableFrom(cls)) {
                return new PKCS8EncodedKeySpec(key.getEncoded());
            }
            if (bl.b.class.isAssignableFrom(cls)) {
                BCRainbowPrivateKey bCRainbowPrivateKey = (BCRainbowPrivateKey) key;
                return new bl.b(bCRainbowPrivateKey.getInvA1(), bCRainbowPrivateKey.getB1(), bCRainbowPrivateKey.getInvA2(), bCRainbowPrivateKey.getB2(), bCRainbowPrivateKey.getVi(), bCRainbowPrivateKey.getLayers());
            }
        } else if (!(key instanceof BCRainbowPublicKey)) {
            throw new InvalidKeySpecException("Unsupported key type: " + key.getClass() + ".");
        } else if (X509EncodedKeySpec.class.isAssignableFrom(cls)) {
            return new X509EncodedKeySpec(key.getEncoded());
        } else {
            if (c.class.isAssignableFrom(cls)) {
                BCRainbowPublicKey bCRainbowPublicKey = (BCRainbowPublicKey) key;
                return new c(bCRainbowPublicKey.getDocLength(), bCRainbowPublicKey.getCoeffQuadratic(), bCRainbowPublicKey.getCoeffSingular(), bCRainbowPublicKey.getCoeffScalar());
            }
        }
        throw new InvalidKeySpecException("Unknown key specification: " + cls + ".");
    }

    @Override // java.security.KeyFactorySpi
    public final Key engineTranslateKey(Key key) throws InvalidKeyException {
        if ((key instanceof BCRainbowPrivateKey) || (key instanceof BCRainbowPublicKey)) {
            return key;
        }
        throw new InvalidKeyException("Unsupported key type");
    }
}
