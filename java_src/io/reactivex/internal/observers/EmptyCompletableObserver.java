package io.reactivex.internal.observers;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class EmptyCompletableObserver extends AtomicReference<th.b> implements io.reactivex.b, th.b {
    private static final long serialVersionUID = -7545121636549663526L;

    @Override // th.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return false;
    }

    @Override // th.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.b
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.b
    public void onError(Throwable th2) {
        lazySet(DisposableHelper.DISPOSED);
        ci.a.s(new OnErrorNotImplementedException(th2));
    }

    @Override // io.reactivex.b
    public void onSubscribe(th.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
