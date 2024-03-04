package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes7.dex */
public final class d1<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f51529a;

    /* renamed from: b  reason: collision with root package name */
    final long f51530b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f51531c;

    public d1(Future<? extends T> future, long j10, TimeUnit timeUnit) {
        this.f51529a = future;
        this.f51530b = j10;
        this.f51531c = timeUnit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(rVar);
        rVar.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            TimeUnit timeUnit = this.f51531c;
            deferredScalarDisposable.complete(xh.b.e(timeUnit != null ? this.f51529a.get(this.f51530b, timeUnit) : this.f51529a.get(), "Future returned null"));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (deferredScalarDisposable.isDisposed()) {
                return;
            }
            rVar.onError(th2);
        }
    }
}
