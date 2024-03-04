package io.reactivex.internal.subscribers;

import il.b;
import il.c;
import io.reactivex.f;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes7.dex */
public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements f<T>, c {
    static final long COMPLETE_MASK = Long.MIN_VALUE;
    static final long REQUEST_MASK = Long.MAX_VALUE;
    private static final long serialVersionUID = 7917814472626990048L;
    protected final b<? super R> downstream;
    protected long produced;
    protected c upstream;
    protected R value;

    public SinglePostCompleteSubscriber(b<? super R> bVar) {
        this.downstream = bVar;
    }

    @Override // il.c
    public void cancel() {
        this.upstream.cancel();
    }

    protected final void complete(R r10) {
        long j10 = this.produced;
        if (j10 != 0) {
            io.reactivex.internal.util.b.c(this, j10);
        }
        while (true) {
            long j11 = get();
            if ((j11 & Long.MIN_VALUE) != 0) {
                onDrop(r10);
                return;
            } else if ((j11 & Long.MAX_VALUE) != 0) {
                lazySet(-9223372036854775807L);
                this.downstream.onNext(r10);
                this.downstream.onComplete();
                return;
            } else {
                this.value = r10;
                if (compareAndSet(0L, Long.MIN_VALUE)) {
                    return;
                }
                this.value = null;
            }
        }
    }

    @Override // il.b
    public abstract /* synthetic */ void onComplete();

    protected void onDrop(R r10) {
    }

    @Override // il.b
    public abstract /* synthetic */ void onError(Throwable th2);

    @Override // il.b
    public abstract /* synthetic */ void onNext(T t10);

    @Override // il.b
    public void onSubscribe(c cVar) {
        if (SubscriptionHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
        }
    }

    @Override // il.c
    public final void request(long j10) {
        long j11;
        if (SubscriptionHelper.validate(j10)) {
            do {
                j11 = get();
                if ((j11 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, -9223372036854775807L)) {
                        this.downstream.onNext((R) this.value);
                        this.downstream.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j11, io.reactivex.internal.util.b.b(j11, j10)));
            this.upstream.request(j10);
        }
    }
}
