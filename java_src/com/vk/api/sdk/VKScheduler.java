package com.vk.api.sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u001b\u0010\r\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcom/vk/api/sdk/VKScheduler;", "", "()V", "NETWORK_THREADS_COUNT", "", "counter", "Ljava/util/concurrent/atomic/AtomicInteger;", "handler", "Landroid/os/Handler;", "getHandler", "()Landroid/os/Handler;", "handler$delegate", "Lkotlin/Lazy;", "networkExecutor", "Ljava/util/concurrent/ExecutorService;", "getNetworkExecutor", "()Ljava/util/concurrent/ExecutorService;", "networkExecutor$delegate", "runOnMainThread", "", "runnable", "Ljava/lang/Runnable;", "delay", "", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class VKScheduler {
    private static final int NETWORK_THREADS_COUNT = 32;
    @NotNull
    private static final Lazy handler$delegate;
    @NotNull
    private static final Lazy networkExecutor$delegate;
    @NotNull
    public static final VKScheduler INSTANCE = new VKScheduler();
    @NotNull
    private static final AtomicInteger counter = new AtomicInteger();

    static {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Handler>() { // from class: com.vk.api.sdk.VKScheduler$handler$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Handler invoke() {
                return new Handler(Looper.getMainLooper());
            }
        });
        handler$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(VKScheduler$networkExecutor$2.INSTANCE);
        networkExecutor$delegate = lazy2;
    }

    private VKScheduler() {
    }

    private final Handler getHandler() {
        return (Handler) handler$delegate.getValue();
    }

    @JvmStatic
    @JvmOverloads
    public static final void runOnMainThread(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        runOnMainThread$default(runnable, 0L, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void runOnMainThread(@NotNull Runnable runnable, long j10) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper()) && j10 == 0) {
            runnable.run();
        } else {
            INSTANCE.getHandler().postDelayed(runnable, j10);
        }
    }

    public static /* synthetic */ void runOnMainThread$default(Runnable runnable, long j10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            j10 = 0;
        }
        runOnMainThread(runnable, j10);
    }

    @NotNull
    public final ExecutorService getNetworkExecutor() {
        Object value = networkExecutor$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-networkExecutor>(...)");
        return (ExecutorService) value;
    }
}
