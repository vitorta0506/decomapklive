package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicReference;
import vh.q;
/* loaded from: classes7.dex */
public final class ForEachWhileObserver<T> extends AtomicReference<th.b> implements r<T>, th.b {
    private static final long serialVersionUID = -4403180040475402120L;
    boolean done;
    final vh.a onComplete;
    final vh.g<? super Throwable> onError;
    final q<? super T> onNext;

    public ForEachWhileObserver(q<? super T> qVar, vh.g<? super Throwable> gVar, vh.a aVar) {
        this.onNext = qVar;
        this.onError = gVar;
        this.onComplete = aVar;
    }

    @Override // th.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // th.b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    @Override // io.reactivex.r
    public void onComplete() {
        if (this.done) {
            return;
        }
        this.done = true;
        try {
            this.onComplete.run();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
        }
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        if (this.done) {
            ci.a.s(th2);
            return;
        }
        this.done = true;
        try {
            this.onError.accept(th2);
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            ci.a.s(new CompositeException(th2, th3));
        }
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        if (this.done) {
            return;
        }
        try {
            if (this.onNext.test(t10)) {
                return;
            }
            dispose();
            onComplete();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            dispose();
            onError(th2);
        }
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
