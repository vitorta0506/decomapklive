package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.VKMethodCall;
import com.vk.api.sdk.utils.ApiMethodPriorityBackoff;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0017\u0010\u0006\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/vk/api/sdk/chain/ApiMethodPriorityChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "chain", NotificationCompat.CATEGORY_CALL, "Lcom/vk/api/sdk/VKMethodCall;", "priorityBackoff", "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/chain/ChainCall;Lcom/vk/api/sdk/VKMethodCall;Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;)V", "chainId", "", "getChainId", "()I", "chainId$delegate", "Lkotlin/Lazy;", "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApiMethodPriorityChainCall<T> extends ChainCall<T> {
    @NotNull
    private final VKMethodCall call;
    @NotNull
    private final ChainCall<T> chain;
    @NotNull
    private final Lazy chainId$delegate;
    @NotNull
    private final ApiMethodPriorityBackoff priorityBackoff;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ApiMethodPriorityChainCall(@NotNull VKApiManager manager, @NotNull ChainCall<? extends T> chain, @NotNull VKMethodCall call, @NotNull ApiMethodPriorityBackoff priorityBackoff) {
        super(manager);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(priorityBackoff, "priorityBackoff");
        this.chain = chain;
        this.call = call;
        this.priorityBackoff = priorityBackoff;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>(this) { // from class: com.vk.api.sdk.chain.ApiMethodPriorityChainCall$chainId$2
            final /* synthetic */ ApiMethodPriorityChainCall<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                ApiMethodPriorityBackoff apiMethodPriorityBackoff;
                apiMethodPriorityBackoff = ((ApiMethodPriorityChainCall) this.this$0).priorityBackoff;
                return Integer.valueOf(apiMethodPriorityBackoff.newId());
            }
        });
        this.chainId$delegate = lazy;
    }

    private final int getChainId() {
        return ((Number) this.chainId$delegate.getValue()).intValue();
    }

    @Override // com.vk.api.sdk.chain.ChainCall
    @Nullable
    public T call(@NotNull ChainArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (!this.priorityBackoff.isActive()) {
            return this.chain.call(args);
        }
        String method = this.call.getMethod();
        while (this.priorityBackoff.shouldWait(method)) {
            if (!Thread.interrupted()) {
                this.priorityBackoff.processMethod(getChainId(), method);
            } else {
                throw new InterruptedException("request interrupted");
            }
        }
        return this.chain.call(args);
    }
}
