package u1;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
/* loaded from: classes.dex */
public final class g implements q1.b<SchedulerConfig> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<y1.a> f58313a;

    public g(fi.a<y1.a> aVar) {
        this.f58313a = aVar;
    }

    public static SchedulerConfig a(y1.a aVar) {
        return (SchedulerConfig) q1.d.c(f.a(aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static g b(fi.a<y1.a> aVar) {
        return new g(aVar);
    }

    @Override // fi.a
    /* renamed from: c */
    public SchedulerConfig get() {
        return a(this.f58313a.get());
    }
}
