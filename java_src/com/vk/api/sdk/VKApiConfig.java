package com.vk.api.sdk;

import android.content.Context;
import com.vk.api.sdk.auth.VKAccessTokenProvider;
import com.vk.api.sdk.exceptions.VKApiCodes;
import com.vk.api.sdk.okhttp.LoggingPrefixer;
import com.vk.api.sdk.utils.ApiMethodPriorityBackoff;
import com.vk.api.sdk.utils.log.Logger;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0018\u0002\n\u0002\b#\b\u0086\b\u0018\u0000 v2\u00020\u0001:\u0002uvB»\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\f\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u000b\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u001c\u0012\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u001f\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\b\b\u0002\u0010!\u001a\u00020\"\u0012\b\b\u0002\u0010#\u001a\u00020$\u0012\u0010\b\u0002\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b\u0012\u0010\b\u0002\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u000b\u0012\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000b¢\u0006\u0002\u0010*J\u0006\u0010S\u001a\u00020TJ\u000e\u0010U\u001a\u00020T2\u0006\u0010\u0002\u001a\u00020\u0003J\t\u0010V\u001a\u00020\u0003HÆ\u0003J\u0014\u0010W\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÀ\u0003¢\u0006\u0002\bXJ\u0016\u0010Y\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bHÀ\u0003¢\u0006\u0002\bZJ\t\u0010[\u001a\u00020\fHÆ\u0003J\t\u0010\\\u001a\u00020\u0018HÆ\u0003J\u000f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00180\u000bHÆ\u0003J\t\u0010^\u001a\u00020\u0005HÆ\u0003J\u000f\u0010_\u001a\b\u0012\u0004\u0012\u00020\f0\u001cHÆ\u0003J\u000f\u0010`\u001a\b\u0012\u0004\u0012\u00020\f0\u001cHÆ\u0003J\t\u0010a\u001a\u00020\u001fHÆ\u0003J\u000f\u0010b\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\t\u0010c\u001a\u00020\u0005HÆ\u0003J\t\u0010d\u001a\u00020\"HÆ\u0003J\t\u0010e\u001a\u00020$HÆ\u0003J\u0011\u0010f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bHÆ\u0003J\u0011\u0010g\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u000bHÆ\u0003J\u0011\u0010h\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000bHÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000f\u0010k\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\t\u0010l\u001a\u00020\fHÆ\u0003J\t\u0010m\u001a\u00020\u000fHÆ\u0003J\t\u0010n\u001a\u00020\u0011HÆ\u0003J\t\u0010o\u001a\u00020\u0013HÆ\u0003JÁ\u0002\u0010p\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u00052\u000e\b\u0002\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u001c2\u000e\b\u0002\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\u0010\b\u0002\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\u0010\b\u0002\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u000b2\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000bHÆ\u0001J\u0013\u0010q\u001a\u00020\u00182\b\u0010r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010s\u001a\u00020\u0005HÖ\u0001J\t\u0010t\u001a\u00020\fHÖ\u0001R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0019\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u000b¢\u0006\b\n\u0000\u001a\u0004\b-\u0010,R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0011\u0010#\u001a\u00020$¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0011\u0010\u001a\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b4\u00103R\u0011\u0010\u0016\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b9\u0010,R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u000b¢\u0006\b\n\u0000\u001a\u0004\b:\u0010,R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b;\u0010,R\u0019\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b<\u0010,R\u0017\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\f0\u001c¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u0011\u0010\u001e\u001a\u00020\u001f¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u0011\u0010A\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bB\u00106R\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\f0\u001c¢\u0006\b\n\u0000\u001a\u0004\bC\u0010>R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\bH\u0010IR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\bJ\u0010KR\u0011\u0010!\u001a\u00020\"¢\u0006\b\n\u0000\u001a\u0004\bL\u0010MR\u0019\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\bN\u0010,R\u001c\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bO\u0010,R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\bP\u0010QR\u0011\u0010\r\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\bR\u00106¨\u0006w"}, d2 = {"Lcom/vk/api/sdk/VKApiConfig;", "", "context", "Landroid/content/Context;", "appId", "", "validationHandler", "Lcom/vk/api/sdk/VKApiValidationHandler;", "apiCallListener", "Lcom/vk/api/sdk/VKApiCallListener;", "deviceId", "Lkotlin/Lazy;", "", "version", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "loggingPrefixer", "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;", "accessToken", "secret", "clientSecret", "logFilterCredentials", "", "debugCycleCalls", "callsPerSecondLimit", "httpApiHostProvider", "Lkotlin/Function0;", "langProvider", "keyValueStorage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "customApiEndpoint", "rateLimitBackoffTimeoutMs", "", "apiMethodPriorityBackoff", "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "externalDeviceId", "anonymousTokenProvider", "Lcom/vk/api/sdk/auth/VKAccessTokenProvider;", "responseValidator", "Lcom/vk/api/sdk/VKApiResponseValidator;", "(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V", "getAccessToken$core_release", "()Lkotlin/Lazy;", "getAnonymousTokenProvider", "getApiCallListener", "()Lcom/vk/api/sdk/VKApiCallListener;", "getApiMethodPriorityBackoff", "()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "getAppId", "()I", "getCallsPerSecondLimit", "getClientSecret", "()Ljava/lang/String;", "getContext", "()Landroid/content/Context;", "getCustomApiEndpoint", "getDebugCycleCalls", "getDeviceId", "getExternalDeviceId", "getHttpApiHostProvider", "()Lkotlin/jvm/functions/Function0;", "getKeyValueStorage", "()Lcom/vk/api/sdk/VKKeyValueStorage;", VKApiCodes.PARAM_LANG, "getLang", "getLangProvider", "getLogFilterCredentials", "()Z", "getLogger", "()Lcom/vk/api/sdk/utils/log/Logger;", "getLoggingPrefixer", "()Lcom/vk/api/sdk/okhttp/LoggingPrefixer;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "getRateLimitBackoffTimeoutMs", "()J", "getResponseValidator", "getSecret$core_release", "getValidationHandler", "()Lcom/vk/api/sdk/VKApiValidationHandler;", "getVersion", "buildUpon", "Lcom/vk/api/sdk/VKApiConfig$Builder;", "builder", "component1", "component10", "component10$core_release", "component11", "component11$core_release", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "Builder", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKApiConfig {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String DEFAULT_API_DOMAIN = "api.vk.com";
    @NotNull
    public static final String DEFAULT_API_ENDPOINT = "https://api.vk.com/method";
    @NotNull
    public static final String DEFAULT_API_VERSION = "5.131";
    @NotNull
    public static final String DEFAULT_DOMAIN = "vk.com";
    @NotNull
    public static final String DEFAULT_LANGUAGE = "en";
    @NotNull
    public static final String DEFAULT_OAUTH_DOMAIN = "oauth.vk.com";
    @NotNull
    public static final String DEFAULT_STATIC_DOMAIN = "static.vk.com";
    @NotNull
    private final Lazy<String> accessToken;
    @NotNull
    private final Lazy<VKAccessTokenProvider> anonymousTokenProvider;
    @Nullable
    private final VKApiCallListener apiCallListener;
    @NotNull
    private final ApiMethodPriorityBackoff apiMethodPriorityBackoff;
    private final int appId;
    private final int callsPerSecondLimit;
    @NotNull
    private final String clientSecret;
    @NotNull
    private final Context context;
    @NotNull
    private final Lazy<String> customApiEndpoint;
    @NotNull
    private final Lazy<Boolean> debugCycleCalls;
    @NotNull
    private final Lazy<String> deviceId;
    @NotNull
    private final Lazy<String> externalDeviceId;
    @NotNull
    private final Function0<String> httpApiHostProvider;
    @NotNull
    private final VKKeyValueStorage keyValueStorage;
    @NotNull
    private final Function0<String> langProvider;
    private final boolean logFilterCredentials;
    @NotNull
    private final Logger logger;
    @NotNull
    private final LoggingPrefixer loggingPrefixer;
    @NotNull
    private final VKOkHttpProvider okHttpProvider;
    private final long rateLimitBackoffTimeoutMs;
    @Nullable
    private final Lazy<VKApiResponseValidator> responseValidator;
    @NotNull
    private final Lazy<String> secret;
    @Nullable
    private final VKApiValidationHandler validationHandler;
    @NotNull
    private final String version;

    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0003J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0010J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\bJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\bJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\bJ\u0010\u0010\u001f\u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010\bJ\u0014\u0010!\u001a\u00020\u00002\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\b0#J\u0014\u0010$\u001a\u00020\u00002\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\b0#J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010'\u001a\u00020\u001cJ\u000e\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010/\u001a\u000200J\u0010\u00101\u001a\u00020\u00002\b\u00102\u001a\u0004\u0018\u000103R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/vk/api/sdk/VKApiConfig$Builder;", "", "config", "Lcom/vk/api/sdk/VKApiConfig;", "(Lcom/vk/api/sdk/VKApiConfig;)V", "build", "setAccessToken", "accessToken", "", "setAnonymousTokenProvider", "provider", "Lcom/vk/api/sdk/auth/VKAccessTokenProvider;", "setApiVersion", "version", "setAppId", "id", "", "setCallsPerSecondLimit", "limit", "setClientSecret", "clientSecret", "setCustomApiEndpoint", "endpoint", "setCustomValueStorage", "storage", "Lcom/vk/api/sdk/VKKeyValueStorage;", "setDebugCycleCalls", "debugCycleCalls", "", "setDeviceID", "deviceId", "setExternalDeviceID", "externalDeviceId", "setHttpApiHostProvider", "hostProvider", "Lkotlin/Function0;", "setLangProvider", "langProvider", "setLogFilterCredentials", "filter", "setLogger", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "setOkHttpProvider", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "setRateLimitBackoff", "rateLimitBackoffTimeoutMs", "", "setValidationHandler", "vkApiValidationHandler", "Lcom/vk/api/sdk/VKApiValidationHandler;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder {
        @NotNull
        private VKApiConfig config;

        public Builder(@NotNull VKApiConfig config) {
            Intrinsics.checkNotNullParameter(config, "config");
            this.config = config;
        }

        @NotNull
        public final VKApiConfig build() {
            return this.config;
        }

        @NotNull
        public final Builder setAccessToken(@NotNull final String accessToken) {
            Lazy lazy;
            Intrinsics.checkNotNullParameter(accessToken, "accessToken");
            VKApiConfig vKApiConfig = this.config;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.vk.api.sdk.VKApiConfig$Builder$setAccessToken$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    return accessToken;
                }
            });
            this.config = VKApiConfig.copy$default(vKApiConfig, null, 0, null, null, null, null, null, null, null, lazy, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16776703, null);
            return this;
        }

        @NotNull
        public final Builder setAnonymousTokenProvider(@Nullable final VKAccessTokenProvider vKAccessTokenProvider) {
            Lazy lazy;
            VKApiConfig vKApiConfig = this.config;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<VKAccessTokenProvider>() { // from class: com.vk.api.sdk.VKApiConfig$Builder$setAnonymousTokenProvider$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final VKAccessTokenProvider invoke() {
                    return VKAccessTokenProvider.this;
                }
            });
            this.config = VKApiConfig.copy$default(vKApiConfig, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, lazy, null, 12582911, null);
            return this;
        }

        @NotNull
        public final Builder setApiVersion(@NotNull String version) {
            Intrinsics.checkNotNullParameter(version, "version");
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, version, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16777183, null);
            return this;
        }

        @NotNull
        public final Builder setAppId(int i9) {
            this.config = VKApiConfig.copy$default(this.config, null, i9, null, null, null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16777213, null);
            return this;
        }

        @NotNull
        public final Builder setCallsPerSecondLimit(int i9) {
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, i9, null, null, null, null, 0L, null, null, null, null, 16760831, null);
            return this;
        }

        @NotNull
        public final Builder setClientSecret(@NotNull String clientSecret) {
            Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, null, null, null, null, null, clientSecret, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16775167, null);
            return this;
        }

        @NotNull
        public final Builder setCustomApiEndpoint(@NotNull final String endpoint) {
            Lazy lazy;
            Intrinsics.checkNotNullParameter(endpoint, "endpoint");
            VKApiConfig vKApiConfig = this.config;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.vk.api.sdk.VKApiConfig$Builder$setCustomApiEndpoint$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    return endpoint;
                }
            });
            this.config = VKApiConfig.copy$default(vKApiConfig, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, null, null, null, lazy, 0L, null, null, null, null, 16515071, null);
            return this;
        }

        @NotNull
        public final Builder setCustomValueStorage(@NotNull VKKeyValueStorage storage) {
            Intrinsics.checkNotNullParameter(storage, "storage");
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, null, null, storage, null, 0L, null, null, null, null, 16646143, null);
            return this;
        }

        @NotNull
        public final Builder setDebugCycleCalls(final boolean z10) {
            Lazy lazy;
            VKApiConfig vKApiConfig = this.config;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<Boolean>() { // from class: com.vk.api.sdk.VKApiConfig$Builder$setDebugCycleCalls$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final Boolean invoke() {
                    return Boolean.valueOf(z10);
                }
            });
            this.config = VKApiConfig.copy$default(vKApiConfig, null, 0, null, null, null, null, null, null, null, null, null, null, false, lazy, 0, null, null, null, null, 0L, null, null, null, null, 16769023, null);
            return this;
        }

        @NotNull
        public final Builder setDeviceID(@NotNull final String deviceId) {
            Lazy lazy;
            Intrinsics.checkNotNullParameter(deviceId, "deviceId");
            VKApiConfig vKApiConfig = this.config;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.vk.api.sdk.VKApiConfig$Builder$setDeviceID$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final String invoke() {
                    return deviceId;
                }
            });
            this.config = VKApiConfig.copy$default(vKApiConfig, null, 0, null, null, lazy, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16777199, null);
            return this;
        }

        @NotNull
        public final Builder setExternalDeviceID(@Nullable final String str) {
            Lazy lazy;
            VKApiConfig vKApiConfig = this.config;
            lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.vk.api.sdk.VKApiConfig$Builder$setExternalDeviceID$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final String invoke() {
                    return str;
                }
            });
            this.config = VKApiConfig.copy$default(vKApiConfig, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, lazy, null, null, 14680063, null);
            return this;
        }

        @NotNull
        public final Builder setHttpApiHostProvider(@NotNull Function0<String> hostProvider) {
            Intrinsics.checkNotNullParameter(hostProvider, "hostProvider");
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, hostProvider, null, null, null, 0L, null, null, null, null, 16744447, null);
            return this;
        }

        @NotNull
        public final Builder setLangProvider(@NotNull Function0<String> langProvider) {
            Intrinsics.checkNotNullParameter(langProvider, "langProvider");
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, null, langProvider, null, null, 0L, null, null, null, null, 16711679, null);
            return this;
        }

        @NotNull
        public final Builder setLogFilterCredentials(boolean z10) {
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, null, null, null, null, null, null, z10, null, 0, null, null, null, null, 0L, null, null, null, null, 16773119, null);
            return this;
        }

        @NotNull
        public final Builder setLogger(@NotNull Logger logger) {
            Intrinsics.checkNotNullParameter(logger, "logger");
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, null, logger, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16777087, null);
            return this;
        }

        @NotNull
        public final Builder setOkHttpProvider(@NotNull VKOkHttpProvider okHttpProvider) {
            Intrinsics.checkNotNullParameter(okHttpProvider, "okHttpProvider");
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, okHttpProvider, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16777151, null);
            return this;
        }

        @NotNull
        public final Builder setRateLimitBackoff(long j10) {
            this.config = VKApiConfig.copy$default(this.config, null, 0, null, null, null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, j10, null, null, null, null, 16252927, null);
            return this;
        }

        @NotNull
        public final Builder setValidationHandler(@Nullable VKApiValidationHandler vKApiValidationHandler) {
            this.config = VKApiConfig.copy$default(this.config, null, 0, vKApiValidationHandler, null, null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16777211, null);
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/vk/api/sdk/VKApiConfig$Companion;", "", "()V", "DEFAULT_API_DOMAIN", "", "DEFAULT_API_ENDPOINT", "DEFAULT_API_VERSION", "DEFAULT_DOMAIN", "DEFAULT_LANGUAGE", "DEFAULT_OAUTH_DOMAIN", "DEFAULT_STATIC_DOMAIN", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VKApiConfig(@NotNull Context context, int i9, @Nullable VKApiValidationHandler vKApiValidationHandler, @Nullable VKApiCallListener vKApiCallListener, @NotNull Lazy<String> deviceId, @NotNull String version, @NotNull VKOkHttpProvider okHttpProvider, @NotNull Logger logger, @NotNull LoggingPrefixer loggingPrefixer, @NotNull Lazy<String> accessToken, @NotNull Lazy<String> secret, @NotNull String clientSecret, boolean z10, @NotNull Lazy<Boolean> debugCycleCalls, int i10, @NotNull Function0<String> httpApiHostProvider, @NotNull Function0<String> langProvider, @NotNull VKKeyValueStorage keyValueStorage, @NotNull Lazy<String> customApiEndpoint, long j10, @NotNull ApiMethodPriorityBackoff apiMethodPriorityBackoff, @NotNull Lazy<String> externalDeviceId, @NotNull Lazy<? extends VKAccessTokenProvider> anonymousTokenProvider, @Nullable Lazy<? extends VKApiResponseValidator> lazy) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(okHttpProvider, "okHttpProvider");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(loggingPrefixer, "loggingPrefixer");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(secret, "secret");
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        Intrinsics.checkNotNullParameter(debugCycleCalls, "debugCycleCalls");
        Intrinsics.checkNotNullParameter(httpApiHostProvider, "httpApiHostProvider");
        Intrinsics.checkNotNullParameter(langProvider, "langProvider");
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        Intrinsics.checkNotNullParameter(customApiEndpoint, "customApiEndpoint");
        Intrinsics.checkNotNullParameter(apiMethodPriorityBackoff, "apiMethodPriorityBackoff");
        Intrinsics.checkNotNullParameter(externalDeviceId, "externalDeviceId");
        Intrinsics.checkNotNullParameter(anonymousTokenProvider, "anonymousTokenProvider");
        this.context = context;
        this.appId = i9;
        this.validationHandler = vKApiValidationHandler;
        this.apiCallListener = vKApiCallListener;
        this.deviceId = deviceId;
        this.version = version;
        this.okHttpProvider = okHttpProvider;
        this.logger = logger;
        this.loggingPrefixer = loggingPrefixer;
        this.accessToken = accessToken;
        this.secret = secret;
        this.clientSecret = clientSecret;
        this.logFilterCredentials = z10;
        this.debugCycleCalls = debugCycleCalls;
        this.callsPerSecondLimit = i10;
        this.httpApiHostProvider = httpApiHostProvider;
        this.langProvider = langProvider;
        this.keyValueStorage = keyValueStorage;
        this.customApiEndpoint = customApiEndpoint;
        this.rateLimitBackoffTimeoutMs = j10;
        this.apiMethodPriorityBackoff = apiMethodPriorityBackoff;
        this.externalDeviceId = externalDeviceId;
        this.anonymousTokenProvider = anonymousTokenProvider;
        this.responseValidator = lazy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VKApiConfig copy$default(VKApiConfig vKApiConfig, Context context, int i9, VKApiValidationHandler vKApiValidationHandler, VKApiCallListener vKApiCallListener, Lazy lazy, String str, VKOkHttpProvider vKOkHttpProvider, Logger logger, LoggingPrefixer loggingPrefixer, Lazy lazy2, Lazy lazy3, String str2, boolean z10, Lazy lazy4, int i10, Function0 function0, Function0 function02, VKKeyValueStorage vKKeyValueStorage, Lazy lazy5, long j10, ApiMethodPriorityBackoff apiMethodPriorityBackoff, Lazy lazy6, Lazy lazy7, Lazy lazy8, int i11, Object obj) {
        return vKApiConfig.copy((i11 & 1) != 0 ? vKApiConfig.context : context, (i11 & 2) != 0 ? vKApiConfig.appId : i9, (i11 & 4) != 0 ? vKApiConfig.validationHandler : vKApiValidationHandler, (i11 & 8) != 0 ? vKApiConfig.apiCallListener : vKApiCallListener, (i11 & 16) != 0 ? vKApiConfig.deviceId : lazy, (i11 & 32) != 0 ? vKApiConfig.version : str, (i11 & 64) != 0 ? vKApiConfig.okHttpProvider : vKOkHttpProvider, (i11 & 128) != 0 ? vKApiConfig.logger : logger, (i11 & 256) != 0 ? vKApiConfig.loggingPrefixer : loggingPrefixer, (i11 & 512) != 0 ? vKApiConfig.accessToken : lazy2, (i11 & 1024) != 0 ? vKApiConfig.secret : lazy3, (i11 & 2048) != 0 ? vKApiConfig.clientSecret : str2, (i11 & 4096) != 0 ? vKApiConfig.logFilterCredentials : z10, (i11 & 8192) != 0 ? vKApiConfig.debugCycleCalls : lazy4, (i11 & 16384) != 0 ? vKApiConfig.callsPerSecondLimit : i10, (i11 & 32768) != 0 ? vKApiConfig.httpApiHostProvider : function0, (i11 & 65536) != 0 ? vKApiConfig.langProvider : function02, (i11 & 131072) != 0 ? vKApiConfig.keyValueStorage : vKKeyValueStorage, (i11 & 262144) != 0 ? vKApiConfig.customApiEndpoint : lazy5, (i11 & 524288) != 0 ? vKApiConfig.rateLimitBackoffTimeoutMs : j10, (i11 & 1048576) != 0 ? vKApiConfig.apiMethodPriorityBackoff : apiMethodPriorityBackoff, (2097152 & i11) != 0 ? vKApiConfig.externalDeviceId : lazy6, (i11 & 4194304) != 0 ? vKApiConfig.anonymousTokenProvider : lazy7, (i11 & 8388608) != 0 ? vKApiConfig.responseValidator : lazy8);
    }

    @NotNull
    public final Builder buildUpon() {
        return new Builder(this);
    }

    @NotNull
    public final Builder builder(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new Builder(new VKApiConfig(context, 0, new VKDefaultValidationHandler(context), null, null, null, null, null, null, null, null, null, false, null, 0, null, null, null, null, 0L, null, null, null, null, 16777210, null));
    }

    @NotNull
    public final Context component1() {
        return this.context;
    }

    @NotNull
    public final Lazy<String> component10$core_release() {
        return this.accessToken;
    }

    @NotNull
    public final Lazy<String> component11$core_release() {
        return this.secret;
    }

    @NotNull
    public final String component12() {
        return this.clientSecret;
    }

    public final boolean component13() {
        return this.logFilterCredentials;
    }

    @NotNull
    public final Lazy<Boolean> component14() {
        return this.debugCycleCalls;
    }

    public final int component15() {
        return this.callsPerSecondLimit;
    }

    @NotNull
    public final Function0<String> component16() {
        return this.httpApiHostProvider;
    }

    @NotNull
    public final Function0<String> component17() {
        return this.langProvider;
    }

    @NotNull
    public final VKKeyValueStorage component18() {
        return this.keyValueStorage;
    }

    @NotNull
    public final Lazy<String> component19() {
        return this.customApiEndpoint;
    }

    public final int component2() {
        return this.appId;
    }

    public final long component20() {
        return this.rateLimitBackoffTimeoutMs;
    }

    @NotNull
    public final ApiMethodPriorityBackoff component21() {
        return this.apiMethodPriorityBackoff;
    }

    @NotNull
    public final Lazy<String> component22() {
        return this.externalDeviceId;
    }

    @NotNull
    public final Lazy<VKAccessTokenProvider> component23() {
        return this.anonymousTokenProvider;
    }

    @Nullable
    public final Lazy<VKApiResponseValidator> component24() {
        return this.responseValidator;
    }

    @Nullable
    public final VKApiValidationHandler component3() {
        return this.validationHandler;
    }

    @Nullable
    public final VKApiCallListener component4() {
        return this.apiCallListener;
    }

    @NotNull
    public final Lazy<String> component5() {
        return this.deviceId;
    }

    @NotNull
    public final String component6() {
        return this.version;
    }

    @NotNull
    public final VKOkHttpProvider component7() {
        return this.okHttpProvider;
    }

    @NotNull
    public final Logger component8() {
        return this.logger;
    }

    @NotNull
    public final LoggingPrefixer component9() {
        return this.loggingPrefixer;
    }

    @NotNull
    public final VKApiConfig copy(@NotNull Context context, int i9, @Nullable VKApiValidationHandler vKApiValidationHandler, @Nullable VKApiCallListener vKApiCallListener, @NotNull Lazy<String> deviceId, @NotNull String version, @NotNull VKOkHttpProvider okHttpProvider, @NotNull Logger logger, @NotNull LoggingPrefixer loggingPrefixer, @NotNull Lazy<String> accessToken, @NotNull Lazy<String> secret, @NotNull String clientSecret, boolean z10, @NotNull Lazy<Boolean> debugCycleCalls, int i10, @NotNull Function0<String> httpApiHostProvider, @NotNull Function0<String> langProvider, @NotNull VKKeyValueStorage keyValueStorage, @NotNull Lazy<String> customApiEndpoint, long j10, @NotNull ApiMethodPriorityBackoff apiMethodPriorityBackoff, @NotNull Lazy<String> externalDeviceId, @NotNull Lazy<? extends VKAccessTokenProvider> anonymousTokenProvider, @Nullable Lazy<? extends VKApiResponseValidator> lazy) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(okHttpProvider, "okHttpProvider");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(loggingPrefixer, "loggingPrefixer");
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        Intrinsics.checkNotNullParameter(secret, "secret");
        Intrinsics.checkNotNullParameter(clientSecret, "clientSecret");
        Intrinsics.checkNotNullParameter(debugCycleCalls, "debugCycleCalls");
        Intrinsics.checkNotNullParameter(httpApiHostProvider, "httpApiHostProvider");
        Intrinsics.checkNotNullParameter(langProvider, "langProvider");
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        Intrinsics.checkNotNullParameter(customApiEndpoint, "customApiEndpoint");
        Intrinsics.checkNotNullParameter(apiMethodPriorityBackoff, "apiMethodPriorityBackoff");
        Intrinsics.checkNotNullParameter(externalDeviceId, "externalDeviceId");
        Intrinsics.checkNotNullParameter(anonymousTokenProvider, "anonymousTokenProvider");
        return new VKApiConfig(context, i9, vKApiValidationHandler, vKApiCallListener, deviceId, version, okHttpProvider, logger, loggingPrefixer, accessToken, secret, clientSecret, z10, debugCycleCalls, i10, httpApiHostProvider, langProvider, keyValueStorage, customApiEndpoint, j10, apiMethodPriorityBackoff, externalDeviceId, anonymousTokenProvider, lazy);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VKApiConfig) {
            VKApiConfig vKApiConfig = (VKApiConfig) obj;
            return Intrinsics.areEqual(this.context, vKApiConfig.context) && this.appId == vKApiConfig.appId && Intrinsics.areEqual(this.validationHandler, vKApiConfig.validationHandler) && Intrinsics.areEqual(this.apiCallListener, vKApiConfig.apiCallListener) && Intrinsics.areEqual(this.deviceId, vKApiConfig.deviceId) && Intrinsics.areEqual(this.version, vKApiConfig.version) && Intrinsics.areEqual(this.okHttpProvider, vKApiConfig.okHttpProvider) && Intrinsics.areEqual(this.logger, vKApiConfig.logger) && Intrinsics.areEqual(this.loggingPrefixer, vKApiConfig.loggingPrefixer) && Intrinsics.areEqual(this.accessToken, vKApiConfig.accessToken) && Intrinsics.areEqual(this.secret, vKApiConfig.secret) && Intrinsics.areEqual(this.clientSecret, vKApiConfig.clientSecret) && this.logFilterCredentials == vKApiConfig.logFilterCredentials && Intrinsics.areEqual(this.debugCycleCalls, vKApiConfig.debugCycleCalls) && this.callsPerSecondLimit == vKApiConfig.callsPerSecondLimit && Intrinsics.areEqual(this.httpApiHostProvider, vKApiConfig.httpApiHostProvider) && Intrinsics.areEqual(this.langProvider, vKApiConfig.langProvider) && Intrinsics.areEqual(this.keyValueStorage, vKApiConfig.keyValueStorage) && Intrinsics.areEqual(this.customApiEndpoint, vKApiConfig.customApiEndpoint) && this.rateLimitBackoffTimeoutMs == vKApiConfig.rateLimitBackoffTimeoutMs && Intrinsics.areEqual(this.apiMethodPriorityBackoff, vKApiConfig.apiMethodPriorityBackoff) && Intrinsics.areEqual(this.externalDeviceId, vKApiConfig.externalDeviceId) && Intrinsics.areEqual(this.anonymousTokenProvider, vKApiConfig.anonymousTokenProvider) && Intrinsics.areEqual(this.responseValidator, vKApiConfig.responseValidator);
        }
        return false;
    }

    @NotNull
    public final Lazy<String> getAccessToken$core_release() {
        return this.accessToken;
    }

    @NotNull
    public final Lazy<VKAccessTokenProvider> getAnonymousTokenProvider() {
        return this.anonymousTokenProvider;
    }

    @Nullable
    public final VKApiCallListener getApiCallListener() {
        return this.apiCallListener;
    }

    @NotNull
    public final ApiMethodPriorityBackoff getApiMethodPriorityBackoff() {
        return this.apiMethodPriorityBackoff;
    }

    public final int getAppId() {
        return this.appId;
    }

    public final int getCallsPerSecondLimit() {
        return this.callsPerSecondLimit;
    }

    @NotNull
    public final String getClientSecret() {
        return this.clientSecret;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final Lazy<String> getCustomApiEndpoint() {
        return this.customApiEndpoint;
    }

    @NotNull
    public final Lazy<Boolean> getDebugCycleCalls() {
        return this.debugCycleCalls;
    }

    @NotNull
    public final Lazy<String> getDeviceId() {
        return this.deviceId;
    }

    @NotNull
    public final Lazy<String> getExternalDeviceId() {
        return this.externalDeviceId;
    }

    @NotNull
    public final Function0<String> getHttpApiHostProvider() {
        return this.httpApiHostProvider;
    }

    @NotNull
    public final VKKeyValueStorage getKeyValueStorage() {
        return this.keyValueStorage;
    }

    @NotNull
    public final String getLang() {
        return this.langProvider.invoke();
    }

    @NotNull
    public final Function0<String> getLangProvider() {
        return this.langProvider;
    }

    public final boolean getLogFilterCredentials() {
        return this.logFilterCredentials;
    }

    @NotNull
    public final Logger getLogger() {
        return this.logger;
    }

    @NotNull
    public final LoggingPrefixer getLoggingPrefixer() {
        return this.loggingPrefixer;
    }

    @NotNull
    public final VKOkHttpProvider getOkHttpProvider() {
        return this.okHttpProvider;
    }

    public final long getRateLimitBackoffTimeoutMs() {
        return this.rateLimitBackoffTimeoutMs;
    }

    @Nullable
    public final Lazy<VKApiResponseValidator> getResponseValidator() {
        return this.responseValidator;
    }

    @NotNull
    public final Lazy<String> getSecret$core_release() {
        return this.secret;
    }

    @Nullable
    public final VKApiValidationHandler getValidationHandler() {
        return this.validationHandler;
    }

    @NotNull
    public final String getVersion() {
        return this.version;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.context.hashCode() * 31) + this.appId) * 31;
        VKApiValidationHandler vKApiValidationHandler = this.validationHandler;
        int hashCode2 = (hashCode + (vKApiValidationHandler == null ? 0 : vKApiValidationHandler.hashCode())) * 31;
        VKApiCallListener vKApiCallListener = this.apiCallListener;
        int hashCode3 = (((((((((((((((((hashCode2 + (vKApiCallListener == null ? 0 : vKApiCallListener.hashCode())) * 31) + this.deviceId.hashCode()) * 31) + this.version.hashCode()) * 31) + this.okHttpProvider.hashCode()) * 31) + this.logger.hashCode()) * 31) + this.loggingPrefixer.hashCode()) * 31) + this.accessToken.hashCode()) * 31) + this.secret.hashCode()) * 31) + this.clientSecret.hashCode()) * 31;
        boolean z10 = this.logFilterCredentials;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int hashCode4 = (((((((((((((((((((((hashCode3 + i9) * 31) + this.debugCycleCalls.hashCode()) * 31) + this.callsPerSecondLimit) * 31) + this.httpApiHostProvider.hashCode()) * 31) + this.langProvider.hashCode()) * 31) + this.keyValueStorage.hashCode()) * 31) + this.customApiEndpoint.hashCode()) * 31) + b7.b.a(this.rateLimitBackoffTimeoutMs)) * 31) + this.apiMethodPriorityBackoff.hashCode()) * 31) + this.externalDeviceId.hashCode()) * 31) + this.anonymousTokenProvider.hashCode()) * 31;
        Lazy<VKApiResponseValidator> lazy = this.responseValidator;
        return hashCode4 + (lazy != null ? lazy.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "VKApiConfig(context=" + this.context + ", appId=" + this.appId + ", validationHandler=" + this.validationHandler + ", apiCallListener=" + this.apiCallListener + ", deviceId=" + this.deviceId + ", version=" + this.version + ", okHttpProvider=" + this.okHttpProvider + ", logger=" + this.logger + ", loggingPrefixer=" + this.loggingPrefixer + ", accessToken=" + this.accessToken + ", secret=" + this.secret + ", clientSecret=" + this.clientSecret + ", logFilterCredentials=" + this.logFilterCredentials + ", debugCycleCalls=" + this.debugCycleCalls + ", callsPerSecondLimit=" + this.callsPerSecondLimit + ", httpApiHostProvider=" + this.httpApiHostProvider + ", langProvider=" + this.langProvider + ", keyValueStorage=" + this.keyValueStorage + ", customApiEndpoint=" + this.customApiEndpoint + ", rateLimitBackoffTimeoutMs=" + this.rateLimitBackoffTimeoutMs + ", apiMethodPriorityBackoff=" + this.apiMethodPriorityBackoff + ", externalDeviceId=" + this.externalDeviceId + ", anonymousTokenProvider=" + this.anonymousTokenProvider + ", responseValidator=" + this.responseValidator + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ VKApiConfig(android.content.Context r25, int r26, com.vk.api.sdk.VKApiValidationHandler r27, com.vk.api.sdk.VKApiCallListener r28, kotlin.Lazy r29, java.lang.String r30, com.vk.api.sdk.VKOkHttpProvider r31, com.vk.api.sdk.utils.log.Logger r32, com.vk.api.sdk.okhttp.LoggingPrefixer r33, kotlin.Lazy r34, kotlin.Lazy r35, java.lang.String r36, boolean r37, kotlin.Lazy r38, int r39, kotlin.jvm.functions.Function0 r40, kotlin.jvm.functions.Function0 r41, com.vk.api.sdk.VKKeyValueStorage r42, kotlin.Lazy r43, long r44, com.vk.api.sdk.utils.ApiMethodPriorityBackoff r46, kotlin.Lazy r47, kotlin.Lazy r48, kotlin.Lazy r49, int r50, kotlin.jvm.internal.DefaultConstructorMarker r51) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vk.api.sdk.VKApiConfig.<init>(android.content.Context, int, com.vk.api.sdk.VKApiValidationHandler, com.vk.api.sdk.VKApiCallListener, kotlin.Lazy, java.lang.String, com.vk.api.sdk.VKOkHttpProvider, com.vk.api.sdk.utils.log.Logger, com.vk.api.sdk.okhttp.LoggingPrefixer, kotlin.Lazy, kotlin.Lazy, java.lang.String, boolean, kotlin.Lazy, int, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, com.vk.api.sdk.VKKeyValueStorage, kotlin.Lazy, long, com.vk.api.sdk.utils.ApiMethodPriorityBackoff, kotlin.Lazy, kotlin.Lazy, kotlin.Lazy, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
