package io.grpc.netty.shaded.io.netty.handler.codec.http.websocketx;

import io.grpc.netty.shaded.io.netty.handler.codec.CorruptedFrameException;
/* loaded from: classes5.dex */
public final class CorruptedWebSocketFrameException extends CorruptedFrameException {
    private static final long serialVersionUID = 3918055132492988338L;
    private final a closeStatus;

    public CorruptedWebSocketFrameException() {
        this(a.f44065f, null, null);
    }

    public a closeStatus() {
        return this.closeStatus;
    }

    public CorruptedWebSocketFrameException(a aVar, String str, Throwable th2) {
        super(str == null ? aVar.d() : str, th2);
        this.closeStatus = aVar;
    }

    public CorruptedWebSocketFrameException(a aVar, String str) {
        this(aVar, str, null);
    }

    public CorruptedWebSocketFrameException(a aVar, Throwable th2) {
        this(aVar, null, th2);
    }
}
