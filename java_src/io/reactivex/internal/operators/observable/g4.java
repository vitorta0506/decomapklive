package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class g4<T, B> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.k<T>> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends io.reactivex.p<B>> f51694b;

    /* renamed from: c  reason: collision with root package name */
    final int f51695c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, B> f51696a;

        /* renamed from: b  reason: collision with root package name */
        boolean f51697b;

        a(b<T, B> bVar) {
            this.f51696a = bVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51697b) {
                return;
            }
            this.f51697b = true;
            this.f51696a.d();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51697b) {
                ci.a.s(th2);
                return;
            }
            this.f51697b = true;
            this.f51696a.f(th2);
        }

        @Override // io.reactivex.r
        public void onNext(B b10) {
            if (this.f51697b) {
                return;
            }
            this.f51697b = true;
            dispose();
            this.f51696a.g(this);
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, B> extends AtomicInteger implements io.reactivex.r<T>, th.b, Runnable {

        /* renamed from: l  reason: collision with root package name */
        static final a<Object, Object> f51698l = new a<>(null);

        /* renamed from: m  reason: collision with root package name */
        static final Object f51699m = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super io.reactivex.k<T>> f51700a;

        /* renamed from: b  reason: collision with root package name */
        final int f51701b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<a<T, B>> f51702c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f51703d = new AtomicInteger(1);

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.a<Object> f51704e = new io.reactivex.internal.queue.a<>();

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f51705f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f51706g = new AtomicBoolean();

        /* renamed from: h  reason: collision with root package name */
        final Callable<? extends io.reactivex.p<B>> f51707h;

        /* renamed from: i  reason: collision with root package name */
        th.b f51708i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f51709j;

        /* renamed from: k  reason: collision with root package name */
        ei.d<T> f51710k;

        b(io.reactivex.r<? super io.reactivex.k<T>> rVar, int i9, Callable<? extends io.reactivex.p<B>> callable) {
            this.f51700a = rVar;
            this.f51701b = i9;
            this.f51707h = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void b() {
            a<Object, Object> aVar = f51698l;
            th.b bVar = (th.b) this.f51702c.getAndSet(aVar);
            if (bVar == null || bVar == aVar) {
                return;
            }
            bVar.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.r<? super io.reactivex.k<T>> rVar = this.f51700a;
            io.reactivex.internal.queue.a<Object> aVar = this.f51704e;
            AtomicThrowable atomicThrowable = this.f51705f;
            int i9 = 1;
            while (this.f51703d.get() != 0) {
                ei.d<T> dVar = this.f51710k;
                boolean z10 = this.f51709j;
                if (z10 && atomicThrowable.get() != null) {
                    aVar.clear();
                    Throwable terminate = atomicThrowable.terminate();
                    if (dVar != 0) {
                        this.f51710k = null;
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
                            this.f51710k = null;
                            dVar.onComplete();
                        }
                        rVar.onComplete();
                        return;
                    }
                    if (dVar != 0) {
                        this.f51710k = null;
                        dVar.onError(terminate2);
                    }
                    rVar.onError(terminate2);
                    return;
                } else if (z11) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else if (poll != f51699m) {
                    dVar.onNext(poll);
                } else {
                    if (dVar != 0) {
                        this.f51710k = null;
                        dVar.onComplete();
                    }
                    if (!this.f51706g.get()) {
                        ei.d<T> f10 = ei.d.f(this.f51701b, this);
                        this.f51710k = f10;
                        this.f51703d.getAndIncrement();
                        try {
                            io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f51707h.call(), "The other Callable returned a null ObservableSource");
                            a<T, B> aVar2 = new a<>(this);
                            if (this.f51702c.compareAndSet(null, aVar2)) {
                                pVar.subscribe(aVar2);
                                rVar.onNext(f10);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            atomicThrowable.addThrowable(th2);
                            this.f51709j = true;
                        }
                    }
                }
            }
            aVar.clear();
            this.f51710k = null;
        }

        void d() {
            this.f51708i.dispose();
            this.f51709j = true;
            c();
        }

        @Override // th.b
        public void dispose() {
            if (this.f51706g.compareAndSet(false, true)) {
                b();
                if (this.f51703d.decrementAndGet() == 0) {
                    this.f51708i.dispose();
                }
            }
        }

        void f(Throwable th2) {
            this.f51708i.dispose();
            if (this.f51705f.addThrowable(th2)) {
                this.f51709j = true;
                c();
                return;
            }
            ci.a.s(th2);
        }

        void g(a<T, B> aVar) {
            this.f51702c.compareAndSet(aVar, null);
            this.f51704e.offer(f51699m);
            c();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51706g.get();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            b();
            this.f51709j = true;
            c();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            b();
            if (this.f51705f.addThrowable(th2)) {
                this.f51709j = true;
                c();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51704e.offer(t10);
            c();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51708i, bVar)) {
                this.f51708i = bVar;
                this.f51700a.onSubscribe(this);
                this.f51704e.offer(f51699m);
                c();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f51703d.decrementAndGet() == 0) {
                this.f51708i.dispose();
            }
        }
    }

    public g4(io.reactivex.p<T> pVar, Callable<? extends io.reactivex.p<B>> callable, int i9) {
        super(pVar);
        this.f51694b = callable;
        this.f51695c = i9;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super io.reactivex.k<T>> rVar) {
        this.f51403a.subscribe(new b(rVar, this.f51695c, this.f51694b));
    }
}
