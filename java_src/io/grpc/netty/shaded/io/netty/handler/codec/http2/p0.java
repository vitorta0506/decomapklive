package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.Http2FrameLogger;
import io.grpc.netty.shaded.io.netty.handler.codec.http2.j0;
/* loaded from: classes5.dex */
public class p0 implements j0 {

    /* renamed from: a  reason: collision with root package name */
    private final j0 f44418a;

    /* renamed from: b  reason: collision with root package name */
    private final Http2FrameLogger f44419b;

    /* loaded from: classes5.dex */
    class a implements i0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i0 f44420a;

        a(i0 i0Var) {
            this.f44420a = i0Var;
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void a(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, boolean z10) throws Http2Exception {
            p0.this.f44419b.y(Http2FrameLogger.Direction.INBOUND, mVar, i9, http2Headers, i10, z10);
            this.f44420a.a(mVar, i9, http2Headers, i10, z10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void b(io.grpc.netty.shaded.io.netty.channel.m mVar, x0 x0Var) throws Http2Exception {
            p0.this.f44419b.I(Http2FrameLogger.Direction.INBOUND, mVar, x0Var);
            this.f44420a.b(mVar, x0Var);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void c(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, Http2Headers http2Headers, int i11) throws Http2Exception {
            p0.this.f44419b.G(Http2FrameLogger.Direction.INBOUND, mVar, i9, i10, http2Headers, i11);
            this.f44420a.c(mVar, i9, i10, http2Headers, i11);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public int d(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, kg.j jVar, int i10, boolean z10) throws Http2Exception {
            p0.this.f44419b.v(Http2FrameLogger.Direction.INBOUND, mVar, i9, jVar, i10, z10);
            return this.f44420a.d(mVar, i9, jVar, i10, z10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void e(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10, short s10, boolean z10) throws Http2Exception {
            p0.this.f44419b.F(Http2FrameLogger.Direction.INBOUND, mVar, i9, i10, s10, z10);
            this.f44420a.e(mVar, i9, i10, s10, z10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void f(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10) throws Http2Exception {
            p0.this.f44419b.H(Http2FrameLogger.Direction.INBOUND, mVar, i9, j10);
            this.f44420a.f(mVar, i9, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void g(io.grpc.netty.shaded.io.netty.channel.m mVar) throws Http2Exception {
            p0.this.f44419b.J(Http2FrameLogger.Direction.INBOUND, mVar);
            this.f44420a.g(mVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void h(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) throws Http2Exception {
            p0.this.f44419b.B(Http2FrameLogger.Direction.INBOUND, mVar, j10);
            this.f44420a.h(mVar, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void i(io.grpc.netty.shaded.io.netty.channel.m mVar, long j10) throws Http2Exception {
            p0.this.f44419b.z(Http2FrameLogger.Direction.INBOUND, mVar, j10);
            this.f44420a.i(mVar, j10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void j(io.grpc.netty.shaded.io.netty.channel.m mVar, byte b10, int i9, f0 f0Var, kg.j jVar) throws Http2Exception {
            p0.this.f44419b.K(Http2FrameLogger.Direction.INBOUND, mVar, b10, i9, f0Var, jVar);
            this.f44420a.j(mVar, b10, i9, f0Var, jVar);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void k(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, int i10) throws Http2Exception {
            p0.this.f44419b.L(Http2FrameLogger.Direction.INBOUND, mVar, i9, i10);
            this.f44420a.k(mVar, i9, i10);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void l(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, Http2Headers http2Headers, int i10, short s10, boolean z10, int i11, boolean z11) throws Http2Exception {
            p0.this.f44419b.x(Http2FrameLogger.Direction.INBOUND, mVar, i9, http2Headers, i10, s10, z10, i11, z11);
            this.f44420a.l(mVar, i9, http2Headers, i10, s10, z10, i11, z11);
        }

        @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.i0
        public void m(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9, long j10, kg.j jVar) throws Http2Exception {
            p0.this.f44419b.w(Http2FrameLogger.Direction.INBOUND, mVar, i9, j10, jVar);
            this.f44420a.m(mVar, i9, j10, jVar);
        }
    }

    public p0(j0 j0Var, Http2FrameLogger http2FrameLogger) {
        this.f44418a = (j0) io.grpc.netty.shaded.io.netty.util.internal.s.h(j0Var, "reader");
        this.f44419b = (Http2FrameLogger) io.grpc.netty.shaded.io.netty.util.internal.s.h(http2FrameLogger, "logger");
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.j0
    public void T0(io.grpc.netty.shaded.io.netty.channel.m mVar, kg.j jVar, i0 i0Var) throws Http2Exception {
        this.f44418a.T0(mVar, jVar, new a(i0Var));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.j0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f44418a.close();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.j0
    public j0.a configuration() {
        return this.f44418a.configuration();
    }
}
