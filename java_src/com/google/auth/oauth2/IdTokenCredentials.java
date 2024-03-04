package com.google.auth.oauth2;

import com.google.api.client.util.z;
import com.google.auth.oauth2.IdTokenProvider;
import com.google.auth.oauth2.OAuth2Credentials;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2.dex */
public class IdTokenCredentials extends OAuth2Credentials {
    private static final long serialVersionUID = -2133257318957588431L;
    private IdTokenProvider idTokenProvider;
    private List<IdTokenProvider.Option> options;
    private String targetAudience;

    /* loaded from: classes2.dex */
    public static class b extends OAuth2Credentials.d {

        /* renamed from: d  reason: collision with root package name */
        private IdTokenProvider f11536d;

        /* renamed from: e  reason: collision with root package name */
        private String f11537e;

        /* renamed from: f  reason: collision with root package name */
        private List<IdTokenProvider.Option> f11538f;

        protected b() {
        }

        @Override // com.google.auth.oauth2.OAuth2Credentials.d
        /* renamed from: d */
        public IdTokenCredentials a() {
            return new IdTokenCredentials(this);
        }

        public IdTokenProvider e() {
            return this.f11536d;
        }

        public List<IdTokenProvider.Option> f() {
            return this.f11538f;
        }

        public String g() {
            return this.f11537e;
        }

        public b h(IdTokenProvider idTokenProvider) {
            this.f11536d = idTokenProvider;
            return this;
        }

        public b i(List<IdTokenProvider.Option> list) {
            this.f11538f = list;
            return this;
        }

        public b j(String str) {
            this.f11537e = str;
            return this;
        }
    }

    public static b newBuilder() {
        return new b();
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public boolean equals(Object obj) {
        if (obj instanceof IdTokenCredentials) {
            IdTokenCredentials idTokenCredentials = (IdTokenCredentials) obj;
            return Objects.equals(this.idTokenProvider, idTokenCredentials.idTokenProvider) && Objects.equals(this.targetAudience, idTokenCredentials.targetAudience);
        }
        return false;
    }

    public IdToken getIdToken() {
        return (IdToken) getAccessToken();
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public int hashCode() {
        return Objects.hash(this.options, this.targetAudience);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        return this.idTokenProvider.idTokenWithAudience(this.targetAudience, this.options);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public String toString() {
        return com.google.common.base.j.c(this).toString();
    }

    private IdTokenCredentials(b bVar) {
        IdTokenProvider idTokenProvider = (IdTokenProvider) z.d(bVar.e());
        this.idTokenProvider = idTokenProvider;
        if (!(idTokenProvider instanceof UserCredentials)) {
            this.targetAudience = (String) z.d(bVar.g());
        }
        this.options = bVar.f();
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public b toBuilder() {
        return new b().h(this.idTokenProvider).j(this.targetAudience).i(this.options);
    }
}
