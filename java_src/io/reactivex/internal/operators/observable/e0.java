package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class e0<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends io.reactivex.p<? extends T>> f51573a;

    public e0(Callable<? extends io.reactivex.p<? extends T>> callable) {
        this.f51573a = callable;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        try {
            ((io.reactivex.p) xh.b.e(this.f51573a.call(), "null ObservableSource supplied")).subscribe(rVar);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }
}
