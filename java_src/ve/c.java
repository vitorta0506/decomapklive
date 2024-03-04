package ve;

import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
/* loaded from: classes4.dex */
public class c implements Authenticator {

    /* renamed from: a  reason: collision with root package name */
    final com.twitter.sdk.android.core.e f59141a;

    public c(com.twitter.sdk.android.core.e eVar) {
        this.f59141a = eVar;
    }

    boolean a(Response response) {
        int i9 = 1;
        while (true) {
            response = response.priorResponse();
            if (response == null) {
                break;
            }
            i9++;
        }
        return i9 < 2;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        return c(response);
    }

    com.twitter.sdk.android.core.d b(Response response) {
        Headers headers = response.request().headers();
        String str = headers.get("Authorization");
        String str2 = headers.get(GuestAuthToken.HEADER_GUEST_TOKEN);
        if (str == null || str2 == null) {
            return null;
        }
        return new com.twitter.sdk.android.core.d(new GuestAuthToken(OAuth2Token.TOKEN_TYPE_BEARER, str.replace("bearer ", ""), str2));
    }

    Request c(Response response) {
        if (a(response)) {
            com.twitter.sdk.android.core.d d10 = this.f59141a.d(b(response));
            GuestAuthToken a10 = d10 == null ? null : d10.a();
            if (a10 != null) {
                return d(response.request(), a10);
            }
        }
        return null;
    }

    Request d(Request request, GuestAuthToken guestAuthToken) {
        Request.Builder newBuilder = request.newBuilder();
        a.a(newBuilder, guestAuthToken);
        return newBuilder.build();
    }
}
