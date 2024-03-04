package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.n0;
import java.io.Closeable;
/* loaded from: classes5.dex */
public interface j0 extends Closeable {

    /* loaded from: classes5.dex */
    public interface a {
        n0.a a();

        k0 c();
    }

    void T0(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, i0 i0Var) throws Http2Exception;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    a configuration();
}
