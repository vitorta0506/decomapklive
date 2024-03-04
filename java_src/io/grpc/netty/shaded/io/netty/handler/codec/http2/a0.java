package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import java.io.Closeable;
import java.util.List;
/* loaded from: classes5.dex */
public interface a0 extends Closeable {
    x0 H1();

    void S(i0 i0Var);

    boolean X0();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    y connection();

    void f(q0 q0Var);

    r0 m();

    void n0(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, List<Object> list) throws Http2Exception;
}
