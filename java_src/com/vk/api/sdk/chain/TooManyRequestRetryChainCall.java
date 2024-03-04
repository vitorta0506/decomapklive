package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.utils.ExponentialBackoff;
import com.vk.api.sdk.utils.tmr.TooManyRequestLimitBackoff;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u0014*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u0014B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0002\u0010\u000bJ\u0017\u0010\u0010\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, d2 = {"Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "backoff", "Lcom/vk/api/sdk/utils/tmr/TooManyRequestLimitBackoff;", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/utils/tmr/TooManyRequestLimitBackoff;Lcom/vk/api/sdk/chain/ChainCall;)V", "getBackoff", "()Lcom/vk/api/sdk/utils/tmr/TooManyRequestLimitBackoff;", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", NotificationCompat.CATEGORY_CALL, "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class TooManyRequestRetryChainCall<T> extends RetryChainCall<T> {
    private static final int MAX_CALLS_PER_SECOND = 3;
    private static final long MAX_LIMIT = 1000;
    private static final long TIMEOUT = 1000;
    @NotNull
    private final TooManyRequestLimitBackoff backoff;
    @NotNull
    private final ChainCall<T> chain;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ExponentialBackoff errorBackoff = new ExponentialBackoff(1000, 8000, 1.2f, 0.0f, 0.0f, 24, null);

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/chain/TooManyRequestRetryChainCall$Companion;", "", "()V", "MAX_CALLS_PER_SECOND", "", "MAX_LIMIT", "", "TIMEOUT", "errorBackoff", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TooManyRequestRetryChainCall(@NotNull VKApiManager manager, int i9, @NotNull TooManyRequestLimitBackoff backoff, @NotNull ChainCall<? extends T> chain) {
        super(manager, i9);
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(backoff, "backoff");
        Intrinsics.checkNotNullParameter(chain, "chain");
        this.backoff = backoff;
        this.chain = chain;
    }

    @Override // com.vk.api.sdk.chain.ChainCall
    @Nullable
    public T call(@NotNull ChainArgs args) throws Exception {
        Intrinsics.checkNotNullParameter(args, "args");
        int retryLimit = getRetryLimit();
        if (retryLimit >= 0) {
            int i9 = 0;
            while (true) {
                int i10 = i9 + 1;
                ExponentialBackoff exponentialBackoff = errorBackoff;
                exponentialBackoff.waitIfNeeded();
                this.backoff.waitBeforeCall(3, 1000L);
                try {
                    T call = this.chain.call(args);
                    exponentialBackoff.reset();
                    return call;
                } catch (VKApiExecutionException e10) {
                    if (e10.isTooManyRequestsError()) {
                        logDebug("Too many requests", e10);
                        errorBackoff.onError();
                        if (i9 == retryLimit) {
                            break;
                        }
                        i9 = i10;
                    } else {
                        throw e10;
                    }
                }
            }
        }
        throw new VKApiException("Can't handle too many requests due to retry limit! (retryLimit=" + getRetryLimit() + ')');
    }

    @NotNull
    public final TooManyRequestLimitBackoff getBackoff() {
        return this.backoff;
    }

    @NotNull
    public final ChainCall<T> getChain() {
        return this.chain;
    }
}
