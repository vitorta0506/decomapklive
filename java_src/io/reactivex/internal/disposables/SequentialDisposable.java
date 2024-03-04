package io.reactivex.internal.disposables;

import java.util.concurrent.atomic.AtomicReference;
import th.b;
/* loaded from: classes7.dex */
public final class SequentialDisposable extends AtomicReference<b> implements b {
    private static final long serialVersionUID = -754898800686245608L;

    public SequentialDisposable() {
    }

    @Override // th.b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    @Override // th.b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean replace(b bVar) {
        return DisposableHelper.replace(this, bVar);
    }

    public boolean update(b bVar) {
        return DisposableHelper.set(this, bVar);
    }

    public SequentialDisposable(b bVar) {
        lazySet(bVar);
    }
}
