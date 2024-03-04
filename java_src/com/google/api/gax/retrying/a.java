package com.google.api.gax.retrying;

import com.google.api.gax.retrying.RetrySettings;
import java.util.Objects;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
final class a extends RetrySettings {
    private static final long serialVersionUID = 8258475264439710899L;

    /* renamed from: a  reason: collision with root package name */
    private final Duration f11210a;

    /* renamed from: b  reason: collision with root package name */
    private final Duration f11211b;

    /* renamed from: c  reason: collision with root package name */
    private final double f11212c;

    /* renamed from: d  reason: collision with root package name */
    private final Duration f11213d;

    /* renamed from: e  reason: collision with root package name */
    private final int f11214e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f11215f;

    /* renamed from: g  reason: collision with root package name */
    private final Duration f11216g;

    /* renamed from: h  reason: collision with root package name */
    private final double f11217h;

    /* renamed from: i  reason: collision with root package name */
    private final Duration f11218i;

    /* loaded from: classes2.dex */
    static final class b extends RetrySettings.a {

        /* renamed from: a  reason: collision with root package name */
        private Duration f11219a;

        /* renamed from: b  reason: collision with root package name */
        private Duration f11220b;

        /* renamed from: c  reason: collision with root package name */
        private Double f11221c;

        /* renamed from: d  reason: collision with root package name */
        private Duration f11222d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f11223e;

        /* renamed from: f  reason: collision with root package name */
        private Boolean f11224f;

        /* renamed from: g  reason: collision with root package name */
        private Duration f11225g;

        /* renamed from: h  reason: collision with root package name */
        private Double f11226h;

        /* renamed from: i  reason: collision with root package name */
        private Duration f11227i;

        @Override // com.google.api.gax.retrying.RetrySettings.a
        RetrySettings a() {
            Duration duration;
            Double d10;
            Duration duration2 = this.f11219a;
            if (duration2 != null && (duration = this.f11220b) != null && (d10 = this.f11221c) != null && this.f11222d != null && this.f11223e != null && this.f11224f != null && this.f11225g != null && this.f11226h != null && this.f11227i != null) {
                return new a(duration2, duration, d10.doubleValue(), this.f11222d, this.f11223e.intValue(), this.f11224f.booleanValue(), this.f11225g, this.f11226h.doubleValue(), this.f11227i);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f11219a == null) {
                sb2.append(" totalTimeout");
            }
            if (this.f11220b == null) {
                sb2.append(" initialRetryDelay");
            }
            if (this.f11221c == null) {
                sb2.append(" retryDelayMultiplier");
            }
            if (this.f11222d == null) {
                sb2.append(" maxRetryDelay");
            }
            if (this.f11223e == null) {
                sb2.append(" maxAttempts");
            }
            if (this.f11224f == null) {
                sb2.append(" jittered");
            }
            if (this.f11225g == null) {
                sb2.append(" initialRpcTimeout");
            }
            if (this.f11226h == null) {
                sb2.append(" rpcTimeoutMultiplier");
            }
            if (this.f11227i == null) {
                sb2.append(" maxRpcTimeout");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a c(Duration duration) {
            Objects.requireNonNull(duration, "Null initialRetryDelay");
            this.f11220b = duration;
            return this;
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a d(Duration duration) {
            Objects.requireNonNull(duration, "Null initialRpcTimeout");
            this.f11225g = duration;
            return this;
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a e(boolean z10) {
            this.f11224f = Boolean.valueOf(z10);
            return this;
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a f(int i9) {
            this.f11223e = Integer.valueOf(i9);
            return this;
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a g(Duration duration) {
            Objects.requireNonNull(duration, "Null maxRetryDelay");
            this.f11222d = duration;
            return this;
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a h(Duration duration) {
            Objects.requireNonNull(duration, "Null maxRpcTimeout");
            this.f11227i = duration;
            return this;
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a i(double d10) {
            this.f11221c = Double.valueOf(d10);
            return this;
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a j(double d10) {
            this.f11226h = Double.valueOf(d10);
            return this;
        }

        @Override // com.google.api.gax.retrying.RetrySettings.a
        public RetrySettings.a k(Duration duration) {
            Objects.requireNonNull(duration, "Null totalTimeout");
            this.f11219a = duration;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(RetrySettings retrySettings) {
            this.f11219a = retrySettings.getTotalTimeout();
            this.f11220b = retrySettings.getInitialRetryDelay();
            this.f11221c = Double.valueOf(retrySettings.getRetryDelayMultiplier());
            this.f11222d = retrySettings.getMaxRetryDelay();
            this.f11223e = Integer.valueOf(retrySettings.getMaxAttempts());
            this.f11224f = Boolean.valueOf(retrySettings.isJittered());
            this.f11225g = retrySettings.getInitialRpcTimeout();
            this.f11226h = Double.valueOf(retrySettings.getRpcTimeoutMultiplier());
            this.f11227i = retrySettings.getMaxRpcTimeout();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RetrySettings) {
            RetrySettings retrySettings = (RetrySettings) obj;
            return this.f11210a.equals(retrySettings.getTotalTimeout()) && this.f11211b.equals(retrySettings.getInitialRetryDelay()) && Double.doubleToLongBits(this.f11212c) == Double.doubleToLongBits(retrySettings.getRetryDelayMultiplier()) && this.f11213d.equals(retrySettings.getMaxRetryDelay()) && this.f11214e == retrySettings.getMaxAttempts() && this.f11215f == retrySettings.isJittered() && this.f11216g.equals(retrySettings.getInitialRpcTimeout()) && Double.doubleToLongBits(this.f11217h) == Double.doubleToLongBits(retrySettings.getRpcTimeoutMultiplier()) && this.f11218i.equals(retrySettings.getMaxRpcTimeout());
        }
        return false;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public Duration getInitialRetryDelay() {
        return this.f11211b;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public Duration getInitialRpcTimeout() {
        return this.f11216g;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public int getMaxAttempts() {
        return this.f11214e;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public Duration getMaxRetryDelay() {
        return this.f11213d;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public Duration getMaxRpcTimeout() {
        return this.f11218i;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public double getRetryDelayMultiplier() {
        return this.f11212c;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public double getRpcTimeoutMultiplier() {
        return this.f11217h;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public Duration getTotalTimeout() {
        return this.f11210a;
    }

    public int hashCode() {
        return ((((((((((((((((this.f11210a.hashCode() ^ 1000003) * 1000003) ^ this.f11211b.hashCode()) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.f11212c) >>> 32) ^ Double.doubleToLongBits(this.f11212c)))) * 1000003) ^ this.f11213d.hashCode()) * 1000003) ^ this.f11214e) * 1000003) ^ (this.f11215f ? 1231 : 1237)) * 1000003) ^ this.f11216g.hashCode()) * 1000003) ^ ((int) ((Double.doubleToLongBits(this.f11217h) >>> 32) ^ Double.doubleToLongBits(this.f11217h)))) * 1000003) ^ this.f11218i.hashCode();
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    @Deprecated
    public boolean isJittered() {
        return this.f11215f;
    }

    @Override // com.google.api.gax.retrying.RetrySettings
    public RetrySettings.a toBuilder() {
        return new b(this);
    }

    public String toString() {
        return "RetrySettings{totalTimeout=" + this.f11210a + ", initialRetryDelay=" + this.f11211b + ", retryDelayMultiplier=" + this.f11212c + ", maxRetryDelay=" + this.f11213d + ", maxAttempts=" + this.f11214e + ", jittered=" + this.f11215f + ", initialRpcTimeout=" + this.f11216g + ", rpcTimeoutMultiplier=" + this.f11217h + ", maxRpcTimeout=" + this.f11218i + "}";
    }

    private a(Duration duration, Duration duration2, double d10, Duration duration3, int i9, boolean z10, Duration duration4, double d11, Duration duration5) {
        this.f11210a = duration;
        this.f11211b = duration2;
        this.f11212c = d10;
        this.f11213d = duration3;
        this.f11214e = i9;
        this.f11215f = z10;
        this.f11216g = duration4;
        this.f11217h = d11;
        this.f11218i = duration5;
    }
}
