package io.grpc.internal;

import io.grpc.Status;
import java.io.InputStream;
/* loaded from: classes5.dex */
abstract class i0 implements q {
    @Override // io.grpc.internal.j2
    public void a(io.grpc.o oVar) {
        p().a(oVar);
    }

    @Override // io.grpc.internal.j2
    public void b(int i9) {
        p().b(i9);
    }

    @Override // io.grpc.internal.q
    public void c(int i9) {
        p().c(i9);
    }

    @Override // io.grpc.internal.q
    public void d(int i9) {
        p().d(i9);
    }

    @Override // io.grpc.internal.q
    public void e(Status status) {
        p().e(status);
    }

    @Override // io.grpc.internal.j2
    public void flush() {
        p().flush();
    }

    @Override // io.grpc.internal.q
    public void g(io.grpc.v vVar) {
        p().g(vVar);
    }

    @Override // io.grpc.internal.j2
    public void h(InputStream inputStream) {
        p().h(inputStream);
    }

    @Override // io.grpc.internal.j2
    public void i() {
        p().i();
    }

    @Override // io.grpc.internal.j2
    public boolean isReady() {
        return p().isReady();
    }

    @Override // io.grpc.internal.q
    public void j(boolean z10) {
        p().j(z10);
    }

    @Override // io.grpc.internal.q
    public void k(String str) {
        p().k(str);
    }

    @Override // io.grpc.internal.q
    public void l(x0 x0Var) {
        p().l(x0Var);
    }

    @Override // io.grpc.internal.q
    public void m() {
        p().m();
    }

    @Override // io.grpc.internal.q
    public void n(io.grpc.t tVar) {
        p().n(tVar);
    }

    @Override // io.grpc.internal.q
    public void o(ClientStreamListener clientStreamListener) {
        p().o(clientStreamListener);
    }

    protected abstract q p();

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", p()).toString();
    }
}
