package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes.dex */
final class b extends SchedulerConfig.b {

    /* renamed from: a  reason: collision with root package name */
    private final long f5351a;

    /* renamed from: b  reason: collision with root package name */
    private final long f5352b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<SchedulerConfig.Flag> f5353c;

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0074b extends SchedulerConfig.b.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f5354a;

        /* renamed from: b  reason: collision with root package name */
        private Long f5355b;

        /* renamed from: c  reason: collision with root package name */
        private Set<SchedulerConfig.Flag> f5356c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b a() {
            String str = "";
            if (this.f5354a == null) {
                str = " delta";
            }
            if (this.f5355b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f5356c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new b(this.f5354a.longValue(), this.f5355b.longValue(), this.f5356c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a b(long j10) {
            this.f5354a = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a c(Set<SchedulerConfig.Flag> set) {
            Objects.requireNonNull(set, "Null flags");
            this.f5356c = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b.a
        public SchedulerConfig.b.a d(long j10) {
            this.f5355b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    long b() {
        return this.f5351a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    Set<SchedulerConfig.Flag> c() {
        return this.f5353c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.b
    long d() {
        return this.f5352b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SchedulerConfig.b) {
            SchedulerConfig.b bVar = (SchedulerConfig.b) obj;
            return this.f5351a == bVar.b() && this.f5352b == bVar.d() && this.f5353c.equals(bVar.c());
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f5351a;
        long j11 = this.f5352b;
        return this.f5353c.hashCode() ^ ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f5351a + ", maxAllowedDelay=" + this.f5352b + ", flags=" + this.f5353c + "}";
    }

    private b(long j10, long j11, Set<SchedulerConfig.Flag> set) {
        this.f5351a = j10;
        this.f5352b = j11;
        this.f5353c = set;
    }
}
