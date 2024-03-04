package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.m0;
/* loaded from: classes5.dex */
public class c implements m0 {

    /* renamed from: a  reason: collision with root package name */
    private final m0 f44129a;

    public c(m0 m0Var) {
        this.f44129a = (m0) io.grpc.netty.shaded.io.netty.util.internal.s.h(m0Var, "delegate");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i B(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.B(mVar, i9, http2Headers, i10, s10, z10, i11, z11, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i F1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.F1(mVar, i9, j10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i N1(io.grpc.netty.shaded.io.netty.channel.m mVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.N1(mVar, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i S0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.S0(mVar, i9, j10, jVar, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.e0
    public io.grpc.netty.shaded.io.netty.channel.i b(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.b(mVar, i9, jVar, i10, z10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f44129a.close();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public m0.a configuration() {
        return this.f44129a.configuration();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i i1(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.i1(mVar, i9, http2Headers, i10, z10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i k0(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.k0(mVar, i9, i10, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i m0(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.m0(mVar, x0Var, yVar);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.m0
    public io.grpc.netty.shaded.io.netty.channel.i s0(io.grpc.netty.shaded.io.netty.channel.m mVar, boolean z10, long j10, io.grpc.netty.shaded.io.netty.channel.y yVar) {
        return this.f44129a.s0(mVar, z10, j10, yVar);
    }
}
