package com.vk.api.sdk.utils;

import androidx.annotation.WorkerThread;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0016\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0002\u0010\tJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0015J\u0006\u0010\u0018\u001a\u00020\u0015J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\b\u0010\u001d\u001a\u00020\u0015H\u0007R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000e@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/vk/api/sdk/utils/ExponentialBackoff;", "", "minDelayMs", "", "maxDelayMs", "factor", "", "criticalFactor", "jitter", "(JJFFF)V", "<set-?>", "delayMs", "getDelayMs", "()J", "", "errorsCount", "getErrorsCount", "()I", "random", "Ljava/util/Random;", "increase", "", "onCriticalError", "onError", "reset", "shouldWait", "", "variance", "std", "waitIfNeeded", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class ExponentialBackoff {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final float criticalFactor;
    private volatile long delayMs;
    private volatile int errorsCount;
    private final float factor;
    private final float jitter;
    private final long maxDelayMs;
    private final long minDelayMs;
    @NotNull
    private final Random random;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/vk/api/sdk/utils/ExponentialBackoff$Companion;", "", "()V", "forNetworkWait", "Lcom/vk/api/sdk/utils/ExponentialBackoff;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final ExponentialBackoff forNetworkWait() {
            return new ExponentialBackoff(500L, 60000L, 1.5f, 0.0f, 0.0f, 24, null);
        }
    }

    public ExponentialBackoff() {
        this(0L, 0L, 0.0f, 0.0f, 0.0f, 31, null);
    }

    public ExponentialBackoff(long j10, long j11, float f10, float f11, float f12) {
        this.minDelayMs = j10;
        this.maxDelayMs = j11;
        this.factor = f10;
        this.criticalFactor = f11;
        this.jitter = f12;
        this.random = new Random(System.currentTimeMillis());
        this.delayMs = j10;
    }

    @JvmStatic
    @NotNull
    public static final ExponentialBackoff forNetworkWait() {
        return Companion.forNetworkWait();
    }

    private final void increase(float f10) {
        this.delayMs = Math.min(((float) this.delayMs) * f10, (float) this.maxDelayMs);
        this.delayMs += variance(((float) this.delayMs) * this.jitter);
        this.errorsCount++;
    }

    private final long variance(float f10) {
        return (long) (this.random.nextGaussian() * f10);
    }

    public final long getDelayMs() {
        return this.delayMs;
    }

    public final int getErrorsCount() {
        return this.errorsCount;
    }

    public final void onCriticalError() {
        increase(this.criticalFactor);
    }

    public final void onError() {
        increase(this.factor);
    }

    public final void reset() {
        this.delayMs = this.minDelayMs;
        this.errorsCount = 0;
    }

    public final boolean shouldWait() {
        return this.errorsCount > 0;
    }

    @WorkerThread
    public final void waitIfNeeded() {
        if (shouldWait()) {
            Thread.sleep(this.delayMs);
        }
    }

    public /* synthetic */ ExponentialBackoff(long j10, long j11, float f10, float f11, float f12, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? TimeUnit.MILLISECONDS.toMillis(100L) : j10, (i9 & 2) != 0 ? TimeUnit.MINUTES.toMillis(5L) : j11, (i9 & 4) != 0 ? 2.0f : f10, (i9 & 8) != 0 ? 5.0f : f11, (i9 & 16) != 0 ? 0.1f : f12);
    }
}
