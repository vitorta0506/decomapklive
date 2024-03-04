package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class t0<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final Callable<? extends Throwable> f52341a;

    public t0(Callable<? extends Throwable> callable) {
        this.f52341a = callable;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        try {
            th = (Throwable) xh.b.e(this.f52341a.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th2) {
            th = th2;
            io.reactivex.exceptions.a.b(th);
        }
        EmptyDisposable.error(th, rVar);
    }
}
