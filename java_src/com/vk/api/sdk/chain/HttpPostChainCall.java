package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.VKApiProgressListener;
import com.vk.api.sdk.VKHttpPostCall;
import com.vk.api.sdk.e;
import com.vk.api.sdk.exceptions.VKApiException;
import com.vk.api.sdk.okhttp.OkHttpExecutor;
import com.vk.api.sdk.okhttp.OkHttpPostCall;
import com.vk.api.sdk.utils.ApiExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u0005\u001a\u00020\u0010\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0019¢\u0006\u0004\b \u0010!J\u0019\u0010\u0005\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\t\u001a\u0004\u0018\u00018\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0004¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0005\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006\""}, d2 = {"Lcom/vk/api/sdk/chain/HttpPostChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/vk/api/sdk/chain/ChainCall;", "Lcom/vk/api/sdk/chain/ChainArgs;", "args", NotificationCompat.CATEGORY_CALL, "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "", "response", "handleResponse", "(Ljava/lang/String;)Ljava/lang/Object;", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "okHttpExecutor", "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "getOkHttpExecutor", "()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;", "Lcom/vk/api/sdk/VKHttpPostCall;", "Lcom/vk/api/sdk/VKHttpPostCall;", "getCall", "()Lcom/vk/api/sdk/VKHttpPostCall;", "Lcom/vk/api/sdk/VKApiProgressListener;", "progressListener", "Lcom/vk/api/sdk/VKApiProgressListener;", "getProgressListener", "()Lcom/vk/api/sdk/VKApiProgressListener;", "Lcom/vk/api/sdk/e;", "parser", "Lcom/vk/api/sdk/e;", "getParser", "()Lcom/vk/api/sdk/e;", "Lcom/vk/api/sdk/VKApiManager;", "manager", "<init>", "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/okhttp/OkHttpExecutor;Lcom/vk/api/sdk/VKHttpPostCall;Lcom/vk/api/sdk/VKApiProgressListener;Lcom/vk/api/sdk/e;)V", "core_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes4.dex */
public class HttpPostChainCall<T> extends ChainCall<T> {
    @NotNull
    private final VKHttpPostCall call;
    @NotNull
    private final OkHttpExecutor okHttpExecutor;
    @Nullable
    private final e<T> parser;
    @Nullable
    private final VKApiProgressListener progressListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpPostChainCall(@NotNull VKApiManager manager, @NotNull OkHttpExecutor okHttpExecutor, @NotNull VKHttpPostCall call, @Nullable VKApiProgressListener vKApiProgressListener, @Nullable e<T> eVar) {
        super(manager);
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(okHttpExecutor, "okHttpExecutor");
        Intrinsics.checkNotNullParameter(call, "call");
        this.okHttpExecutor = okHttpExecutor;
        this.call = call;
        this.progressListener = vKApiProgressListener;
        this.parser = eVar;
    }

    @Override // com.vk.api.sdk.chain.ChainCall
    @Nullable
    public T call(@NotNull ChainArgs args) throws Exception {
        Intrinsics.checkNotNullParameter(args, "args");
        return handleResponse(this.okHttpExecutor.execute(new OkHttpPostCall(this.call), this.progressListener));
    }

    @NotNull
    public final VKHttpPostCall getCall() {
        return this.call;
    }

    @NotNull
    public final OkHttpExecutor getOkHttpExecutor() {
        return this.okHttpExecutor;
    }

    @Nullable
    public final e<T> getParser() {
        return this.parser;
    }

    @Nullable
    public final VKApiProgressListener getProgressListener() {
        return this.progressListener;
    }

    @Nullable
    protected final T handleResponse(@Nullable String str) {
        if (str != null) {
            if (!ApiExtKt.hasSimpleError(str)) {
                e<T> eVar = this.parser;
                if (eVar == null) {
                    return null;
                }
                return eVar.parse(str);
            }
            throw ApiExtKt.toSimpleError$default(str, "post", null, 2, null);
        }
        throw new VKApiException("Response returned null instead of valid string response");
    }
}
