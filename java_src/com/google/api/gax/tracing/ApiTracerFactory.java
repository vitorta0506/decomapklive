package com.google.api.gax.tracing;
/* loaded from: classes2.dex */
public interface ApiTracerFactory {

    /* loaded from: classes2.dex */
    public enum OperationType {
        Unary,
        Batching,
        LongRunning,
        ServerStreaming,
        ClientStreaming,
        BidiStreaming
    }

    r5.a a(r5.a aVar, r5.d dVar, OperationType operationType);
}
