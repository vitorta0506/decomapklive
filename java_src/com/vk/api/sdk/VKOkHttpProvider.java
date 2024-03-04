package com.vk.api.sdk;

import com.vk.api.sdk.okhttp.UserAgentInterceptor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001:\u0002\t\nB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&¨\u0006\u000b"}, d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider;", "", "()V", "getClient", "Lokhttp3/OkHttpClient;", "updateClient", "", "f", "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "BuilderUpdateFunction", "DefaultProvider", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class VKOkHttpProvider {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "", "update", "Lokhttp3/OkHttpClient$Builder;", "builder", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface BuilderUpdateFunction {
        @NotNull
        OkHttpClient.Builder update(@NotNull OkHttpClient.Builder builder);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;", "Lcom/vk/api/sdk/VKOkHttpProvider;", "()V", "okHttpClient", "Lokhttp3/OkHttpClient;", "getClient", "updateClient", "", "f", "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultProvider extends VKOkHttpProvider {
        @Nullable
        private volatile OkHttpClient okHttpClient;

        @Override // com.vk.api.sdk.VKOkHttpProvider
        @NotNull
        public OkHttpClient getClient() {
            if (this.okHttpClient == null) {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                this.okHttpClient = builder.connectTimeout(20L, timeUnit).readTimeout(30L, timeUnit).writeTimeout(20L, timeUnit).followRedirects(true).followSslRedirects(true).addInterceptor(new UserAgentInterceptor(VK.INSTANCE.getSDKUserAgent$core_release())).build();
            }
            OkHttpClient okHttpClient = this.okHttpClient;
            Intrinsics.checkNotNull(okHttpClient);
            return okHttpClient;
        }

        @Override // com.vk.api.sdk.VKOkHttpProvider
        public void updateClient(@NotNull BuilderUpdateFunction f10) {
            Intrinsics.checkNotNullParameter(f10, "f");
            this.okHttpClient = f10.update(getClient().newBuilder()).build();
        }
    }

    @NotNull
    public abstract OkHttpClient getClient();

    public abstract void updateClient(@NotNull BuilderUpdateFunction builderUpdateFunction);
}
