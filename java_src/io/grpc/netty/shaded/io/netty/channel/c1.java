package io.grpc.netty.shaded.io.netty.channel;

import java.nio.channels.ClosedChannelException;
/* loaded from: classes5.dex */
final class c1 extends ClosedChannelException {
    private static final long serialVersionUID = -2214806025529435136L;

    private c1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c1 a(Class<?> cls, String str) {
        return (c1) io.grpc.netty.shaded.io.netty.util.internal.e0.f(new c1(), cls, str);
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }
}
