package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public class b extends c implements b0, y0 {

    /* renamed from: b  reason: collision with root package name */
    private final b0 f44128b;

    public b(b0 b0Var) {
        super(b0Var);
        this.f44128b = (b0) io.grpc.netty.shaded.io.netty.util.internal.s.h(b0Var, "delegate");
    }

    public void G1(x0 x0Var) throws Http2Exception {
        this.f44128b.G1(x0Var);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public x0 O() {
        return this.f44128b.O();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public m0 Y0() {
        return this.f44128b.Y0();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.y0
    public void a(x0 x0Var) {
        b0 b0Var = this.f44128b;
        if (b0Var instanceof y0) {
            ((y0) b0Var).a(x0Var);
            return;
        }
        throw new IllegalStateException("delegate " + this.f44128b + " is not an instance of " + y0.class);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public y connection() {
        return this.f44128b.connection();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public void f(q0 q0Var) {
        this.f44128b.f(q0Var);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http2.b0
    public v0 m() {
        return this.f44128b.m();
    }
}
