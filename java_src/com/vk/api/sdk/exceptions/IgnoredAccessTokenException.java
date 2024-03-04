package com.vk.api.sdk.exceptions;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/exceptions/IgnoredAccessTokenException;", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", PushConstants.MZ_PUSH_MESSAGE_METHOD, "", "(Ljava/lang/String;)V", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class IgnoredAccessTokenException extends VKApiExecutionException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IgnoredAccessTokenException(@NotNull String method) {
        super(-2, method, false, "Ignored Access Token", null, null, null, null, 0, 496, null);
        Intrinsics.checkNotNullParameter(method, "method");
    }
}
