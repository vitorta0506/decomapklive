package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.login.LoginClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0014¨\u0006\u000b"}, d2 = {"Lcom/facebook/login/GetTokenClient;", "Lcom/facebook/internal/PlatformServiceClient;", "context", "Landroid/content/Context;", "request", "Lcom/facebook/login/LoginClient$Request;", "(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V", "populateRequestBundle", "", "data", "Landroid/os/Bundle;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class GetTokenClient extends PlatformServiceClient {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTokenClient(@NotNull Context context, @NotNull LoginClient.Request request) {
        super(context, 65536, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REPLY, NativeProtocol.PROTOCOL_VERSION_20121101, request.getApplicationId(), request.getNonce());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
    }

    @Override // com.facebook.internal.PlatformServiceClient
    protected void populateRequestBundle(@NotNull Bundle data) {
        Intrinsics.checkNotNullParameter(data, "data");
    }
}
