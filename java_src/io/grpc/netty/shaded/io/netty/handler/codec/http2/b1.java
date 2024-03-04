package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface b1 {

    /* loaded from: classes5.dex */
    public interface a {
        long a();

        int b();

        boolean c();

        Http2Stream stream();
    }

    /* loaded from: classes5.dex */
    public interface b {
        void b(Http2Stream http2Stream, int i9);
    }

    boolean a(int i9, b bVar) throws Http2Exception;

    void b(int i9, int i10, short s10, boolean z10);

    void c(a aVar);
}
