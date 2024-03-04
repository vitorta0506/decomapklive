package io.grpc.internal;

import io.grpc.t0;
/* loaded from: classes5.dex */
abstract class o0 extends io.grpc.t0 {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.t0 f42928a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(io.grpc.t0 t0Var) {
        com.google.common.base.o.t(t0Var, "delegate can not be null");
        this.f42928a = t0Var;
    }

    @Override // io.grpc.t0
    public void b() {
        this.f42928a.b();
    }

    @Override // io.grpc.t0
    public void c() {
        this.f42928a.c();
    }

    @Override // io.grpc.t0
    public void d(t0.e eVar) {
        this.f42928a.d(eVar);
    }

    @Override // io.grpc.t0
    @Deprecated
    public void e(t0.f fVar) {
        this.f42928a.e(fVar);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", this.f42928a).toString();
    }
}
