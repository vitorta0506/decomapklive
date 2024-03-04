package com.twitter.sdk.android.core.internal.oauth;

import com.facebook.internal.security.CertificateUtil;
import com.guochao.faceshow.aaspring.utils.Constants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.i;
import com.twitter.sdk.android.core.internal.j;
import com.twitter.sdk.android.core.l;
import com.twitter.sdk.android.core.q;
import okio.ByteString;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import ve.f;
/* loaded from: classes4.dex */
public class OAuth2Service extends e {

    /* renamed from: e  reason: collision with root package name */
    OAuth2Api f35184e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface OAuth2Api {
        @FormUrlEncoded
        @Headers({"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @POST("/oauth2/token")
        Call<OAuth2Token> getAppAuthToken(@Header("Authorization") String str, @Field("grant_type") String str2);

        @POST("/1.1/guest/activate.json")
        Call<com.twitter.sdk.android.core.internal.oauth.a> getGuestToken(@Header("Authorization") String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends com.twitter.sdk.android.core.b<OAuth2Token> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.twitter.sdk.android.core.b f35185a;

        /* renamed from: com.twitter.sdk.android.core.internal.oauth.OAuth2Service$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class C0360a extends com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.internal.oauth.a> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ OAuth2Token f35187a;

            C0360a(OAuth2Token oAuth2Token) {
                this.f35187a = oAuth2Token;
            }

            @Override // com.twitter.sdk.android.core.b
            public void a(TwitterException twitterException) {
                l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key.", twitterException);
                a.this.f35185a.a(twitterException);
            }

            @Override // com.twitter.sdk.android.core.b
            public void b(i<com.twitter.sdk.android.core.internal.oauth.a> iVar) {
                a.this.f35185a.b(new i(new GuestAuthToken(this.f35187a.b(), this.f35187a.a(), iVar.f35121a.f35189a), null));
            }
        }

        a(com.twitter.sdk.android.core.b bVar) {
            this.f35185a = bVar;
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to get app auth token", twitterException);
            com.twitter.sdk.android.core.b bVar = this.f35185a;
            if (bVar != null) {
                bVar.a(twitterException);
            }
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(i<OAuth2Token> iVar) {
            OAuth2Token oAuth2Token = iVar.f35121a;
            OAuth2Service.this.k(new C0360a(oAuth2Token), oAuth2Token);
        }
    }

    public OAuth2Service(q qVar, j jVar) {
        super(qVar, jVar);
        this.f35184e = (OAuth2Api) c().create(OAuth2Api.class);
    }

    private String g() {
        TwitterAuthConfig g10 = d().g();
        ByteString encodeUtf8 = ByteString.encodeUtf8(f.c(g10.a()) + CertificateUtil.DELIMITER + f.c(g10.b()));
        return "Basic " + encodeUtf8.base64();
    }

    private String h(OAuth2Token oAuth2Token) {
        return "Bearer " + oAuth2Token.a();
    }

    void i(com.twitter.sdk.android.core.b<OAuth2Token> bVar) {
        this.f35184e.getAppAuthToken(g(), "client_credentials").enqueue(bVar);
    }

    public void j(com.twitter.sdk.android.core.b<GuestAuthToken> bVar) {
        i(new a(bVar));
    }

    void k(com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.internal.oauth.a> bVar, OAuth2Token oAuth2Token) {
        this.f35184e.getGuestToken(h(oAuth2Token)).enqueue(bVar);
    }
}
