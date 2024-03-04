package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class u<T, U> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.p<? extends U>> f52360b;

    /* renamed from: c  reason: collision with root package name */
    final int f52361c;

    /* renamed from: d  reason: collision with root package name */
    final ErrorMode f52362d;

    /* loaded from: classes7.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = -6951100001833242599L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f52363a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<? extends R>> f52364b;

        /* renamed from: c  reason: collision with root package name */
        final int f52365c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f52366d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0519a<R> f52367e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f52368f;

        /* renamed from: g  reason: collision with root package name */
        yh.g<T> f52369g;

        /* renamed from: h  reason: collision with root package name */
        th.b f52370h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f52371i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f52372j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f52373k;

        /* renamed from: l  reason: collision with root package name */
        int f52374l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.reactivex.internal.operators.observable.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0519a<R> extends AtomicReference<th.b> implements io.reactivex.r<R> {
            private static final long serialVersionUID = 2620149119579502636L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.r<? super R> f52375a;

            /* renamed from: b  reason: collision with root package name */
            final a<?, R> f52376b;

            C0519a(io.reactivex.r<? super R> rVar, a<?, R> aVar) {
                this.f52375a = rVar;
                this.f52376b = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.r
            public void onComplete() {
                a<?, R> aVar = this.f52376b;
                aVar.f52371i = false;
                aVar.a();
            }

            @Override // io.reactivex.r
            public void onError(Throwable th2) {
                a<?, R> aVar = this.f52376b;
                if (aVar.f52366d.addThrowable(th2)) {
                    if (!aVar.f52368f) {
                        aVar.f52370h.dispose();
                    }
                    aVar.f52371i = false;
                    aVar.a();
                    return;
                }
                ci.a.s(th2);
            }

            @Override // io.reactivex.r
            public void onNext(R r10) {
                this.f52375a.onNext(r10);
            }

            @Override // io.reactivex.r
            public void onSubscribe(th.b bVar) {
                DisposableHelper.replace(this, bVar);
            }
        }

        a(io.reactivex.r<? super R> rVar, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar, int i9, boolean z10) {
            this.f52363a = rVar;
            this.f52364b = oVar;
            this.f52365c = i9;
            this.f52368f = z10;
            this.f52367e = new C0519a<>(rVar, this);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.r<? super R> rVar = this.f52363a;
            yh.g<T> gVar = this.f52369g;
            AtomicThrowable atomicThrowable = this.f52366d;
            while (true) {
                if (!this.f52371i) {
                    if (this.f52373k) {
                        gVar.clear();
                        return;
                    } else if (!this.f52368f && atomicThrowable.get() != null) {
                        gVar.clear();
                        this.f52373k = true;
                        rVar.onError(atomicThrowable.terminate());
                        return;
                    } else {
                        boolean z10 = this.f52372j;
                        try {
                            T poll = gVar.poll();
                            boolean z11 = poll == null;
                            if (z10 && z11) {
                                this.f52373k = true;
                                Throwable terminate = atomicThrowable.terminate();
                                if (terminate != null) {
                                    rVar.onError(terminate);
                                    return;
                                } else {
                                    rVar.onComplete();
                                    return;
                                }
                            } else if (!z11) {
                                try {
                                    io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52364b.apply(poll), "The mapper returned a null ObservableSource");
                                    if (pVar instanceof Callable) {
                                        try {
                                            Object obj = (Object) ((Callable) pVar).call();
                                            if (obj != 0 && !this.f52373k) {
                                                rVar.onNext(obj);
                                            }
                                        } catch (Throwable th2) {
                                            io.reactivex.exceptions.a.b(th2);
                                            atomicThrowable.addThrowable(th2);
                                        }
                                    } else {
                                        this.f52371i = true;
                                        pVar.subscribe(this.f52367e);
                                    }
                                } catch (Throwable th3) {
                                    io.reactivex.exceptions.a.b(th3);
                                    this.f52373k = true;
                                    this.f52370h.dispose();
                                    gVar.clear();
                                    atomicThrowable.addThrowable(th3);
                                    rVar.onError(atomicThrowable.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th4) {
                            io.reactivex.exceptions.a.b(th4);
                            this.f52373k = true;
                            this.f52370h.dispose();
                            atomicThrowable.addThrowable(th4);
                            rVar.onError(atomicThrowable.terminate());
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override // th.b
        public void dispose() {
            this.f52373k = true;
            this.f52370h.dispose();
            this.f52367e.a();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52373k;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52372j = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52366d.addThrowable(th2)) {
                this.f52372j = true;
                a();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52374l == 0) {
                this.f52369g.offer(t10);
            }
            a();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52370h, bVar)) {
                this.f52370h = bVar;
                if (bVar instanceof yh.b) {
                    yh.b bVar2 = (yh.b) bVar;
                    int requestFusion = bVar2.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f52374l = requestFusion;
                        this.f52369g = bVar2;
                        this.f52372j = true;
                        this.f52363a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f52374l = requestFusion;
                        this.f52369g = bVar2;
                        this.f52363a.onSubscribe(this);
                        return;
                    }
                }
                this.f52369g = new io.reactivex.internal.queue.b(this.f52365c);
                this.f52363a.onSubscribe(this);
            }
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, U> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 8828587559905699186L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super U> f52377a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<? extends U>> f52378b;

        /* renamed from: c  reason: collision with root package name */
        final a<U> f52379c;

        /* renamed from: d  reason: collision with root package name */
        final int f52380d;

        /* renamed from: e  reason: collision with root package name */
        yh.g<T> f52381e;

        /* renamed from: f  reason: collision with root package name */
        th.b f52382f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f52383g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f52384h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f52385i;

        /* renamed from: j  reason: collision with root package name */
        int f52386j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes7.dex */
        public static final class a<U> extends AtomicReference<th.b> implements io.reactivex.r<U> {
            private static final long serialVersionUID = -7449079488798789337L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.r<? super U> f52387a;

            /* renamed from: b  reason: collision with root package name */
            final b<?, ?> f52388b;

            a(io.reactivex.r<? super U> rVar, b<?, ?> bVar) {
                this.f52387a = rVar;
                this.f52388b = bVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.r
            public void onComplete() {
                this.f52388b.b();
            }

            @Override // io.reactivex.r
            public void onError(Throwable th2) {
                this.f52388b.dispose();
                this.f52387a.onError(th2);
            }

            @Override // io.reactivex.r
            public void onNext(U u10) {
                this.f52387a.onNext(u10);
            }

            @Override // io.reactivex.r
            public void onSubscribe(th.b bVar) {
                DisposableHelper.replace(this, bVar);
            }
        }

        b(io.reactivex.r<? super U> rVar, vh.o<? super T, ? extends io.reactivex.p<? extends U>> oVar, int i9) {
            this.f52377a = rVar;
            this.f52378b = oVar;
            this.f52380d = i9;
            this.f52379c = new a<>(rVar, this);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f52384h) {
                if (!this.f52383g) {
                    boolean z10 = this.f52385i;
                    try {
                        T poll = this.f52381e.poll();
                        boolean z11 = poll == null;
                        if (z10 && z11) {
                            this.f52384h = true;
                            this.f52377a.onComplete();
                            return;
                        } else if (!z11) {
                            try {
                                io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52378b.apply(poll), "The mapper returned a null ObservableSource");
                                this.f52383g = true;
                                pVar.subscribe(this.f52379c);
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                dispose();
                                this.f52381e.clear();
                                this.f52377a.onError(th2);
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        dispose();
                        this.f52381e.clear();
                        this.f52377a.onError(th3);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f52381e.clear();
        }

        void b() {
            this.f52383g = false;
            a();
        }

        @Override // th.b
        public void dispose() {
            this.f52384h = true;
            this.f52379c.a();
            this.f52382f.dispose();
            if (getAndIncrement() == 0) {
                this.f52381e.clear();
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52384h;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52385i) {
                return;
            }
            this.f52385i = true;
            a();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52385i) {
                ci.a.s(th2);
                return;
            }
            this.f52385i = true;
            dispose();
            this.f52377a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52385i) {
                return;
            }
            if (this.f52386j == 0) {
                this.f52381e.offer(t10);
            }
            a();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52382f, bVar)) {
                this.f52382f = bVar;
                if (bVar instanceof yh.b) {
                    yh.b bVar2 = (yh.b) bVar;
                    int requestFusion = bVar2.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f52386j = requestFusion;
                        this.f52381e = bVar2;
                        this.f52385i = true;
                        this.f52377a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f52386j = requestFusion;
                        this.f52381e = bVar2;
                        this.f52377a.onSubscribe(this);
                        return;
                    }
                }
                this.f52381e = new io.reactivex.internal.queue.b(this.f52380d);
                this.f52377a.onSubscribe(this);
            }
        }
    }

    public u(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.p<? extends U>> oVar, int i9, ErrorMode errorMode) {
        super(pVar);
        this.f52360b = oVar;
        this.f52362d = errorMode;
        this.f52361c = Math.max(8, i9);
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super U> rVar) {
        if (ObservableScalarXMap.b(this.f51403a, rVar, this.f52360b)) {
            return;
        }
        if (this.f52362d == ErrorMode.IMMEDIATE) {
            this.f51403a.subscribe(new b(new io.reactivex.observers.d(rVar), this.f52360b, this.f52361c));
        } else {
            this.f51403a.subscribe(new a(rVar, this.f52360b, this.f52361c, this.f52362d == ErrorMode.END));
        }
    }
}
