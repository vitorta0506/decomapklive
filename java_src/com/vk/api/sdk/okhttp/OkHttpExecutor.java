package com.vk.api.sdk.okhttp;

import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.huawei.hms.framework.common.ContainerUtils;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.VKApiCredentials;
import com.vk.api.sdk.VKApiProgressListener;
import com.vk.api.sdk.VKOkHttpProvider;
import com.vk.api.sdk.exceptions.IgnoredAccessTokenException;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.exceptions.VKInternalServerErrorException;
import com.vk.api.sdk.exceptions.VKLargeEntityException;
import com.vk.api.sdk.internal.HttpMultipartEntry;
import com.vk.api.sdk.internal.QueryStringGenerator;
import com.vk.api.sdk.utils.log.Logger;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u0000 P2\u00020\u0001:\u0002PQB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00062\b\u0010$\u001a\u0004\u0018\u00010\u0006H\u0004J\u0010\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020'H\u0014J\u0010\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0006H\u0002J \u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0014J\u0010\u00102\u001a\u0002032\u0006\u0010&\u001a\u00020'H\u0016J\u001a\u00102\u001a\u0004\u0018\u00010\u00062\u0006\u0010&\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106J\u000e\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:J\u0012\u0010;\u001a\u0004\u0018\u00010\u00062\u0006\u0010&\u001a\u00020'H\u0014J\u0012\u0010<\u001a\u0004\u0018\u00010\u00062\u0006\u0010&\u001a\u00020'H\u0014J\u0010\u0010=\u001a\u00020\"2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010>\u001a\u00020?2\u0006\u0010&\u001a\u0002042\u0006\u0010@\u001a\u00020AH\u0014J\u0010\u0010B\u001a\u0004\u0018\u00010\u00062\u0006\u0010C\u001a\u000208J\u0010\u0010D\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001b\u0010E\u001a\u00020\"2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0000¢\u0006\u0002\bFJ\u0018\u0010E\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u0006J\u0010\u0010G\u001a\u00020\"2\u0006\u0010H\u001a\u00020\u001aH\u0002J\u0018\u0010I\u001a\u00020\u00062\u0006\u0010&\u001a\u00020'2\u0006\u0010J\u001a\u00020\u0006H\u0004J \u0010K\u001a\u00020L*\u00020L2\u0012\u0010M\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020O0NH\u0002R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\fX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\bR\"\u0010\u0016\u001a\u0004\u0018\u00010\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\bR\u000e\u0010\u0018\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u001f\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b \u0010\b¨\u0006R"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "", "config", "Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "(Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;)V", "accessToken", "", "getAccessToken", "()Ljava/lang/String;", "getConfig", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "credentialsProvider", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/VKApiCredentials;", "customEndpoint", "host", "getHost", "<set-?>", "ignoredAccessToken", "getIgnoredAccessToken", "lock", "okHttpProvider", "Lcom/vk/api/sdk/VKOkHttpProvider;", "getOkHttpProvider", "()Lcom/vk/api/sdk/VKOkHttpProvider;", "okHttpProvider$delegate", "Lkotlin/Lazy;", "secret", "getSecret", "checkAccessTokenIsIgnored", "", PushConstants.MZ_PUSH_MESSAGE_METHOD, "requestAccessToken", "checkNonSecretMethodCall", NotificationCompat.CATEGORY_CALL, "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;", "convertFileNameToSafeValue", "fileName", "createLoggingInterceptor", "Lcom/vk/api/sdk/okhttp/LoggingInterceptor;", "filterCredentials", "", "logger", "Lcom/vk/api/sdk/utils/log/Logger;", "loggingPrefixer", "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;", "execute", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;", "Lcom/vk/api/sdk/okhttp/OkHttpPostCall;", "progressListener", "Lcom/vk/api/sdk/VKApiProgressListener;", "executeRequest", "Lokhttp3/Response;", "request", "Lokhttp3/Request;", "getActualAccessToken", "getActualSecret", "ignoreAccessToken", "makePostCallRequestBuilder", "Lokhttp3/Request$Builder;", "requestBody", "Lokhttp3/RequestBody;", "readResponse", "response", "resolveEndpoint", "setCredentials", "setCredentials$core_release", "updateClient", "provider", "validateQueryString", "paramsString", "updateWith", "Lokhttp3/MultipartBody$Builder;", "parts", "", "Lcom/vk/api/sdk/internal/HttpMultipartEntry;", "Companion", "MethodResponse", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class OkHttpExecutor {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MIME_APPLICATION = "application/x-www-form-urlencoded; charset=utf-8";
    @NotNull
    private static final String UTF_8 = "UTF-8";
    @NotNull
    private final OkHttpExecutorConfig config;
    @NotNull
    private final Context context;
    @NotNull
    private volatile Lazy<VKApiCredentials> credentialsProvider;
    @NotNull
    private final String customEndpoint;
    @Nullable
    private volatile String ignoredAccessToken;
    @NotNull
    private final Object lock;
    @NotNull
    private final Lazy okHttpProvider$delegate;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor$Companion;", "", "()V", "MIME_APPLICATION", "", "UTF_8", "defaultApiEndpoint", "host", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String defaultApiEndpoint(String str) {
            return "https://" + str + "/method";
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J+\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;", "", "response", "", "headers", "Lokhttp3/Headers;", "executorRequestAccessToken", "(Ljava/lang/String;Lokhttp3/Headers;Ljava/lang/String;)V", "getExecutorRequestAccessToken", "()Ljava/lang/String;", "getHeaders", "()Lokhttp3/Headers;", "getResponse", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class MethodResponse {
        @Nullable
        private final String executorRequestAccessToken;
        @NotNull
        private final Headers headers;
        @Nullable
        private final String response;

        public MethodResponse(@Nullable String str, @NotNull Headers headers, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            this.response = str;
            this.headers = headers;
            this.executorRequestAccessToken = str2;
        }

        public static /* synthetic */ MethodResponse copy$default(MethodResponse methodResponse, String str, Headers headers, String str2, int i9, Object obj) {
            if ((i9 & 1) != 0) {
                str = methodResponse.response;
            }
            if ((i9 & 2) != 0) {
                headers = methodResponse.headers;
            }
            if ((i9 & 4) != 0) {
                str2 = methodResponse.executorRequestAccessToken;
            }
            return methodResponse.copy(str, headers, str2);
        }

        @Nullable
        public final String component1() {
            return this.response;
        }

        @NotNull
        public final Headers component2() {
            return this.headers;
        }

        @Nullable
        public final String component3() {
            return this.executorRequestAccessToken;
        }

        @NotNull
        public final MethodResponse copy(@Nullable String str, @NotNull Headers headers, @Nullable String str2) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            return new MethodResponse(str, headers, str2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof MethodResponse) {
                MethodResponse methodResponse = (MethodResponse) obj;
                return Intrinsics.areEqual(this.response, methodResponse.response) && Intrinsics.areEqual(this.headers, methodResponse.headers) && Intrinsics.areEqual(this.executorRequestAccessToken, methodResponse.executorRequestAccessToken);
            }
            return false;
        }

        @Nullable
        public final String getExecutorRequestAccessToken() {
            return this.executorRequestAccessToken;
        }

        @NotNull
        public final Headers getHeaders() {
            return this.headers;
        }

        @Nullable
        public final String getResponse() {
            return this.response;
        }

        public int hashCode() {
            String str = this.response;
            int hashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.headers.hashCode()) * 31;
            String str2 = this.executorRequestAccessToken;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        @NotNull
        public String toString() {
            return "MethodResponse(response=" + ((Object) this.response) + ", headers=" + this.headers + ", executorRequestAccessToken=" + ((Object) this.executorRequestAccessToken) + ')';
        }
    }

    public OkHttpExecutor(@NotNull OkHttpExecutorConfig config) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
        this.context = config.getContext();
        this.lock = new Object();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<VKOkHttpProvider>() { // from class: com.vk.api.sdk.okhttp.OkHttpExecutor$okHttpProvider$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VKOkHttpProvider invoke() {
                if (!Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
                    OkHttpExecutor okHttpExecutor = OkHttpExecutor.this;
                    okHttpExecutor.updateClient(okHttpExecutor.getConfig().getOkHttpProvider());
                    return OkHttpExecutor.this.getConfig().getOkHttpProvider();
                }
                throw new IllegalStateException("UI thread");
            }
        });
        this.okHttpProvider$delegate = lazy;
        this.credentialsProvider = VKApiCredentials.Companion.lazyFrom(config.getAccessToken(), config.getSecret());
        this.customEndpoint = config.getCustomEndpoint();
    }

    private final String convertFileNameToSafeValue(String str) {
        String replace$default;
        replace$default = StringsKt__StringsJVMKt.replace$default(str, "\"", "\\\"", false, 4, (Object) null);
        String encode = URLEncoder.encode(replace$default, "UTF-8");
        Intrinsics.checkNotNullExpressionValue(encode, "encode(fileName.replace(\"\\\"\", \"\\\\\\\"\"), UTF_8)");
        return encode;
    }

    private final VKOkHttpProvider getOkHttpProvider() {
        return (VKOkHttpProvider) this.okHttpProvider$delegate.getValue();
    }

    private final String resolveEndpoint(String str) {
        if (this.customEndpoint.length() > 0) {
            return this.customEndpoint;
        }
        return Companion.defaultApiEndpoint(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateClient(VKOkHttpProvider vKOkHttpProvider) {
        vKOkHttpProvider.updateClient(new VKOkHttpProvider.BuilderUpdateFunction() { // from class: com.vk.api.sdk.okhttp.OkHttpExecutor$updateClient$1
            @Override // com.vk.api.sdk.VKOkHttpProvider.BuilderUpdateFunction
            @NotNull
            public OkHttpClient.Builder update(@NotNull OkHttpClient.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                if (Logger.LogLevel.NONE != OkHttpExecutor.this.getConfig().getLogger().getLogLevel().getValue()) {
                    OkHttpExecutor okHttpExecutor = OkHttpExecutor.this;
                    builder.addInterceptor(okHttpExecutor.createLoggingInterceptor(okHttpExecutor.getConfig().getLogFilterCredentials(), OkHttpExecutor.this.getConfig().getLogger(), OkHttpExecutor.this.getConfig().getLoggingPrefixer()));
                }
                return builder;
            }
        });
    }

    private final MultipartBody.Builder updateWith(MultipartBody.Builder builder, Map<String, ? extends HttpMultipartEntry> map) {
        for (Map.Entry<String, ? extends HttpMultipartEntry> entry : map.entrySet()) {
            String key = entry.getKey();
            HttpMultipartEntry value = entry.getValue();
            if (value instanceof HttpMultipartEntry.Text) {
                builder.addFormDataPart(key, ((HttpMultipartEntry.Text) value).getTextValue());
            } else if (value instanceof HttpMultipartEntry.File) {
                HttpMultipartEntry.File file = (HttpMultipartEntry.File) value;
                FileFullRequestBody fileFullRequestBody = new FileFullRequestBody(this.context, file.getFileUri());
                String fileName = file.getFileName();
                if (fileName == null) {
                    fileName = "";
                }
                builder.addFormDataPart(key, convertFileNameToSafeValue(fileName), fileFullRequestBody);
            }
        }
        return builder;
    }

    protected final void checkAccessTokenIsIgnored(@NotNull String method, @Nullable String str) throws IgnoredAccessTokenException {
        Intrinsics.checkNotNullParameter(method, "method");
        if (this.ignoredAccessToken != null && str != null && Intrinsics.areEqual(str, this.ignoredAccessToken)) {
            throw new IgnoredAccessTokenException(method);
        }
    }

    protected void checkNonSecretMethodCall(@NotNull OkHttpMethodCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public LoggingInterceptor createLoggingInterceptor(boolean z10, @NotNull Logger logger, @NotNull LoggingPrefixer loggingPrefixer) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(loggingPrefixer, "loggingPrefixer");
        return new LoggingInterceptor(z10, logger, loggingPrefixer);
    }

    @NotNull
    public MethodResponse execute(@NotNull OkHttpMethodCall call) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(call, "call");
        String actualAccessToken = getActualAccessToken(call);
        checkAccessTokenIsIgnored(call.getMethod(), actualAccessToken);
        String actualSecret = getActualSecret(call);
        checkNonSecretMethodCall(call);
        RequestBody create = RequestBody.Companion.create(validateQueryString(call, QueryStringGenerator.INSTANCE.buildSignedQueryStringForMethod(call.getMethod(), call.getArgs(), call.getVersion(), actualAccessToken, actualSecret, this.config.getAppId())), MediaType.Companion.parse(MIME_APPLICATION));
        String requestUrl = call.getRequestUrl();
        if (requestUrl == null) {
            requestUrl = getHost();
        }
        Request.Builder post = new Request.Builder().post(create);
        Request.Builder cacheControl = post.url(resolveEndpoint(requestUrl) + IOUtils.DIR_SEPARATOR_UNIX + call.getMethod()).cacheControl(CacheControl.FORCE_NETWORK);
        RequestTag tag = call.getTag();
        Request.Builder tag2 = cacheControl.tag(Map.class, tag == null ? null : tag.toMap());
        Object customTag = call.getCustomTag();
        if (customTag != null) {
            tag2.tag(customTag.getClass(), customTag);
        }
        Request build = tag2.build();
        String accessToken = getAccessToken();
        Response executeRequest = executeRequest(build);
        return new MethodResponse(readResponse(executeRequest), executeRequest.headers(), accessToken);
    }

    @NotNull
    public final Response executeRequest(@NotNull Request request) throws InterruptedException, IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        return getOkHttpProvider().getClient().newCall(request).execute();
    }

    @NotNull
    public final String getAccessToken() {
        return this.credentialsProvider.getValue().getAccessToken();
    }

    @Nullable
    protected String getActualAccessToken(@NotNull OkHttpMethodCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        return getAccessToken();
    }

    @Nullable
    protected String getActualSecret(@NotNull OkHttpMethodCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        return getSecret();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final OkHttpExecutorConfig getConfig() {
        return this.config;
    }

    @NotNull
    protected final Context getContext() {
        return this.context;
    }

    @NotNull
    public final String getHost() {
        return this.config.getHostProvider().invoke();
    }

    @Nullable
    public final String getIgnoredAccessToken() {
        return this.ignoredAccessToken;
    }

    @Nullable
    public final String getSecret() {
        return this.credentialsProvider.getValue().getSecret();
    }

    public final void ignoreAccessToken(@Nullable String str) {
        this.ignoredAccessToken = str;
    }

    @NotNull
    protected Request.Builder makePostCallRequestBuilder(@NotNull OkHttpPostCall call, @NotNull RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        return new Request.Builder().post(requestBody).url(call.getUrl()).cacheControl(CacheControl.FORCE_NETWORK);
    }

    @Nullable
    public final String readResponse(@NotNull Response response) {
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.code() != 413) {
            ResponseBody body = response.body();
            String str = null;
            if (body != null) {
                try {
                    String string = body.string();
                    CloseableKt.closeFinally(body, null);
                    str = string;
                } finally {
                }
            }
            int code = response.code();
            boolean z10 = false;
            if (500 <= code && code <= 599) {
                z10 = true;
            }
            if (z10) {
                int code2 = response.code();
                if (str == null) {
                    str = "null";
                }
                throw new VKInternalServerErrorException(code2, str);
            }
            return str;
        }
        throw new VKLargeEntityException(response.message());
    }

    public final void setCredentials(@NotNull String accessToken, @Nullable String str) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        this.credentialsProvider = VKApiCredentials.Companion.lazyFrom(accessToken, str);
    }

    public final void setCredentials$core_release(@NotNull Lazy<VKApiCredentials> credentialsProvider) {
        Intrinsics.checkNotNullParameter(credentialsProvider, "credentialsProvider");
        this.credentialsProvider = credentialsProvider;
    }

    @NotNull
    protected final String validateQueryString(@NotNull OkHttpMethodCall call, @NotNull String paramsString) throws VKApiException {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(paramsString, "paramsString");
        boolean z10 = false;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(call.getMethod(), "execute.", false, 2, null);
        if (startsWith$default) {
            Uri parse = Uri.parse(Intrinsics.stringPlus("https://vk.com/?", paramsString));
            if (parse.getQueryParameters(PushConstants.MZ_PUSH_MESSAGE_METHOD).contains("execute")) {
                List<String> queryParameters = parse.getQueryParameters("code");
                if (!((queryParameters == null || queryParameters.isEmpty()) ? true : true)) {
                    throw new VKApiExecutionException(15, call.getMethod(), false, "Hey dude don't execute your hacky code ;)", null, null, null, null, 0, 496, null);
                }
            }
        }
        return paramsString;
    }

    @Nullable
    public final String execute(@NotNull OkHttpPostCall call, @Nullable VKApiProgressListener vKApiProgressListener) throws InterruptedException, IOException, VKApiException {
        String joinToString$default;
        RequestBody create;
        Intrinsics.checkNotNullParameter(call, "call");
        if (call.isMultipart()) {
            create = updateWith(new MultipartBody.Builder(null, 1, null).setType(MultipartBody.FORM), call.getParts()).build();
        } else {
            Map<String, HttpMultipartEntry> parts = call.getParts();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, HttpMultipartEntry> entry : parts.entrySet()) {
                if (entry.getValue() instanceof HttpMultipartEntry.Text) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            ArrayList arrayList = new ArrayList(linkedHashMap.size());
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                String textValue = ((HttpMultipartEntry.Text) entry2.getValue()).getTextValue();
                arrayList.add(((String) entry2.getKey()) + '=' + ((Object) URLEncoder.encode(textValue, "UTF-8")));
            }
            joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, ContainerUtils.FIELD_DELIMITER, null, null, 0, null, null, 62, null);
            create = RequestBody.Companion.create(joinToString$default, MediaType.Companion.get(MIME_APPLICATION));
        }
        return readResponse(executeRequest(makePostCallRequestBuilder(call, new ProgressRequestBody(create, vKApiProgressListener)).build()));
    }
}
