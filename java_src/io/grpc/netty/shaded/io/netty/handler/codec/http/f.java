package io.grpc.netty.shaded.io.netty.handler.codec.http;
/* loaded from: classes5.dex */
public abstract class f extends g implements v {

    /* renamed from: b  reason: collision with root package name */
    private j0 f43919b;

    /* renamed from: c  reason: collision with root package name */
    private final t f43920c;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(j0 j0Var, boolean z10, boolean z11) {
        this(j0Var, z11 ? new a(z10) : new e(z10));
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.v
    public j0 b() {
        return this.f43919b;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            return h().equals(fVar.h()) && b().equals(fVar.b()) && super.equals(obj);
        }
        return false;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.v
    public t h() {
        return this.f43920c;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.codec.http.g
    public int hashCode() {
        return ((((this.f43920c.hashCode() + 31) * 31) + this.f43919b.hashCode()) * 31) + super.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f(j0 j0Var, t tVar) {
        this.f43919b = (j0) io.grpc.netty.shaded.io.netty.util.internal.s.h(j0Var, "version");
        this.f43920c = (t) io.grpc.netty.shaded.io.netty.util.internal.s.h(tVar, "headers");
    }
}
