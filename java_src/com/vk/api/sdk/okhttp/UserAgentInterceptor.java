package com.vk.api.sdk.okhttp;

import com.vk.api.sdk.utils.UserAgentProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/vk/api/sdk/okhttp/UserAgentInterceptor;", "Lokhttp3/Interceptor;", "userAgent", "Lcom/vk/api/sdk/utils/UserAgentProvider;", "(Lcom/vk/api/sdk/utils/UserAgentProvider;)V", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class UserAgentInterceptor implements Interceptor {
    @NotNull
    private final UserAgentProvider userAgent;

    public UserAgentInterceptor(@NotNull UserAgentProvider userAgent) {
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        this.userAgent = userAgent;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        return chain.proceed(chain.request().newBuilder().header("User-Agent", this.userAgent.getUserAgent()).build());
    }
}
