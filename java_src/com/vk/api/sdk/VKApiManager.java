package com.vk.api.sdk;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.chain.ApiMethodPriorityChainCall;
import com.vk.api.sdk.chain.ChainArgs;
import com.vk.api.sdk.chain.ChainCall;
import com.vk.api.sdk.chain.HttpPostChainCall;
import com.vk.api.sdk.chain.InternalErrorRetryChainCall;
import com.vk.api.sdk.chain.InvalidCredentialsObserverChainCall;
import com.vk.api.sdk.chain.MethodChainCall;
import com.vk.api.sdk.chain.RateLimitReachedChainCall;
import com.vk.api.sdk.chain.TooManyRequestRetryChainCall;
import com.vk.api.sdk.chain.ValidationHandlerChainCall;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.internal.ApiCommand;
import com.vk.api.sdk.okhttp.OkHttpExecutor;
import com.vk.api.sdk.okhttp.OkHttpExecutorConfig;
import com.vk.api.sdk.okhttp.OkHttpMethodCall;
import com.vk.api.sdk.utils.RateLimitTokenBackoff;
import com.vk.api.sdk.utils.tmr.TooManyRequestBackoffGlobal;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010)\u001a\u00020(¢\u0006\u0004\bD\u0010EJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0010\u0010\n\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bJ-\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000f¢\u0006\u0004\b\r\u0010\u0011J#\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012H\u0016¢\u0006\u0004\b\r\u0010\u0014J*\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0014J;\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\f\u001a\u00020\u00182\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\r\u0010\u001bJ*\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\f\u001a\u00020\u00182\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0014J*\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u001e\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\u001d\u001a\u00020\u001c2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0014J#\u0010!\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e2\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0016¢\u0006\u0004\b!\u0010\"J.\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fH\u0014J6\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000$\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\f\u001a\u00020\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fH\u0014J*\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000&\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0014R\u0017\u0010)\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u001c\u00104\u001a\u0004\u0018\u0001038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u001b\u0010<\u001a\u0002088VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b9\u0010/\u001a\u0004\b:\u0010;R$\u0010>\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010C¨\u0006F"}, d2 = {"Lcom/vk/api/sdk/VKApiManager;", "", "", "accessToken", "secret", "", "setCredentials", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/VKApiCredentials;", "credentialsProvider", "ignoreAccessToken", "Lcom/vk/api/sdk/VKMethodCall;", NotificationCompat.CATEGORY_CALL, "execute", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/e;", "parser", "(Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/e;)Ljava/lang/Object;", "Lcom/vk/api/sdk/internal/ApiCommand;", "cmd", "(Lcom/vk/api/sdk/internal/ApiCommand;)Ljava/lang/Object;", "Lcom/vk/api/sdk/chain/ChainCall;", "chainCall", "wrapCall", "Lcom/vk/api/sdk/VKHttpPostCall;", "Lcom/vk/api/sdk/VKApiProgressListener;", "progress", "(Lcom/vk/api/sdk/VKHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;Lcom/vk/api/sdk/e;)Ljava/lang/Object;", "", "retryCount", "Lcom/vk/api/sdk/chain/ValidationHandlerChainCall;", "createValidationHandlerChainCall", "cc", "executeWithExceptionAdjust", "(Lcom/vk/api/sdk/chain/ChainCall;)Ljava/lang/Object;", "createMethodChainCall", "Lcom/vk/api/sdk/chain/HttpPostChainCall;", "createPostMethodChainCall", "Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall;", "createTooManyRequestRetryChainCall", "Lcom/vk/api/sdk/VKApiConfig;", "config", "Lcom/vk/api/sdk/VKApiConfig;", "getConfig", "()Lcom/vk/api/sdk/VKApiConfig;", "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;", "rateLimitBackoff$delegate", "Lkotlin/Lazy;", "getRateLimitBackoff", "()Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;", "rateLimitBackoff", "Lcom/vk/api/sdk/VKApiValidationHandler;", "validationHandler", "Lcom/vk/api/sdk/VKApiValidationHandler;", "getValidationHandler$core_release", "()Lcom/vk/api/sdk/VKApiValidationHandler;", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "executor$delegate", "getExecutor", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "executor", "Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;", "illegalCredentialsListener", "Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;", "getIllegalCredentialsListener", "()Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;", "setIllegalCredentialsListener", "(Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;)V", "<init>", "(Lcom/vk/api/sdk/VKApiConfig;)V", "core_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes4.dex */
public class VKApiManager {
    @NotNull
    private final VKApiConfig config;
    @NotNull
    private final Lazy executor$delegate;
    @Nullable
    private volatile VKApiIllegalCredentialsListener illegalCredentialsListener;
    @NotNull
    private final Lazy rateLimitBackoff$delegate;
    @Nullable
    private final VKApiValidationHandler validationHandler;

    public VKApiManager(@NotNull VKApiConfig config) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RateLimitTokenBackoff>() { // from class: com.vk.api.sdk.VKApiManager$rateLimitBackoff$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RateLimitTokenBackoff invoke() {
                return new RateLimitTokenBackoff(new RateLimitTokenBackoff.TokenPrefStore(VKApiManager.this.getConfig().getContext()), VKApiManager.this.getConfig().getRateLimitBackoffTimeoutMs(), 0L, 0.0f, null, 28, null);
            }
        });
        this.rateLimitBackoff$delegate = lazy;
        this.validationHandler = config.getValidationHandler();
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<OkHttpExecutor>() { // from class: com.vk.api.sdk.VKApiManager$executor$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OkHttpExecutor invoke() {
                return new OkHttpExecutor(new OkHttpExecutorConfig(VKApiManager.this.getConfig()));
            }
        });
        this.executor$delegate = lazy2;
    }

    public static /* synthetic */ ChainCall createMethodChainCall$default(VKApiManager vKApiManager, VKMethodCall vKMethodCall, e eVar, int i9, Object obj) {
        if (obj == null) {
            if ((i9 & 2) != 0) {
                eVar = null;
            }
            return vKApiManager.createMethodChainCall(vKMethodCall, eVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createMethodChainCall");
    }

    public static /* synthetic */ Object execute$default(VKApiManager vKApiManager, VKMethodCall vKMethodCall, e eVar, int i9, Object obj) throws InterruptedException, IOException, VKApiException {
        if (obj == null) {
            if ((i9 & 2) != 0) {
                eVar = null;
            }
            return vKApiManager.execute(vKMethodCall, eVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: execute");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: execute$lambda-0  reason: not valid java name */
    public static final Unit m834execute$lambda0(String str) {
        return Unit.INSTANCE;
    }

    private final RateLimitTokenBackoff getRateLimitBackoff() {
        return (RateLimitTokenBackoff) this.rateLimitBackoff$delegate.getValue();
    }

    @NotNull
    protected <T> ChainCall<T> createMethodChainCall(@NotNull VKMethodCall call, @Nullable e<T> eVar) {
        Intrinsics.checkNotNullParameter(call, "call");
        return new MethodChainCall(this, getExecutor(), new OkHttpMethodCall.Builder().from(call), this.config.getDeviceId().getValue(), this.config.getLang(), eVar);
    }

    @NotNull
    protected <T> HttpPostChainCall<T> createPostMethodChainCall(@NotNull VKHttpPostCall call, @Nullable VKApiProgressListener vKApiProgressListener, @Nullable e<T> eVar) {
        Intrinsics.checkNotNullParameter(call, "call");
        return new HttpPostChainCall<>(this, getExecutor(), call, vKApiProgressListener, eVar);
    }

    @NotNull
    protected <T> TooManyRequestRetryChainCall<T> createTooManyRequestRetryChainCall(@NotNull VKMethodCall call, @NotNull ChainCall<? extends T> chainCall) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(chainCall, "chainCall");
        return new TooManyRequestRetryChainCall<>(this, call.getRetryCount(), TooManyRequestBackoffGlobal.INSTANCE, chainCall);
    }

    @NotNull
    protected <T> ValidationHandlerChainCall<T> createValidationHandlerChainCall(int i9, @NotNull ChainCall<? extends T> chainCall) {
        Intrinsics.checkNotNullParameter(chainCall, "chainCall");
        return new ValidationHandlerChainCall<>(this, i9, chainCall);
    }

    @JvmOverloads
    public final <T> T execute(@NotNull VKHttpPostCall call) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(call, "call");
        return (T) execute$default(this, call, null, null, 6, null);
    }

    @JvmOverloads
    public final <T> T execute(@NotNull VKHttpPostCall call, @Nullable VKApiProgressListener vKApiProgressListener) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(call, "call");
        return (T) execute$default(this, call, vKApiProgressListener, null, 4, null);
    }

    public final void execute(@NotNull VKMethodCall call) {
        Intrinsics.checkNotNullParameter(call, "call");
        execute(call, new e() { // from class: com.vk.api.sdk.d
            @Override // com.vk.api.sdk.e
            public final Object parse(String str) {
                Unit m834execute$lambda0;
                m834execute$lambda0 = VKApiManager.m834execute$lambda0(str);
                return m834execute$lambda0;
            }
        });
    }

    public <T> T executeWithExceptionAdjust(@NotNull ChainCall<? extends T> cc2) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(cc2, "cc");
        T call = cc2.call(new ChainArgs());
        Intrinsics.checkNotNull(call);
        return call;
    }

    @NotNull
    public final VKApiConfig getConfig() {
        return this.config;
    }

    @NotNull
    public OkHttpExecutor getExecutor() {
        return (OkHttpExecutor) this.executor$delegate.getValue();
    }

    @Nullable
    public final VKApiIllegalCredentialsListener getIllegalCredentialsListener() {
        return this.illegalCredentialsListener;
    }

    @Nullable
    public final VKApiValidationHandler getValidationHandler$core_release() {
        return this.validationHandler;
    }

    public final void ignoreAccessToken(@Nullable String str) {
        getExecutor().ignoreAccessToken(str);
    }

    public final void setCredentials(@NotNull String accessToken, @Nullable String str) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        getExecutor().setCredentials(accessToken, str);
    }

    public final void setIllegalCredentialsListener(@Nullable VKApiIllegalCredentialsListener vKApiIllegalCredentialsListener) {
        this.illegalCredentialsListener = vKApiIllegalCredentialsListener;
    }

    @NotNull
    protected <T> ChainCall<T> wrapCall(@NotNull VKMethodCall call, @NotNull ChainCall<? extends T> chainCall) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(chainCall, "chainCall");
        if (!call.getSkipValidation()) {
            chainCall = createValidationHandlerChainCall(call.getRetryCount(), chainCall);
        }
        RateLimitReachedChainCall rateLimitReachedChainCall = new RateLimitReachedChainCall(this, call.getMethod(), getRateLimitBackoff(), createTooManyRequestRetryChainCall(call, new InvalidCredentialsObserverChainCall(this, new ApiMethodPriorityChainCall(this, chainCall, call, this.config.getApiMethodPriorityBackoff()), 1)));
        return call.getRetryCount() > 0 ? new InternalErrorRetryChainCall(this, call.getRetryCount(), rateLimitReachedChainCall) : rateLimitReachedChainCall;
    }

    public static /* synthetic */ Object execute$default(VKApiManager vKApiManager, VKHttpPostCall vKHttpPostCall, VKApiProgressListener vKApiProgressListener, e eVar, int i9, Object obj) throws InterruptedException, IOException, VKApiException {
        if (obj == null) {
            if ((i9 & 2) != 0) {
                vKApiProgressListener = null;
            }
            if ((i9 & 4) != 0) {
                eVar = null;
            }
            return vKApiManager.execute(vKHttpPostCall, vKApiProgressListener, eVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: execute");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T execute(@NotNull VKMethodCall call, @Nullable e<T> eVar) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(call, "call");
        return (T) executeWithExceptionAdjust(wrapCall(call, createMethodChainCall(call, eVar)));
    }

    public final void setCredentials(@NotNull Lazy<VKApiCredentials> credentialsProvider) {
        Intrinsics.checkNotNullParameter(credentialsProvider, "credentialsProvider");
        getExecutor().setCredentials$core_release(credentialsProvider);
    }

    public <T> T execute(@NotNull ApiCommand<T> cmd) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(cmd, "cmd");
        return cmd.execute(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public final <T> T execute(@NotNull VKHttpPostCall call, @Nullable VKApiProgressListener vKApiProgressListener, @Nullable e<T> eVar) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(call, "call");
        return (T) executeWithExceptionAdjust(wrapCall(call, createPostMethodChainCall(call, vKApiProgressListener, eVar)));
    }

    @NotNull
    protected <T> ChainCall<T> wrapCall(@NotNull VKHttpPostCall call, @NotNull ChainCall<? extends T> chainCall) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(chainCall, "chainCall");
        ValidationHandlerChainCall<T> createValidationHandlerChainCall = createValidationHandlerChainCall(call.getRetryCount(), chainCall);
        return call.getRetryCount() > 0 ? new InternalErrorRetryChainCall(this, call.getRetryCount(), createValidationHandlerChainCall) : createValidationHandlerChainCall;
    }
}
