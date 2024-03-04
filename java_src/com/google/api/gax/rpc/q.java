package com.google.api.gax.rpc;

import java.util.concurrent.ScheduledExecutorService;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public final class q implements m0 {

    /* renamed from: a  reason: collision with root package name */
    private final k5.a f11346a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f11347b;

    /* renamed from: c  reason: collision with root package name */
    private final Duration f11348c;

    private q(k5.a aVar, ScheduledExecutorService scheduledExecutorService, Duration duration) {
        this.f11346a = aVar;
        this.f11347b = scheduledExecutorService;
        this.f11348c = duration;
    }

    public static m0 i() {
        return new q(null, null, null);
    }

    @Override // com.google.api.gax.rpc.m0
    public boolean a() {
        return true;
    }

    @Override // com.google.api.gax.rpc.m0
    public m0 b(k5.a aVar) {
        return new q((k5.a) com.google.common.base.o.s(aVar), this.f11347b, this.f11348c);
    }

    @Override // com.google.api.gax.rpc.m0
    public m0 c(ScheduledExecutorService scheduledExecutorService) {
        return new q(this.f11346a, (ScheduledExecutorService) com.google.common.base.o.s(scheduledExecutorService), this.f11348c);
    }

    @Override // com.google.api.gax.rpc.m0
    public boolean d() {
        return this.f11347b == null;
    }

    @Override // com.google.api.gax.rpc.m0
    public m0 e(Duration duration) {
        return new q(this.f11346a, this.f11347b, (Duration) com.google.common.base.o.s(duration));
    }

    @Override // com.google.api.gax.rpc.m0
    public l0 f() {
        com.google.common.base.o.A(!h(), "A clock is needed");
        com.google.common.base.o.A(!g(), "A check interval is needed");
        com.google.common.base.o.A(!d(), "An executor is needed");
        if (this.f11348c.isZero()) {
            return null;
        }
        return l0.d(this.f11346a, this.f11348c, this.f11347b);
    }

    @Override // com.google.api.gax.rpc.m0
    public boolean g() {
        return this.f11348c == null;
    }

    @Override // com.google.api.gax.rpc.m0
    public boolean h() {
        return this.f11346a == null;
    }
}
