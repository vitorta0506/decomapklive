package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.exceptions.VKApiIllegalResponseException;
import com.vk.api.sdk.exceptions.VKInternalServerErrorException;
import com.vk.api.sdk.utils.ExponentialBackoff;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\tJ\u0017\u0010\u000e\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0002\u0010\u0011R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"Lcom/vk/api/sdk/chain/InternalErrorRetryChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/RetryChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "chain", "Lcom/vk/api/sdk/chain/ChainCall;", "(Lcom/vk/api/sdk/VKApiManager;ILcom/vk/api/sdk/chain/ChainCall;)V", "backoff", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "getChain", "()Lcom/vk/api/sdk/chain/ChainCall;", NotificationCompat.CATEGORY_CALL, "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InternalErrorRetryChainCall<T> extends RetryChainCall<T> {
    @NotNull
    private final ExponentialBackoff backoff;
    @NotNull
    private final ChainCall<T> chain;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public InternalErrorRetryChainCall(@NotNull VKApiManager manager, int i9, @NotNull ChainCall<? extends T> chain) {
        super(manager, i9);
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(chain, "chain");
        this.chain = chain;
        this.backoff = new ExponentialBackoff(1000L, 60000L, 1.5f, 0.0f, 0.0f, 24, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Throwable, com.vk.api.sdk.exceptions.VKInternalServerErrorException] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Throwable, com.vk.api.sdk.exceptions.VKApiIllegalResponseException] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Throwable, com.vk.api.sdk.exceptions.VKApiExecutionException] */
    @Override // com.vk.api.sdk.chain.ChainCall
    @Nullable
    public T call(@NotNull ChainArgs args) throws Exception {
        Intrinsics.checkNotNullParameter(args, "args");
        ?? e10 = 0;
        while (true) {
            if (getRetryLimit() >= 0 && this.backoff.getErrorsCount() > getRetryLimit()) {
                if (e10 == 0) {
                    throw new VKApiException("api-call failed due to retry limits, but no exception has tracked");
                }
                throw e10;
            }
            if (this.backoff.shouldWait()) {
                Thread.sleep(this.backoff.getDelayMs());
            }
            try {
                return this.chain.call(args);
            } catch (VKApiExecutionException e11) {
                e10 = e11;
                if (e10.isInternalServerError()) {
                    logWarning("", e10);
                    this.backoff.onError();
                } else {
                    throw e10;
                }
            } catch (VKApiIllegalResponseException e12) {
                e10 = e12;
                logWarning("", e10);
                this.backoff.onError();
            } catch (VKInternalServerErrorException e13) {
                e10 = e13;
                logWarning("", e10);
                this.backoff.onError();
            }
        }
    }

    @NotNull
    public final ChainCall<T> getChain() {
        return this.chain;
    }
}
