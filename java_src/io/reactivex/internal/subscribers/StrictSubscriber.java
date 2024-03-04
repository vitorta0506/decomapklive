package io.reactivex.internal.subscribers;

import il.b;
import il.c;
import io.reactivex.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.g;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public class StrictSubscriber<T> extends AtomicInteger implements f<T>, c {
    private static final long serialVersionUID = -4945028590049415624L;
    volatile boolean done;
    final b<? super T> downstream;
    final AtomicThrowable error = new AtomicThrowable();
    final AtomicLong requested = new AtomicLong();
    final AtomicReference<c> upstream = new AtomicReference<>();
    final AtomicBoolean once = new AtomicBoolean();

    public StrictSubscriber(b<? super T> bVar) {
        this.downstream = bVar;
    }

    @Override // il.c
    public void cancel() {
        if (this.done) {
            return;
        }
        SubscriptionHelper.cancel(this.upstream);
    }

    @Override // il.b
    public void onComplete() {
        this.done = true;
        g.a(this.downstream, this, this.error);
    }

    @Override // il.b
    public void onError(Throwable th2) {
        this.done = true;
        g.c(this.downstream, th2, this, this.error);
    }

    @Override // il.b
    public void onNext(T t10) {
        g.e(this.downstream, t10, this, this.error);
    }

    @Override // il.b
    public void onSubscribe(c cVar) {
        if (this.once.compareAndSet(false, true)) {
            this.downstream.onSubscribe(this);
            SubscriptionHelper.deferredSetOnce(this.upstream, this.requested, cVar);
            return;
        }
        cVar.cancel();
        cancel();
        onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
    }

    @Override // il.c
    public void request(long j10) {
        if (j10 <= 0) {
            cancel();
            onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was " + j10));
            return;
        }
        SubscriptionHelper.deferredRequest(this.upstream, this.requested, j10);
    }
}
