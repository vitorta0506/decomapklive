package com.google.api.gax.rpc;
/* loaded from: classes2.dex */
public abstract class d0<V> implements b0<V> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f11243a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11244b;

    @Override // com.google.api.gax.rpc.b0
    public final void a(e0 e0Var) {
        com.google.common.base.o.A(!this.f11243a, getClass() + " is already started.");
        this.f11243a = true;
        e(e0Var);
    }

    protected abstract void b();

    protected abstract void c(Throwable th2);

    protected abstract void d(V v10);

    protected abstract void e(e0 e0Var);

    @Override // com.google.api.gax.rpc.b0
    public final void onComplete() {
        com.google.common.base.o.A(!this.f11244b, getClass() + " tried to double close.");
        this.f11244b = true;
        b();
    }

    @Override // com.google.api.gax.rpc.b0
    public final void onError(Throwable th2) {
        com.google.common.base.o.D(!this.f11244b, getClass() + " received error after being closed", th2);
        this.f11244b = true;
        c(th2);
    }

    @Override // com.google.api.gax.rpc.b0
    public final void onResponse(V v10) {
        com.google.common.base.o.A(!this.f11244b, getClass() + " received a response after being closed.");
        d(v10);
    }
}
