package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class a extends SchedulerConfig {

    /* renamed from: a  reason: collision with root package name */
    private final y1.a f5349a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Priority, SchedulerConfig.b> f5350b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(y1.a aVar, Map<Priority, SchedulerConfig.b> map) {
        Objects.requireNonNull(aVar, "Null clock");
        this.f5349a = aVar;
        Objects.requireNonNull(map, "Null values");
        this.f5350b = map;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    y1.a e() {
        return this.f5349a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SchedulerConfig) {
            SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
            return this.f5349a.equals(schedulerConfig.e()) && this.f5350b.equals(schedulerConfig.h());
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    Map<Priority, SchedulerConfig.b> h() {
        return this.f5350b;
    }

    public int hashCode() {
        return ((this.f5349a.hashCode() ^ 1000003) * 1000003) ^ this.f5350b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f5349a + ", values=" + this.f5350b + "}";
    }
}
