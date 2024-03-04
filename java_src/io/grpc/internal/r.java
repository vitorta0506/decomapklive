package io.grpc.internal;

import io.grpc.MethodDescriptor;
import java.util.concurrent.Executor;
/* loaded from: classes5.dex */
public interface r extends io.grpc.f0<Object> {

    /* loaded from: classes5.dex */
    public interface a {
        void a(long j10);

        void onFailure(Throwable th2);
    }

    void d(a aVar, Executor executor);

    q e(MethodDescriptor<?, ?> methodDescriptor, io.grpc.s0 s0Var, io.grpc.c cVar, io.grpc.k[] kVarArr);
}
