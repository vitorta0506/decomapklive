package com.vk.api.sdk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\t"}, d2 = {"Lcom/vk/api/sdk/VKApiIllegalCredentialsListener;", "", "onInvalidCredentials", "", "methodName", "", "userBanInfo", "Lorg/json/JSONObject;", "onUserDeactivated", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface VKApiIllegalCredentialsListener {

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static void onUserDeactivated(@NotNull VKApiIllegalCredentialsListener vKApiIllegalCredentialsListener, @Nullable String str) {
            Intrinsics.checkNotNullParameter(vKApiIllegalCredentialsListener, "this");
            vKApiIllegalCredentialsListener.onInvalidCredentials(str, null);
        }
    }

    void onInvalidCredentials(@Nullable String str, @Nullable JSONObject jSONObject);

    void onUserDeactivated(@Nullable String str);
}
