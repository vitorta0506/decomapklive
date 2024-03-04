package io.grpc.netty.shaded.io.netty.handler.codec;
/* loaded from: classes5.dex */
public class TooLongFrameException extends DecoderException {
    private static final long serialVersionUID = -1995801950698951640L;

    public TooLongFrameException() {
    }

    public TooLongFrameException(String str, Throwable th2) {
        super(str, th2);
    }

    public TooLongFrameException(String str) {
        super(str);
    }

    public TooLongFrameException(Throwable th2) {
        super(th2);
    }
}
