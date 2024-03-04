package com.vk.api.sdk;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, d2 = {"Lcom/vk/api/sdk/VKApiResponseValidator;", "", "validateResponse", "", PushConstants.MZ_PUSH_MESSAGE_METHOD, "", "extended", "", "response", "headers", "Lokhttp3/Headers;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface VKApiResponseValidator {
    void validateResponse(@NotNull String str, boolean z10, @NotNull String str2, @NotNull Headers headers);
}
