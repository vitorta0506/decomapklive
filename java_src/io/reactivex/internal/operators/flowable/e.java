package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes7.dex */
public final class e<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final int f51355c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f51356d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f51357e;

    /* renamed from: f  reason: collision with root package name */
    final vh.a f51358f;

    /* loaded from: classes7.dex */
    static final class a<T> extends BasicIntQueueSubscription<T> implements io.reactivex.f<T> {
        private static final long serialVersionUID = -2514538129242366402L;

        /* renamed from: a  reason: collision with root package name */
        final il.b<? super T> f51359a;

        /* renamed from: b  reason: collision with root package name */
        final yh.f<T> f51360b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f51361c;

        /* renamed from: d  reason: collision with root package name */
        final vh.a f51362d;

        /* renamed from: e  reason: collision with root package name */
        il.c f51363e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f51364f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f51365g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f51366h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicLong f51367i = new AtomicLong();

        /* renamed from: j  reason: collision with root package name */
        boolean f51368j;

        a(il.b<? super T> bVar, int i9, boolean z10, boolean z11, vh.a aVar) {
            yh.f<T> spscArrayQueue;
            this.f51359a = bVar;
            this.f51362d = aVar;
            this.f51361c = z11;
            if (z10) {
                spscArrayQueue = new io.reactivex.internal.queue.b<>(i9);
            } else {
                spscArrayQueue = new SpscArrayQueue<>(i9);
            }
            this.f51360b = spscArrayQueue;
        }

        boolean b(boolean z10, boolean z11, il.b<? super T> bVar) {
            if (this.f51364f) {
                this.f51360b.clear();
                return true;
            } else if (z10) {
                if (this.f51361c) {
                    if (z11) {
                        Throwable th2 = this.f51366h;
                        if (th2 != null) {
                            bVar.onError(th2);
                        } else {
                            bVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th3 = this.f51366h;
                if (th3 != null) {
                    this.f51360b.clear();
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

        @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
        public void cancel() {
            if (this.f51364f) {
                return;
            }
            this.f51364f = true;
            this.f51363e.cancel();
            if (this.f51368j || getAndIncrement() != 0) {
                return;
            }
            this.f51360b.clear();
        }

        @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
        public void clear() {
            this.f51360b.clear();
        }

        void drain() {
            int i9;
            if (getAndIncrement() == 0) {
                yh.f<T> fVar = this.f51360b;
                il.b<? super T> bVar = this.f51359a;
                int i10 = 1;
                while (!b(this.f51365g, fVar.isEmpty(), bVar)) {
                    long j10 = this.f51367i.get();
                    long j11 = 0;
                    while (true) {
                        i9 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
                        if (i9 == 0) {
                            break;
                        }
                        boolean z10 = this.f51365g;
                        Object obj = (T) fVar.poll();
                        boolean z11 = obj == null;
                        if (b(z10, z11, bVar)) {
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        bVar.onNext(obj);
                        j11++;
                    }
                    if (i9 == 0 && b(this.f51365g, fVar.isEmpty(), bVar)) {
                        return;
                    }
                    if (j11 != 0 && j10 != Long.MAX_VALUE) {
                        this.f51367i.addAndGet(-j11);
                    }
                    i10 = addAndGet(-i10);
                    if (i10 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
        public boolean isEmpty() {
            return this.f51360b.isEmpty();
        }

        @Override // il.b
        public void onComplete() {
            this.f51365g = true;
            if (this.f51368j) {
                this.f51359a.onComplete();
            } else {
                drain();
            }
        }

        @Override // il.b
        public void onError(Throwable th2) {
            this.f51366h = th2;
            this.f51365g = true;
            if (this.f51368j) {
                this.f51359a.onError(th2);
            } else {
                drain();
            }
        }

        @Override // il.b
        public void onNext(T t10) {
            if (!this.f51360b.offer(t10)) {
                this.f51363e.cancel();
                MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
                try {
                    this.f51362d.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    missingBackpressureException.initCause(th2);
                }
                onError(missingBackpressureException);
            } else if (this.f51368j) {
                this.f51359a.onNext(null);
            } else {
                drain();
            }
        }

        @Override // il.b
        public void onSubscribe(il.c cVar) {
            if (SubscriptionHelper.validate(this.f51363e, cVar)) {
                this.f51363e = cVar;
                this.f51359a.onSubscribe(this);
                cVar.request(Long.MAX_VALUE);
            }
        }

        @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.g
        public T poll() throws Exception {
            return this.f51360b.poll();
        }

        @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, il.c
        public void request(long j10) {
            if (this.f51368j || !SubscriptionHelper.validate(j10)) {
                return;
            }
            io.reactivex.internal.util.b.a(this.f51367i, j10);
            drain();
        }

        @Override // io.reactivex.internal.subscriptions.BasicIntQueueSubscription, yh.c
        public int requestFusion(int i9) {
            if ((i9 & 2) != 0) {
                this.f51368j = true;
                return 2;
            }
            return 0;
        }
    }

    public e(io.reactivex.e<T> eVar, int i9, boolean z10, boolean z11, vh.a aVar) {
        super(eVar);
        this.f51355c = i9;
        this.f51356d = z10;
        this.f51357e = z11;
        this.f51358f = aVar;
    }

    @Override // io.reactivex.e
    protected void h(il.b<? super T> bVar) {
        this.f51338b.g(new a(bVar, this.f51355c, this.f51356d, this.f51357e, this.f51358f));
    }
}
