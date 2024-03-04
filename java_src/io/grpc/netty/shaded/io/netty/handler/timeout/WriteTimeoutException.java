package io.grpc.netty.shaded.io.netty.handler.timeout;

import io.grpc.netty.shaded.io.netty.util.internal.t;
/* loaded from: classes5.dex */
public final class WriteTimeoutException extends TimeoutException {
    public static final WriteTimeoutException INSTANCE;
    private static final long serialVersionUID = -144786655770296065L;

    static {
        INSTANCE = t.l0() >= 7 ? new WriteTimeoutException(true) : new WriteTimeoutException();
    }

    private WriteTimeoutException() {
    }

    private WriteTimeoutException(boolean z10) {
        super(z10);
    }
}
