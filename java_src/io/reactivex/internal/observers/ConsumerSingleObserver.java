package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.u;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class ConsumerSingleObserver<T> extends AtomicReference<th.b> implements u<T>, th.b {
    private static final long serialVersionUID = -7012088219455310787L;
    final vh.g<? super Throwable> onError;
    final vh.g<? super T> onSuccess;

    public ConsumerSingleObserver(vh.g<? super T> gVar, vh.g<? super Throwable> gVar2) {
        this.onSuccess = gVar;
        this.onError = gVar2;
    }

    @Override // th.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return this.onError != xh.a.f59915f;
    }

    @Override // th.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.u
    public void onError(Throwable th2) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            ci.a.s(new CompositeException(th2, th3));
        }
    }

    @Override // io.reactivex.u
    public void onSubscribe(th.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // io.reactivex.u
    public void onSuccess(T t10) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onSuccess.accept(t10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
        }
    }
}
