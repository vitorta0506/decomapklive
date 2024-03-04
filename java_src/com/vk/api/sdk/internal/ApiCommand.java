package com.vk.api.sdk.internal;

import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.exceptions.VKApiException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0006H$¢\u0006\u0002\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vk/api/sdk/internal/ApiCommand;", "Response", "", "()V", "execute", "manager", "Lcom/vk/api/sdk/VKApiManager;", "(Lcom/vk/api/sdk/VKApiManager;)Ljava/lang/Object;", "onExecute", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class ApiCommand<Response> {
    public final Response execute(@NotNull VKApiManager manager) throws InterruptedException, IOException, VKApiException {
        Intrinsics.checkNotNullParameter(manager, "manager");
        return onExecute(manager);
    }

    protected abstract Response onExecute(@NotNull VKApiManager vKApiManager) throws InterruptedException, IOException, VKApiException;
}
