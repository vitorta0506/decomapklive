package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2FrameLogger;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.m0;
/* loaded from: classes5.dex */
public class t0 implements m0 {

    /* renamed from: a  reason: collision with root package name */
    private final m0 f44443a;

    /* renamed from: b  reason: collision with root package name */
    private final Http2FrameLogger f44444b;

    public t0(m0 m0Var, Http2FrameLogger http2FrameLogger) {
        this.f44443a = (m0) io.grpc.netty.shaded.io.netty.util.internal.s.h(m0Var, "writer");
        this.f44444b = (Http2FrameLogger) io.grpc.netty.shaded.io.netty.util.internal.s.h(http2FrameLogger, "logger");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i B(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44444b.x(Http2FrameLogger.Direction.OUTBOUND, mVar, i9, http2Headers, i10, s10, z10, i11, z11);
        return this.f44443a.B(mVar, i9, http2Headers, i10, s10, z10, i11, z11, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i F1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44444b.H(Http2FrameLogger.Direction.OUTBOUND, mVar, i9, j10);
        return this.f44443a.F1(mVar, i9, j10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i N1(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44444b.J(Http2FrameLogger.Direction.OUTBOUND, mVar);
        return this.f44443a.N1(mVar, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i S0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44444b.w(Http2FrameLogger.Direction.OUTBOUND, mVar, i9, j10, jVar);
        return this.f44443a.S0(mVar, i9, j10, jVar, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.e0
    public io.grpc.netty.shaded.io.netty.channel.i b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44444b.v(Http2FrameLogger.Direction.OUTBOUND, mVar, i9, jVar, i10, z10);
        return this.f44443a.b(mVar, i9, jVar, i10, z10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f44443a.close();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public m0.a configuration() {
        return this.f44443a.configuration();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i i1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44444b.y(Http2FrameLogger.Direction.OUTBOUND, mVar, i9, http2Headers, i10, z10);
        return this.f44443a.i1(mVar, i9, http2Headers, i10, z10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i k0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44444b.L(Http2FrameLogger.Direction.OUTBOUND, mVar, i9, i10);
        return this.f44443a.k0(mVar, i9, i10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i m0(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        this.f44444b.I(Http2FrameLogger.Direction.OUTBOUND, mVar, x0Var);
        return this.f44443a.m0(mVar, x0Var, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i s0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        if (z10) {
            this.f44444b.B(Http2FrameLogger.Direction.OUTBOUND, mVar, j10);
        } else {
            this.f44444b.z(Http2FrameLogger.Direction.OUTBOUND, mVar, j10);
        }
        return this.f44443a.s0(mVar, z10, j10, yVar);
    }
}
