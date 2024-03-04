package de;

import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public final class l implements eg.c<b<OpMetric>> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<ee.a> f38078a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<ScheduledExecutorService> f38079b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<e> f38080c;

    private l(fi.a<ee.a> aVar, fi.a<ScheduledExecutorService> aVar2, fi.a<e> aVar3) {
        this.f38078a = aVar;
        this.f38079b = aVar2;
        this.f38080c = aVar3;
    }

    public static eg.c<b<OpMetric>> a(fi.a<ee.a> aVar, fi.a<ScheduledExecutorService> aVar2, fi.a<e> aVar3) {
        return new l(aVar, aVar2, aVar3);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        d dVar = new d(this.f38078a.get(), this.f38079b.get(), this.f38080c.get(), 10);
        dVar.c();
        return (b) eg.d.b(dVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
