package yj;

import ek.m;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.bouncycastle.jce.interfaces.GOST3410PrivateKey;
import org.bouncycastle.jce.interfaces.GOST3410PublicKey;
import vj.a0;
import vj.b0;
import vj.z;
/* loaded from: classes7.dex */
public class d {
    public static vj.a a(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof GOST3410PrivateKey) {
            GOST3410PrivateKey gOST3410PrivateKey = (GOST3410PrivateKey) privateKey;
            m a10 = gOST3410PrivateKey.getParameters().a();
            return new a0(gOST3410PrivateKey.getX(), new z(a10.b(), a10.c(), a10.a()));
        }
        throw new InvalidKeyException("can't identify GOST3410 private key.");
    }

    public static vj.a b(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof GOST3410PublicKey) {
            GOST3410PublicKey gOST3410PublicKey = (GOST3410PublicKey) publicKey;
            m a10 = gOST3410PublicKey.getParameters().a();
            return new b0(gOST3410PublicKey.getY(), new z(a10.b(), a10.c(), a10.a()));
        }
        throw new InvalidKeyException("can't identify GOST3410 public key: " + publicKey.getClass().getName());
    }
}
