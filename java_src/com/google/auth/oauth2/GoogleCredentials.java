package com.google.auth.oauth2;

import com.google.api.client.util.z;
import com.google.auth.oauth2.OAuth2Credentials;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class GoogleCredentials extends OAuth2Credentials {
    static final String QUOTA_PROJECT_ID_HEADER_KEY = "x-goog-user-project";
    static final String SERVICE_ACCOUNT_FILE_TYPE = "service_account";
    static final String USER_FILE_TYPE = "authorized_user";
    private static final j defaultCredentialsProvider = new j();
    private static final long serialVersionUID = -1522852442442473691L;

    /* loaded from: classes2.dex */
    public static class a extends OAuth2Credentials.d {
        /* JADX INFO: Access modifiers changed from: protected */
        public a() {
        }

        @Override // com.google.auth.oauth2.OAuth2Credentials.d
        /* renamed from: d */
        public GoogleCredentials a() {
            return new GoogleCredentials(b());
        }

        @Override // com.google.auth.oauth2.OAuth2Credentials.d
        /* renamed from: e */
        public a c(AccessToken accessToken) {
            super.c(accessToken);
            return this;
        }

        protected a(GoogleCredentials googleCredentials) {
            c(googleCredentials.getAccessToken());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GoogleCredentials() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, List<String>> addQuotaProjectIdToRequestMetadata(String str, Map<String, List<String>> map) {
        z.d(map);
        HashMap hashMap = new HashMap(map);
        if (str != null && !map.containsKey(QUOTA_PROJECT_ID_HEADER_KEY)) {
            hashMap.put(QUOTA_PROJECT_ID_HEADER_KEY, Collections.singletonList(str));
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public static GoogleCredentials create(AccessToken accessToken) {
        return newBuilder().c(accessToken).a();
    }

    public static GoogleCredentials fromStream(InputStream inputStream) throws IOException {
        return fromStream(inputStream, n.f11678e);
    }

    public static GoogleCredentials getApplicationDefault() throws IOException {
        return getApplicationDefault(n.f11678e);
    }

    public static a newBuilder() {
        return new a();
    }

    public GoogleCredentials createDelegated(String str) {
        return this;
    }

    public GoogleCredentials createScoped(Collection<String> collection) {
        return this;
    }

    public GoogleCredentials createScoped(Collection<String> collection, Collection<String> collection2) {
        return this;
    }

    public GoogleCredentials createScoped(String... strArr) {
        return createScoped(ImmutableList.copyOf(strArr));
    }

    public boolean createScopedRequired() {
        return false;
    }

    public GoogleCredentials createWithCustomRetryStrategy(boolean z10) {
        return this;
    }

    public GoogleCredentials(AccessToken accessToken) {
        super(accessToken);
    }

    public static GoogleCredentials fromStream(InputStream inputStream, s5.b bVar) throws IOException {
        z.d(inputStream);
        z.d(bVar);
        g5.b bVar2 = (g5.b) new g5.e(n.f11679f).a(inputStream, StandardCharsets.UTF_8, g5.b.class);
        String str = (String) bVar2.get("type");
        if (str != null) {
            if (USER_FILE_TYPE.equals(str)) {
                return UserCredentials.fromJson(bVar2, bVar);
            }
            if (SERVICE_ACCOUNT_FILE_TYPE.equals(str)) {
                return ServiceAccountCredentials.fromJson(bVar2, bVar);
            }
            if ("external_account".equals(str)) {
                return ExternalAccountCredentials.fromJson(bVar2, bVar);
            }
            if ("impersonated_service_account".equals(str)) {
                return ImpersonatedCredentials.fromJson(bVar2, bVar);
            }
            throw new IOException(String.format("Error reading credentials from stream, 'type' value '%s' not recognized. Expecting '%s' or '%s'.", str, USER_FILE_TYPE, SERVICE_ACCOUNT_FILE_TYPE));
        }
        throw new IOException("Error reading credentials from stream, 'type' field not specified.");
    }

    public static GoogleCredentials getApplicationDefault(s5.b bVar) throws IOException {
        z.d(bVar);
        return defaultCredentialsProvider.b(bVar);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public a toBuilder() {
        return new a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GoogleCredentials(AccessToken accessToken, Duration duration, Duration duration2) {
        super(accessToken, duration, duration2);
    }
}
