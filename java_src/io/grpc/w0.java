package io.grpc;
/* loaded from: classes5.dex */
abstract class w0<ReqT, RespT> extends g<ReqT, RespT> {
    @Override // io.grpc.g
    public void a(String str, Throwable th2) {
        f().a(str, th2);
    }

    @Override // io.grpc.g
    public void b() {
        f().b();
    }

    @Override // io.grpc.g
    public void c(int i9) {
        f().c(i9);
    }

    protected abstract g<?, ?> f();

    public String toString() {
        return com.google.common.base.j.c(this).d("delegate", f()).toString();
    }
}
