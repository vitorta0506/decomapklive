package io.grpc;

import io.grpc.g;
/* loaded from: classes5.dex */
abstract class x0<RespT> extends g.a<RespT> {
    @Override // io.grpc.g.a
    public void a(Status status, s0 s0Var) {
        e().a(status, s0Var);
    }

    @Override // io.grpc.g.a
    public void b(s0 s0Var) {
        e().b(s0Var);
    }

    @Override // io.grpc.g.a
    public void d() {
        e().d();
    }

    protected abstract g.a<?> e();

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", e()).toString();
    }
}
