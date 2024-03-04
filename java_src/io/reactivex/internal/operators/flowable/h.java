package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class h<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.f<T>, il.c {
        private static final long serialVersionUID = 163080509307634843L;

        /* renamed from: a  reason: collision with root package name */
        final il.b<? super T> f51377a;

        /* renamed from: b  reason: collision with root package name */
        il.c f51378b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f51379c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f51380d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f51381e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f51382f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<T> f51383g = new AtomicReference<>();

        a(il.b<? super T> bVar) {
            this.f51377a = bVar;
        }

        boolean a(boolean z10, boolean z11, il.b<?> bVar, AtomicReference<T> atomicReference) {
            if (this.f51381e) {
                atomicReference.lazySet(null);
                return true;
            } else if (z10) {
                Throwable th2 = this.f51380d;
                if (th2 != null) {
                    atomicReference.lazySet(null);
                    bVar.onError(th2);
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

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            il.b<? super T> bVar = this.f51377a;
            AtomicLong atomicLong = this.f51382f;
            AtomicReference<T> atomicReference = this.f51383g;
            int i9 = 1;
            do {
                long j10 = 0;
                while (true) {
                    if (j10 == atomicLong.get()) {
                        break;
                    }
                    boolean z10 = this.f51379c;
                    Object obj = (T) atomicReference.getAndSet(null);
                    boolean z11 = obj == null;
                    if (a(z10, z11, bVar, atomicReference)) {
                        return;
                    }
                    if (z11) {
                        break;
                    }
                    bVar.onNext(obj);
                    j10++;
                }
                if (j10 == atomicLong.get()) {
                    if (a(this.f51379c, atomicReference.get() == null, bVar, atomicReference)) {
                        return;
                    }
                }
                if (j10 != 0) {
                    io.reactivex.internal.util.b.c(atomicLong, j10);
                }
                i9 = addAndGet(-i9);
            } while (i9 != 0);
        }

        @Override // il.c
        public void cancel() {
            if (this.f51381e) {
                return;
            }
            this.f51381e = true;
            this.f51378b.cancel();
            if (getAndIncrement() == 0) {
                this.f51383g.lazySet(null);
            }
        }

        @Override // il.b
        public void onComplete() {
            this.f51379c = true;
            b();
        }

        @Override // il.b
        public void onError(Throwable th2) {
            this.f51380d = th2;
            this.f51379c = true;
            b();
        }

        @Override // il.b
        public void onNext(T t10) {
            this.f51383g.lazySet(t10);
            b();
        }

        @Override // il.b
        public void onSubscribe(il.c cVar) {
            if (SubscriptionHelper.validate(this.f51378b, cVar)) {
                this.f51378b = cVar;
                this.f51377a.onSubscribe(this);
                cVar.request(Long.MAX_VALUE);
            }
        }

        @Override // il.c
        public void request(long j10) {
            if (SubscriptionHelper.validate(j10)) {
                io.reactivex.internal.util.b.a(this.f51382f, j10);
                b();
            }
        }
    }

    public h(io.reactivex.e<T> eVar) {
        super(eVar);
    }

    @Override // io.reactivex.e
    protected void h(il.b<? super T> bVar) {
        this.f51338b.g(new a(bVar));
    }
}
