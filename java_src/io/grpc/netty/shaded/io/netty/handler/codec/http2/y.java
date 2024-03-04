package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public interface y {

    /* loaded from: classes5.dex */
    public interface a<F extends g0> {
        int A();

        F m();

        int n();

        void o(F f10);

        boolean p(int i9);

        boolean q(Http2Stream http2Stream);

        boolean r(int i9);

        void s(boolean z10);

        int t();

        void u(int i9);

        int v();

        Http2Stream w(int i9, Http2Stream http2Stream) throws Http2Exception;

        boolean x();

        int y();

        Http2Stream z(int i9, boolean z10) throws Http2Exception;
    }

    /* loaded from: classes5.dex */
    public interface b {
        void a(Http2Stream http2Stream);

        void b(Http2Stream http2Stream);

        void c(Http2Stream http2Stream);

        void d(int i9, long j10, kg.j jVar);

        void e(int i9, long j10, kg.j jVar);

        void f(Http2Stream http2Stream);

        void g(Http2Stream http2Stream);
    }

    /* loaded from: classes5.dex */
    public interface c {
    }

    c a();

    a<v0> b();

    Http2Stream c(int i9);

    Http2Stream d();

    boolean e();

    a<r0> f();

    void g(b bVar);

    boolean h(int i9, long j10, kg.j jVar) throws Http2Exception;

    ug.q<Void> i(ug.x<Void> xVar);

    void j(int i9, long j10, kg.j jVar) throws Http2Exception;

    boolean k(int i9);

    Http2Stream l(z0 z0Var) throws Http2Exception;

    boolean m();

    int n();

    boolean o();
}
