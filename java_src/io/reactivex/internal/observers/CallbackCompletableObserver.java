package io.reactivex.internal.observers;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class CallbackCompletableObserver extends AtomicReference<th.b> implements io.reactivex.b, th.b, vh.g<Throwable> {
    private static final long serialVersionUID = -4361286194466301354L;
    final vh.a onComplete;
    final vh.g<? super Throwable> onError;

    public CallbackCompletableObserver(vh.a aVar) {
        this.onError = this;
        this.onComplete = aVar;
    }

    @Override // th.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public boolean hasCustomOnError() {
        return this.onError != this;
    }

    @Override // th.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.b
    public void onComplete() {
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.b
    public void onError(Throwable th2) {
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            ci.a.s(th3);
        }
        lazySet(DisposableHelper.DISPOSED);
    }

    @Override // io.reactivex.b
    public void onSubscribe(th.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // vh.g
    public void accept(Throwable th2) {
        ci.a.s(new OnErrorNotImplementedException(th2));
    }

    public CallbackCompletableObserver(vh.g<? super Throwable> gVar, vh.a aVar) {
        this.onError = gVar;
        this.onComplete = aVar;
    }
}
