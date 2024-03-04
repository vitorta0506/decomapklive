package io.grpc.internal;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class g0 implements r {

    /* renamed from: a  reason: collision with root package name */
    final Status f42611a;

    /* renamed from: b  reason: collision with root package name */
    private final ClientStreamListener.RpcProgress f42612b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g0(Status status, ClientStreamListener.RpcProgress rpcProgress) {
        com.google.common.base.o.e(!status.p(), "error must not be OK");
        this.f42611a = status;
        this.f42612b = rpcProgress;
    }

    @Override // io.grpc.l0
    public io.grpc.g0 c() {
        throw new UnsupportedOperationException("Not a real transport");
    }

    @Override // io.grpc.internal.r
    public q e(MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr) {
        return new f0(this.f42611a, this.f42612b, kVarArr);
    }
}
