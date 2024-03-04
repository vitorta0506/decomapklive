package io.reactivex.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public abstract class b<T> implements r<T>, th.b {
    final AtomicReference<th.b> upstream = new AtomicReference<>();

    @Override // th.b
    public final void dispose() {
        DisposableHelper.dispose(this.upstream);
    }

    @Override // th.b
    public final boolean isDisposed() {
        return this.upstream.get() == DisposableHelper.DISPOSED;
    }

    protected void onStart() {
    }

    @Override // io.reactivex.r
    public final void onSubscribe(th.b bVar) {
        if (io.reactivex.internal.util.e.c(this.upstream, bVar, getClass())) {
            onStart();
        }
    }
}
