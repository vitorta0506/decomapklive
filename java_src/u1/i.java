package u1;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import v1.u;
/* loaded from: classes.dex */
public final class i implements q1.b<u> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Context> f58314a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<w1.d> f58315b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<SchedulerConfig> f58316c;

    /* renamed from: d  reason: collision with root package name */
    private final fi.a<y1.a> f58317d;

    public i(fi.a<Context> aVar, fi.a<w1.d> aVar2, fi.a<SchedulerConfig> aVar3, fi.a<y1.a> aVar4) {
        this.f58314a = aVar;
        this.f58315b = aVar2;
        this.f58316c = aVar3;
        this.f58317d = aVar4;
    }

    public static i a(fi.a<Context> aVar, fi.a<w1.d> aVar2, fi.a<SchedulerConfig> aVar3, fi.a<y1.a> aVar4) {
        return new i(aVar, aVar2, aVar3, aVar4);
    }

    public static u c(Context context, w1.d dVar, SchedulerConfig schedulerConfig, y1.a aVar) {
        return (u) q1.d.c(h.a(context, dVar, schedulerConfig, aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // fi.a
    /* renamed from: b */
    public u get() {
        return c(this.f58314a.get(), this.f58315b.get(), this.f58316c.get(), this.f58317d.get());
    }
}
