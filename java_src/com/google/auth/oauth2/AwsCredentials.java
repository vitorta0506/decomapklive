package com.google.auth.oauth2;

import com.google.auth.oauth2.ExternalAccountCredentials;
import com.google.auth.oauth2.r;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.light.utils.FileUtils;
/* loaded from: classes2.dex */
public class AwsCredentials extends ExternalAccountCredentials {
    static final String AWS_IMDSV2_SESSION_TOKEN_HEADER = "x-aws-ec2-metadata-token";
    static final String AWS_IMDSV2_SESSION_TOKEN_TTL = "300";
    static final String AWS_IMDSV2_SESSION_TOKEN_TTL_HEADER = "x-aws-ec2-metadata-token-ttl-seconds";
    private final b awsCredentialSource;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends HashMap<String, Object> {
        a() {
            put(AwsCredentials.AWS_IMDSV2_SESSION_TOKEN_TTL_HEADER, AwsCredentials.AWS_IMDSV2_SESSION_TOKEN_TTL);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends ExternalAccountCredentials.c {

        /* renamed from: a  reason: collision with root package name */
        private final String f11511a;

        /* renamed from: b  reason: collision with root package name */
        private final String f11512b;

        /* renamed from: c  reason: collision with root package name */
        private final String f11513c;

        /* renamed from: d  reason: collision with root package name */
        private final String f11514d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Map<String, Object> map) {
            super(map);
            if (map.containsKey("regional_cred_verification_url")) {
                Matcher matcher = Pattern.compile("(aws)([\\d]+)").matcher((String) map.get("environment_id"));
                if (matcher.matches()) {
                    int parseInt = Integer.parseInt(matcher.group(2));
                    if (parseInt == 1) {
                        this.f11511a = (String) map.get("region_url");
                        this.f11512b = (String) map.get("url");
                        this.f11513c = (String) map.get("regional_cred_verification_url");
                        if (map.containsKey("imdsv2_session_token_url")) {
                            this.f11514d = (String) map.get("imdsv2_session_token_url");
                            return;
                        } else {
                            this.f11514d = null;
                            return;
                        }
                    }
                    throw new IllegalArgumentException(String.format("AWS version %s is not supported in the current build.", Integer.valueOf(parseInt)));
                }
                throw new IllegalArgumentException("Invalid AWS environment ID.");
            }
            throw new IllegalArgumentException("A regional_cred_verification_url representing the GetCallerIdentity action URL must be specified.");
        }
    }

    /* loaded from: classes2.dex */
    public static class c extends ExternalAccountCredentials.b {
        c() {
        }

        @Override // com.google.auth.oauth2.ExternalAccountCredentials.b
        /* renamed from: s */
        public AwsCredentials f() {
            return new AwsCredentials(this);
        }

        c(AwsCredentials awsCredentials) {
            super(awsCredentials);
        }
    }

    AwsCredentials(c cVar) {
        super(cVar);
        this.awsCredentialSource = (b) cVar.f11527h;
    }

    private String buildSubjectToken(e eVar) throws UnsupportedEncodingException {
        Map<String, String> b10 = eVar.b();
        ArrayList arrayList = new ArrayList();
        for (String str : b10.keySet()) {
            arrayList.add(formatTokenHeaderForSts(str, b10.get(str)));
        }
        arrayList.add(formatTokenHeaderForSts("Authorization", eVar.a()));
        arrayList.add(formatTokenHeaderForSts("x-goog-cloud-target-resource", getAudience()));
        g5.b bVar = new g5.b();
        bVar.h(n.f11679f);
        bVar.put("headers", arrayList);
        bVar.put(PushConstants.MZ_PUSH_MESSAGE_METHOD, eVar.c());
        bVar.put("url", this.awsCredentialSource.f11513c.replace("{region}", eVar.d()));
        return URLEncoder.encode(bVar.toString(), "UTF-8");
    }

    private static g5.b formatTokenHeaderForSts(String str, String str2) {
        g5.b bVar = new g5.b();
        bVar.h(n.f11679f);
        bVar.put("key", str);
        bVar.put("value", str2);
        return bVar;
    }

    public static c newBuilder() {
        return new c();
    }

    private String retrieveResource(String str, String str2, Map<String, Object> map) throws IOException {
        return retrieveResource(str, str2, "GET", map, null);
    }

    Map<String, Object> createMetadataRequestHeaders(b bVar) throws IOException {
        HashMap hashMap = new HashMap();
        if (bVar.f11514d != null) {
            hashMap.put(AWS_IMDSV2_SESSION_TOKEN_HEADER, retrieveResource(bVar.f11514d, "Session Token", "PUT", new a(), null));
        }
        return hashMap;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public GoogleCredentials createScoped(Collection<String> collection) {
        return new AwsCredentials((c) newBuilder(this).m(collection));
    }

    String getAwsRegion(Map<String, Object> map) throws IOException {
        String a10 = getEnvironmentProvider().a("AWS_REGION");
        if (a10 != null) {
            return a10;
        }
        String a11 = getEnvironmentProvider().a("AWS_DEFAULT_REGION");
        if (a11 != null) {
            return a11;
        }
        if (this.awsCredentialSource.f11511a != null && !this.awsCredentialSource.f11511a.isEmpty()) {
            String retrieveResource = retrieveResource(this.awsCredentialSource.f11511a, "region", map);
            return retrieveResource.substring(0, retrieveResource.length() - 1);
        }
        throw new IOException("Unable to determine the AWS region. The credential source does not contain the region URL.");
    }

    g getAwsSecurityCredentials(Map<String, Object> map) throws IOException {
        String a10 = getEnvironmentProvider().a("AWS_ACCESS_KEY_ID");
        String a11 = getEnvironmentProvider().a("AWS_SECRET_ACCESS_KEY");
        String a12 = getEnvironmentProvider().a("AWS_SESSION_TOKEN");
        if (a10 != null && a11 != null) {
            return new g(a10, a11, a12);
        }
        if (this.awsCredentialSource.f11512b != null && !this.awsCredentialSource.f11512b.isEmpty()) {
            String retrieveResource = retrieveResource(this.awsCredentialSource.f11512b, "IAM role", map);
            g5.b bVar = (g5.b) n.f11679f.e(retrieveResource(this.awsCredentialSource.f11512b + FileUtils.RES_PREFIX_STORAGE + retrieveResource, "credentials", map)).K(g5.b.class);
            return new g((String) bVar.get("AccessKeyId"), (String) bVar.get("SecretAccessKey"), (String) bVar.get("Token"));
        }
        throw new IOException("Unable to determine the AWS IAM role name. The credential source does not contain the url field.");
    }

    String getEnv(String str) {
        return System.getenv(str);
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
        Map<String, Object> createMetadataRequestHeaders = createMetadataRequestHeaders(this.awsCredentialSource);
        String awsRegion = getAwsRegion(createMetadataRequestHeaders);
        g awsSecurityCredentials = getAwsSecurityCredentials(createMetadataRequestHeaders);
        HashMap hashMap = new HashMap();
        hashMap.put("x-goog-cloud-target-resource", getAudience());
        return buildSubjectToken(f.g(awsSecurityCredentials, "POST", this.awsCredentialSource.f11513c.replace("{region}", awsRegion), awsRegion).b(hashMap).a().h());
    }

    public static c newBuilder(AwsCredentials awsCredentials) {
        return new c(awsCredentials);
    }

    private String retrieveResource(String str, String str2, String str3, Map<String, Object> map, com.google.api.client.http.f fVar) throws IOException {
        try {
            com.google.api.client.http.m c10 = this.transportFactory.a().c().c(str3, new com.google.api.client.http.d(str), fVar);
            com.google.api.client.http.j e10 = c10.e();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                e10.e(entry.getKey(), entry.getValue());
            }
            return c10.b().l();
        } catch (IOException e11) {
            throw new IOException(String.format("Failed to retrieve AWS %s.", str2), e11);
        }
    }
}
