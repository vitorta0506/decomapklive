package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.o0;
import java.io.Closeable;
/* loaded from: classes5.dex */
public interface m0 extends e0, Closeable {

    /* loaded from: classes5.dex */
    public interface a {
        o0.c a();

        k0 c();
    }

    io.grpc.netty.shaded.io.netty.channel.i B(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar);

    io.grpc.netty.shaded.io.netty.channel.i F1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar);

    io.grpc.netty.shaded.io.netty.channel.i N1(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar);

    io.grpc.netty.shaded.io.netty.channel.i S0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar, io.grpc.netty.shaded.io.netty.channel.y yVar);

    void close();

    a configuration();

    io.grpc.netty.shaded.io.netty.channel.i i1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar);

    io.grpc.netty.shaded.io.netty.channel.i k0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, io.grpc.netty.shaded.io.netty.channel.y yVar);

    io.grpc.netty.shaded.io.netty.channel.i m0(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var, io.grpc.netty.shaded.io.netty.channel.y yVar);

    io.grpc.netty.shaded.io.netty.channel.i s0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar);
}
