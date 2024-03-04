package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface n0 {

    /* loaded from: classes5.dex */
    public interface a {
        void a(long j10) throws Http2Exception;

        long b();

        long c();

        void e(long j10, long j11) throws Http2Exception;

        long f();
    }

    a configuration();

    Http2Headers d(int i9, kg.j jVar) throws Http2Exception;
}
