package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class v2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f52472b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f52473c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.s f52474d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f52475e;

    /* loaded from: classes7.dex */
    static final class a<T> extends c<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f52476g;

        a(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
            super(rVar, j10, timeUnit, sVar);
            this.f52476g = new AtomicInteger(1);
        }

        @Override // io.reactivex.internal.operators.observable.v2.c
        void c() {
            d();
            if (this.f52476g.decrementAndGet() == 0) {
                this.f52477a.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f52476g.incrementAndGet() == 2) {
                d();
                if (this.f52476g.decrementAndGet() == 0) {
                    this.f52477a.onComplete();
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> extends c<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        b(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
            super(rVar, j10, timeUnit, sVar);
        }

        @Override // io.reactivex.internal.operators.observable.v2.c
        void c() {
            this.f52477a.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            d();
        }
    }

    /* loaded from: classes7.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.r<T>, th.b, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52477a;

        /* renamed from: b  reason: collision with root package name */
        final long f52478b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f52479c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.s f52480d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<th.b> f52481e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        th.b f52482f;

        c(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar) {
            this.f52477a = rVar;
            this.f52478b = j10;
            this.f52479c = timeUnit;
            this.f52480d = sVar;
        }

        void b() {
            DisposableHelper.dispose(this.f52481e);
        }

        abstract void c();

        void d() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f52477a.onNext(andSet);
            }
        }

        @Override // th.b
        public void dispose() {
            b();
            this.f52482f.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52482f.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            b();
            c();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            b();
            this.f52477a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            lazySet(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52482f, bVar)) {
                this.f52482f = bVar;
                this.f52477a.onSubscribe(this);
                io.reactivex.s sVar = this.f52480d;
                long j10 = this.f52478b;
                DisposableHelper.replace(this.f52481e, sVar.f(this, j10, j10, this.f52479c));
            }
        }
    }

    public v2(io.reactivex.p<T> pVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, boolean z10) {
        super(pVar);
        this.f52472b = j10;
        this.f52473c = timeUnit;
        this.f52474d = sVar;
        this.f52475e = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        io.reactivex.observers.d dVar = new io.reactivex.observers.d(rVar);
        if (this.f52475e) {
            this.f51403a.subscribe(new a(dVar, this.f52472b, this.f52473c, this.f52474d));
        } else {
            this.f51403a.subscribe(new b(dVar, this.f52472b, this.f52473c, this.f52474d));
        }
    }
}
