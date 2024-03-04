package com.google.auth.oauth2;

import com.google.api.client.util.GenericData;
import com.google.auth.ServiceAccountSigner$SigningException;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.auth.oauth2.IdTokenProvider;
import com.google.common.collect.ImmutableSet;
import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public class ComputeEngineCredentials extends GoogleCredentials implements IdTokenProvider {
    static final int COMPUTE_PING_CONNECTION_TIMEOUT_MS = 500;
    static final String DEFAULT_METADATA_SERVER_URL = "http://metadata.google.internal";
    private static final String GOOGLE = "Google";
    static final int MAX_COMPUTE_PING_TRIES = 3;
    private static final String METADATA_FLAVOR = "Metadata-Flavor";
    private static final String PARSE_ERROR_ACCOUNT = "Error parsing service account response. ";
    private static final String PARSE_ERROR_PREFIX = "Error parsing token refresh response. ";
    static final String SIGN_BLOB_URL_FORMAT = "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:signBlob";
    private static final long serialVersionUID = -4113476462526554235L;
    private final Collection<String> scopes;
    private transient String serviceAccountEmail;
    private transient s5.b transportFactory;
    private final String transportFactoryClassName;
    static final Duration COMPUTE_EXPIRATION_MARGIN = Duration.ofMinutes(3);
    static final Duration COMPUTE_REFRESH_MARGIN = Duration.ofMinutes(4);
    private static final Logger LOGGER = Logger.getLogger(ComputeEngineCredentials.class.getName());

    /* loaded from: classes2.dex */
    public static class b extends GoogleCredentials.a {

        /* renamed from: d  reason: collision with root package name */
        private s5.b f11516d;

        /* renamed from: e  reason: collision with root package name */
        private Collection<String> f11517e;

        protected b() {
        }

        @Override // com.google.auth.oauth2.GoogleCredentials.a
        /* renamed from: f */
        public ComputeEngineCredentials d() {
            return new ComputeEngineCredentials(this.f11516d, this.f11517e, null);
        }

        public b g(s5.b bVar) {
            this.f11516d = bVar;
            return this;
        }

        protected b(ComputeEngineCredentials computeEngineCredentials) {
            this.f11516d = computeEngineCredentials.transportFactory;
            this.f11517e = computeEngineCredentials.scopes;
        }
    }

    public static ComputeEngineCredentials create() {
        return new ComputeEngineCredentials(null, null, null);
    }

    private String getDefaultServiceAccount() throws IOException {
        com.google.api.client.http.p metadataResponse = getMetadataResponse(getServiceAccountsUrl());
        int f10 = metadataResponse.f();
        if (f10 != 404) {
            if (f10 == 200) {
                if (metadataResponse.b() != null) {
                    return n.e(n.d((GenericData) metadataResponse.k(GenericData.class), V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND, PARSE_ERROR_ACCOUNT), "email", PARSE_ERROR_ACCOUNT);
                }
                throw new IOException("Empty content from metadata token server request.");
            }
            throw new IOException(String.format("Unexpected Error code %s trying to get service accounts from Compute Engine metadata: %s", Integer.valueOf(f10), metadataResponse.l()));
        }
        throw new IOException(String.format("Error code %s trying to get service accounts from Compute Engine metadata. This may be because the virtual machine instance does not have permission scopes specified.", Integer.valueOf(f10)));
    }

    public static String getIdentityDocumentUrl() {
        return getMetadataServerUrl(j.f11664d) + "/computeMetadata/v1/instance/service-accounts/default/identity";
    }

    private com.google.api.client.http.p getMetadataResponse(String str) throws IOException {
        com.google.api.client.http.m a10 = this.transportFactory.a().c().a(new com.google.api.client.http.d(str));
        a10.r(new g5.e(n.f11679f));
        a10.e().e(METADATA_FLAVOR, GOOGLE);
        a10.t(false);
        try {
            return a10.b();
        } catch (UnknownHostException e10) {
            throw new IOException("ComputeEngineCredentials cannot find the metadata server. This is likely because code is not running on Google Compute Engine.", e10);
        }
    }

    public static String getMetadataServerUrl(j jVar) {
        String d10 = jVar.d("GCE_METADATA_HOST");
        if (d10 != null) {
            return "http://" + d10;
        }
        return DEFAULT_METADATA_SERVER_URL;
    }

    public static String getServiceAccountsUrl() {
        return getMetadataServerUrl(j.f11664d) + "/computeMetadata/v1/instance/service-accounts/?recursive=true";
    }

    public static String getTokenServerEncodedUrl(j jVar) {
        return getMetadataServerUrl(jVar) + "/computeMetadata/v1/instance/service-accounts/default/token";
    }

    public static b newBuilder() {
        return new b();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.transportFactory = (s5.b) OAuth2Credentials.newInstance(this.transportFactoryClassName);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean runningOnComputeEngine(s5.b bVar, j jVar) {
        if (Boolean.parseBoolean(jVar.d("NO_GCE_CHECK"))) {
            return false;
        }
        com.google.api.client.http.d dVar = new com.google.api.client.http.d(getMetadataServerUrl(jVar));
        for (int i9 = 1; i9 <= 3; i9++) {
            try {
                com.google.api.client.http.m a10 = bVar.a().c().a(dVar);
                a10.n(500);
                a10.e().e(METADATA_FLAVOR, GOOGLE);
                com.google.api.client.http.p b10 = a10.b();
                try {
                    return n.a(b10.d(), METADATA_FLAVOR, GOOGLE);
                } finally {
                    b10.a();
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException e10) {
                LOGGER.log(Level.FINE, "Encountered an unexpected exception when determining if we are running on Google Compute Engine.", (Throwable) e10);
            }
        }
        LOGGER.log(Level.FINE, "Failed to detect whether we are running on Google Compute Engine.");
        return false;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createScoped(Collection<String> collection) {
        return new ComputeEngineCredentials(this.transportFactory, collection, null);
    }

    String createTokenUrlWithScopes() {
        com.google.api.client.http.d dVar = new com.google.api.client.http.d(getTokenServerEncodedUrl());
        if (!this.scopes.isEmpty()) {
            dVar.e("scopes", com.google.common.base.i.g(',').d(this.scopes));
        }
        return dVar.toString();
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public boolean equals(Object obj) {
        if (obj instanceof ComputeEngineCredentials) {
            ComputeEngineCredentials computeEngineCredentials = (ComputeEngineCredentials) obj;
            return Objects.equals(this.transportFactoryClassName, computeEngineCredentials.transportFactoryClassName) && Objects.equals(this.scopes, computeEngineCredentials.scopes);
        }
        return false;
    }

    public String getAccount() {
        if (this.serviceAccountEmail == null) {
            try {
                this.serviceAccountEmail = getDefaultServiceAccount();
            } catch (IOException e10) {
                throw new RuntimeException("Failed to get service account", e10);
            }
        }
        return this.serviceAccountEmail;
    }

    public final Collection<String> getScopes() {
        return this.scopes;
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public int hashCode() {
        return Objects.hash(this.transportFactoryClassName);
    }

    @Override // com.google.auth.oauth2.IdTokenProvider
    public IdToken idTokenWithAudience(String str, List<IdTokenProvider.Option> list) throws IOException {
        com.google.api.client.http.d dVar = new com.google.api.client.http.d(getIdentityDocumentUrl());
        if (list != null) {
            if (list.contains(IdTokenProvider.Option.FORMAT_FULL)) {
                dVar.e("format", "full");
            }
            if (list.contains(IdTokenProvider.Option.LICENSES_TRUE)) {
                dVar.e("format", "full");
                dVar.e("license", "TRUE");
            }
        }
        dVar.e("audience", str);
        com.google.api.client.http.p metadataResponse = getMetadataResponse(dVar.toString());
        if (metadataResponse.b() != null) {
            return IdToken.create(metadataResponse.l());
        }
        throw new IOException("Empty content from metadata token server request.");
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        com.google.api.client.http.p metadataResponse = getMetadataResponse(createTokenUrlWithScopes());
        int f10 = metadataResponse.f();
        if (f10 != 404) {
            if (f10 == 200) {
                if (metadataResponse.b() != null) {
                    GenericData genericData = (GenericData) metadataResponse.k(GenericData.class);
                    return new AccessToken(n.e(genericData, "access_token", PARSE_ERROR_PREFIX), new Date(this.clock.a() + (n.b(genericData, com.facebook.AccessToken.EXPIRES_IN_KEY, PARSE_ERROR_PREFIX) * 1000)));
                }
                throw new IOException("Empty content from metadata token server request.");
            }
            throw new IOException(String.format("Unexpected Error code %s trying to get security access token from Compute Engine metadata for the default service account: %s", Integer.valueOf(f10), metadataResponse.l()));
        }
        throw new IOException(String.format("Error code %s trying to get security access token from Compute Engine metadata for the default service account. This may be because the virtual machine instance does not have permission scopes specified. It is possible to skip checking for Compute Engine metadata by specifying the environment  variable NO_GCE_CHECK=true.", Integer.valueOf(f10)));
    }

    public byte[] sign(byte[] bArr) {
        try {
            return m.c(getAccount(), this, this.transportFactory.a(), bArr, Collections.emptyMap());
        } catch (ServiceAccountSigner$SigningException e10) {
            throw e10;
        } catch (RuntimeException e11) {
            throw new ServiceAccountSigner$SigningException("Signing failed", e11);
        }
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public String toString() {
        return com.google.common.base.j.c(this).d("transportFactoryClassName", this.transportFactoryClassName).toString();
    }

    private ComputeEngineCredentials(s5.b bVar, Collection<String> collection, Collection<String> collection2) {
        super(null, COMPUTE_REFRESH_MARGIN, COMPUTE_EXPIRATION_MARGIN);
        s5.b bVar2 = (s5.b) com.google.common.base.j.a(bVar, OAuth2Credentials.getFromServiceLoader(s5.b.class, n.f11678e));
        this.transportFactory = bVar2;
        this.transportFactoryClassName = bVar2.getClass().getName();
        collection = (collection == null || collection.isEmpty()) ? collection2 : collection;
        if (collection == null) {
            this.scopes = ImmutableSet.of();
            return;
        }
        ArrayList arrayList = new ArrayList(collection);
        arrayList.removeAll(Arrays.asList("", null));
        this.scopes = ImmutableSet.copyOf((Collection) arrayList);
    }

    public static String getTokenServerEncodedUrl() {
        return getTokenServerEncodedUrl(j.f11664d);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createScoped(Collection<String> collection, Collection<String> collection2) {
        return new ComputeEngineCredentials(this.transportFactory, collection, collection2);
    }

    public static String getMetadataServerUrl() {
        return getMetadataServerUrl(j.f11664d);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public b toBuilder() {
        return new b(this);
    }
}
