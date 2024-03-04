package io.grpc.stub;

import io.grpc.stub.e;
/* loaded from: classes5.dex */
public enum InternalClientCalls$StubType {
    BLOCKING(e.EnumC0497e.BLOCKING),
    ASYNC(e.EnumC0497e.ASYNC),
    FUTURE(e.EnumC0497e.FUTURE);
    
    private final e.EnumC0497e internalType;

    InternalClientCalls$StubType(e.EnumC0497e enumC0497e) {
        this.internalType = enumC0497e;
    }

    public static InternalClientCalls$StubType of(e.EnumC0497e enumC0497e) {
        InternalClientCalls$StubType[] values;
        for (InternalClientCalls$StubType internalClientCalls$StubType : values()) {
            if (internalClientCalls$StubType.internalType == enumC0497e) {
                return internalClientCalls$StubType;
            }
        }
        throw new AssertionError("Unknown StubType: " + enumC0497e.name());
    }
}
