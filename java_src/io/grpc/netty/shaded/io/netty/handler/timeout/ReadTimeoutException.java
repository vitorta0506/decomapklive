package io.grpc.netty.shaded.io.netty.handler.timeout;

import io.grpc.netty.shaded.io.netty.util.internal.t;
/* loaded from: classes5.dex */
public final class ReadTimeoutException extends TimeoutException {
    public static final ReadTimeoutException INSTANCE;
    private static final long serialVersionUID = 169287984113283421L;

    static {
        INSTANCE = t.l0() >= 7 ? new ReadTimeoutException(true) : new ReadTimeoutException();
    }

    ReadTimeoutException() {
    }

    private ReadTimeoutException(boolean z10) {
        super(z10);
    }
}
