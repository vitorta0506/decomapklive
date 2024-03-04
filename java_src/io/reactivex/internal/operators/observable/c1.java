package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class c1<T> extends io.reactivex.k<T> implements Callable<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends T> f51486a;

    public c1(Callable<? extends T> callable) {
        this.f51486a = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        return (T) xh.b.e(this.f51486a.call(), "The callable returned a null value");
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
            deferredScalarDisposable.complete(xh.b.e(this.f51486a.call(), "Callable returned null"));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            if (!deferredScalarDisposable.isDisposed()) {
                rVar.onError(th2);
            } else {
                ci.a.s(th2);
            }
        }
    }
}
