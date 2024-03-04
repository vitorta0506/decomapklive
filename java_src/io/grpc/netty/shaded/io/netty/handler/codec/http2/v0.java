package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface v0 extends g0 {

    /* loaded from: classes5.dex */
    public interface a {
        void a(io.grpc.netty.shaded.io.netty.channel.m mVar, int i9);

        boolean b(io.grpc.netty.shaded.io.netty.channel.m mVar, a aVar);

        void c();

        void d(io.grpc.netty.shaded.io.netty.channel.m mVar, Throwable th2);

        int size();
    }

    /* loaded from: classes5.dex */
    public interface b {
        void a(Http2Stream http2Stream);
    }

    void b(int i9, int i10, short s10, boolean z10);

    void c(Http2Stream http2Stream, a aVar);

    void g() throws Http2Exception;

    boolean n(Http2Stream http2Stream);

    void o() throws Http2Exception;

    io.grpc.netty.shaded.io.netty.channel.m p();
}
