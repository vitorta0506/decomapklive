package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.r;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class BlockingObserver<T> extends AtomicReference<th.b> implements r<T>, th.b {
    public static final Object TERMINATED = new Object();
    private static final long serialVersionUID = -4875965440900746268L;
    final Queue<Object> queue;

    public BlockingObserver(Queue<Object> queue) {
        this.queue = queue;
    }

    @Override // th.b
    public void dispose() {
        if (DisposableHelper.dispose(this)) {
            this.queue.offer(TERMINATED);
        }
    }

    @Override // th.b
    public boolean isDisposed() {
        return get() == DisposableHelper.DISPOSED;
    }

    @Override // io.reactivex.r
    public void onComplete() {
        this.queue.offer(NotificationLite.complete());
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        this.queue.offer(NotificationLite.error(th2));
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        this.queue.offer(NotificationLite.next(t10));
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        DisposableHelper.setOnce(this, bVar);
    }
}
