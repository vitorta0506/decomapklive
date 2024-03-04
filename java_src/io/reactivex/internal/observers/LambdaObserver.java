package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class LambdaObserver<T> extends AtomicReference<th.b> implements r<T>, th.b {
    private static final long serialVersionUID = -7251123623727029452L;
    final vh.a onComplete;
    final vh.g<? super Throwable> onError;
    final vh.g<? super T> onNext;
    final vh.g<? super th.b> onSubscribe;

    public LambdaObserver(vh.g<? super T> gVar, vh.g<? super Throwable> gVar2, vh.a aVar, vh.g<? super th.b> gVar3) {
        this.onNext = gVar;
        this.onError = gVar2;
        this.onComplete = aVar;
        this.onSubscribe = gVar3;
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

    @Override // io.reactivex.r
    public void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(DisposableHelper.DISPOSED);
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        if (!isDisposed()) {
            lazySet(DisposableHelper.DISPOSED);
            try {
                this.onError.accept(th2);
                return;
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                ci.a.s(new CompositeException(th2, th3));
                return;
            }
        }
        ci.a.s(th2);
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (isDisposed()) {
            return;
        }
        try {
            this.onNext.accept(t10);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            get().dispose();
            onError(th2);
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            try {
                this.onSubscribe.accept(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                bVar.dispose();
                onError(th2);
            }
        }
    }
}
