package io.grpc.internal;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.k1;
import io.grpc.internal.r;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
abstract class l0 implements u {
    protected abstract u a();

    @Override // io.grpc.internal.k1
    public void b(Status status) {
        a().b(status);
    }

    @Override // io.grpc.l0
    public io.grpc.g0 c() {
        return a().c();
    }

    @Override // io.grpc.internal.r
    public void d(r.a aVar, Executor executor) {
        a().d(aVar, executor);
    }

    @Override // io.grpc.internal.r
    public q e(MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr) {
        return a().e(methodDescriptor, s0Var, cVar, kVarArr);
    }

    @Override // io.grpc.internal.u
    public io.grpc.a f() {
        return a().f();
    }

    @Override // io.grpc.internal.k1
    public void g(Status status) {
        a().g(status);
    }

    @Override // io.grpc.internal.k1
    public Runnable h(k1.a aVar) {
        return a().h(aVar);
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", a()).toString();
    }
}
