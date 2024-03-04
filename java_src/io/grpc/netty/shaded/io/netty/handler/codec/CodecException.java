package io.grpc.netty.shaded.io.netty.handler.codec;
/* loaded from: classes5.dex */
public class CodecException extends RuntimeException {
    private static final long serialVersionUID = -1464830400709348473L;

    public CodecException() {
    }

    public CodecException(String str, Throwable th2) {
        super(str, th2);
    }

    public CodecException(String str) {
        super(str);
    }

    public CodecException(Throwable th2) {
        super(th2);
    }
}
