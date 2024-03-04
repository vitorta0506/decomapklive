package com.vk.api.sdk.auth;

import cn.jpush.android.api.JThirdPlatFormInterface;
import com.vk.api.sdk.exceptions.VKAuthException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthCallback;", "", "onLogin", "", JThirdPlatFormInterface.KEY_TOKEN, "Lcom/vk/api/sdk/auth/VKAccessToken;", "onLoginFailed", "authException", "Lcom/vk/api/sdk/exceptions/VKAuthException;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface VKAuthCallback {
    void onLogin(@NotNull VKAccessToken vKAccessToken);

    void onLoginFailed(@NotNull VKAuthException vKAuthException);
}
