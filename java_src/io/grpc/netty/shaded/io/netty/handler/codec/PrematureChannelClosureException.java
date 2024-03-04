package io.grpc.netty.shaded.io.netty.handler.codec;
/* loaded from: classes5.dex */
public class PrematureChannelClosureException extends CodecException {
    private static final long serialVersionUID = 4907642202594703094L;

    public PrematureChannelClosureException() {
    }

    public PrematureChannelClosureException(String str, Throwable th2) {
        super(str, th2);
    }

    public PrematureChannelClosureException(String str) {
        super(str);
    }

    public PrematureChannelClosureException(Throwable th2) {
        super(th2);
    }
}
