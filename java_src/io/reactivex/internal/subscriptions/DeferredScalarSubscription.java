package io.reactivex.internal.subscriptions;

import il.b;
/* loaded from: classes7.dex */
public class DeferredScalarSubscription<T> extends BasicIntQueueSubscription<T> {
    static final int CANCELLED = 4;
    static final int FUSED_CONSUMED = 32;
    static final int FUSED_EMPTY = 8;
    static final int FUSED_READY = 16;
    static final int HAS_REQUEST_HAS_VALUE = 3;
    static final int HAS_REQUEST_NO_VALUE = 2;
    static final int NO_REQUEST_HAS_VALUE = 1;
    static final int NO_REQUEST_NO_VALUE = 0;
    private static final long serialVersionUID = -2151279923272604993L;
    protected final b<? super T> downstream;
    protected T value;

    public DeferredScalarSubscription(b<? super T> bVar) {
        this.downstream = bVar;
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
    public void cancel() {
        set(4);
        this.value = null;
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public final void clear() {
        lazySet(32);
        this.value = null;
    }

    public final void complete(T t10) {
        int i9 = get();
        while (i9 != 8) {
            if ((i9 & (-3)) != 0) {
                return;
            }
            if (i9 == 2) {
                lazySet(3);
                b<? super T> bVar = this.downstream;
                bVar.onNext(t10);
                if (get() != 4) {
                    bVar.onComplete();
                    return;
                }
                return;
            }
            this.value = t10;
            if (compareAndSet(0, 1)) {
                return;
            }
            i9 = get();
            if (i9 == 4) {
                this.value = null;
                return;
            }
        }
        this.value = t10;
        lazySet(16);
        b<? super T> bVar2 = this.downstream;
        bVar2.onNext(t10);
        if (get() != 4) {
            bVar2.onComplete();
        }
    }

    public final boolean isCancelled() {
        return get() == 4;
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public final T poll() {
        if (get() == 16) {
            lazySet(32);
            T t10 = this.value;
            this.value = null;
            return t10;
        }
        return null;
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
    public final void request(long j10) {
        T t10;
        if (SubscriptionHelper.validate(j10)) {
            do {
                int i9 = get();
                if ((i9 & (-2)) != 0) {
                    return;
                }
                if (i9 == 1) {
                    if (!compareAndSet(1, 3) || (t10 = this.value) == null) {
                        return;
                    }
                    this.value = null;
                    b<? super T> bVar = this.downstream;
                    bVar.onNext(t10);
                    if (get() != 4) {
                        bVar.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.c
    public final int requestFusion(int i9) {
        if ((i9 & 2) != 0) {
            lazySet(8);
            return 2;
        }
        return 0;
    }

    public final boolean tryCancel() {
        return getAndSet(4) != 4;
    }
}
