package io.grpc;

import io.grpc.g;
/* loaded from: classes5.dex */
public abstract class z<RespT> extends x0<RespT> {

    /* loaded from: classes5.dex */
    public static abstract class a<RespT> extends z<RespT> {

        /* renamed from: a  reason: collision with root package name */
        private final g.a<RespT> f50904a;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(g.a<RespT> aVar) {
            this.f50904a = aVar;
        }

        @Override // io.grpc.z, io.grpc.x0, io.grpc.g.a
        public /* bridge */ /* synthetic */ void a(Status status, s0 s0Var) {
            super.a(status, s0Var);
        }

        @Override // io.grpc.z, io.grpc.x0, io.grpc.g.a
        public /* bridge */ /* synthetic */ void b(s0 s0Var) {
            super.b(s0Var);
        }

        @Override // io.grpc.z, io.grpc.x0, io.grpc.g.a
        public /* bridge */ /* synthetic */ void d() {
            super.d();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.z, io.grpc.x0
        public g.a<RespT> e() {
            return this.f50904a;
        }

        @Override // io.grpc.z, io.grpc.x0
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }
    }

    @Override // io.grpc.x0, io.grpc.g.a
    public /* bridge */ /* synthetic */ void a(Status status, s0 s0Var) {
        super.a(status, s0Var);
    }

    @Override // io.grpc.x0, io.grpc.g.a
    public /* bridge */ /* synthetic */ void b(s0 s0Var) {
        super.b(s0Var);
    }

    @Override // io.grpc.g.a
    public void c(RespT respt) {
        e().c(respt);
    }

    @Override // io.grpc.x0, io.grpc.g.a
    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // io.grpc.x0
    protected abstract g.a<RespT> e();

    @Override // io.grpc.x0
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
