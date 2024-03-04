package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.operators.observable.l2;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class m2<T, R> extends io.reactivex.t<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f52024a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<R> f52025b;

    /* renamed from: c  reason: collision with root package name */
    final vh.c<R, ? super T, R> f52026c;

    public m2(io.reactivex.p<T> pVar, Callable<R> callable, vh.c<R, ? super T, R> cVar) {
        this.f52024a = pVar;
        this.f52025b = callable;
        this.f52026c = cVar;
    }

    @Override // io.reactivex.t
    protected void e(io.reactivex.u<? super R> uVar) {
        try {
            this.f52024a.subscribe(new l2.a(uVar, this.f52026c, xh.b.e(this.f52025b.call(), "The seedSupplier returned a null value")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, uVar);
        }
    }
}
