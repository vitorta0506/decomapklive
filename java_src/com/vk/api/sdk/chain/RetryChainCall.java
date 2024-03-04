package com.vk.api.sdk.chain;

import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VKApiManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/chain/RetryChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/ChainCall;", "manager", "Lcom/vk/api/sdk/VKApiManager;", "retryLimit", "", "(Lcom/vk/api/sdk/VKApiManager;I)V", "getRetryLimit", "()I", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class RetryChainCall<T> extends ChainCall<T> {
    private final int retryLimit;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RetryChainCall(@NotNull VKApiManager manager, int i9) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
        this.retryLimit = i9;
        if (i9 < 0) {
            throw new IllegalArgumentException("retryLimit must be >= 0");
        }
    }

    public final int getRetryLimit() {
        return this.retryLimit;
    }
}
