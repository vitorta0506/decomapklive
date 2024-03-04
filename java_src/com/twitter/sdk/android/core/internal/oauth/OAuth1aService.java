package com.twitter.sdk.android.core.internal.oauth;

import android.net.Uri;
import com.facebook.AccessToken;
import com.facebook.login.CustomTabLoginMethodHandler;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.i;
import com.twitter.sdk.android.core.internal.j;
import com.twitter.sdk.android.core.q;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.TreeMap;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.Query;
import ve.f;
/* loaded from: classes4.dex */
public class OAuth1aService extends e {

    /* renamed from: e  reason: collision with root package name */
    OAuthApi f35181e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface OAuthApi {
        @POST("/oauth/access_token")
        Call<ResponseBody> getAccessToken(@Header("Authorization") String str, @Query("oauth_verifier") String str2);

        @POST("/oauth/request_token")
        Call<ResponseBody> getTempToken(@Header("Authorization") String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends com.twitter.sdk.android.core.b<ResponseBody> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.twitter.sdk.android.core.b f35182a;

        a(com.twitter.sdk.android.core.b bVar) {
            this.f35182a = bVar;
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            this.f35182a.a(twitterException);
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(i<ResponseBody> iVar) {
            StringBuilder sb2 = new StringBuilder();
            BufferedReader bufferedReader = null;
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(iVar.f35121a.byteStream()));
                    while (true) {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb2.append(readLine);
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    String sb3 = sb2.toString();
                    OAuthResponse l10 = OAuth1aService.l(sb3);
                    if (l10 == null) {
                        com.twitter.sdk.android.core.b bVar = this.f35182a;
                        bVar.a(new TwitterAuthException("Failed to parse auth response: " + sb3));
                        return;
                    }
                    this.f35182a.b(new i(l10, null));
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e10) {
                this.f35182a.a(new TwitterAuthException(e10.getMessage(), e10));
            }
        }
    }

    public OAuth1aService(q qVar, j jVar) {
        super(qVar, jVar);
        this.f35181e = (OAuthApi) c().create(OAuthApi.class);
    }

    public static OAuthResponse l(String str) {
        TreeMap<String, String> a10 = f.a(str, false);
        String str2 = a10.get("oauth_token");
        String str3 = a10.get("oauth_token_secret");
        String str4 = a10.get("screen_name");
        long parseLong = a10.containsKey(AccessToken.USER_ID_KEY) ? Long.parseLong(a10.get(AccessToken.USER_ID_KEY)) : 0L;
        if (str2 == null || str3 == null) {
            return null;
        }
        return new OAuthResponse(new TwitterAuthToken(str2, str3), str4, parseLong);
    }

    public String g(TwitterAuthConfig twitterAuthConfig) {
        return Uri.parse("twittersdk://callback").buildUpon().appendQueryParameter("version", d().m()).appendQueryParameter(PushConstants.EXTRA_APPLICATION_PENDING_INTENT, twitterAuthConfig.a()).build().toString();
    }

    String h() {
        return b().c() + "/oauth/access_token";
    }

    public String i(TwitterAuthToken twitterAuthToken) {
        return b().a(CustomTabLoginMethodHandler.OAUTH_DIALOG, "authorize").appendQueryParameter("oauth_token", twitterAuthToken.token).build().toString();
    }

    com.twitter.sdk.android.core.b<ResponseBody> j(com.twitter.sdk.android.core.b<OAuthResponse> bVar) {
        return new a(bVar);
    }

    String k() {
        return b().c() + "/oauth/request_token";
    }

    public void m(com.twitter.sdk.android.core.b<OAuthResponse> bVar, TwitterAuthToken twitterAuthToken, String str) {
        this.f35181e.getAccessToken(new b().a(d().g(), twitterAuthToken, null, "POST", h(), null), str).enqueue(j(bVar));
    }

    public void n(com.twitter.sdk.android.core.b<OAuthResponse> bVar) {
        TwitterAuthConfig g10 = d().g();
        this.f35181e.getTempToken(new b().a(g10, null, g(g10), "POST", k(), null)).enqueue(j(bVar));
    }
}
