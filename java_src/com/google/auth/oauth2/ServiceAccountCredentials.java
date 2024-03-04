package com.google.auth.oauth2;

import com.facebook.internal.security.OidcSecurityUtil;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.e;
import com.google.api.client.http.x;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.a0;
import com.google.api.client.util.l;
import com.google.api.client.util.y;
import com.google.api.client.util.z;
import com.google.auth.ServiceAccountSigner$SigningException;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.IdTokenProvider;
import com.google.auth.oauth2.JwtClaims;
import com.google.common.collect.ImmutableSet;
import i5.a;
import i5.b;
import io.jsonwebtoken.Header;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.StringReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.light.utils.FileUtils;
/* loaded from: classes2.dex */
public class ServiceAccountCredentials extends GoogleCredentials implements IdTokenProvider, p {
    private static final int DEFAULT_LIFETIME_IN_SECONDS = 3600;
    private static final int DEFAULT_NUMBER_OF_RETRIES = 3;
    private static final String GRANT_TYPE = "urn:ietf:params:oauth:grant-type:jwt-bearer";
    private static final int INITIAL_RETRY_INTERVAL_MILLIS = 1000;
    private static final String PARSE_ERROR_PREFIX = "Error parsing token refresh response. ";
    private static final double RETRY_MULTIPLIER = 2.0d;
    private static final double RETRY_RANDOMIZATION_FACTOR = 0.1d;
    private static final int TWELVE_HOURS_IN_SECONDS = 43200;
    private static final long serialVersionUID = 7807543542681217978L;
    private final String clientEmail;
    private final String clientId;
    private final boolean defaultRetriesEnabled;
    private final Collection<String> defaultScopes;
    private final int lifetime;
    private final PrivateKey privateKey;
    private final String privateKeyId;
    private final String projectId;
    private final String quotaProjectId;
    private final Collection<String> scopes;
    private final String serviceAccountUser;
    private final URI tokenServerUri;
    private transient s5.b transportFactory;
    private final String transportFactoryClassName;
    private final boolean useJwtAccessWithScope;

    /* loaded from: classes2.dex */
    class a implements e.a {
        a() {
        }

        @Override // com.google.api.client.http.e.a
        public boolean a(com.google.api.client.http.p pVar) {
            return n.f11682i.contains(Integer.valueOf(pVar.f()));
        }
    }

    ServiceAccountCredentials(b bVar) {
        ImmutableSet copyOf;
        this.clientId = bVar.f11579d;
        this.clientEmail = (String) z.d(bVar.f11580e);
        this.privateKey = (PrivateKey) z.d(bVar.f11581f);
        this.privateKeyId = bVar.f11582g;
        this.scopes = bVar.f11586k == null ? ImmutableSet.of() : ImmutableSet.copyOf(bVar.f11586k);
        if (bVar.f11587l == null) {
            copyOf = ImmutableSet.of();
        } else {
            copyOf = ImmutableSet.copyOf(bVar.f11587l);
        }
        this.defaultScopes = copyOf;
        s5.b bVar2 = (s5.b) com.google.common.base.j.a(bVar.f11588m, OAuth2Credentials.getFromServiceLoader(s5.b.class, n.f11678e));
        this.transportFactory = bVar2;
        this.transportFactoryClassName = bVar2.getClass().getName();
        this.tokenServerUri = bVar.f11585j == null ? n.f11674a : bVar.f11585j;
        this.serviceAccountUser = bVar.f11583h;
        this.projectId = bVar.f11584i;
        this.quotaProjectId = bVar.f11589n;
        if (bVar.f11590o <= TWELVE_HOURS_IN_SECONDS) {
            this.lifetime = bVar.f11590o;
            this.useJwtAccessWithScope = bVar.f11591p;
            this.defaultRetriesEnabled = bVar.f11592q;
            return;
        }
        throw new IllegalStateException("lifetime must be less than or equal to 43200");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ServiceAccountCredentials fromJson(Map<String, Object> map, s5.b bVar) throws IOException {
        URI uri;
        String str = (String) map.get("client_id");
        String str2 = (String) map.get("client_email");
        String str3 = (String) map.get("private_key");
        String str4 = (String) map.get("private_key_id");
        String str5 = (String) map.get("project_id");
        String str6 = (String) map.get("token_uri");
        String str7 = (String) map.get("quota_project_id");
        if (str6 != null) {
            try {
                uri = new URI(str6);
            } catch (URISyntaxException unused) {
                throw new IOException("Token server URI specified in 'token_uri' could not be parsed.");
            }
        } else {
            uri = null;
        }
        if (str != null && str2 != null && str3 != null && str4 != null) {
            return fromPkcs8(str3, newBuilder().v(str).u(str2).A(str4).x(bVar).G(uri).B(str5).C(str7));
        }
        throw new IOException("Error reading service account credential from JSON, expecting  'client_id', 'client_email', 'private_key' and 'private_key_id'.");
    }

    public static ServiceAccountCredentials fromPkcs8(String str, String str2, String str3, String str4, Collection<String> collection) throws IOException {
        return fromPkcs8(str3, newBuilder().v(str).u(str2).A(str4).D(collection));
    }

    public static ServiceAccountCredentials fromStream(InputStream inputStream) throws IOException {
        return fromStream(inputStream, n.f11678e);
    }

    private String getIssuer() {
        return this.clientEmail;
    }

    static URI getUriForSelfSignedJWT(URI uri) {
        if (uri != null && uri.getScheme() != null && uri.getHost() != null) {
            try {
                return new URI(uri.getScheme(), uri.getHost(), FileUtils.RES_PREFIX_STORAGE, null);
            } catch (URISyntaxException unused) {
            }
        }
        return uri;
    }

    public static b newBuilder() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PrivateKey privateKeyFromPkcs8(String str) throws IOException {
        y.a b10 = y.b(new StringReader(str), "PRIVATE KEY");
        if (b10 != null) {
            try {
                return a0.b().generatePrivate(new PKCS8EncodedKeySpec(b10.a()));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e10) {
                throw new IOException("Unexpected exception reading PKCS#8 data", e10);
            }
        }
        throw new IOException("Invalid PKCS#8 data.");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.transportFactory = (s5.b) OAuth2Credentials.newInstance(this.transportFactoryClassName);
    }

    String createAssertion(g5.c cVar, long j10) throws IOException {
        a.C0452a c0452a = new a.C0452a();
        c0452a.o("RS256");
        c0452a.q(Header.JWT_TYPE);
        c0452a.p(this.privateKeyId);
        b.C0453b c0453b = new b.C0453b();
        c0453b.p(getIssuer());
        long j11 = j10 / 1000;
        c0453b.o(Long.valueOf(j11));
        c0453b.n(Long.valueOf(j11 + this.lifetime));
        c0453b.q(this.serviceAccountUser);
        if (this.scopes.isEmpty()) {
            c0453b.put("scope", com.google.api.client.util.o.b(' ').a(this.defaultScopes));
        } else {
            c0453b.put("scope", com.google.api.client.util.o.b(' ').a(this.scopes));
        }
        c0453b.m(n.f11674a.toString());
        try {
            return i5.a.f(this.privateKey, cVar, c0452a, c0453b);
        } catch (GeneralSecurityException e10) {
            throw new IOException("Error signing service account access token request with private key.", e10);
        }
    }

    String createAssertionForIdToken(g5.c cVar, long j10, String str, String str2) throws IOException {
        a.C0452a c0452a = new a.C0452a();
        c0452a.o("RS256");
        c0452a.q(Header.JWT_TYPE);
        c0452a.p(this.privateKeyId);
        b.C0453b c0453b = new b.C0453b();
        c0453b.p(getIssuer());
        long j11 = j10 / 1000;
        c0453b.o(Long.valueOf(j11));
        c0453b.n(Long.valueOf(j11 + this.lifetime));
        c0453b.q(this.serviceAccountUser);
        if (str == null) {
            c0453b.m(n.f11674a.toString());
        } else {
            c0453b.m(str);
        }
        try {
            c0453b.g("target_audience", str2);
            return i5.a.f(this.privateKey, cVar, c0452a, c0453b);
        } catch (GeneralSecurityException e10) {
            throw new IOException("Error signing service account access token request with private key.", e10);
        }
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createDelegated(String str) {
        return toBuilder().F(str).d();
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createScoped(Collection<String> collection) {
        return createScoped(collection, null);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public boolean createScopedRequired() {
        return this.scopes.isEmpty() && this.defaultScopes.isEmpty();
    }

    JwtCredentials createSelfSignedJwtCredentials(URI uri) {
        String a10;
        JwtClaims.a e10 = JwtClaims.newBuilder().d(this.clientEmail).e(this.clientEmail);
        if (uri == null) {
            if (!this.scopes.isEmpty()) {
                a10 = com.google.api.client.util.o.b(' ').a(this.scopes);
            } else {
                a10 = com.google.api.client.util.o.b(' ').a(this.defaultScopes);
            }
            e10.b(Collections.singletonMap("scope", a10));
        } else {
            e10.c(getUriForSelfSignedJWT(uri).toString());
        }
        return JwtCredentials.newBuilder().j(this.privateKey).k(this.privateKeyId).h(e10.a()).g(this.clock).a();
    }

    public ServiceAccountCredentials createWithCustomLifetime(int i9) {
        return toBuilder().y(i9).d();
    }

    public ServiceAccountCredentials createWithUseJwtAccessWithScope(boolean z10) {
        return toBuilder().H(z10).d();
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public boolean equals(Object obj) {
        if (obj instanceof ServiceAccountCredentials) {
            ServiceAccountCredentials serviceAccountCredentials = (ServiceAccountCredentials) obj;
            return Objects.equals(this.clientId, serviceAccountCredentials.clientId) && Objects.equals(this.clientEmail, serviceAccountCredentials.clientEmail) && Objects.equals(this.privateKey, serviceAccountCredentials.privateKey) && Objects.equals(this.privateKeyId, serviceAccountCredentials.privateKeyId) && Objects.equals(this.transportFactoryClassName, serviceAccountCredentials.transportFactoryClassName) && Objects.equals(this.tokenServerUri, serviceAccountCredentials.tokenServerUri) && Objects.equals(this.scopes, serviceAccountCredentials.scopes) && Objects.equals(this.defaultScopes, serviceAccountCredentials.defaultScopes) && Objects.equals(this.quotaProjectId, serviceAccountCredentials.quotaProjectId) && Objects.equals(Integer.valueOf(this.lifetime), Integer.valueOf(serviceAccountCredentials.lifetime)) && Objects.equals(Boolean.valueOf(this.useJwtAccessWithScope), Boolean.valueOf(serviceAccountCredentials.useJwtAccessWithScope)) && Objects.equals(Boolean.valueOf(this.defaultRetriesEnabled), Boolean.valueOf(serviceAccountCredentials.defaultRetriesEnabled));
        }
        return false;
    }

    public String getAccount() {
        return getClientEmail();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.auth.oauth2.OAuth2Credentials
    public Map<String, List<String>> getAdditionalHeaders() {
        Map<String, List<String>> additionalHeaders = super.getAdditionalHeaders();
        String str = this.quotaProjectId;
        return str != null ? GoogleCredentials.addQuotaProjectIdToRequestMetadata(str, additionalHeaders) : additionalHeaders;
    }

    public final String getClientEmail() {
        return this.clientEmail;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final Collection<String> getDefaultScopes() {
        return this.defaultScopes;
    }

    int getLifetime() {
        return this.lifetime;
    }

    public final PrivateKey getPrivateKey() {
        return this.privateKey;
    }

    public final String getPrivateKeyId() {
        return this.privateKeyId;
    }

    public final String getProjectId() {
        return this.projectId;
    }

    @Override // com.google.auth.oauth2.p
    public String getQuotaProjectId() {
        return this.quotaProjectId;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials, com.google.auth.Credentials
    public void getRequestMetadata(URI uri, Executor executor, com.google.auth.a aVar) {
        if (this.useJwtAccessWithScope) {
            blockingGetToCallback(uri, aVar);
        } else {
            super.getRequestMetadata(uri, executor, aVar);
        }
    }

    public final Collection<String> getScopes() {
        return this.scopes;
    }

    public final String getServiceAccountUser() {
        return this.serviceAccountUser;
    }

    public final URI getTokenServerUri() {
        return this.tokenServerUri;
    }

    public boolean getUseJwtAccessWithScope() {
        return this.useJwtAccessWithScope;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public int hashCode() {
        return Objects.hash(this.clientId, this.clientEmail, this.privateKey, this.privateKeyId, this.transportFactoryClassName, this.tokenServerUri, this.scopes, this.defaultScopes, this.quotaProjectId, Integer.valueOf(this.lifetime), Boolean.valueOf(this.useJwtAccessWithScope), Boolean.valueOf(this.defaultRetriesEnabled));
    }

    @Override // com.google.auth.oauth2.IdTokenProvider
    public IdToken idTokenWithAudience(String str, List<IdTokenProvider.Option> list) throws IOException {
        g5.c cVar = n.f11679f;
        String createAssertionForIdToken = createAssertionForIdToken(cVar, this.clock.a(), this.tokenServerUri.toString(), str);
        GenericData genericData = new GenericData();
        genericData.e("grant_type", GRANT_TYPE);
        genericData.e("assertion", createAssertionForIdToken);
        com.google.api.client.http.m b10 = this.transportFactory.a().c().b(new com.google.api.client.http.d(this.tokenServerUri), new x(genericData));
        b10.r(new g5.e(cVar));
        try {
            return IdToken.create(n.e((GenericData) b10.b().k(GenericData.class), "id_token", PARSE_ERROR_PREFIX));
        } catch (IOException e10) {
            throw new IOException(String.format("Error getting id token for service account: %s, iss: %s", e10.getMessage(), getIssuer()), e10);
        }
    }

    public JwtCredentials jwtWithClaims(JwtClaims jwtClaims) {
        return JwtCredentials.newBuilder().j(this.privateKey).k(this.privateKeyId).h(JwtClaims.newBuilder().d(getIssuer()).e(this.clientEmail).a().merge(jwtClaims)).g(this.clock).a();
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        g5.c cVar = n.f11679f;
        String createAssertion = createAssertion(cVar, this.clock.a());
        GenericData genericData = new GenericData();
        genericData.e("grant_type", GRANT_TYPE);
        genericData.e("assertion", createAssertion);
        com.google.api.client.http.m b10 = this.transportFactory.a().c().b(new com.google.api.client.http.d(this.tokenServerUri), new x(genericData));
        if (this.defaultRetriesEnabled) {
            b10.q(3);
        } else {
            b10.q(0);
        }
        b10.r(new g5.e(cVar));
        b10.u(new com.google.api.client.http.e(new l.a().b(1000).d(RETRY_RANDOMIZATION_FACTOR).c(RETRY_MULTIPLIER).a()).b(new a()));
        try {
            GenericData genericData2 = (GenericData) b10.b().k(GenericData.class);
            return new AccessToken(n.e(genericData2, "access_token", PARSE_ERROR_PREFIX), new Date(this.clock.a() + (n.b(genericData2, com.facebook.AccessToken.EXPIRES_IN_KEY, PARSE_ERROR_PREFIX) * 1000)));
        } catch (HttpResponseException e10) {
            throw l.b(e10, String.format("Error getting access token for service account: %s, iss: %s", e10.getMessage(), getIssuer()));
        } catch (IOException e11) {
            throw new IOException(String.format("Error getting access token for service account: %s, iss: %s", e11.getMessage(), getIssuer()), e11);
        }
    }

    public byte[] sign(byte[] bArr) {
        try {
            Signature signature = Signature.getInstance(OidcSecurityUtil.SIGNATURE_ALGORITHM_SHA256);
            signature.initSign(getPrivateKey());
            signature.update(bArr);
            return signature.sign();
        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException e10) {
            throw new ServiceAccountSigner$SigningException("Failed to sign the provided bytes", e10);
        }
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public String toString() {
        return com.google.common.base.j.c(this).d("clientId", this.clientId).d("clientEmail", this.clientEmail).d("privateKeyId", this.privateKeyId).d("transportFactoryClassName", this.transportFactoryClassName).d("tokenServerUri", this.tokenServerUri).d("scopes", this.scopes).d("defaultScopes", this.defaultScopes).d("serviceAccountUser", this.serviceAccountUser).d("quotaProjectId", this.quotaProjectId).b("lifetime", this.lifetime).e("useJwtAccessWithScope", this.useJwtAccessWithScope).e("defaultRetriesEnabled", this.defaultRetriesEnabled).toString();
    }

    public static ServiceAccountCredentials fromStream(InputStream inputStream, s5.b bVar) throws IOException {
        z.d(inputStream);
        z.d(bVar);
        g5.b bVar2 = (g5.b) new g5.e(n.f11679f).a(inputStream, StandardCharsets.UTF_8, g5.b.class);
        String str = (String) bVar2.get("type");
        if (str != null) {
            if ("service_account".equals(str)) {
                return fromJson(bVar2, bVar);
            }
            throw new IOException(String.format("Error reading credentials from stream, 'type' value '%s' not recognized. Expecting '%s'.", str, "service_account"));
        }
        throw new IOException("Error reading credentials from stream, 'type' field not specified.");
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createScoped(Collection<String> collection, Collection<String> collection2) {
        return toBuilder().E(collection, collection2).d();
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public ServiceAccountCredentials createWithCustomRetryStrategy(boolean z10) {
        return toBuilder().w(z10).d();
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public b toBuilder() {
        return new b(this);
    }

    /* loaded from: classes2.dex */
    public static class b extends GoogleCredentials.a {

        /* renamed from: d  reason: collision with root package name */
        private String f11579d;

        /* renamed from: e  reason: collision with root package name */
        private String f11580e;

        /* renamed from: f  reason: collision with root package name */
        private PrivateKey f11581f;

        /* renamed from: g  reason: collision with root package name */
        private String f11582g;

        /* renamed from: h  reason: collision with root package name */
        private String f11583h;

        /* renamed from: i  reason: collision with root package name */
        private String f11584i;

        /* renamed from: j  reason: collision with root package name */
        private URI f11585j;

        /* renamed from: k  reason: collision with root package name */
        private Collection<String> f11586k;

        /* renamed from: l  reason: collision with root package name */
        private Collection<String> f11587l;

        /* renamed from: m  reason: collision with root package name */
        private s5.b f11588m;

        /* renamed from: n  reason: collision with root package name */
        private String f11589n;

        /* renamed from: o  reason: collision with root package name */
        private int f11590o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f11591p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f11592q;

        protected b() {
            this.f11590o = 3600;
            this.f11591p = false;
            this.f11592q = true;
        }

        public b A(String str) {
            this.f11582g = str;
            return this;
        }

        public b B(String str) {
            this.f11584i = str;
            return this;
        }

        public b C(String str) {
            this.f11589n = str;
            return this;
        }

        public b D(Collection<String> collection) {
            this.f11586k = collection;
            this.f11587l = ImmutableSet.of();
            return this;
        }

        public b E(Collection<String> collection, Collection<String> collection2) {
            this.f11586k = collection;
            this.f11587l = collection2;
            return this;
        }

        public b F(String str) {
            this.f11583h = str;
            return this;
        }

        public b G(URI uri) {
            this.f11585j = uri;
            return this;
        }

        public b H(boolean z10) {
            this.f11591p = z10;
            return this;
        }

        @Override // com.google.auth.oauth2.GoogleCredentials.a
        /* renamed from: t */
        public ServiceAccountCredentials d() {
            return new ServiceAccountCredentials(this);
        }

        public b u(String str) {
            this.f11580e = str;
            return this;
        }

        public b v(String str) {
            this.f11579d = str;
            return this;
        }

        public b w(boolean z10) {
            this.f11592q = z10;
            return this;
        }

        public b x(s5.b bVar) {
            this.f11588m = bVar;
            return this;
        }

        public b y(int i9) {
            if (i9 == 0) {
                i9 = 3600;
            }
            this.f11590o = i9;
            return this;
        }

        public b z(PrivateKey privateKey) {
            this.f11581f = privateKey;
            return this;
        }

        protected b(ServiceAccountCredentials serviceAccountCredentials) {
            this.f11590o = 3600;
            this.f11591p = false;
            this.f11592q = true;
            this.f11579d = serviceAccountCredentials.clientId;
            this.f11580e = serviceAccountCredentials.clientEmail;
            this.f11581f = serviceAccountCredentials.privateKey;
            this.f11582g = serviceAccountCredentials.privateKeyId;
            this.f11586k = serviceAccountCredentials.scopes;
            this.f11587l = serviceAccountCredentials.defaultScopes;
            this.f11588m = serviceAccountCredentials.transportFactory;
            this.f11585j = serviceAccountCredentials.tokenServerUri;
            this.f11583h = serviceAccountCredentials.serviceAccountUser;
            this.f11584i = serviceAccountCredentials.projectId;
            this.f11589n = serviceAccountCredentials.quotaProjectId;
            this.f11590o = serviceAccountCredentials.lifetime;
            this.f11591p = serviceAccountCredentials.useJwtAccessWithScope;
            this.f11592q = serviceAccountCredentials.defaultRetriesEnabled;
        }
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials, com.google.auth.Credentials
    public Map<String, List<String>> getRequestMetadata(URI uri) throws IOException {
        String str;
        JwtCredentials createSelfSignedJwtCredentials;
        if (createScopedRequired() && uri == null) {
            throw new IOException("Scopes and uri are not configured for service account. Specify the scopes by calling createScoped or passing scopes to constructor or providing uri to getRequestMetadata.");
        }
        if ((!createScopedRequired() && !this.useJwtAccessWithScope) || ((str = this.serviceAccountUser) != null && str.length() > 0)) {
            return super.getRequestMetadata(uri);
        }
        if (!createScopedRequired() && this.useJwtAccessWithScope) {
            createSelfSignedJwtCredentials = createSelfSignedJwtCredentials(null);
        } else {
            createSelfSignedJwtCredentials = createSelfSignedJwtCredentials(uri);
        }
        return GoogleCredentials.addQuotaProjectIdToRequestMetadata(this.quotaProjectId, createSelfSignedJwtCredentials.getRequestMetadata(null));
    }

    public static ServiceAccountCredentials fromPkcs8(String str, String str2, String str3, String str4, Collection<String> collection, Collection<String> collection2) throws IOException {
        return fromPkcs8(str3, newBuilder().v(str).u(str2).A(str4).E(collection, collection2));
    }

    public static ServiceAccountCredentials fromPkcs8(String str, String str2, String str3, String str4, Collection<String> collection, s5.b bVar, URI uri) throws IOException {
        return fromPkcs8(str3, newBuilder().v(str).u(str2).A(str4).D(collection).x(bVar).G(uri));
    }

    public static ServiceAccountCredentials fromPkcs8(String str, String str2, String str3, String str4, Collection<String> collection, Collection<String> collection2, s5.b bVar, URI uri) throws IOException {
        return fromPkcs8(str3, newBuilder().v(str).u(str2).A(str4).E(collection, collection2).x(bVar).G(uri));
    }

    public static ServiceAccountCredentials fromPkcs8(String str, String str2, String str3, String str4, Collection<String> collection, s5.b bVar, URI uri, String str5) throws IOException {
        return fromPkcs8(str3, newBuilder().v(str).u(str2).A(str4).D(collection).x(bVar).G(uri).F(str5));
    }

    public static ServiceAccountCredentials fromPkcs8(String str, String str2, String str3, String str4, Collection<String> collection, Collection<String> collection2, s5.b bVar, URI uri, String str5) throws IOException {
        return fromPkcs8(str3, newBuilder().v(str).u(str2).A(str4).E(collection, collection2).x(bVar).G(uri).F(str5));
    }

    static ServiceAccountCredentials fromPkcs8(String str, b bVar) throws IOException {
        bVar.z(privateKeyFromPkcs8(str));
        return new ServiceAccountCredentials(bVar);
    }
}
