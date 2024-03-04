package io.reactivex.internal.observers;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.u;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class BiConsumerSingleObserver<T> extends AtomicReference<th.b> implements u<T>, th.b {
    private static final long serialVersionUID = 4943102778943297569L;
    final vh.b<? super T, ? super Throwable> onCallback;

    public BiConsumerSingleObserver(vh.b<? super T, ? super Throwable> bVar) {
        this.onCallback = bVar;
    }

    @Override // th.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // th.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.u
    public void onError(Throwable th2) {
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.onCallback.accept(null, th2);
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
        try {
            lazySet(DisposableHelper.DISPOSED);
            this.onCallback.accept(t10, null);
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            ci.a.s(th2);
        }
    }
}
