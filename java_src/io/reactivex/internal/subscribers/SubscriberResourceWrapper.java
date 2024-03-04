package io.reactivex.internal.subscribers;

import il.c;
import io.reactivex.f;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicReference;
import th.b;
/* loaded from: classes7.dex */
public final class SubscriberResourceWrapper<T> extends AtomicReference<b> implements f<T>, b, c {
    private static final long serialVersionUID = -8612022020200669122L;
    final il.b<? super T> downstream;
    final AtomicReference<c> upstream = new AtomicReference<>();

    public SubscriberResourceWrapper(il.b<? super T> bVar) {
        this.downstream = bVar;
    }

    @Override // il.c
    public void cancel() {
        dispose();
    }

    @Override // th.b
    public void dispose() {
        SubscriptionHelper.cancel(this.upstream);
        DisposableHelper.dispose(this);
    }

    @Override // th.b
    public boolean isDisposed() {
        return this.upstream.get() == SubscriptionHelper.CANCELLED;
    }

    @Override // il.b
    public void onComplete() {
        DisposableHelper.dispose(this);
        this.downstream.onComplete();
    }

    @Override // il.b
    public void onError(Throwable th2) {
        DisposableHelper.dispose(this);
        this.downstream.onError(th2);
    }

    @Override // il.b
    public void onNext(T t10) {
        this.downstream.onNext(t10);
    }

    @Override // il.b
    public void onSubscribe(c cVar) {
        if (SubscriptionHelper.setOnce(this.upstream, cVar)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // il.c
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            this.upstream.get().request(j10);
        }
    }

    public void setResource(b bVar) {
        DisposableHelper.set(this, bVar);
    }
}
