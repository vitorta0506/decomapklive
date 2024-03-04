package io.grpc.internal;

import io.grpc.Status;
/* loaded from: classes5.dex */
public abstract class k0 extends io.grpc.k {
    @Override // io.grpc.c1
    public void a(int i9) {
        n().a(i9);
    }

    @Override // io.grpc.c1
    public void b(int i9, long j10, long j11) {
        n().b(i9, j10, j11);
    }

    @Override // io.grpc.c1
    public void c(long j10) {
        n().c(j10);
    }

    @Override // io.grpc.c1
    public void d(long j10) {
        n().d(j10);
    }

    @Override // io.grpc.c1
    public void e(int i9) {
        n().e(i9);
    }

    @Override // io.grpc.c1
    public void f(int i9, long j10, long j11) {
        n().f(i9, j10, j11);
    }

    @Override // io.grpc.c1
    public void g(long j10) {
        n().g(j10);
    }

    @Override // io.grpc.c1
    public void h(long j10) {
        n().h(j10);
    }

    @Override // io.grpc.c1
    public void i(Status status) {
        n().i(status);
    }

    @Override // io.grpc.k
    public void j() {
        n().j();
    }

    @Override // io.grpc.k
    public void k(io.grpc.s0 s0Var) {
        n().k(s0Var);
    }

    @Override // io.grpc.k
    public void l() {
        n().l();
    }

    @Override // io.grpc.k
    public void m(io.grpc.a aVar, io.grpc.s0 s0Var) {
        n().m(aVar, s0Var);
    }

    protected abstract io.grpc.k n();

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", n()).toString();
    }
}
