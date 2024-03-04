package com.google.api.gax.tracing;

import com.google.api.gax.rpc.b0;
import com.google.api.gax.rpc.e0;
import com.google.common.base.o;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
class d<ResponseT> implements b0<ResponseT> {

    /* renamed from: a  reason: collision with root package name */
    private final r5.a f11381a;

    /* renamed from: b  reason: collision with root package name */
    private final b0<ResponseT> f11382b;

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f11383c;

    /* loaded from: classes2.dex */
    class a implements e0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e0 f11384a;

        a(e0 e0Var) {
            this.f11384a = e0Var;
        }

        @Override // com.google.api.gax.rpc.e0
        public void cancel() {
            d.this.f11383c.set(true);
            this.f11384a.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(r5.a aVar, b0<ResponseT> b0Var, AtomicBoolean atomicBoolean) {
        this.f11381a = (r5.a) o.t(aVar, "tracer");
        this.f11382b = (b0) o.t(b0Var, "innerObserver");
        this.f11383c = (AtomicBoolean) o.t(atomicBoolean, "wasCancelled");
    }

    @Override // com.google.api.gax.rpc.b0
    public void a(e0 e0Var) {
        this.f11382b.a(new a(e0Var));
    }

    @Override // com.google.api.gax.rpc.b0
    public void onComplete() {
        this.f11381a.b();
        this.f11382b.onComplete();
    }

    @Override // com.google.api.gax.rpc.b0
    public void onError(Throwable th2) {
        if (this.f11383c.get()) {
            this.f11381a.d();
        } else {
            this.f11381a.a(th2);
        }
        this.f11382b.onError(th2);
    }

    @Override // com.google.api.gax.rpc.b0
    public void onResponse(ResponseT responset) {
        this.f11381a.c();
        this.f11382b.onResponse(responset);
    }
}
