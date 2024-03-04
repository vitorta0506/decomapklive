package io.grpc.internal;

import io.grpc.Status;
/* loaded from: classes5.dex */
public interface ClientStreamListener extends k2 {

    /* loaded from: classes5.dex */
    public enum RpcProgress {
        PROCESSED,
        REFUSED,
        DROPPED,
        MISCARRIED
    }

    void b(io.grpc.s0 s0Var);

    void d(Status status, RpcProgress rpcProgress, io.grpc.s0 s0Var);
}
