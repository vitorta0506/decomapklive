package io.reactivex.internal.observers;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public abstract class BasicIntQueueDisposable<T> extends AtomicInteger implements yh.b<T> {
    private static final long serialVersionUID = -1001730202384742097L;

    public abstract /* synthetic */ void clear();

    public abstract /* synthetic */ void dispose();

    public abstract /* synthetic */ boolean isDisposed();

    public abstract /* synthetic */ boolean isEmpty();

    @Override // yh.g
    public final boolean offer(T t10) {
        throw new UnsupportedOperationException("Should not be called");
    }

    public abstract /* synthetic */ T poll() throws Exception;

    public abstract /* synthetic */ int requestFusion(int i9);

    public final boolean offer(T t10, T t11) {
        throw new UnsupportedOperationException("Should not be called");
    }
}
