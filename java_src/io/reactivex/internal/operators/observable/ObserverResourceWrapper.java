package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class ObserverResourceWrapper<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, th.b {
    private static final long serialVersionUID = -8612022020200669122L;
    final io.reactivex.r<? super T> downstream;
    final AtomicReference<th.b> upstream = new AtomicReference<>();

    public ObserverResourceWrapper(io.reactivex.r<? super T> rVar) {
        this.downstream = rVar;
    }

    @Override // th.b
    public void dispose() {
        DisposableHelper.dispose(this.upstream);
        DisposableHelper.dispose(this);
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.upstream.get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.r
    public void onComplete() {
        dispose();
        this.downstream.onComplete();
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        dispose();
        this.downstream.onError(th2);
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        this.downstream.onNext(t10);
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        if (DisposableHelper.setOnce(this.upstream, bVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    public void setResource(th.b bVar) {
        DisposableHelper.set(this, bVar);
    }
}
