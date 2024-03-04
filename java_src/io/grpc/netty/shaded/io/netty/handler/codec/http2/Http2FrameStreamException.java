package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public final class Http2FrameStreamException extends Exception {
    private static final long serialVersionUID = -4407186173493887044L;
    private final Http2Error error;
    private final l0 stream;

    public Http2FrameStreamException(l0 l0Var, Http2Error http2Error, Throwable th2) {
        super(th2.getMessage(), th2);
        this.stream = (l0) io.grpc.netty.shaded.io.netty.util.internal.s.h(l0Var, "stream");
        this.error = (Http2Error) io.grpc.netty.shaded.io.netty.util.internal.s.h(http2Error, "error");
    }

    public Http2Error error() {
        return this.error;
    }

    public l0 stream() {
        return this.stream;
    }
}
