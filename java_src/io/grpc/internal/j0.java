package io.grpc.internal;

import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.k2;
/* loaded from: classes5.dex */
abstract class j0 implements ClientStreamListener {
    @Override // io.grpc.internal.k2
    public void a(k2.a aVar) {
        e().a(aVar);
    }

    @Override // io.grpc.internal.ClientStreamListener
    public void b(io.grpc.s0 s0Var) {
        e().b(s0Var);
    }

    @Override // io.grpc.internal.k2
    public void c() {
        e().c();
    }

    @Override // io.grpc.internal.ClientStreamListener
    public void d(Status status, ClientStreamListener.RpcProgress rpcProgress, io.grpc.s0 s0Var) {
        e().d(status, rpcProgress, s0Var);
    }

    protected abstract ClientStreamListener e();

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", e()).toString();
    }
}
