package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.o0;
/* loaded from: classes5.dex */
public class k implements o0, o0.c {

    /* renamed from: c  reason: collision with root package name */
    private final p f44322c;

    /* renamed from: d  reason: collision with root package name */
    private final o0.d f44323d;

    /* renamed from: e  reason: collision with root package name */
    private final kg.j f44324e;

    public k() {
        this(o0.f44401a);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.o0.c
    public void a(long j10) throws Http2Exception {
        this.f44322c.t(this.f44324e, j10);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.o0.c
    public void b(long j10) throws Http2Exception {
        this.f44322c.s(j10);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.o0
    public void c(int i9, Http2Headers http2Headers, kg.j jVar) throws Http2Exception {
        try {
            if (this.f44324e.j1()) {
                jVar.x2(this.f44324e);
                this.f44324e.L();
            }
            this.f44322c.d(i9, jVar, http2Headers, this.f44323d);
        } catch (Http2Exception e10) {
            throw e10;
        } catch (Throwable th2) {
            throw Http2Exception.connectionError(Http2Error.COMPRESSION_ERROR, th2, "Failed encoding headers block: %s", th2.getMessage());
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.o0
    public o0.c configuration() {
        return this;
    }

    public k(o0.d dVar) {
        this(dVar, new p());
    }

    k(o0.d dVar, p pVar) {
        this.f44324e = kg.s0.a();
        this.f44323d = (o0.d) io.grpc.netty.shaded.io.netty.util.internal.s.h(dVar, "sensitiveDetector");
        this.f44322c = (p) io.grpc.netty.shaded.io.netty.util.internal.s.h(pVar, "hpackEncoder");
    }
}
