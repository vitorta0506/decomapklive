package wc;

import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwsHeader;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.SigningKeyResolver;
import io.jsonwebtoken.security.SecurityException;
import java.math.BigInteger;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import org.spongycastle.jce.ECNamedCurveTable;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import vc.f;
/* loaded from: classes4.dex */
public class h implements SigningKeyResolver {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final e f59453a;

    public h(@NonNull e eVar) {
        this.f59453a = eVar;
    }

    private static BigInteger a(String str) {
        return new BigInteger(1, Base64.decode(str, 8));
    }

    private static ECPublicKey b(f.c cVar) {
        BigInteger a10 = a(cVar.c());
        BigInteger a11 = a(cVar.d());
        try {
            KeyFactory keyFactory = KeyFactory.getInstance("EC");
            ECPoint eCPoint = new ECPoint(a10, a11);
            ECNamedCurveParameterSpec parameterSpec = ECNamedCurveTable.getParameterSpec(cVar.a());
            return (ECPublicKey) keyFactory.generatePublic(new ECPublicKeySpec(eCPoint, new ECNamedCurveSpec(cVar.a(), parameterSpec.getCurve(), parameterSpec.getG(), parameterSpec.getN())));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e10) {
            Log.e("OpenIdSignKeyResolver", "failed to generate EC Public Key from JWK: " + cVar, e10);
            return null;
        }
    }

    private Key c(JwsHeader jwsHeader) {
        qc.c<vc.f> b10 = this.f59453a.b();
        if (!b10.g()) {
            Log.e("OpenIdSignKeyResolver", "failed to get LINE JSON Web Key Set [JWK] document.");
            return null;
        }
        String keyId = jwsHeader.getKeyId();
        f.c a10 = b10.e().a(keyId);
        if (a10 == null) {
            Log.e("OpenIdSignKeyResolver", "failed to find Key by Id: " + keyId);
            return null;
        }
        String algorithm = jwsHeader.getAlgorithm();
        if (SignatureAlgorithm.forName(algorithm).isEllipticCurve()) {
            return b(a10);
        }
        throw new SecurityException("Unsupported signature algorithm '" + algorithm + '\'');
    }

    @Override // io.jsonwebtoken.SigningKeyResolver
    public Key resolveSigningKey(JwsHeader jwsHeader, Claims claims) {
        return c(jwsHeader);
    }

    @Override // io.jsonwebtoken.SigningKeyResolver
    public Key resolveSigningKey(JwsHeader jwsHeader, String str) {
        return c(jwsHeader);
    }
}
