package com.google.auth.oauth2;

import androidx.webkit.ProxyConfig;
import com.google.auth.oauth2.AwsCredentials;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.IdentityPoolCredentials;
import com.google.auth.oauth2.q;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public abstract class ExternalAccountCredentials extends GoogleCredentials implements p {
    private static final String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";
    static final String EXTERNAL_ACCOUNT_FILE_TYPE = "external_account";
    private final String audience;
    private final String clientId;
    private final String clientSecret;
    private final c credentialSource;
    private k environmentProvider;
    protected final ImpersonatedCredentials impersonatedCredentials;
    private final String quotaProjectId;
    private final Collection<String> scopes;
    private final String serviceAccountImpersonationUrl;
    private final String subjectTokenType;
    private final String tokenInfoUrl;
    private final String tokenUrl;
    protected transient s5.b transportFactory;
    private final String transportFactoryClassName;
    private final String workforcePoolUserProject;

    /* loaded from: classes2.dex */
    class a implements com.google.auth.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.auth.a f11521a;

        a(com.google.auth.a aVar) {
            this.f11521a = aVar;
        }

        @Override // com.google.auth.a
        public void a(Map<String, List<String>> map) {
            this.f11521a.a(GoogleCredentials.addQuotaProjectIdToRequestMetadata(ExternalAccountCredentials.this.quotaProjectId, map));
        }

        @Override // com.google.auth.a
        public void onFailure(Throwable th2) {
            this.f11521a.onFailure(th2);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class b extends GoogleCredentials.a {

        /* renamed from: d  reason: collision with root package name */
        protected String f11523d;

        /* renamed from: e  reason: collision with root package name */
        protected String f11524e;

        /* renamed from: f  reason: collision with root package name */
        protected String f11525f;

        /* renamed from: g  reason: collision with root package name */
        protected String f11526g;

        /* renamed from: h  reason: collision with root package name */
        protected c f11527h;

        /* renamed from: i  reason: collision with root package name */
        protected k f11528i;

        /* renamed from: j  reason: collision with root package name */
        protected s5.b f11529j;

        /* renamed from: k  reason: collision with root package name */
        protected String f11530k;

        /* renamed from: l  reason: collision with root package name */
        protected String f11531l;

        /* renamed from: m  reason: collision with root package name */
        protected String f11532m;

        /* renamed from: n  reason: collision with root package name */
        protected String f11533n;

        /* renamed from: o  reason: collision with root package name */
        protected Collection<String> f11534o;

        /* renamed from: p  reason: collision with root package name */
        protected String f11535p;

        /* JADX INFO: Access modifiers changed from: protected */
        public b() {
        }

        public abstract ExternalAccountCredentials f();

        public b g(String str) {
            this.f11523d = str;
            return this;
        }

        public b h(String str) {
            this.f11532m = str;
            return this;
        }

        public b i(String str) {
            this.f11533n = str;
            return this;
        }

        public b j(c cVar) {
            this.f11527h = cVar;
            return this;
        }

        public b k(s5.b bVar) {
            this.f11529j = bVar;
            return this;
        }

        public b l(String str) {
            this.f11531l = str;
            return this;
        }

        public b m(Collection<String> collection) {
            this.f11534o = collection;
            return this;
        }

        public b n(String str) {
            this.f11530k = str;
            return this;
        }

        public b o(String str) {
            this.f11524e = str;
            return this;
        }

        public b p(String str) {
            this.f11526g = str;
            return this;
        }

        public b q(String str) {
            this.f11525f = str;
            return this;
        }

        public b r(String str) {
            this.f11535p = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public b(ExternalAccountCredentials externalAccountCredentials) {
            this.f11529j = externalAccountCredentials.transportFactory;
            this.f11523d = externalAccountCredentials.audience;
            this.f11524e = externalAccountCredentials.subjectTokenType;
            this.f11525f = externalAccountCredentials.tokenUrl;
            this.f11526g = externalAccountCredentials.tokenInfoUrl;
            this.f11530k = externalAccountCredentials.serviceAccountImpersonationUrl;
            this.f11527h = externalAccountCredentials.credentialSource;
            this.f11531l = externalAccountCredentials.quotaProjectId;
            this.f11532m = externalAccountCredentials.clientId;
            this.f11533n = externalAccountCredentials.clientSecret;
            this.f11534o = externalAccountCredentials.scopes;
            this.f11528i = externalAccountCredentials.environmentProvider;
            this.f11535p = externalAccountCredentials.workforcePoolUserProject;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class c {
        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Map<String, Object> map) {
            com.google.common.base.o.s(map);
        }
    }

    protected ExternalAccountCredentials(s5.b bVar, String str, String str2, String str3, c cVar, String str4, String str5, String str6, String str7, String str8, Collection<String> collection) {
        this(bVar, str, str2, str3, cVar, str4, str5, str6, str7, str8, collection, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ExternalAccountCredentials fromJson(Map<String, Object> map, s5.b bVar) {
        com.google.common.base.o.s(map);
        com.google.common.base.o.s(bVar);
        String str = (String) map.get("audience");
        String str2 = (String) map.get("subject_token_type");
        String str3 = (String) map.get("token_url");
        Map map2 = (Map) map.get("credential_source");
        String str4 = (String) map.get("service_account_impersonation_url");
        String str5 = (String) map.get("token_info_url");
        String str6 = (String) map.get("client_id");
        String str7 = (String) map.get("client_secret");
        String str8 = (String) map.get("quota_project_id");
        String str9 = (String) map.get("workforce_pool_user_project");
        if (isAwsCredential(map2)) {
            return AwsCredentials.newBuilder().k(bVar).g(str).o(str2).q(str3).p(str5).j(new AwsCredentials.b(map2)).n(str4).l(str8).h(str6).i(str7).f();
        }
        return IdentityPoolCredentials.newBuilder().k(bVar).g(str).o(str2).q(str3).p(str5).j(new IdentityPoolCredentials.b(map2)).n(str4).l(str8).h(str6).i(str7).r(str9).f();
    }

    public static ExternalAccountCredentials fromStream(InputStream inputStream) throws IOException {
        return fromStream(inputStream, n.f11678e);
    }

    private ImpersonatedCredentials initializeImpersonatedCredentials() {
        ExternalAccountCredentials f10;
        if (this.serviceAccountImpersonationUrl == null) {
            return null;
        }
        if (this instanceof AwsCredentials) {
            f10 = AwsCredentials.newBuilder((AwsCredentials) this).n(null).f();
        } else {
            f10 = IdentityPoolCredentials.newBuilder((IdentityPoolCredentials) this).n(null).f();
        }
        return ImpersonatedCredentials.newBuilder().s(f10).o(this.transportFactory).t(ImpersonatedCredentials.extractTargetPrincipal(this.serviceAccountImpersonationUrl)).r(new ArrayList(this.scopes)).p(LocalCache.TIME_HOUR).d();
    }

    private static boolean isAwsCredential(Map<String, Object> map) {
        return map.containsKey("environment_id") && ((String) map.get("environment_id")).startsWith("aws");
    }

    private static boolean isValidUrl(List<Pattern> list, String str) {
        try {
            URI create = URI.create(str);
            if (create.getScheme() != null && create.getHost() != null && ProxyConfig.MATCH_HTTPS.equals(create.getScheme().toLowerCase(Locale.US))) {
                for (Pattern pattern : list) {
                    if (pattern.matcher(create.getHost().toLowerCase(Locale.US)).matches()) {
                        return true;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    static void validateServiceAccountImpersonationInfoUrl(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Pattern.compile("^[^\\.\\s\\/\\\\]+\\.iamcredentials\\.googleapis\\.com$"));
        arrayList.add(Pattern.compile("^iamcredentials\\.googleapis\\.com$"));
        arrayList.add(Pattern.compile("^iamcredentials\\.[^\\.\\s\\/\\\\]+\\.googleapis\\.com$"));
        arrayList.add(Pattern.compile("^[^\\.\\s\\/\\\\]+\\-iamcredentials\\.googleapis\\.com$"));
        if (!isValidUrl(arrayList, str)) {
            throw new IllegalArgumentException("The provided service account impersonation URL is invalid.");
        }
    }

    static void validateTokenUrl(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Pattern.compile("^[^\\.\\s\\/\\\\]+\\.sts\\.googleapis\\.com$"));
        arrayList.add(Pattern.compile("^sts\\.googleapis\\.com$"));
        arrayList.add(Pattern.compile("^sts\\.[^\\.\\s\\/\\\\]+\\.googleapis\\.com$"));
        arrayList.add(Pattern.compile("^[^\\.\\s\\/\\\\]+\\-sts\\.googleapis\\.com$"));
        if (!isValidUrl(arrayList, str)) {
            throw new IllegalArgumentException("The provided token URL is invalid.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AccessToken exchangeExternalCredentialForAccessToken(r rVar) throws IOException {
        ImpersonatedCredentials impersonatedCredentials = this.impersonatedCredentials;
        if (impersonatedCredentials != null) {
            return impersonatedCredentials.refreshAccessToken();
        }
        q.b d10 = q.d(this.tokenUrl, rVar, this.transportFactory.a().c());
        if (isWorkforcePoolConfiguration()) {
            g5.b bVar = new g5.b();
            bVar.h(n.f11679f);
            bVar.put("userProject", this.workforcePoolUserProject);
            d10.b(bVar.toString());
        }
        if (rVar.c() != null) {
            d10.b(rVar.c());
        }
        return d10.a().c().a();
    }

    public String getAudience() {
        return this.audience;
    }

    public String getClientId() {
        return this.clientId;
    }

    public String getClientSecret() {
        return this.clientSecret;
    }

    public c getCredentialSource() {
        return this.credentialSource;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k getEnvironmentProvider() {
        return this.environmentProvider;
    }

    @Override // com.google.auth.oauth2.p
    public String getQuotaProjectId() {
        return this.quotaProjectId;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials, com.google.auth.Credentials
    public void getRequestMetadata(URI uri, Executor executor, com.google.auth.a aVar) {
        super.getRequestMetadata(uri, executor, new a(aVar));
    }

    public Collection<String> getScopes() {
        return this.scopes;
    }

    public String getServiceAccountImpersonationUrl() {
        return this.serviceAccountImpersonationUrl;
    }

    public String getSubjectTokenType() {
        return this.subjectTokenType;
    }

    public String getTokenInfoUrl() {
        return this.tokenInfoUrl;
    }

    public String getTokenUrl() {
        return this.tokenUrl;
    }

    public String getWorkforcePoolUserProject() {
        return this.workforcePoolUserProject;
    }

    public boolean isWorkforcePoolConfiguration() {
        return this.workforcePoolUserProject != null && Pattern.compile("^//iam.googleapis.com/locations/.+/workforcePools/.+/providers/.+$").matcher(getAudience()).matches();
    }

    public abstract String retrieveSubjectToken() throws IOException;

    protected ExternalAccountCredentials(s5.b bVar, String str, String str2, String str3, c cVar, String str4, String str5, String str6, String str7, String str8, Collection<String> collection, k kVar) {
        s5.b bVar2 = (s5.b) com.google.common.base.j.a(bVar, OAuth2Credentials.getFromServiceLoader(s5.b.class, n.f11678e));
        this.transportFactory = bVar2;
        this.transportFactoryClassName = (String) com.google.common.base.o.s(bVar2.getClass().getName());
        this.audience = (String) com.google.common.base.o.s(str);
        this.subjectTokenType = (String) com.google.common.base.o.s(str2);
        this.tokenUrl = (String) com.google.common.base.o.s(str3);
        this.credentialSource = (c) com.google.common.base.o.s(cVar);
        this.tokenInfoUrl = str4;
        this.serviceAccountImpersonationUrl = str5;
        this.quotaProjectId = str6;
        this.clientId = str7;
        this.clientSecret = str8;
        this.scopes = (collection == null || collection.isEmpty()) ? Arrays.asList(CLOUD_PLATFORM_SCOPE) : collection;
        this.environmentProvider = kVar == null ? t.b() : kVar;
        this.workforcePoolUserProject = null;
        validateTokenUrl(str3);
        if (str5 != null) {
            validateServiceAccountImpersonationInfoUrl(str5);
        }
        this.impersonatedCredentials = initializeImpersonatedCredentials();
    }

    public static ExternalAccountCredentials fromStream(InputStream inputStream, s5.b bVar) throws IOException {
        com.google.common.base.o.s(inputStream);
        com.google.common.base.o.s(bVar);
        try {
            return fromJson((g5.b) new g5.e(n.f11679f).a(inputStream, StandardCharsets.UTF_8, g5.b.class), bVar);
        } catch (ClassCastException | IllegalArgumentException e10) {
            throw new i("An invalid input stream was provided.", e10);
        }
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials, com.google.auth.Credentials
    public Map<String, List<String>> getRequestMetadata(URI uri) throws IOException {
        return GoogleCredentials.addQuotaProjectIdToRequestMetadata(this.quotaProjectId, super.getRequestMetadata(uri));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExternalAccountCredentials(b bVar) {
        Collection<String> asList;
        s5.b bVar2 = (s5.b) com.google.common.base.j.a(bVar.f11529j, OAuth2Credentials.getFromServiceLoader(s5.b.class, n.f11678e));
        this.transportFactory = bVar2;
        this.transportFactoryClassName = (String) com.google.common.base.o.s(bVar2.getClass().getName());
        this.audience = (String) com.google.common.base.o.s(bVar.f11523d);
        this.subjectTokenType = (String) com.google.common.base.o.s(bVar.f11524e);
        String str = (String) com.google.common.base.o.s(bVar.f11525f);
        this.tokenUrl = str;
        this.credentialSource = (c) com.google.common.base.o.s(bVar.f11527h);
        this.tokenInfoUrl = bVar.f11526g;
        String str2 = bVar.f11530k;
        this.serviceAccountImpersonationUrl = str2;
        this.quotaProjectId = bVar.f11531l;
        this.clientId = bVar.f11532m;
        this.clientSecret = bVar.f11533n;
        Collection<String> collection = bVar.f11534o;
        if (collection != null && !collection.isEmpty()) {
            asList = bVar.f11534o;
        } else {
            asList = Arrays.asList(CLOUD_PLATFORM_SCOPE);
        }
        this.scopes = asList;
        k kVar = bVar.f11528i;
        this.environmentProvider = kVar == null ? t.b() : kVar;
        String str3 = bVar.f11535p;
        this.workforcePoolUserProject = str3;
        if (str3 != null && !isWorkforcePoolConfiguration()) {
            throw new IllegalArgumentException("The workforce_pool_user_project parameter should only be provided for a Workforce Pool configuration.");
        }
        validateTokenUrl(str);
        if (str2 != null) {
            validateServiceAccountImpersonationInfoUrl(str2);
        }
        this.impersonatedCredentials = initializeImpersonatedCredentials();
    }
}
