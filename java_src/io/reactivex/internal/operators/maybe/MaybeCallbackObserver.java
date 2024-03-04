package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.h;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import vh.g;
/* loaded from: classes7.dex */
public final class MaybeCallbackObserver<T> extends AtomicReference<th.b> implements h<T>, th.b {
    private static final long serialVersionUID = -6076952298809384986L;
    final vh.a onComplete;
    final g<? super Throwable> onError;
    final g<? super T> onSuccess;

    public MaybeCallbackObserver(g<? super T> gVar, g<? super Throwable> gVar2, vh.a aVar) {
        this.onSuccess = gVar;
        this.onError = gVar2;
        this.onComplete = aVar;
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
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.h
    public void onComplete() {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
        }
    }

    @Override // io.reactivex.h
    public void onError(Throwable th2) {
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            ci.a.s(new CompositeException(th2, th3));
        }
    }

    @Override // io.reactivex.h
    public void onSubscribe(th.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }

    @Override // io.reactivex.h
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
