package com.google.auth.oauth2;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.share.internal.ShareInternalUtility;
import com.google.auth.oauth2.ExternalAccountCredentials;
import com.google.auth.oauth2.r;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public class IdentityPoolCredentials extends ExternalAccountCredentials {
    private final b identityPoolCredentialSource;

    /* loaded from: classes2.dex */
    public static class a extends ExternalAccountCredentials.b {
        a() {
        }

        @Override // com.google.auth.oauth2.ExternalAccountCredentials.b
        /* renamed from: s */
        public IdentityPoolCredentials f() {
            return new IdentityPoolCredentials(this);
        }

        @Override // com.google.auth.oauth2.ExternalAccountCredentials.b
        /* renamed from: t */
        public a r(String str) {
            super.r(str);
            return this;
        }

        a(IdentityPoolCredentials identityPoolCredentials) {
            super(identityPoolCredentials);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends ExternalAccountCredentials.c {

        /* renamed from: a  reason: collision with root package name */
        private EnumC0096b f11539a;

        /* renamed from: b  reason: collision with root package name */
        private a f11540b;

        /* renamed from: c  reason: collision with root package name */
        private String f11541c;

        /* renamed from: d  reason: collision with root package name */
        private String f11542d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f11543e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public enum a {
            TEXT,
            JSON
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.auth.oauth2.IdentityPoolCredentials$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public enum EnumC0096b {
            FILE,
            URL
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Map<String, Object> map) {
            super(map);
            if (map.containsKey(ShareInternalUtility.STAGING_PARAM) && map.containsKey("url")) {
                throw new IllegalArgumentException("Only one credential source type can be set, either file or url.");
            }
            if (map.containsKey(ShareInternalUtility.STAGING_PARAM)) {
                this.f11541c = (String) map.get(ShareInternalUtility.STAGING_PARAM);
                this.f11539a = EnumC0096b.FILE;
            } else if (map.containsKey("url")) {
                this.f11541c = (String) map.get("url");
                this.f11539a = EnumC0096b.URL;
            } else {
                throw new IllegalArgumentException("Missing credential source file location or URL. At least one must be specified.");
            }
            Map map2 = (Map) map.get("headers");
            if (map2 != null && !map2.isEmpty()) {
                HashMap hashMap = new HashMap();
                this.f11543e = hashMap;
                hashMap.putAll(map2);
            }
            a aVar = a.TEXT;
            this.f11540b = aVar;
            Map map3 = (Map) map.get("format");
            if (map3 == null || !map3.containsKey("type")) {
                return;
            }
            String str = (String) map3.get("type");
            if (str != null && "json".equals(str.toLowerCase(Locale.US))) {
                if (map3.containsKey("subject_token_field_name")) {
                    this.f11540b = a.JSON;
                    this.f11542d = (String) map3.get("subject_token_field_name");
                    return;
                }
                throw new IllegalArgumentException("When specifying a JSON credential type, the subject_token_field_name must be set.");
            } else if (str != null && ViewHierarchyConstants.TEXT_KEY.equals(str.toLowerCase(Locale.US))) {
                this.f11540b = aVar;
            } else {
                throw new IllegalArgumentException(String.format("Invalid credential source format type: %s.", str));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean g() {
            Map<String, String> map = this.f11543e;
            return (map == null || map.isEmpty()) ? false : true;
        }
    }

    IdentityPoolCredentials(a aVar) {
        super(aVar);
        this.identityPoolCredentialSource = (b) aVar.f11527h;
    }

    private String getSubjectTokenFromMetadataServer() throws IOException {
        com.google.api.client.http.m a10 = this.transportFactory.a().c().a(new com.google.api.client.http.d(this.identityPoolCredentialSource.f11541c));
        a10.r(new g5.e(n.f11679f));
        if (this.identityPoolCredentialSource.g()) {
            com.google.api.client.http.j jVar = new com.google.api.client.http.j();
            jVar.putAll(this.identityPoolCredentialSource.f11543e);
            a10.p(jVar);
        }
        try {
            return parseToken(a10.b().b());
        } catch (IOException e10) {
            throw new IOException(String.format("Error getting subject token from metadata server: %s", e10.getMessage()), e10);
        }
    }

    public static a newBuilder() {
        return new a();
    }

    private String parseToken(InputStream inputStream) throws IOException {
        if (this.identityPoolCredentialSource.f11540b == b.a.TEXT) {
            return com.google.common.io.e.f(new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8)));
        }
        g5.b bVar = (g5.b) new g5.e(n.f11679f).a(inputStream, StandardCharsets.UTF_8, g5.b.class);
        if (bVar.containsKey(this.identityPoolCredentialSource.f11542d)) {
            return (String) bVar.get(this.identityPoolCredentialSource.f11542d);
        }
        throw new IOException("Invalid subject token field name. No subject token was found.");
    }

    private String retrieveSubjectTokenFromCredentialFile() throws IOException {
        String str = this.identityPoolCredentialSource.f11541c;
        if (Files.exists(Paths.get(str, new String[0]), LinkOption.NOFOLLOW_LINKS)) {
            try {
                return parseToken(new FileInputStream(new File(str)));
            } catch (IOException e10) {
                throw new IOException("Error when attempting to read the subject token from the credential file.", e10);
            }
        }
        throw new IOException(String.format("Invalid credential location. The file at %s does not exist.", str));
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public /* bridge */ /* synthetic */ GoogleCredentials createScoped(Collection collection) {
        return createScoped((Collection<String>) collection);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public AccessToken refreshAccessToken() throws IOException {
        r.b b10 = r.n(retrieveSubjectToken(), getSubjectTokenType()).b(getAudience());
        Collection<String> scopes = getScopes();
        if (scopes != null && !scopes.isEmpty()) {
            b10.d(new ArrayList(scopes));
        }
        return exchangeExternalCredentialForAccessToken(b10.a());
    }

    @Override // com.google.auth.oauth2.ExternalAccountCredentials
    public String retrieveSubjectToken() throws IOException {
        if (this.identityPoolCredentialSource.f11539a == b.EnumC0096b.FILE) {
            return retrieveSubjectTokenFromCredentialFile();
        }
        return getSubjectTokenFromMetadataServer();
    }

    public static a newBuilder(IdentityPoolCredentials identityPoolCredentials) {
        return new a(identityPoolCredentials);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public IdentityPoolCredentials createScoped(Collection<String> collection) {
        return new IdentityPoolCredentials((a) newBuilder(this).m(collection));
    }
}
