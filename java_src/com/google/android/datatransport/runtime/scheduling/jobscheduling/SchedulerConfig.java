package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.b;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class SchedulerConfig {

    /* loaded from: classes.dex */
    public enum Flag {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private y1.a f5347a;

        /* renamed from: b  reason: collision with root package name */
        private Map<Priority, b> f5348b = new HashMap();

        public a a(Priority priority, b bVar) {
            this.f5348b.put(priority, bVar);
            return this;
        }

        public SchedulerConfig b() {
            Objects.requireNonNull(this.f5347a, "missing required property: clock");
            if (this.f5348b.keySet().size() >= Priority.values().length) {
                Map<Priority, b> map = this.f5348b;
                this.f5348b = new HashMap();
                return SchedulerConfig.d(this.f5347a, map);
            }
            throw new IllegalStateException("Not all priorities have been configured");
        }

        public a c(y1.a aVar) {
            this.f5347a = aVar;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {

        /* loaded from: classes.dex */
        public static abstract class a {
            public abstract b a();

            public abstract a b(long j10);

            public abstract a c(Set<Flag> set);

            public abstract a d(long j10);
        }

        public static a a() {
            return new b.C0074b().c(Collections.emptySet());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Set<Flag> c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long d();
    }

    private long a(int i9, long j10) {
        int i10;
        return (long) (Math.pow(3.0d, i9 - 1) * j10 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j10 > 1 ? j10 : 2L) * i10)));
    }

    public static a b() {
        return new a();
    }

    static SchedulerConfig d(y1.a aVar, Map<Priority, b> map) {
        return new com.google.android.datatransport.runtime.scheduling.jobscheduling.a(aVar, map);
    }

    public static SchedulerConfig f(y1.a aVar) {
        return b().a(Priority.DEFAULT, b.a().b(30000L).d(86400000L).a()).a(Priority.HIGHEST, b.a().b(1000L).d(86400000L).a()).a(Priority.VERY_LOW, b.a().b(86400000L).d(86400000L).c(i(Flag.NETWORK_UNMETERED, Flag.DEVICE_IDLE)).a()).c(aVar).b();
    }

    private static <T> Set<T> i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    @RequiresApi(api = 21)
    private void j(JobInfo.Builder builder, Set<Flag> set) {
        if (set.contains(Flag.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(Flag.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(Flag.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    @RequiresApi(api = 21)
    public JobInfo.Builder c(JobInfo.Builder builder, Priority priority, long j10, int i9) {
        builder.setMinimumLatency(g(priority, j10, i9));
        j(builder, h().get(priority).c());
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract y1.a e();

    public long g(Priority priority, long j10, int i9) {
        long a10 = j10 - e().a();
        b bVar = h().get(priority);
        return Math.min(Math.max(a(i9, bVar.b()), a10), bVar.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Map<Priority, b> h();
}
