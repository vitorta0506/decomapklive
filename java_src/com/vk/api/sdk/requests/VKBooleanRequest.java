package com.vk.api.sdk.requests;

import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0015\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/requests/VKBooleanRequest;", "Lcom/vk/api/sdk/requests/VKRequest;", "", PushConstants.MZ_PUSH_MESSAGE_METHOD, "", "(Ljava/lang/String;)V", "parse", "r", "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;)Ljava/lang/Boolean;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class VKBooleanRequest extends VKRequest<Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VKBooleanRequest(@NotNull String method) {
        super(method, null, 2, null);
        Intrinsics.checkNotNullParameter(method, "method");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.vk.api.sdk.requests.VKRequest
    @NotNull
    public Boolean parse(@NotNull JSONObject r10) {
        Intrinsics.checkNotNullParameter(r10, "r");
        return Boolean.TRUE;
    }
}
