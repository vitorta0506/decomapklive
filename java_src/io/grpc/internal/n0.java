package io.grpc.internal;

import io.grpc.MethodDescriptor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
abstract class n0 extends io.grpc.q0 {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.q0 f42905a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(io.grpc.q0 q0Var) {
        this.f42905a = q0Var;
    }

    @Override // io.grpc.d
    public String a() {
        return this.f42905a.a();
    }

    @Override // io.grpc.d
    public <RequestT, ResponseT> io.grpc.g<RequestT, ResponseT> i(MethodDescriptor<RequestT, ResponseT> methodDescriptor, io.grpc.c cVar) {
        return this.f42905a.i(methodDescriptor, cVar);
    }

    @Override // io.grpc.q0
    public boolean j(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f42905a.j(j10, timeUnit);
    }

    @Override // io.grpc.q0
    public boolean k() {
        return this.f42905a.k();
    }

    @Override // io.grpc.q0
    public boolean l() {
        return this.f42905a.l();
    }

    @Override // io.grpc.q0
    public io.grpc.q0 m() {
        return this.f42905a.m();
    }

    @Override // io.grpc.q0
    public io.grpc.q0 n() {
        return this.f42905a.n();
    }

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", this.f42905a).toString();
    }
}
