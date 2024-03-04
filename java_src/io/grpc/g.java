package io.grpc;
/* loaded from: classes5.dex */
public abstract class g<ReqT, RespT> {

    /* loaded from: classes5.dex */
    public static abstract class a<T> {
        public void a(Status status, s0 s0Var) {
        }

        public void b(s0 s0Var) {
        }

        public void c(T t10) {
        }

        public void d() {
        }
    }

    public abstract void a(String str, Throwable th2);

    public abstract void b();

    public abstract void c(int i9);

    public abstract void d(ReqT reqt);

    public abstract void e(a<RespT> aVar, s0 s0Var);
}
