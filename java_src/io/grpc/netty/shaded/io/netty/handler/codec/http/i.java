package io.grpc.netty.shaded.io.netty.handler.codec.http;
/* loaded from: classes5.dex */
public class i extends f implements f0 {

    /* renamed from: d  reason: collision with root package name */
    private h0 f43952d;

    public i(j0 j0Var, h0 h0Var, boolean z10) {
        this(j0Var, h0Var, z10, false);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.f, io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public boolean equals(Object obj) {
        return (obj instanceof i) && this.f43952d.equals(((i) obj).t()) && super.equals(obj);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.f, io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public int hashCode() {
        return ((this.f43952d.hashCode() + 31) * 31) + super.hashCode();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.f0
    public h0 t() {
        return this.f43952d;
    }

    public String toString() {
        return x.i(new StringBuilder(256), this).toString();
    }

    public i(j0 j0Var, h0 h0Var, boolean z10, boolean z11) {
        super(j0Var, z10, z11);
        this.f43952d = (h0) io.grpc.netty.shaded.io.netty.util.internal.s.h(h0Var, "status");
    }

    public i(j0 j0Var, h0 h0Var, t tVar) {
        super(j0Var, tVar);
        this.f43952d = (h0) io.grpc.netty.shaded.io.netty.util.internal.s.h(h0Var, "status");
    }
}
