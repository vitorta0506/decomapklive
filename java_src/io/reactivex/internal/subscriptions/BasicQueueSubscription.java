package io.reactivex.internal.subscriptions;

import java.util.concurrent.atomic.AtomicLong;
import yh.d;
/* loaded from: classes7.dex */
public abstract class BasicQueueSubscription<T> extends AtomicLong implements d<T> {
    private static final long serialVersionUID = -6671519529404341862L;

    @Override // il.c
    public abstract /* synthetic */ void cancel();

    @Override // yh.g
    public abstract /* synthetic */ void clear();

    @Override // yh.g
    public abstract /* synthetic */ boolean isEmpty();

    @Override // yh.g
    public final boolean offer(T t10) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // yh.g
    public abstract /* synthetic */ T poll() throws Exception;

    @Override // il.c
    public abstract /* synthetic */ void request(long j10);

    @Override // yh.c
    public abstract /* synthetic */ int requestFusion(int i9);

    public final boolean offer(T t10, T t11) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
