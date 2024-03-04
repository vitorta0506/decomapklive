package io.grpc.netty.shaded.io.netty.channel;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes5.dex */
public interface p0 extends io.grpc.netty.shaded.io.netty.util.s {
    long count();

    long d();

    long g(WritableByteChannel writableByteChannel, long j10) throws IOException;

    @Override // io.grpc.netty.shaded.io.netty.util.s
    p0 retain();
}
