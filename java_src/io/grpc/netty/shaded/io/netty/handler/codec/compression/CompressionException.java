package io.grpc.netty.shaded.io.netty.handler.codec.compression;

import io.grpc.netty.shaded.io.netty.handler.codec.EncoderException;
/* loaded from: classes5.dex */
public class CompressionException extends EncoderException {
    private static final long serialVersionUID = 5603413481274811897L;

    public CompressionException() {
    }

    public CompressionException(String str, Throwable th2) {
        super(str, th2);
    }

    public CompressionException(String str) {
        super(str);
    }

    public CompressionException(Throwable th2) {
        super(th2);
    }
}
