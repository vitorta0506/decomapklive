package com.vk.api.sdk.okhttp;

import android.content.Context;
import com.vk.api.sdk.VKApiConfig;
import com.vk.api.sdk.VKOkHttpProvider;
import com.vk.api.sdk.internal.Validation;
import com.vk.api.sdk.utils.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010)\u001a\u00020\u0006H\u0016R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\bR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0011\u0010#\u001a\u00020$8F¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0013\u0010'\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b(\u0010\b¨\u0006*"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "", "apiConfig", "Lcom/vk/api/sdk/VKApiConfig;", "(Lcom/vk/api/sdk/VKApiConfig;)V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "appId", "", "getAppId", "()I", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "customEndpoint", "getCustomEndpoint", "hostProvider", "Lkotlin/Function0;", "getHostProvider", "()Lkotlin/jvm/functions/Function0;", "logFilterCredentials", "", "getLogFilterCredentials", "()Z", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "getLogger", "()Lcom/vk/api/sdk/utils/log/Logger;", "loggingPrefixer", "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;", "getLoggingPrefixer", "()Lcom/vk/api/sdk/okhttp/LoggingPrefixer;", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "secret", "getSecret", "toString", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class OkHttpExecutorConfig {
    @NotNull
    private final VKApiConfig apiConfig;

    public OkHttpExecutorConfig(@NotNull VKApiConfig apiConfig) {
        Intrinsics.checkNotNullParameter(apiConfig, "apiConfig");
        this.apiConfig = apiConfig;
        Validation validation = Validation.INSTANCE;
        validation.assertContextValid(getContext());
        validation.assertAccessTokenValid(getAccessToken());
    }

    @NotNull
    public final String getAccessToken() {
        return this.apiConfig.getAccessToken$core_release().getValue();
    }

    public final int getAppId() {
        return this.apiConfig.getAppId();
    }

    @NotNull
    public final Context getContext() {
        return this.apiConfig.getContext();
    }

    @NotNull
    public final String getCustomEndpoint() {
        return this.apiConfig.getCustomApiEndpoint().getValue();
    }

    @NotNull
    public final Function0<String> getHostProvider() {
        return this.apiConfig.getHttpApiHostProvider();
    }

    public final boolean getLogFilterCredentials() {
        return this.apiConfig.getLogFilterCredentials();
    }

    @NotNull
    public final Logger getLogger() {
        return this.apiConfig.getLogger();
    }

    @NotNull
    public final LoggingPrefixer getLoggingPrefixer() {
        return this.apiConfig.getLoggingPrefixer();
    }

    @NotNull
    public final VKOkHttpProvider getOkHttpProvider() {
        return this.apiConfig.getOkHttpProvider();
    }

    @Nullable
    public final String getSecret() {
        return this.apiConfig.getSecret$core_release().getValue();
    }

    @NotNull
    public String toString() {
        return "OkHttpExecutorConfig(host='" + getHostProvider().invoke() + "', accessToken='" + getAccessToken() + "', secret='" + ((Object) getSecret()) + "', logFilterCredentials=" + getLogFilterCredentials() + ')';
    }
}
