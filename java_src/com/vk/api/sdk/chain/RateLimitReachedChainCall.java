package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.exceptions.RateLimitReachedException;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import com.vk.api.sdk.utils.RateLimitTokenBackoff;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u000f*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u000fB+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0002\u0010\nJ\u0017\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\rH\u0016¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/vk/api/sdk/chain/RateLimitReachedChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", PushConstants.MZ_PUSH_MESSAGE_METHOD, "", "backoff", "Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;", "chainCall", "(Lcom/vk/api/sdk/VKApiManager;Ljava/lang/String;Lcom/vk/api/sdk/utils/RateLimitTokenBackoff;Lcom/vk/api/sdk/chain/ChainCall;)V", NotificationCompat.CATEGORY_CALL, "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RateLimitReachedChainCall<T> extends ChainCall<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String DETAIL_MESSAGE = "Rate limit reached.";
    @NotNull
    private final RateLimitTokenBackoff backoff;
    @NotNull
    private final ChainCall<T> chainCall;
    @NotNull
    private final String method;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/chain/RateLimitReachedChainCall$Companion;", "", "()V", "DETAIL_MESSAGE", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
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
    public RateLimitReachedChainCall(@NotNull VKApiManager manager, @NotNull String method, @NotNull RateLimitTokenBackoff backoff, @NotNull ChainCall<? extends T> chainCall) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(backoff, "backoff");
        Intrinsics.checkNotNullParameter(chainCall, "chainCall");
        this.method = method;
        this.backoff = backoff;
        this.chainCall = chainCall;
    }

    @Override // com.vk.api.sdk.chain.ChainCall
    @Nullable
    public T call(@NotNull ChainArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!this.backoff.shouldWait(this.method)) {
            this.backoff.reset(this.method);
            try {
                return this.chainCall.call(args);
            } catch (VKApiExecutionException e10) {
                if (e10.isRateLimitReachedError()) {
                    this.backoff.backoff(this.method);
                    logDebug(DETAIL_MESSAGE, e10);
                }
                throw e10;
            }
        }
        throw new RateLimitReachedException(this.method, DETAIL_MESSAGE);
    }
}
