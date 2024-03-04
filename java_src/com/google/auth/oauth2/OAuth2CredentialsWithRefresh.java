package com.google.auth.oauth2;

import com.google.auth.oauth2.OAuth2Credentials;
import java.io.IOException;
/* loaded from: classes2.dex */
public class OAuth2CredentialsWithRefresh extends OAuth2Credentials {
    private final c refreshHandler;

    /* loaded from: classes2.dex */
    public static class b extends OAuth2Credentials.d {

        /* renamed from: d  reason: collision with root package name */
        private c f11577d;

        @Override // com.google.auth.oauth2.OAuth2Credentials.d
        /* renamed from: d */
        public OAuth2CredentialsWithRefresh a() {
            return new OAuth2CredentialsWithRefresh(b(), this.f11577d);
        }

        @Override // com.google.auth.oauth2.OAuth2Credentials.d
        /* renamed from: e */
        public b c(AccessToken accessToken) {
            super.c(accessToken);
            return this;
        }

        private b() {
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        AccessToken a() throws IOException;
    }

    protected OAuth2CredentialsWithRefresh(AccessToken accessToken, c cVar) {
        super(accessToken);
        if (accessToken != null && accessToken.getExpirationTime() == null) {
            throw new IllegalArgumentException("The provided access token must contain the expiration time.");
        }
        this.refreshHandler = (c) com.google.common.base.o.s(cVar);
    }

    public static b newBuilder() {
        return new b();
    }

    public c getRefreshHandler() {
        return this.refreshHandler;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        return this.refreshHandler.a();
    }
}
