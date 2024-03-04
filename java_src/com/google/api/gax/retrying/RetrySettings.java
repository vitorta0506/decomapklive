package com.google.api.gax.retrying;

import com.google.api.gax.retrying.a;
import java.io.Serializable;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public abstract class RetrySettings implements Serializable {
    private static final long serialVersionUID = 8258475264439710899L;

    /* loaded from: classes2.dex */
    public static abstract class a {
        abstract RetrySettings a();

        public RetrySettings b() {
            RetrySettings a10 = a();
            if (a10.getTotalTimeout().toMillis() >= 0) {
                if (a10.getInitialRetryDelay().toMillis() >= 0) {
                    if (a10.getRetryDelayMultiplier() >= 1.0d) {
                        if (a10.getMaxRetryDelay().compareTo(a10.getInitialRetryDelay()) >= 0) {
                            if (a10.getMaxAttempts() >= 0) {
                                if (a10.getInitialRpcTimeout().toMillis() >= 0) {
                                    if (a10.getMaxRpcTimeout().compareTo(a10.getInitialRpcTimeout()) >= 0) {
                                        if (a10.getRpcTimeoutMultiplier() >= 1.0d) {
                                            return a10;
                                        }
                                        throw new IllegalStateException("rpc timeout multiplier must be at least 1");
                                    }
                                    throw new IllegalStateException("max rpc timeout must not be shorter than initial timeout");
                                }
                                throw new IllegalStateException("initial rpc timeout must not be negative");
                            }
                            throw new IllegalStateException("max attempts must be non-negative");
                        }
                        throw new IllegalStateException("max retry delay must not be shorter than initial delay");
                    }
                    throw new IllegalStateException("retry delay multiplier must be at least 1");
                }
                throw new IllegalStateException("initial retry delay must not be negative");
            }
            throw new IllegalStateException("total timeout must not be negative");
        }

        public abstract a c(Duration duration);

        public abstract a d(Duration duration);

        @Deprecated
        public abstract a e(boolean z10);

        public abstract a f(int i9);

        public abstract a g(Duration duration);

        public abstract a h(Duration duration);

        public abstract a i(double d10);

        public abstract a j(double d10);

        public abstract a k(Duration duration);
    }

    public static a newBuilder() {
        a.b bVar = new a.b();
        Duration duration = Duration.ZERO;
        return bVar.k(duration).c(duration).i(1.0d).g(duration).f(0).e(true).d(duration).j(1.0d).h(duration);
    }

    public abstract Duration getInitialRetryDelay();

    public abstract Duration getInitialRpcTimeout();

    public abstract int getMaxAttempts();

    public abstract Duration getMaxRetryDelay();

    public abstract Duration getMaxRpcTimeout();

    public abstract double getRetryDelayMultiplier();

    public abstract double getRpcTimeoutMultiplier();

    public abstract Duration getTotalTimeout();

    @Deprecated
    public abstract boolean isJittered();

    public abstract a toBuilder();
}
