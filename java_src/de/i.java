package de;

import com.snapchat.kit.sdk.core.metrics.model.SkateEvent;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public final class i implements eg.c<b<SkateEvent>> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<he.a> f38072a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<ScheduledExecutorService> f38073b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<e> f38074c;

    private i(fi.a<he.a> aVar, fi.a<ScheduledExecutorService> aVar2, fi.a<e> aVar3) {
        this.f38072a = aVar;
        this.f38073b = aVar2;
        this.f38074c = aVar3;
    }

    public static eg.c<b<SkateEvent>> a(fi.a<he.a> aVar, fi.a<ScheduledExecutorService> aVar2, fi.a<e> aVar3) {
        return new i(aVar, aVar2, aVar3);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        d dVar = new d(this.f38072a.get(), this.f38073b.get(), this.f38074c.get(), 1);
        dVar.c();
        return (b) eg.d.b(dVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
