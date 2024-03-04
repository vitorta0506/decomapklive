package com.google.auth.oauth2;

import com.facebook.internal.security.OidcSecurityUtil;
import com.google.auth.Credentials;
import com.google.auth.ServiceAccountSigner$SigningException;
import com.google.auth.oauth2.JwtClaims;
import com.google.common.base.y;
import com.google.common.base.z;
import com.google.common.cache.CacheLoader;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.SignatureException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class ServiceAccountJwtAccessCredentials extends Credentials implements p {
    static final String JWT_ACCESS_PREFIX = "Bearer ";
    private static final long serialVersionUID = -7274955171379494197L;
    private final String clientEmail;
    private final String clientId;
    transient com.google.api.client.util.i clock;
    private transient com.google.common.cache.g<JwtClaims, JwtCredentials> credentialsCache;
    private final URI defaultAudience;
    private final PrivateKey privateKey;
    private final String privateKeyId;
    private final String quotaProjectId;
    static final long LIFE_SPAN_SECS = TimeUnit.HOURS.toSeconds(1);
    private static final long CLOCK_SKEW = TimeUnit.MINUTES.toSeconds(5);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends CacheLoader<JwtClaims, JwtCredentials> {
        a() {
        }

        @Override // com.google.common.cache.CacheLoader
        /* renamed from: c */
        public JwtCredentials a(JwtClaims jwtClaims) throws Exception {
            return JwtCredentials.newBuilder().j(ServiceAccountJwtAccessCredentials.this.privateKey).k(ServiceAccountJwtAccessCredentials.this.privateKeyId).h(jwtClaims).i(Long.valueOf(ServiceAccountJwtAccessCredentials.LIFE_SPAN_SECS)).g(ServiceAccountJwtAccessCredentials.this.clock).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends z {
        b() {
        }

        @Override // com.google.common.base.z
        public long a() {
            return TimeUnit.MILLISECONDS.toNanos(ServiceAccountJwtAccessCredentials.this.clock.a());
        }
    }

    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private String f11595a;

        /* renamed from: b  reason: collision with root package name */
        private String f11596b;

        /* renamed from: c  reason: collision with root package name */
        private PrivateKey f11597c;

        /* renamed from: d  reason: collision with root package name */
        private String f11598d;

        /* renamed from: e  reason: collision with root package name */
        private URI f11599e;

        /* renamed from: f  reason: collision with root package name */
        private String f11600f;

        protected c() {
        }

        protected c(ServiceAccountJwtAccessCredentials serviceAccountJwtAccessCredentials) {
            this.f11595a = serviceAccountJwtAccessCredentials.clientId;
            this.f11596b = serviceAccountJwtAccessCredentials.clientEmail;
            this.f11597c = serviceAccountJwtAccessCredentials.privateKey;
            this.f11598d = serviceAccountJwtAccessCredentials.privateKeyId;
            this.f11599e = serviceAccountJwtAccessCredentials.defaultAudience;
            this.f11600f = serviceAccountJwtAccessCredentials.quotaProjectId;
        }

        public ServiceAccountJwtAccessCredentials a() {
            return new ServiceAccountJwtAccessCredentials(this.f11595a, this.f11596b, this.f11597c, this.f11598d, this.f11599e, this.f11600f, null);
        }

        public c b(String str) {
            this.f11596b = str;
            return this;
        }

        public c c(String str) {
            this.f11595a = str;
            return this;
        }

        public c d(PrivateKey privateKey) {
            this.f11597c = privateKey;
            return this;
        }

        public c e(String str) {
            this.f11598d = str;
            return this;
        }

        public c f(String str) {
            this.f11600f = str;
            return this;
        }
    }

    /* synthetic */ ServiceAccountJwtAccessCredentials(String str, String str2, PrivateKey privateKey, String str3, URI uri, String str4, a aVar) {
        this(str, str2, privateKey, str3, uri, str4);
    }

    private com.google.common.cache.g<JwtClaims, JwtCredentials> createCache() {
        return com.google.common.cache.d.y().w(100L).g(LIFE_SPAN_SECS - CLOCK_SKEW, TimeUnit.SECONDS).C(new b()).b(new a());
    }

    static ServiceAccountJwtAccessCredentials fromJson(Map<String, Object> map) throws IOException {
        return fromJson(map, null);
    }

    public static ServiceAccountJwtAccessCredentials fromPkcs8(String str, String str2, String str3, String str4) throws IOException {
        return fromPkcs8(str, str2, str3, str4, null);
    }

    public static ServiceAccountJwtAccessCredentials fromStream(InputStream inputStream) throws IOException {
        return fromStream(inputStream, null);
    }

    public static c newBuilder() {
        return new c();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.clock = com.google.api.client.util.i.f11120a;
        this.credentialsCache = createCache();
    }

    public boolean equals(Object obj) {
        if (obj instanceof ServiceAccountJwtAccessCredentials) {
            ServiceAccountJwtAccessCredentials serviceAccountJwtAccessCredentials = (ServiceAccountJwtAccessCredentials) obj;
            return Objects.equals(this.clientId, serviceAccountJwtAccessCredentials.clientId) && Objects.equals(this.clientEmail, serviceAccountJwtAccessCredentials.clientEmail) && Objects.equals(this.privateKey, serviceAccountJwtAccessCredentials.privateKey) && Objects.equals(this.privateKeyId, serviceAccountJwtAccessCredentials.privateKeyId) && Objects.equals(this.defaultAudience, serviceAccountJwtAccessCredentials.defaultAudience) && Objects.equals(this.quotaProjectId, serviceAccountJwtAccessCredentials.quotaProjectId);
        }
        return false;
    }

    public String getAccount() {
        return getClientEmail();
    }

    @Override // com.google.auth.Credentials
    public String getAuthenticationType() {
        return "JWTAccess";
    }

    public final String getClientEmail() {
        return this.clientEmail;
    }

    public final String getClientId() {
        return this.clientId;
    }

    public final PrivateKey getPrivateKey() {
        return this.privateKey;
    }

    public final String getPrivateKeyId() {
        return this.privateKeyId;
    }

    @Override // com.google.auth.oauth2.p
    public String getQuotaProjectId() {
        return this.quotaProjectId;
    }

    @Override // com.google.auth.Credentials
    public void getRequestMetadata(URI uri, Executor executor, com.google.auth.a aVar) {
        blockingGetToCallback(uri, aVar);
    }

    @Override // com.google.auth.Credentials
    public boolean hasRequestMetadata() {
        return true;
    }

    @Override // com.google.auth.Credentials
    public boolean hasRequestMetadataOnly() {
        return true;
    }

    public int hashCode() {
        return Objects.hash(this.clientId, this.clientEmail, this.privateKey, this.privateKeyId, this.defaultAudience, this.quotaProjectId);
    }

    public JwtCredentials jwtWithClaims(JwtClaims jwtClaims) {
        JwtClaims.a e10 = JwtClaims.newBuilder().d(this.clientEmail).e(this.clientEmail);
        URI uri = this.defaultAudience;
        if (uri != null) {
            e10.c(uri.toString());
        }
        return JwtCredentials.newBuilder().j(this.privateKey).k(this.privateKeyId).h(e10.a().merge(jwtClaims)).i(Long.valueOf(LIFE_SPAN_SECS)).g(this.clock).a();
    }

    @Override // com.google.auth.Credentials
    public void refresh() {
        this.credentialsCache.v0();
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

    public c toBuilder() {
        return new c(this);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("clientId", this.clientId).d("clientEmail", this.clientEmail).d("privateKeyId", this.privateKeyId).d("defaultAudience", this.defaultAudience).d("quotaProjectId", this.quotaProjectId).toString();
    }

    private ServiceAccountJwtAccessCredentials(String str, String str2, PrivateKey privateKey, String str3) {
        this(str, str2, privateKey, str3, null, null);
    }

    static ServiceAccountJwtAccessCredentials fromJson(Map<String, Object> map, URI uri) throws IOException {
        String str = (String) map.get("client_id");
        String str2 = (String) map.get("client_email");
        String str3 = (String) map.get("private_key");
        String str4 = (String) map.get("private_key_id");
        String str5 = (String) map.get("quota_project_id");
        if (str != null && str2 != null && str3 != null && str4 != null) {
            return fromPkcs8(str, str2, str3, str4, uri, str5);
        }
        throw new IOException("Error reading service account credential from JSON, expecting  'client_id', 'client_email', 'private_key' and 'private_key_id'.");
    }

    public static ServiceAccountJwtAccessCredentials fromPkcs8(String str, String str2, String str3, String str4, URI uri) throws IOException {
        return fromPkcs8(str, str2, str3, str4, uri, null);
    }

    public static ServiceAccountJwtAccessCredentials fromStream(InputStream inputStream, URI uri) throws IOException {
        com.google.api.client.util.z.d(inputStream);
        g5.b bVar = (g5.b) new g5.e(n.f11679f).a(inputStream, StandardCharsets.UTF_8, g5.b.class);
        String str = (String) bVar.get("type");
        if (str != null) {
            if ("service_account".equals(str)) {
                return fromJson(bVar, uri);
            }
            throw new IOException(String.format("Error reading credentials from stream, 'type' value '%s' not recognized. Expecting '%s'.", str, "service_account"));
        }
        throw new IOException("Error reading credentials from stream, 'type' field not specified.");
    }

    @Override // com.google.auth.Credentials
    public Map<String, List<String>> getRequestMetadata(URI uri) throws IOException {
        if (uri == null && (uri = this.defaultAudience) == null) {
            throw new IOException("JwtAccess requires Audience uri to be passed in or the defaultAudience to be specified");
        }
        try {
            return GoogleCredentials.addQuotaProjectIdToRequestMetadata(this.quotaProjectId, this.credentialsCache.get(JwtClaims.newBuilder().c(uri.toString()).d(this.clientEmail).e(this.clientEmail).a()).getRequestMetadata(uri));
        } catch (UncheckedExecutionException e10) {
            y.k(e10);
            throw new IllegalStateException("generateJwtAccess threw an unchecked exception that couldn't be rethrown", e10);
        } catch (ExecutionException e11) {
            y.i(e11.getCause(), IOException.class);
            throw new IllegalStateException("generateJwtAccess threw an unexpected checked exception", e11.getCause());
        }
    }

    private ServiceAccountJwtAccessCredentials(String str, String str2, PrivateKey privateKey, String str3, URI uri, String str4) {
        this.clock = com.google.api.client.util.i.f11120a;
        this.clientId = str;
        this.clientEmail = (String) com.google.api.client.util.z.d(str2);
        this.privateKey = (PrivateKey) com.google.api.client.util.z.d(privateKey);
        this.privateKeyId = str3;
        this.defaultAudience = uri;
        this.credentialsCache = createCache();
        this.quotaProjectId = str4;
    }

    static ServiceAccountJwtAccessCredentials fromPkcs8(String str, String str2, String str3, String str4, URI uri, String str5) throws IOException {
        return new ServiceAccountJwtAccessCredentials(str, str2, ServiceAccountCredentials.privateKeyFromPkcs8(str3), str4, uri, str5);
    }
}
