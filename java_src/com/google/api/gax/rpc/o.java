package com.google.api.gax.rpc;

import java.util.concurrent.ScheduledExecutorService;
import org.threeten.bp.Duration;
/* loaded from: classes2.dex */
public final class o implements m0 {

    /* renamed from: a  reason: collision with root package name */
    private final l0 f11345a;

    private o(l0 l0Var) {
        this.f11345a = l0Var;
    }

    public static m0 i(l0 l0Var) {
        return new o(l0Var);
    }

    @Override // com.google.api.gax.rpc.m0
    public boolean a() {
        return false;
    }

    @Override // com.google.api.gax.rpc.m0
    public m0 b(k5.a aVar) {
        throw new UnsupportedOperationException("FixedWatchdogProvider doesn't need a clock");
    }

    @Override // com.google.api.gax.rpc.m0
    public m0 c(ScheduledExecutorService scheduledExecutorService) {
        throw new UnsupportedOperationException("FixedWatchdogProvider doesn't need an executor");
    }

    @Override // com.google.api.gax.rpc.m0
    public boolean d() {
        return false;
    }

    @Override // com.google.api.gax.rpc.m0
    public m0 e(Duration duration) {
        throw new UnsupportedOperationException("FixedWatchdogProvider doesn't need a checkInterval");
    }

    @Override // com.google.api.gax.rpc.m0
    public l0 f() {
        return this.f11345a;
    }

    @Override // com.google.api.gax.rpc.m0
    public boolean g() {
        return false;
    }

    @Override // com.google.api.gax.rpc.m0
    public boolean h() {
        return false;
    }
}
