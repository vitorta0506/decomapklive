package com.google.auth.oauth2;

import com.google.auth.oauth2.OAuth2Credentials;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class DownscopedCredentials extends OAuth2Credentials {
    private static final String TOKEN_EXCHANGE_ENDPOINT = "https://sts.googleapis.com/v1/token";
    private final h credentialAccessBoundary;
    private final GoogleCredentials sourceCredential;
    private final transient s5.b transportFactory;

    /* loaded from: classes2.dex */
    public static class b extends OAuth2Credentials.d {

        /* renamed from: d  reason: collision with root package name */
        private GoogleCredentials f11518d;

        /* renamed from: e  reason: collision with root package name */
        private h f11519e;

        /* renamed from: f  reason: collision with root package name */
        private s5.b f11520f;

        @Override // com.google.auth.oauth2.OAuth2Credentials.d
        /* renamed from: d */
        public DownscopedCredentials a() {
            return new DownscopedCredentials(this.f11518d, this.f11519e, this.f11520f);
        }

        private b() {
        }
    }

    public static b newBuilder() {
        return new b();
    }

    public h getCredentialAccessBoundary() {
        return this.credentialAccessBoundary;
    }

    public GoogleCredentials getSourceCredentials() {
        return this.sourceCredential;
    }

    s5.b getTransportFactory() {
        return this.transportFactory;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        try {
            this.sourceCredential.refreshIfExpired();
            AccessToken a10 = q.d(TOKEN_EXCHANGE_ENDPOINT, r.n(this.sourceCredential.getAccessToken().getTokenValue(), "urn:ietf:params:oauth:token-type:access_token").c("urn:ietf:params:oauth:token-type:access_token").a(), this.transportFactory.a().c()).b(this.credentialAccessBoundary.a()).a().c().a();
            if (a10.getExpirationTime() == null) {
                AccessToken accessToken = this.sourceCredential.getAccessToken();
                if (accessToken.getExpirationTime() != null) {
                    return new AccessToken(a10.getTokenValue(), accessToken.getExpirationTime());
                }
            }
            return a10;
        } catch (IOException e10) {
            throw new IOException("Unable to refresh the provided source credential.", e10);
        }
    }

    private DownscopedCredentials(GoogleCredentials googleCredentials, h hVar, s5.b bVar) {
        this.transportFactory = (s5.b) com.google.common.base.j.a(bVar, OAuth2Credentials.getFromServiceLoader(s5.b.class, n.f11678e));
        this.sourceCredential = (GoogleCredentials) com.google.common.base.o.s(googleCredentials);
        this.credentialAccessBoundary = (h) com.google.common.base.o.s(hVar);
    }
}
