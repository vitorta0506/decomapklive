package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class w2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<?> f52506b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f52507c;

    /* loaded from: classes7.dex */
    static final class a<T> extends c<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f52508e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f52509f;

        a(io.reactivex.r<? super T> rVar, io.reactivex.p<?> pVar) {
            super(rVar, pVar);
            this.f52508e = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.observable.w2.c
        void b() {
            this.f52509f = true;
            if (this.f52508e.getAndIncrement() == 0) {
                c();
                this.f52510a.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.observable.w2.c
        void e() {
            if (this.f52508e.getAndIncrement() == 0) {
                do {
                    boolean z10 = this.f52509f;
                    c();
                    if (z10) {
                        this.f52510a.onComplete();
                        return;
                    }
                } while (this.f52508e.decrementAndGet() != 0);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> extends c<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        b(io.reactivex.r<? super T> rVar, io.reactivex.p<?> pVar) {
            super(rVar, pVar);
        }

        @Override // io.reactivex.internal.operators.observable.w2.c
        void b() {
            this.f52510a.onComplete();
        }

        @Override // io.reactivex.internal.operators.observable.w2.c
        void e() {
            c();
        }
    }

    /* loaded from: classes7.dex */
    static abstract class c<T> extends AtomicReference<T> implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52510a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.p<?> f52511b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<th.b> f52512c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        th.b f52513d;

        c(io.reactivex.r<? super T> rVar, io.reactivex.p<?> pVar) {
            this.f52510a = rVar;
            this.f52511b = pVar;
        }

        public void a() {
            this.f52513d.dispose();
            b();
        }

        abstract void b();

        void c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f52510a.onNext(andSet);
            }
        }

        public void d(Throwable th2) {
            this.f52513d.dispose();
            this.f52510a.onError(th2);
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52512c);
            this.f52513d.dispose();
        }

        abstract void e();

        boolean f(th.b bVar) {
            return DisposableHelper.setOnce(this.f52512c, bVar);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52512c.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            DisposableHelper.dispose(this.f52512c);
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            DisposableHelper.dispose(this.f52512c);
            this.f52510a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            lazySet(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52513d, bVar)) {
                this.f52513d = bVar;
                this.f52510a.onSubscribe(this);
                if (this.f52512c.get() == null) {
                    this.f52511b.subscribe(new d(this));
                }
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class d<T> implements io.reactivex.r<Object> {

        /* renamed from: a  reason: collision with root package name */
        final c<T> f52514a;

        d(c<T> cVar) {
            this.f52514a = cVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52514a.a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52514a.d(th2);
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
            this.f52514a.e();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f52514a.f(bVar);
        }
    }

    public w2(io.reactivex.p<T> pVar, io.reactivex.p<?> pVar2, boolean z10) {
        super(pVar);
        this.f52506b = pVar2;
        this.f52507c = z10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        io.reactivex.observers.d dVar = new io.reactivex.observers.d(rVar);
        if (this.f52507c) {
            this.f51403a.subscribe(new a(dVar, this.f52506b));
        } else {
            this.f51403a.subscribe(new b(dVar, this.f52506b));
        }
    }
}
