package wc;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.integrity.IntegrityManager;
import com.linecorp.linesdk.LineIdToken;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SigningKeyResolver;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final long f59428a = TimeUnit.DAYS.toSeconds(10000);

    private static LineIdToken.Address a(Claims claims) {
        Map map = (Map) claims.get(IntegrityManager.INTEGRITY_TYPE_ADDRESS, Map.class);
        if (map == null) {
            return null;
        }
        return new LineIdToken.Address.b().k((String) map.get("street_address")).h((String) map.get("locality")).j((String) map.get("region")).i((String) map.get("postal_code")).g((String) map.get(UserDataStore.COUNTRY)).f();
    }

    @NonNull
    private static LineIdToken b(String str, Claims claims) {
        return new LineIdToken.b().P(str).J(claims.getIssuer()).Q(claims.getSubject()).x(claims.getAudience()).C(claims.getExpiration()).I(claims.getIssuedAt()).y((Date) claims.get("auth_time", Date.class)).M((String) claims.get("nonce", String.class)).w((List) claims.get("amr", List.class)).L((String) claims.get("name", String.class)).O((String) claims.get("picture", String.class)).N((String) claims.get("phone_number", String.class)).B((String) claims.get("email", String.class)).F((String) claims.get("gender", String.class)).z((String) claims.get("birthdate", String.class)).v(a(claims)).G((String) claims.get(AuthenticationTokenClaims.JSON_KEY_GIVEN_NAME, String.class)).H((String) claims.get("given_name_pronunciation", String.class)).K((String) claims.get(AuthenticationTokenClaims.JSON_KEY_MIDDLE_NAME, String.class)).D((String) claims.get(AuthenticationTokenClaims.JSON_KEY_FAMILY_NAME, String.class)).E((String) claims.get("family_name_pronunciation", String.class)).A();
    }

    public static LineIdToken c(String str, SigningKeyResolver signingKeyResolver) throws Exception {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return b(str, Jwts.parser().setAllowedClockSkewSeconds(f59428a).setSigningKeyResolver(signingKeyResolver).parseClaimsJws(str).getBody());
        } catch (Exception e10) {
            Log.e("IdTokenParser", "failed to parse IdToken: " + str, e10);
            throw e10;
        }
    }
}
