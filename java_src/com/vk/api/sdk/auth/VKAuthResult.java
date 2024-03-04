package com.vk.api.sdk.auth;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
@Deprecated(message = "VKAuthResult is deprecated", replaceWith = @ReplaceWith(expression = "VKAuthenticationResult", imports = {"com.vk.api.sdk.auth.VKAuthenticationResult"}))
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\rR\u0011\u0010\u000e\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vk/api/sdk/auth/VKAuthResult;", "", "accessToken", "Lcom/vk/api/sdk/auth/VKAccessToken;", "errorCode", "", "(Lcom/vk/api/sdk/auth/VKAccessToken;I)V", "getAccessToken", "()Lcom/vk/api/sdk/auth/VKAccessToken;", "getErrorCode", "()I", "isError", "", "()Z", "isSuccess", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKAuthResult {
    @Nullable
    private final VKAccessToken accessToken;
    private final int errorCode;

    @JvmOverloads
    public VKAuthResult(@Nullable VKAccessToken vKAccessToken) {
        this(vKAccessToken, 0, 2, null);
    }

    @JvmOverloads
    public VKAuthResult(@Nullable VKAccessToken vKAccessToken, int i9) {
        this.accessToken = vKAccessToken;
        this.errorCode = i9;
    }

    @Nullable
    public final VKAccessToken getAccessToken() {
        return this.accessToken;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final boolean isError() {
        return this.errorCode != 0;
    }

    public final boolean isSuccess() {
        return !isError();
    }

    public /* synthetic */ VKAuthResult(VKAccessToken vKAccessToken, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(vKAccessToken, (i10 & 2) != 0 ? 0 : i9);
    }
}
