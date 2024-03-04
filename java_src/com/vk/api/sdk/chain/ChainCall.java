package com.vk.api.sdk.chain;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.VKApiManager;
import com.vk.api.sdk.utils.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\b&\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0017\u0010\b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\t\u001a\u00020\nH&¢\u0006\u0002\u0010\u000bJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0004R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/vk/api/sdk/chain/ChainCall;", ExifInterface.GPS_DIRECTION_TRUE, "", "manager", "Lcom/vk/api/sdk/VKApiManager;", "(Lcom/vk/api/sdk/VKApiManager;)V", "getManager", "()Lcom/vk/api/sdk/VKApiManager;", NotificationCompat.CATEGORY_CALL, "args", "Lcom/vk/api/sdk/chain/ChainArgs;", "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;", "logDebug", "", "msg", "", "t", "", "logWarning", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class ChainCall<T> {
    @NotNull
    private final VKApiManager manager;

    public ChainCall(@NotNull VKApiManager manager) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        this.manager = manager;
    }

    @Nullable
    public abstract T call(@NotNull ChainArgs chainArgs) throws Exception;

    @NotNull
    public final VKApiManager getManager() {
        return this.manager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void logDebug(@NotNull String msg, @NotNull Throwable t10) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(t10, "t");
        this.manager.getConfig().getLogger().log(Logger.LogLevel.DEBUG, msg, t10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void logWarning(@NotNull String msg, @NotNull Throwable t10) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(t10, "t");
        this.manager.getConfig().getLogger().log(Logger.LogLevel.WARNING, msg, t10);
    }
}
