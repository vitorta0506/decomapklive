package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class d<T, K> extends BasicIntQueueSubscription<T> implements il.a<T> {
    private static final long serialVersionUID = -3852313036005250360L;

    /* renamed from: a  reason: collision with root package name */
    final K f51343a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.internal.queue.b<T> f51344b;

    /* renamed from: c  reason: collision with root package name */
    final FlowableGroupBy$GroupBySubscriber<?, K, T> f51345c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f51346d;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f51348f;

    /* renamed from: g  reason: collision with root package name */
    Throwable f51349g;

    /* renamed from: k  reason: collision with root package name */
    boolean f51353k;

    /* renamed from: l  reason: collision with root package name */
    int f51354l;

    /* renamed from: e  reason: collision with root package name */
    final AtomicLong f51347e = new AtomicLong();

    /* renamed from: h  reason: collision with root package name */
    final AtomicBoolean f51350h = new AtomicBoolean();

    /* renamed from: i  reason: collision with root package name */
    final AtomicReference<il.b<? super T>> f51351i = new AtomicReference<>();

    /* renamed from: j  reason: collision with root package name */
    final AtomicBoolean f51352j = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(int i9, FlowableGroupBy$GroupBySubscriber<?, K, T> flowableGroupBy$GroupBySubscriber, K k10, boolean z10) {
        this.f51344b = new io.reactivex.internal.queue.b<>(i9);
        this.f51345c = flowableGroupBy$GroupBySubscriber;
        this.f51343a = k10;
        this.f51346d = z10;
    }

    @Override // il.a
    public void a(il.b<? super T> bVar) {
        if (this.f51352j.compareAndSet(false, true)) {
            bVar.onSubscribe(this);
            this.f51351i.lazySet(bVar);
            drain();
            return;
        }
        EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), bVar);
    }

    boolean b(boolean z10, boolean z11, il.b<? super T> bVar, boolean z12, long j10) {
        if (this.f51350h.get()) {
            while (this.f51344b.poll() != null) {
                j10++;
            }
            if (j10 != 0) {
                this.f51345c.upstream.request(j10);
            }
            return true;
        } else if (z10) {
            if (z12) {
                if (z11) {
                    Throwable th2 = this.f51349g;
                    if (th2 != null) {
                        bVar.onError(th2);
                    } else {
                        bVar.onComplete();
                    }
                    return true;
                }
                return false;
            }
            Throwable th3 = this.f51349g;
            if (th3 != null) {
                this.f51344b.clear();
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

    void c() {
        int i9 = this.f51354l;
        if (i9 != 0) {
            this.f51354l = 0;
            this.f51345c.upstream.request(i9);
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
    public void cancel() {
        if (this.f51350h.compareAndSet(false, true)) {
            this.f51345c.cancel(this.f51343a);
            drain();
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public void clear() {
        io.reactivex.internal.queue.b<T> bVar = this.f51344b;
        while (bVar.poll() != null) {
            this.f51354l++;
        }
        c();
    }

    void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        if (this.f51353k) {
            drainFused();
        } else {
            drainNormal();
        }
    }

    void drainFused() {
        Throwable th2;
        io.reactivex.internal.queue.b<T> bVar = this.f51344b;
        il.b<? super T> bVar2 = this.f51351i.get();
        int i9 = 1;
        while (true) {
            if (bVar2 != null) {
                if (this.f51350h.get()) {
                    return;
                }
                boolean z10 = this.f51348f;
                if (z10 && !this.f51346d && (th2 = this.f51349g) != null) {
                    bVar.clear();
                    bVar2.onError(th2);
                    return;
                }
                bVar2.onNext(null);
                if (z10) {
                    Throwable th3 = this.f51349g;
                    if (th3 != null) {
                        bVar2.onError(th3);
                        return;
                    } else {
                        bVar2.onComplete();
                        return;
                    }
                }
            }
            i9 = addAndGet(-i9);
            if (i9 == 0) {
                return;
            }
            if (bVar2 == null) {
                bVar2 = this.f51351i.get();
            }
        }
    }

    void drainNormal() {
        int i9;
        io.reactivex.internal.queue.b<T> bVar = this.f51344b;
        boolean z10 = this.f51346d;
        il.b<? super T> bVar2 = this.f51351i.get();
        int i10 = 1;
        while (true) {
            if (bVar2 != null) {
                long j10 = this.f51347e.get();
                long j11 = 0;
                while (true) {
                    i9 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
                    if (i9 == 0) {
                        break;
                    }
                    boolean z11 = this.f51348f;
                    Object obj = (T) bVar.poll();
                    boolean z12 = obj == null;
                    long j12 = j11;
                    if (b(z11, z12, bVar2, z10, j11)) {
                        return;
                    }
                    if (z12) {
                        j11 = j12;
                        break;
                    } else {
                        bVar2.onNext(obj);
                        j11 = j12 + 1;
                    }
                }
                if (i9 == 0) {
                    long j13 = j11;
                    if (b(this.f51348f, bVar.isEmpty(), bVar2, z10, j11)) {
                        return;
                    }
                    j11 = j13;
                }
                if (j11 != 0) {
                    if (j10 != Long.MAX_VALUE) {
                        this.f51347e.addAndGet(-j11);
                    }
                    this.f51345c.upstream.request(j11);
                }
            }
            i10 = addAndGet(-i10);
            if (i10 == 0) {
                return;
            }
            if (bVar2 == null) {
                bVar2 = this.f51351i.get();
            }
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public boolean isEmpty() {
        if (this.f51344b.isEmpty()) {
            c();
            return true;
        }
        return false;
    }

    public void onComplete() {
        this.f51348f = true;
        drain();
    }

    public void onError(Throwable th2) {
        this.f51349g = th2;
        this.f51348f = true;
        drain();
    }

    public void onNext(T t10) {
        this.f51344b.offer(t10);
        drain();
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
    public T poll() {
        T poll = this.f51344b.poll();
        if (poll != null) {
            this.f51354l++;
            return poll;
        }
        c();
        return null;
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
    public void request(long j10) {
        if (SubscriptionHelper.validate(j10)) {
            io.reactivex.internal.util.b.a(this.f51347e, j10);
            drain();
        }
    }

    @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.c
    public int requestFusion(int i9) {
        if ((i9 & 2) != 0) {
            this.f51353k = true;
            return 2;
        }
        return 0;
    }
}
