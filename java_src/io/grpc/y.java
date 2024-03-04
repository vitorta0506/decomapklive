package io.grpc;

import io.grpc.g;
/* loaded from: classes5.dex */
public abstract class y<ReqT, RespT> extends w0<ReqT, RespT> {

    /* loaded from: classes5.dex */
    public static abstract class a<ReqT, RespT> extends y<ReqT, RespT> {

        /* renamed from: a  reason: collision with root package name */
        private final g<ReqT, RespT> f50896a;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(g<ReqT, RespT> gVar) {
            this.f50896a = gVar;
        }

        @Override // io.grpc.y, io.grpc.w0, io.grpc.g
        public /* bridge */ /* synthetic */ void a(String str, Throwable th2) {
            super.a(str, th2);
        }

        @Override // io.grpc.y, io.grpc.w0, io.grpc.g
        public /* bridge */ /* synthetic */ void b() {
            super.b();
        }

        @Override // io.grpc.y, io.grpc.w0, io.grpc.g
        public /* bridge */ /* synthetic */ void c(int i9) {
            super.c(i9);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.grpc.y, io.grpc.w0
        public g<ReqT, RespT> f() {
            return this.f50896a;
        }

        @Override // io.grpc.y, io.grpc.w0
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }
    }

    @Override // io.grpc.w0, io.grpc.g
    public /* bridge */ /* synthetic */ void a(String str, Throwable th2) {
        super.a(str, th2);
    }

    @Override // io.grpc.w0, io.grpc.g
    public /* bridge */ /* synthetic */ void b() {
        super.b();
    }

    @Override // io.grpc.w0, io.grpc.g
    public /* bridge */ /* synthetic */ void c(int i9) {
        super.c(i9);
    }

    @Override // io.grpc.g
    public void d(ReqT reqt) {
        f().d(reqt);
    }

    @Override // io.grpc.g
    public void e(g.a<RespT> aVar, s0 s0Var) {
        f().e(aVar, s0Var);
    }

    @Override // io.grpc.w0
    protected abstract g<ReqT, RespT> f();

    @Override // io.grpc.w0
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
