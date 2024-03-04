package com.vk.api.sdk.utils.tmr;

import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/vk/api/sdk/utils/tmr/TooManyRequestLimitBackoff;", "", "waitBeforeCall", "", "maxRetryCount", "", "maxRetryTime", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface TooManyRequestLimitBackoff {
    void waitBeforeCall(int i9, long j10);
}
