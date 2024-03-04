package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import vh.o;
/* loaded from: classes7.dex */
public final class FlowableGroupBy$GroupBySubscriber<T, K, V> extends BasicIntQueueSubscription<uh.a<K, V>> implements io.reactivex.f<T> {
    static final Object NULL_KEY = new Object();
    private static final long serialVersionUID = -3688291656102519502L;
    final int bufferSize;
    final boolean delayError;
    boolean done;
    final il.b<? super uh.a<K, V>> downstream;
    Throwable error;
    final Queue<c<K, V>> evictedGroups;
    volatile boolean finished;
    final Map<Object, c<K, V>> groups;
    final o<? super T, ? extends K> keySelector;
    boolean outputFused;
    final io.reactivex.internal.queue.b<uh.a<K, V>> queue;
    il.c upstream;
    final o<? super T, ? extends V> valueSelector;
    final AtomicBoolean cancelled = new AtomicBoolean();
    final AtomicLong requested = new AtomicLong();
    final AtomicInteger groupCount = new AtomicInteger(1);

    public FlowableGroupBy$GroupBySubscriber(il.b<? super uh.a<K, V>> bVar, o<? super T, ? extends K> oVar, o<? super T, ? extends V> oVar2, int i9, boolean z10, Map<Object, c<K, V>> map, Queue<c<K, V>> queue) {
        this.downstream = bVar;
        this.keySelector = oVar;
        this.valueSelector = oVar2;
        this.bufferSize = i9;
        this.delayError = z10;
        this.groups = map;
        this.evictedGroups = queue;
        this.queue = new io.reactivex.internal.queue.b<>(i9);
    }

    private void completeEvictions() {
        if (this.evictedGroups != null) {
            int i9 = 0;
            while (true) {
                c<K, V> poll = this.evictedGroups.poll();
                if (poll == null) {
                    break;
                }
                poll.j();
                i9++;
            }
            if (i9 != 0) {
                this.groupCount.addAndGet(-i9);
            }
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
    public void cancel() {
        if (this.cancelled.compareAndSet(false, true)) {
            completeEvictions();
            if (this.groupCount.decrementAndGet() == 0) {
                this.upstream.cancel();
            }
        }
    }

    boolean checkTerminated(boolean z10, boolean z11, il.b<?> bVar, io.reactivex.internal.queue.b<?> bVar2) {
        if (this.cancelled.get()) {
            bVar2.clear();
            return true;
        } else if (this.delayError) {
            if (z10 && z11) {
                Throwable th2 = this.error;
                if (th2 != null) {
                    bVar.onError(th2);
                } else {
                    bVar.onComplete();
                }
                return true;
            }
            return false;
        } else if (z10) {
            Throwable th3 = this.error;
            if (th3 != null) {
                bVar2.clear();
                bVar.onError(th3);
                return true;
            } else if (z11) {
                bVar.onComplete();
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public void clear() {
        this.queue.clear();
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        if (this.outputFused) {
            drainFused();
        } else {
            drainNormal();
        }
    }

    void drainFused() {
        Throwable th2;
        io.reactivex.internal.queue.b<uh.a<K, V>> bVar = this.queue;
        il.b<? super uh.a<K, V>> bVar2 = this.downstream;
        int i9 = 1;
        while (!this.cancelled.get()) {
            boolean z10 = this.finished;
            if (z10 && !this.delayError && (th2 = this.error) != null) {
                bVar.clear();
                bVar2.onError(th2);
                return;
            }
            bVar2.onNext(null);
            if (z10) {
                Throwable th3 = this.error;
                if (th3 != null) {
                    bVar2.onError(th3);
                    return;
                } else {
                    bVar2.onComplete();
                    return;
                }
            }
            i9 = addAndGet(-i9);
            if (i9 == 0) {
                return;
            }
        }
    }

    void drainNormal() {
        int i9;
        io.reactivex.internal.queue.b<uh.a<K, V>> bVar = this.queue;
        il.b<? super uh.a<K, V>> bVar2 = this.downstream;
        int i10 = 1;
        do {
            long j10 = this.requested.get();
            long j11 = 0;
            while (true) {
                i9 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
                if (i9 == 0) {
                    break;
                }
                boolean z10 = this.finished;
                uh.a<K, V> poll = bVar.poll();
                boolean z11 = poll == null;
                if (checkTerminated(z10, z11, bVar2, bVar)) {
                    return;
                }
                if (z11) {
                    break;
                }
                bVar2.onNext(poll);
                j11++;
            }
            if (i9 == 0 && checkTerminated(this.finished, bVar.isEmpty(), bVar2, bVar)) {
                return;
            }
            if (j11 != 0) {
                if (j10 != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j11);
                }
                this.upstream.request(j11);
            }
            i10 = addAndGet(-i10);
        } while (i10 != 0);
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override // il.b
    public void onComplete() {
        if (this.done) {
            return;
        }
        for (c<K, V> cVar : this.groups.values()) {
            cVar.j();
        }
        this.groups.clear();
        Queue<c<K, V>> queue = this.evictedGroups;
        if (queue != null) {
            queue.clear();
        }
        this.done = true;
        this.finished = true;
        drain();
    }

    @Override // il.b
    public void onError(Throwable th2) {
        if (this.done) {
            ci.a.s(th2);
            return;
        }
        this.done = true;
        for (c<K, V> cVar : this.groups.values()) {
            cVar.k(th2);
        }
        this.groups.clear();
        Queue<c<K, V>> queue = this.evictedGroups;
        if (queue != null) {
            queue.clear();
        }
        this.error = th2;
        this.finished = true;
        drain();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // il.b
    public void onNext(T t10) {
        if (this.done) {
            return;
        }
        io.reactivex.internal.queue.b<uh.a<K, V>> bVar = this.queue;
        try {
            K apply = this.keySelector.apply(t10);
            boolean z10 = false;
            Object obj = apply != null ? apply : NULL_KEY;
            c<K, V> cVar = this.groups.get(obj);
            if (cVar == null) {
                if (this.cancelled.get()) {
                    return;
                }
                cVar = c.i(apply, this.bufferSize, this, this.delayError);
                this.groups.put(obj, cVar);
                this.groupCount.getAndIncrement();
                z10 = true;
            }
            try {
                cVar.l(xh.b.e(this.valueSelector.apply(t10), "The valueSelector returned null"));
                completeEvictions();
                if (z10) {
                    bVar.offer(cVar);
                    drain();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.upstream.cancel();
                onError(th2);
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            this.upstream.cancel();
            onError(th3);
        }
    }

    @Override // il.b
    public void onSubscribe(il.c cVar) {
        if (SubscriptionHelper.validate(this.upstream, cVar)) {
            this.upstream = cVar;
            this.downstream.onSubscribe(this);
            cVar.request(this.bufferSize);
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.internal.util.b.a(this.requested, j10);
            drain();
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.c
    public int requestFusion(int i9) {
        if ((i9 & 2) != 0) {
            this.outputFused = true;
            return 2;
        }
        return 0;
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public uh.a<K, V> poll() {
        return this.queue.poll();
    }

    public void cancel(K k10) {
        if (k10 == null) {
            k10 = (K) NULL_KEY;
        }
        this.groups.remove(k10);
        if (this.groupCount.decrementAndGet() == 0) {
            this.upstream.cancel();
            if (this.outputFused || getAndIncrement() != 0) {
                return;
            }
            this.queue.clear();
        }
    }
}
