package com.vk.api.sdk.okhttp;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/okhttp/DefaultLoggingPrefixer;", "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;", "()V", "id", "Ljava/util/concurrent/atomic/AtomicInteger;", "getPrefix", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DefaultLoggingPrefixer implements LoggingPrefixer {
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final AtomicInteger f35636id = new AtomicInteger(0);

    @Override // com.vk.api.sdk.okhttp.LoggingPrefixer
    @NotNull
    public String getPrefix() {
        return String.valueOf(this.f35636id.getAndIncrement());
    }
}
