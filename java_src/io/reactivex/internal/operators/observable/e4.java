package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class e4<T, B> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.k<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<B> f51596b;

    /* renamed from: c  reason: collision with root package name */
    final int f51597c;

    /* loaded from: classes7.dex */
    static final class a<T, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, B> f51598a;

        /* renamed from: b  reason: collision with root package name */
        boolean f51599b;

        a(b<T, B> bVar) {
            this.f51598a = bVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51599b) {
                return;
            }
            this.f51599b = true;
            this.f51598a.c();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51599b) {
                ci.a.s(th2);
                return;
            }
            this.f51599b = true;
            this.f51598a.d(th2);
        }

        @Override // io.reactivex.r
        public void onNext(B b10) {
            if (this.f51599b) {
                return;
            }
            this.f51598a.f();
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, B> extends AtomicInteger implements io.reactivex.r<T>, th.b, Runnable {

        /* renamed from: k  reason: collision with root package name */
        static final Object f51600k = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super io.reactivex.k<T>> f51601a;

        /* renamed from: b  reason: collision with root package name */
        final int f51602b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, B> f51603c = new a<>(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<th.b> f51604d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f51605e = new AtomicInteger(1);

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f51606f = new io.reactivex.internal.queue.a<>();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f51607g = new AtomicThrowable();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f51608h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f51609i;

        /* renamed from: j  reason: collision with root package name */
        ei.d<T> f51610j;

        b(io.reactivex.r<? super io.reactivex.k<T>> rVar, int i9) {
            this.f51601a = rVar;
            this.f51602b = i9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.r<? super io.reactivex.k<T>> rVar = this.f51601a;
            io.reactivex.internal.queue.a<Object> aVar = this.f51606f;
            AtomicThrowable atomicThrowable = this.f51607g;
            int i9 = 1;
            while (this.f51605e.get() != 0) {
                ei.d<T> dVar = this.f51610j;
                boolean z10 = this.f51609i;
                if (z10 && atomicThrowable.get() != null) {
                    aVar.clear();
                    Throwable terminate = atomicThrowable.terminate();
                    if (dVar != 0) {
                        this.f51610j = null;
                        dVar.onError(terminate);
                    }
                    rVar.onError(terminate);
                    return;
                }
                Object poll = aVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    Throwable terminate2 = atomicThrowable.terminate();
                    if (terminate2 == null) {
                        if (dVar != 0) {
                            this.f51610j = null;
                            dVar.onComplete();
                        }
                        rVar.onComplete();
                        return;
                    }
                    if (dVar != 0) {
                        this.f51610j = null;
                        dVar.onError(terminate2);
                    }
                    rVar.onError(terminate2);
                    return;
                } else if (z11) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else if (poll != f51600k) {
                    dVar.onNext(poll);
                } else {
                    if (dVar != 0) {
                        this.f51610j = null;
                        dVar.onComplete();
                    }
                    if (!this.f51608h.get()) {
                        ei.d<T> f10 = ei.d.f(this.f51602b, this);
                        this.f51610j = f10;
                        this.f51605e.getAndIncrement();
                        rVar.onNext(f10);
                    }
                }
            }
            aVar.clear();
            this.f51610j = null;
        }

        void c() {
            DisposableHelper.dispose(this.f51604d);
            this.f51609i = true;
            b();
        }

        void d(Throwable th2) {
            DisposableHelper.dispose(this.f51604d);
            if (this.f51607g.addThrowable(th2)) {
                this.f51609i = true;
                b();
                return;
            }
            ci.a.s(th2);
        }

        @Override // th.b
        public void dispose() {
            if (this.f51608h.compareAndSet(false, true)) {
                this.f51603c.dispose();
                if (this.f51605e.decrementAndGet() == 0) {
                    DisposableHelper.dispose(this.f51604d);
                }
            }
        }

        void f() {
            this.f51606f.offer(f51600k);
            b();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51608h.get();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51603c.dispose();
            this.f51609i = true;
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51603c.dispose();
            if (this.f51607g.addThrowable(th2)) {
                this.f51609i = true;
                b();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51606f.offer(t10);
            b();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.setOnce(this.f51604d, bVar)) {
                f();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f51605e.decrementAndGet() == 0) {
                DisposableHelper.dispose(this.f51604d);
            }
        }
    }

    public e4(io.reactivex.p<T> pVar, io.reactivex.p<B> pVar2, int i9) {
        super(pVar);
        this.f51596b = pVar2;
        this.f51597c = i9;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super io.reactivex.k<T>> rVar) {
        b bVar = new b(rVar, this.f51597c);
        rVar.onSubscribe(bVar);
        this.f51596b.subscribe(bVar.f51603c);
        this.f51403a.subscribe(bVar);
    }
}
