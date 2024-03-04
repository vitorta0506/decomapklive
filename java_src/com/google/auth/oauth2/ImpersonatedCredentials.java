package com.google.auth.oauth2;

import com.google.api.client.util.GenericData;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.IdTokenProvider;
import com.google.common.collect.ImmutableMap;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public class ImpersonatedCredentials extends GoogleCredentials implements IdTokenProvider, p {
    private static final String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";
    private static final int DEFAULT_LIFETIME_IN_SECONDS = 3600;
    private static final String IAM_ACCESS_TOKEN_ENDPOINT = "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:generateAccessToken";
    private static final String RFC3339 = "yyyy-MM-dd'T'HH:mm:ss'Z'";
    private static final int TWELVE_HOURS_IN_SECONDS = 43200;
    private static final long serialVersionUID = -2133257318957488431L;
    private List<String> delegates;
    private int lifetime;
    private String quotaProjectId;
    private List<String> scopes;
    private GoogleCredentials sourceCredentials;
    private String targetPrincipal;
    private transient s5.b transportFactory;
    private final String transportFactoryClassName;

    public static ImpersonatedCredentials create(GoogleCredentials googleCredentials, String str, List<String> list, List<String> list2, int i9, s5.b bVar) {
        return newBuilder().s(googleCredentials).t(str).n(list).r(list2).p(i9).o(bVar).d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String extractTargetPrincipal(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        int indexOf = str.indexOf(":generateAccessToken");
        if (lastIndexOf != -1 && indexOf != -1 && lastIndexOf < indexOf) {
            return str.substring(lastIndexOf + 1, indexOf);
        }
        throw new IllegalArgumentException("Unable to determine target principal from service account impersonation URL.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImpersonatedCredentials fromJson(Map<String, Object> map, s5.b bVar) throws IOException {
        GoogleCredentials fromJson;
        com.google.common.base.o.s(map);
        com.google.common.base.o.s(bVar);
        try {
            String str = (String) map.get("service_account_impersonation_url");
            List<String> list = map.containsKey("delegates") ? (List) map.get("delegates") : null;
            Map map2 = (Map) map.get("source_credentials");
            String str2 = (String) map2.get("type");
            String str3 = (String) map.get("quota_project_id");
            String extractTargetPrincipal = extractTargetPrincipal(str);
            if ("authorized_user".equals(str2)) {
                fromJson = UserCredentials.fromJson(map2, bVar);
            } else if ("service_account".equals(str2)) {
                fromJson = ServiceAccountCredentials.fromJson(map2, bVar);
            } else {
                throw new IOException(String.format("A credential of type %s is not supported as source credential for impersonation.", str2));
            }
            return newBuilder().s(fromJson).t(extractTargetPrincipal).n(list).r(new ArrayList()).p(3600).o(bVar).q(str3).d();
        } catch (ClassCastException | IllegalArgumentException | NullPointerException e10) {
            throw new i("An invalid input stream was provided.", e10);
        }
    }

    public static b newBuilder() {
        return new b();
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createScoped(Collection<String> collection) {
        return toBuilder().r(new ArrayList(collection)).p(this.lifetime).n(this.delegates).o(this.transportFactory).q(this.quotaProjectId).d();
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public boolean createScopedRequired() {
        List<String> list = this.scopes;
        return list == null || list.isEmpty();
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public boolean equals(Object obj) {
        if (obj instanceof ImpersonatedCredentials) {
            ImpersonatedCredentials impersonatedCredentials = (ImpersonatedCredentials) obj;
            return Objects.equals(this.sourceCredentials, impersonatedCredentials.sourceCredentials) && Objects.equals(this.targetPrincipal, impersonatedCredentials.targetPrincipal) && Objects.equals(this.delegates, impersonatedCredentials.delegates) && Objects.equals(this.scopes, impersonatedCredentials.scopes) && Objects.equals(Integer.valueOf(this.lifetime), Integer.valueOf(impersonatedCredentials.lifetime)) && Objects.equals(this.transportFactoryClassName, impersonatedCredentials.transportFactoryClassName) && Objects.equals(this.quotaProjectId, impersonatedCredentials.quotaProjectId);
        }
        return false;
    }

    public String getAccount() {
        return this.targetPrincipal;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.auth.oauth2.OAuth2Credentials
    public Map<String, List<String>> getAdditionalHeaders() {
        Map<String, List<String>> additionalHeaders = super.getAdditionalHeaders();
        String str = this.quotaProjectId;
        return str != null ? GoogleCredentials.addQuotaProjectIdToRequestMetadata(str, additionalHeaders) : additionalHeaders;
    }

    List<String> getDelegates() {
        return this.delegates;
    }

    int getLifetime() {
        return this.lifetime;
    }

    @Override // com.google.auth.oauth2.p
    public String getQuotaProjectId() {
        return this.quotaProjectId;
    }

    List<String> getScopes() {
        return this.scopes;
    }

    public GoogleCredentials getSourceCredentials() {
        return this.sourceCredentials;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public int hashCode() {
        return Objects.hash(this.sourceCredentials, this.targetPrincipal, this.delegates, this.scopes, Integer.valueOf(this.lifetime), this.quotaProjectId);
    }

    @Override // com.google.auth.oauth2.IdTokenProvider
    public IdToken idTokenWithAudience(String str, List<IdTokenProvider.Option> list) throws IOException {
        return m.a(getAccount(), this.sourceCredentials, this.transportFactory.a(), str, list != null && list.contains(IdTokenProvider.Option.INCLUDE_EMAIL), ImmutableMap.of("delegates", this.delegates));
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        if (this.sourceCredentials.getAccessToken() == null) {
            this.sourceCredentials = this.sourceCredentials.createScoped(Arrays.asList(CLOUD_PLATFORM_SCOPE));
        }
        try {
            this.sourceCredentials.refreshIfExpired();
            com.google.api.client.http.s a10 = this.transportFactory.a();
            g5.e eVar = new g5.e(n.f11679f);
            s5.a aVar = new s5.a(this.sourceCredentials);
            com.google.api.client.http.n c10 = a10.c();
            com.google.api.client.http.d dVar = new com.google.api.client.http.d(String.format(IAM_ACCESS_TOKEN_ENDPOINT, this.targetPrincipal));
            List<String> list = this.delegates;
            List<String> list2 = this.scopes;
            com.google.api.client.http.m b10 = c10.b(dVar, new f5.a(eVar.b(), ImmutableMap.of("delegates", (String) list, "scope", (String) list2, "lifetime", this.lifetime + NotifyType.SOUND)));
            aVar.b(b10);
            b10.r(eVar);
            try {
                com.google.api.client.http.p b11 = b10.b();
                GenericData genericData = (GenericData) b11.k(GenericData.class);
                b11.a();
                try {
                    return new AccessToken(n.e(genericData, "accessToken", "Expected to find an accessToken"), new SimpleDateFormat(RFC3339).parse(n.e(genericData, "expireTime", "Expected to find an expireTime")));
                } catch (ParseException e10) {
                    throw new IOException("Error parsing expireTime: " + e10.getMessage());
                }
            } catch (IOException e11) {
                throw new IOException("Error requesting access token", e11);
            }
        } catch (IOException e12) {
            throw new IOException("Unable to refresh sourceCredentials", e12);
        }
    }

    public void setTransportFactory(s5.b bVar) {
        this.transportFactory = bVar;
    }

    public byte[] sign(byte[] bArr) {
        return m.c(getAccount(), this.sourceCredentials, this.transportFactory.a(), bArr, ImmutableMap.of("delegates", this.delegates));
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public String toString() {
        return com.google.common.base.j.c(this).d("sourceCredentials", this.sourceCredentials).d("targetPrincipal", this.targetPrincipal).d("delegates", this.delegates).d("scopes", this.scopes).b("lifetime", this.lifetime).d("transportFactoryClassName", this.transportFactoryClassName).d("quotaProjectId", this.quotaProjectId).toString();
    }

    /* loaded from: classes2.dex */
    public static class b extends GoogleCredentials.a {

        /* renamed from: d  reason: collision with root package name */
        private GoogleCredentials f11550d;

        /* renamed from: e  reason: collision with root package name */
        private String f11551e;

        /* renamed from: f  reason: collision with root package name */
        private List<String> f11552f;

        /* renamed from: g  reason: collision with root package name */
        private List<String> f11553g;

        /* renamed from: h  reason: collision with root package name */
        private int f11554h = 3600;

        /* renamed from: i  reason: collision with root package name */
        private s5.b f11555i;

        /* renamed from: j  reason: collision with root package name */
        private String f11556j;

        protected b() {
        }

        @Override // com.google.auth.oauth2.GoogleCredentials.a
        /* renamed from: g */
        public ImpersonatedCredentials d() {
            return new ImpersonatedCredentials(this);
        }

        public List<String> h() {
            return this.f11552f;
        }

        public s5.b i() {
            return this.f11555i;
        }

        public int j() {
            return this.f11554h;
        }

        public List<String> k() {
            return this.f11553g;
        }

        public GoogleCredentials l() {
            return this.f11550d;
        }

        public String m() {
            return this.f11551e;
        }

        public b n(List<String> list) {
            this.f11552f = list;
            return this;
        }

        public b o(s5.b bVar) {
            this.f11555i = bVar;
            return this;
        }

        public b p(int i9) {
            if (i9 == 0) {
                i9 = 3600;
            }
            this.f11554h = i9;
            return this;
        }

        public b q(String str) {
            this.f11556j = str;
            return this;
        }

        public b r(List<String> list) {
            this.f11553g = list;
            return this;
        }

        public b s(GoogleCredentials googleCredentials) {
            this.f11550d = googleCredentials;
            return this;
        }

        public b t(String str) {
            this.f11551e = str;
            return this;
        }

        protected b(GoogleCredentials googleCredentials, String str) {
            this.f11550d = googleCredentials;
            this.f11551e = str;
        }
    }

    private ImpersonatedCredentials(b bVar) {
        this.sourceCredentials = bVar.l();
        this.targetPrincipal = bVar.m();
        this.delegates = bVar.h();
        this.scopes = bVar.k();
        this.lifetime = bVar.j();
        this.transportFactory = (s5.b) com.google.common.base.j.a(bVar.i(), OAuth2Credentials.getFromServiceLoader(s5.b.class, n.f11678e));
        this.quotaProjectId = bVar.f11556j;
        this.transportFactoryClassName = this.transportFactory.getClass().getName();
        if (this.delegates == null) {
            this.delegates = new ArrayList();
        }
        if (this.scopes != null) {
            if (this.lifetime > TWELVE_HOURS_IN_SECONDS) {
                throw new IllegalStateException("lifetime must be less than or equal to 43200");
            }
            return;
        }
        throw new IllegalStateException("Scopes cannot be null");
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public b toBuilder() {
        return new b(this.sourceCredentials, this.targetPrincipal);
    }

    public static ImpersonatedCredentials create(GoogleCredentials googleCredentials, String str, List<String> list, List<String> list2, int i9, s5.b bVar, String str2) {
        return newBuilder().s(googleCredentials).t(str).n(list).r(list2).p(i9).o(bVar).q(str2).d();
    }

    public static ImpersonatedCredentials create(GoogleCredentials googleCredentials, String str, List<String> list, List<String> list2, int i9) {
        return newBuilder().s(googleCredentials).t(str).n(list).r(list2).p(i9).d();
    }
}
