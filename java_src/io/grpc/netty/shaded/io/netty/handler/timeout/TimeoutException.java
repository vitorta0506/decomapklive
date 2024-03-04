package io.grpc.netty.shaded.io.netty.handler.timeout;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
/* loaded from: classes5.dex */
public class TimeoutException extends ChannelException {
    private static final long serialVersionUID = 4673641882869672533L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeoutException() {
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeoutException(boolean z10) {
        super(null, null, z10);
    }
}
