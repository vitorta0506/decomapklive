package de;

import android.app.Application;
import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public final class k implements eg.c<e> {

    /* renamed from: a  reason: collision with root package name */
    private final fi.a<Context> f38076a;

    /* renamed from: b  reason: collision with root package name */
    private final fi.a<ScheduledExecutorService> f38077b;

    private k(fi.a<Context> aVar, fi.a<ScheduledExecutorService> aVar2) {
        this.f38076a = aVar;
        this.f38077b = aVar2;
    }

    public static eg.c<e> a(fi.a<Context> aVar, fi.a<ScheduledExecutorService> aVar2) {
        return new k(aVar, aVar2);
    }

    @Override // fi.a
    public final /* synthetic */ Object get() {
        e eVar = new e(this.f38077b.get());
        ((Application) this.f38076a.get().getApplicationContext()).registerActivityLifecycleCallbacks(eVar);
        return (e) eg.d.b(eVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
