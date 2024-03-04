package com.google.api.gax.rpc;
@Deprecated
/* loaded from: classes2.dex */
class e<T> extends d0<T> {

    /* renamed from: c  reason: collision with root package name */
    private final d<T> f11245c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d<T> dVar) {
        this.f11245c = dVar;
    }

    @Override // com.google.api.gax.rpc.d0
    protected void b() {
        this.f11245c.onCompleted();
    }

    @Override // com.google.api.gax.rpc.d0
    protected void c(Throwable th2) {
        this.f11245c.onError(th2);
    }

    @Override // com.google.api.gax.rpc.d0
    protected void d(T t10) {
        this.f11245c.onNext(t10);
    }

    @Override // com.google.api.gax.rpc.d0
    protected void e(e0 e0Var) {
    }
}
