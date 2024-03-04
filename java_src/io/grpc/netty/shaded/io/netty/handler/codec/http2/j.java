package io.grpc.netty.shaded.io.netty.handler.codec.http2;

import io.grpc.netty.shaded.io.netty.handler.codec.http2.n0;
/* loaded from: classes5.dex */
public class j implements n0, n0.a {

    /* renamed from: a  reason: collision with root package name */
    private final n f44318a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f44319b;

    /* renamed from: c  reason: collision with root package name */
    private long f44320c;

    /* renamed from: d  reason: collision with root package name */
    private float f44321d;

    public j(boolean z10, long j10) {
        this(z10, j10, -1);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.n0.a
    public void a(long j10) throws Http2Exception {
        this.f44318a.o(j10);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.n0.a
    public long b() {
        return this.f44318a.g();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.n0.a
    public long c() {
        return this.f44318a.h();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.n0
    public n0.a configuration() {
        return this;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.n0
    public Http2Headers d(int i9, kg.j jVar) throws Http2Exception {
        try {
            Http2Headers g10 = g();
            this.f44318a.b(i9, jVar, g10, this.f44319b);
            this.f44321d = (g10.size() * 0.2f) + (this.f44321d * 0.8f);
            return g10;
        } catch (Http2Exception e10) {
            throw e10;
        } catch (Throwable th2) {
            throw Http2Exception.connectionError(Http2Error.COMPRESSION_ERROR, th2, th2.getMessage(), new Object[0]);
        }
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.n0.a
    public void e(long j10, long j11) throws Http2Exception {
        if (j11 >= j10 && j11 >= 0) {
            this.f44318a.n(j10);
            this.f44320c = j11;
            return;
        }
        throw Http2Exception.connectionError(Http2Error.INTERNAL_ERROR, "Header List Size GO_AWAY %d must be non-negative and >= %d", Long.valueOf(j11), Long.valueOf(j10));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.n0.a
    public long f() {
        return this.f44320c;
    }

    protected Http2Headers g() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int h() {
        return (int) this.f44321d;
    }

    public j(boolean z10, long j10, @Deprecated int i9) {
        this(z10, new n(j10));
    }

    j(boolean z10, n nVar) {
        this.f44321d = 8.0f;
        this.f44318a = (n) io.grpc.netty.shaded.io.netty.util.internal.s.h(nVar, "hpackDecoder");
        this.f44319b = z10;
        this.f44320c = x.a(nVar.g());
    }
}
