package io.reactivex.internal.subscriptions;

import il.b;
import java.util.concurrent.atomic.AtomicInteger;
import yh.d;
/* loaded from: classes7.dex */
public final class ScalarSubscription<T> extends AtomicInteger implements d<T> {
    static final int CANCELLED = 2;
    static final int NO_REQUEST = 0;
    static final int REQUESTED = 1;
    private static final long serialVersionUID = -3830916580126663321L;
    final b<? super T> subscriber;
    final T value;

    public ScalarSubscription(b<? super T> bVar, T t10) {
        this.subscriber = bVar;
        this.value = t10;
    }

    @Override // il.c
    public void cancel() {
        lazySet(2);
    }

    @Override // yh.g
    public void clear() {
        lazySet(1);
    }

    public boolean isCancelled() {
        return get() == 2;
    }

    @Override // yh.g
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override // yh.g
    public boolean offer(T t10) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // yh.g
    public T poll() {
        if (get() == 0) {
            lazySet(1);
            return this.value;
        }
        return null;
    }

    @Override // il.c
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10) && compareAndSet(0, 1)) {
            b<? super T> bVar = this.subscriber;
            bVar.onNext((T) this.value);
            if (get() != 2) {
                bVar.onComplete();
            }
        }
    }

    @Override // yh.c
    public int requestFusion(int i9) {
        return i9 & 1;
    }

    public boolean offer(T t10, T t11) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
