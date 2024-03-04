package de;

import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public final class g implements eg.c<d<ServerEvent>> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<ge.b> f38068a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<ScheduledExecutorService> f38069b;

    /* renamed from: c  reason: collision with root package name */
    private final fi.a<e> f38070c;

    private g(fi.a<ge.b> aVar, fi.a<ScheduledExecutorService> aVar2, fi.a<e> aVar3) {
        this.f38068a = aVar;
        this.f38069b = aVar2;
        this.f38070c = aVar3;
    }

    public static eg.c<d<ServerEvent>> a(fi.a<ge.b> aVar, fi.a<ScheduledExecutorService> aVar2, fi.a<e> aVar3) {
        return new g(aVar, aVar2, aVar3);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        d dVar = new d(this.f38068a.get(), this.f38069b.get(), this.f38070c.get(), 10);
        dVar.c();
        return (d) eg.d.b(dVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
