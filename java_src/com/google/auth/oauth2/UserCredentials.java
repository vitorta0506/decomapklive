package com.google.auth.oauth2;

import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.x;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.z;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.IdTokenProvider;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public class UserCredentials extends GoogleCredentials implements p, IdTokenProvider {
    private static final String GRANT_TYPE = "refresh_token";
    private static final String PARSE_ERROR_PREFIX = "Error parsing token refresh response. ";
    private static final long serialVersionUID = -4800758775038679176L;
    private final String clientId;
    private final String clientSecret;
    private final String quotaProjectId;
    private final String refreshToken;
    private final URI tokenServerUri;
    private transient s5.b transportFactory;
    private final String transportFactoryClassName;

    /* loaded from: classes2.dex */
    public static class b extends GoogleCredentials.a {

        /* renamed from: d  reason: collision with root package name */
        private String f11601d;

        /* renamed from: e  reason: collision with root package name */
        private String f11602e;

        /* renamed from: f  reason: collision with root package name */
        private String f11603f;

        /* renamed from: g  reason: collision with root package name */
        private URI f11604g;

        /* renamed from: h  reason: collision with root package name */
        private s5.b f11605h;

        /* renamed from: i  reason: collision with root package name */
        private String f11606i;

        protected b() {
        }

        @Override // com.google.auth.oauth2.GoogleCredentials.a
        /* renamed from: f */
        public UserCredentials d() {
            return new UserCredentials(this.f11601d, this.f11602e, this.f11603f, b(), this.f11605h, this.f11604g, this.f11606i);
        }

        @Override // com.google.auth.oauth2.GoogleCredentials.a
        /* renamed from: g */
        public b e(AccessToken accessToken) {
            super.c(accessToken);
            return this;
        }

        public b h(String str) {
            this.f11601d = str;
            return this;
        }

        public b i(String str) {
            this.f11602e = str;
            return this;
        }

        public b j(s5.b bVar) {
            this.f11605h = bVar;
            return this;
        }

        public b k(String str) {
            this.f11606i = str;
            return this;
        }

        public b l(String str) {
            this.f11603f = str;
            return this;
        }

        public b m(URI uri) {
            this.f11604g = uri;
            return this;
        }

        protected b(UserCredentials userCredentials) {
            this.f11601d = userCredentials.clientId;
            this.f11602e = userCredentials.clientSecret;
            this.f11603f = userCredentials.refreshToken;
            this.f11605h = userCredentials.transportFactory;
            this.f11604g = userCredentials.tokenServerUri;
            this.f11606i = userCredentials.quotaProjectId;
        }
    }

    private GenericData doRefreshAccessToken() throws IOException {
        if (this.refreshToken != null) {
            GenericData genericData = new GenericData();
            genericData.e("client_id", this.clientId);
            genericData.e("client_secret", this.clientSecret);
            genericData.e(GRANT_TYPE, this.refreshToken);
            genericData.e("grant_type", GRANT_TYPE);
            com.google.api.client.http.m b10 = this.transportFactory.a().c().b(new com.google.api.client.http.d(this.tokenServerUri), new x(genericData));
            b10.r(new g5.e(n.f11679f));
            try {
                return (GenericData) b10.b().k(GenericData.class);
            } catch (HttpResponseException e10) {
                throw l.a(e10);
            }
        }
        throw new IllegalStateException("UserCredentials instance cannot refresh because there is no refresh token.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UserCredentials fromJson(Map<String, Object> map, s5.b bVar) throws IOException {
        String str = (String) map.get("client_id");
        String str2 = (String) map.get("client_secret");
        String str3 = (String) map.get(GRANT_TYPE);
        String str4 = (String) map.get("quota_project_id");
        if (str != null && str2 != null && str3 != null) {
            return newBuilder().h(str).i(str2).l(str3).e(null).j(bVar).m(null).k(str4).d();
        }
        throw new IOException("Error reading user credential from JSON,  expecting 'client_id', 'client_secret' and 'refresh_token'.");
    }

    public static UserCredentials fromStream(InputStream inputStream) throws IOException {
        return fromStream(inputStream, n.f11678e);
    }

    private InputStream getUserCredentialsStream() throws IOException {
        g5.b bVar = new g5.b();
        bVar.put("type", "authorized_user");
        String str = this.refreshToken;
        if (str != null) {
            bVar.put(GRANT_TYPE, str);
        }
        URI uri = this.tokenServerUri;
        if (uri != null) {
            bVar.put("token_server_uri", uri);
        }
        String str2 = this.clientId;
        if (str2 != null) {
            bVar.put("client_id", str2);
        }
        String str3 = this.clientSecret;
        if (str3 != null) {
            bVar.put("client_secret", str3);
        }
        if (this.quotaProjectId != null) {
            bVar.put("quota_project", this.clientSecret);
        }
        bVar.h(n.f11679f);
        return new ByteArrayInputStream(bVar.i().getBytes(StandardCharsets.UTF_8));
    }

    public static b newBuilder() {
        return new b();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.transportFactory = (s5.b) OAuth2Credentials.newInstance(this.transportFactoryClassName);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public boolean equals(Object obj) {
        if (obj instanceof UserCredentials) {
            UserCredentials userCredentials = (UserCredentials) obj;
            return super.equals(userCredentials) && Objects.equals(this.clientId, userCredentials.clientId) && Objects.equals(this.clientSecret, userCredentials.clientSecret) && Objects.equals(this.refreshToken, userCredentials.refreshToken) && Objects.equals(this.tokenServerUri, userCredentials.tokenServerUri) && Objects.equals(this.transportFactoryClassName, userCredentials.transportFactoryClassName) && Objects.equals(this.quotaProjectId, userCredentials.quotaProjectId);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.auth.oauth2.OAuth2Credentials
    public Map<String, List<String>> getAdditionalHeaders() {
        Map<String, List<String>> additionalHeaders = super.getAdditionalHeaders();
        String str = this.quotaProjectId;
        return str != null ? GoogleCredentials.addQuotaProjectIdToRequestMetadata(str, additionalHeaders) : additionalHeaders;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final String getClientSecret() {
        return this.clientSecret;
    }

    @Override // com.google.auth.oauth2.p
    public String getQuotaProjectId() {
        return this.quotaProjectId;
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.clientId, this.clientSecret, this.refreshToken, this.tokenServerUri, this.transportFactoryClassName, this.quotaProjectId);
    }

    @Override // com.google.auth.oauth2.IdTokenProvider
    public IdToken idTokenWithAudience(String str, List<IdTokenProvider.Option> list) throws IOException {
        GenericData doRefreshAccessToken = doRefreshAccessToken();
        if (doRefreshAccessToken.containsKey("id_token")) {
            return IdToken.create(n.e(doRefreshAccessToken, "id_token", PARSE_ERROR_PREFIX));
        }
        throw new IOException("UserCredentials can obtain an id token only when authenticated through gcloud running 'gcloud auth login --update-adc' or 'gcloud auth application-default login'. The latter form would not work for Cloud Run, but would still generate an id token.");
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        GenericData doRefreshAccessToken = doRefreshAccessToken();
        return new AccessToken(n.e(doRefreshAccessToken, "access_token", PARSE_ERROR_PREFIX), new Date(this.clock.a() + (n.b(doRefreshAccessToken, com.facebook.AccessToken.EXPIRES_IN_KEY, PARSE_ERROR_PREFIX) * 1000)));
    }

    public void save(String str) throws IOException {
        n.f(getUserCredentialsStream(), str);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public String toString() {
        return com.google.common.base.j.c(this).d("requestMetadata", getRequestMetadataInternal()).d("temporaryAccess", getAccessToken()).d("clientId", this.clientId).d("refreshToken", this.refreshToken).d("tokenServerUri", this.tokenServerUri).d("transportFactoryClassName", this.transportFactoryClassName).d("quotaProjectId", this.quotaProjectId).toString();
    }

    private UserCredentials(String str, String str2, String str3, AccessToken accessToken, s5.b bVar, URI uri, String str4) {
        super(accessToken);
        this.clientId = (String) z.d(str);
        this.clientSecret = (String) z.d(str2);
        this.refreshToken = str3;
        s5.b bVar2 = (s5.b) com.google.common.base.j.a(bVar, OAuth2Credentials.getFromServiceLoader(s5.b.class, n.f11678e));
        this.transportFactory = bVar2;
        this.tokenServerUri = uri == null ? n.f11674a : uri;
        this.transportFactoryClassName = bVar2.getClass().getName();
        this.quotaProjectId = str4;
        z.h((accessToken == null && str3 == null) ? false : true, "Either accessToken or refreshToken must not be null");
    }

    public static UserCredentials fromStream(InputStream inputStream, s5.b bVar) throws IOException {
        z.d(inputStream);
        z.d(bVar);
        g5.b bVar2 = (g5.b) new g5.e(n.f11679f).a(inputStream, StandardCharsets.UTF_8, g5.b.class);
        String str = (String) bVar2.get("type");
        if (str != null) {
            if ("authorized_user".equals(str)) {
                return fromJson(bVar2, bVar);
            }
            throw new IOException(String.format("Error reading credentials from stream, 'type' value '%s' not recognized. Expecting '%s'.", str, "authorized_user"));
        }
        throw new IOException("Error reading credentials from stream, 'type' field not specified.");
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public b toBuilder() {
        return new b(this);
    }
}
