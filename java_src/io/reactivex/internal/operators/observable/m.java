package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class m<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f51974b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.p<? extends Open> f51975c;

    /* renamed from: d  reason: collision with root package name */
    final vh.o<? super Open, ? extends io.reactivex.p<? extends Close>> f51976d;

    /* loaded from: classes7.dex */
    static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -8466418554264089604L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super C> f51977a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f51978b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.p<? extends Open> f51979c;

        /* renamed from: d  reason: collision with root package name */
        final vh.o<? super Open, ? extends io.reactivex.p<? extends Close>> f51980d;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f51984h;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f51986j;

        /* renamed from: k  reason: collision with root package name */
        long f51987k;

        /* renamed from: i  reason: collision with root package name */
        final io.reactivex.internal.queue.b<C> f51985i = new io.reactivex.internal.queue.b<>(io.reactivex.k.bufferSize());

        /* renamed from: e  reason: collision with root package name */
        final th.a f51981e = new th.a();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<th.b> f51982f = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        Map<Long, C> f51988l = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f51983g = new AtomicThrowable();

        /* renamed from: io.reactivex.internal.operators.observable.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        static final class C0516a<Open> extends AtomicReference<th.b> implements io.reactivex.r<Open>, th.b {
            private static final long serialVersionUID = -8498650778633225126L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, ?, Open, ?> f51989a;

            C0516a(a<?, ?, Open, ?> aVar) {
                this.f51989a = aVar;
            }

            @Override // th.b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // th.b
            public boolean isDisposed() {
                return get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.r
            public void onComplete() {
                lazySet(DisposableHelper.DISPOSED);
                this.f51989a.e(this);
            }

            @Override // io.reactivex.r
            public void onError(Throwable th2) {
                lazySet(DisposableHelper.DISPOSED);
                this.f51989a.a(this, th2);
            }

            @Override // io.reactivex.r
            public void onNext(Open open) {
                this.f51989a.d(open);
            }

            @Override // io.reactivex.r
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        a(io.reactivex.r<? super C> rVar, io.reactivex.p<? extends Open> pVar, vh.o<? super Open, ? extends io.reactivex.p<? extends Close>> oVar, Callable<C> callable) {
            this.f51977a = rVar;
            this.f51978b = callable;
            this.f51979c = pVar;
            this.f51980d = oVar;
        }

        void a(th.b bVar, Throwable th2) {
            DisposableHelper.dispose(this.f51982f);
            this.f51981e.c(bVar);
            onError(th2);
        }

        void b(b<T, C> bVar, long j10) {
            boolean z10;
            this.f51981e.c(bVar);
            if (this.f51981e.e() == 0) {
                DisposableHelper.dispose(this.f51982f);
                z10 = true;
            } else {
                z10 = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.f51988l;
                if (map == null) {
                    return;
                }
                this.f51985i.offer(map.remove(Long.valueOf(j10)));
                if (z10) {
                    this.f51984h = true;
                }
                c();
            }
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.r<? super C> rVar = this.f51977a;
            io.reactivex.internal.queue.b<C> bVar = this.f51985i;
            int i9 = 1;
            while (!this.f51986j) {
                boolean z10 = this.f51984h;
                if (z10 && this.f51983g.get() != null) {
                    bVar.clear();
                    rVar.onError(this.f51983g.terminate());
                    return;
                }
                C poll = bVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    rVar.onComplete();
                    return;
                } else if (z11) {
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                } else {
                    rVar.onNext(poll);
                }
            }
            bVar.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(Open open) {
            try {
                Collection collection = (Collection) xh.b.e(this.f51978b.call(), "The bufferSupplier returned a null Collection");
                io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f51980d.apply(open), "The bufferClose returned a null ObservableSource");
                long j10 = this.f51987k;
                this.f51987k = 1 + j10;
                synchronized (this) {
                    Map<Long, C> map = this.f51988l;
                    if (map == 0) {
                        return;
                    }
                    map.put(Long.valueOf(j10), collection);
                    b bVar = new b(this, j10);
                    this.f51981e.b(bVar);
                    pVar.subscribe(bVar);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                DisposableHelper.dispose(this.f51982f);
                onError(th2);
            }
        }

        @Override // th.b
        public void dispose() {
            if (DisposableHelper.dispose(this.f51982f)) {
                this.f51986j = true;
                this.f51981e.dispose();
                synchronized (this) {
                    this.f51988l = null;
                }
                if (getAndIncrement() != 0) {
                    this.f51985i.clear();
                }
            }
        }

        void e(C0516a<Open> c0516a) {
            this.f51981e.c(c0516a);
            if (this.f51981e.e() == 0) {
                DisposableHelper.dispose(this.f51982f);
                this.f51984h = true;
                c();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f51982f.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51981e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f51988l;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    this.f51985i.offer(c10);
                }
                this.f51988l = null;
                this.f51984h = true;
                c();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51983g.addThrowable(th2)) {
                this.f51981e.dispose();
                synchronized (this) {
                    this.f51988l = null;
                }
                this.f51984h = true;
                c();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            synchronized (this) {
                Map<Long, C> map = this.f51988l;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    c10.add(t10);
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.setOnce(this.f51982f, bVar)) {
                C0516a c0516a = new C0516a(this);
                this.f51981e.b(c0516a);
                this.f51979c.subscribe(c0516a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b<T, C extends Collection<? super T>> extends AtomicReference<th.b> implements io.reactivex.r<Object>, th.b {
        private static final long serialVersionUID = -8498650778633225126L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, C, ?, ?> f51990a;

        /* renamed from: b  reason: collision with root package name */
        final long f51991b;

        b(a<T, C, ?, ?> aVar, long j10) {
            this.f51990a = aVar;
            this.f51991b = j10;
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            th.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                lazySet(disposableHelper);
                this.f51990a.b(this, this.f51991b);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            th.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                lazySet(disposableHelper);
                this.f51990a.a(this, th2);
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(Object obj) {
            th.b bVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (bVar != disposableHelper) {
                lazySet(disposableHelper);
                bVar.dispose();
                this.f51990a.b(this, this.f51991b);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public m(io.reactivex.p<T> pVar, io.reactivex.p<? extends Open> pVar2, vh.o<? super Open, ? extends io.reactivex.p<? extends Close>> oVar, Callable<U> callable) {
        super(pVar);
        this.f51975c = pVar2;
        this.f51976d = oVar;
        this.f51974b = callable;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super U> rVar) {
        a aVar = new a(rVar, this.f51975c, this.f51976d, this.f51974b);
        rVar.onSubscribe(aVar);
        this.f51403a.subscribe(aVar);
    }
}
