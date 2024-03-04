package com.linecorp.linesdk.api;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/linecorp/linesdk/api/LineEnvConfig;", "", "()V", "apiServerBaseUri", "", "getApiServerBaseUri", "()Ljava/lang/String;", "openIdDiscoveryDocumentUrl", "getOpenIdDiscoveryDocumentUrl", "webLoginPageUrl", "getWebLoginPageUrl", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public abstract class LineEnvConfig {
    @NotNull
    private final String apiServerBaseUri = "https://api.line.me/";
    @NotNull
    private final String openIdDiscoveryDocumentUrl = "https://access.line.me/.well-known/openid-configuration";
    @NotNull
    private final String webLoginPageUrl = "https://access.line.me/oauth2/v2.1/login";

    @NotNull
    public String getApiServerBaseUri() {
        return this.apiServerBaseUri;
    }

    @NotNull
    public String getOpenIdDiscoveryDocumentUrl() {
        return this.openIdDiscoveryDocumentUrl;
    }

    @NotNull
    public String getWebLoginPageUrl() {
        return this.webLoginPageUrl;
    }
}
