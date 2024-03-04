package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.s;
/* loaded from: classes7.dex */
public final class b2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.s f51451b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f51452c;

    /* renamed from: d  reason: collision with root package name */
    final int f51453d;

    /* loaded from: classes7.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.r<T>, Runnable {
        private static final long serialVersionUID = 6576896619930983584L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51454a;

        /* renamed from: b  reason: collision with root package name */
        final s.c f51455b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f51456c;

        /* renamed from: d  reason: collision with root package name */
        final int f51457d;

        /* renamed from: e  reason: collision with root package name */
        yh.g<T> f51458e;

        /* renamed from: f  reason: collision with root package name */
        th.b f51459f;

        /* renamed from: g  reason: collision with root package name */
        Throwable f51460g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f51461h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f51462i;

        /* renamed from: j  reason: collision with root package name */
        int f51463j;

        /* renamed from: k  reason: collision with root package name */
        boolean f51464k;

        a(io.reactivex.r<? super T> rVar, s.c cVar, boolean z10, int i9) {
            this.f51454a = rVar;
            this.f51455b = cVar;
            this.f51456c = z10;
            this.f51457d = i9;
        }

        boolean b(boolean z10, boolean z11, io.reactivex.r<? super T> rVar) {
            if (this.f51462i) {
                this.f51458e.clear();
                return true;
            } else if (z10) {
                Throwable th2 = this.f51460g;
                if (this.f51456c) {
                    if (z11) {
                        this.f51462i = true;
                        if (th2 != null) {
                            rVar.onError(th2);
                        } else {
                            rVar.onComplete();
                        }
                        this.f51455b.dispose();
                        return true;
                    }
                    return false;
                } else if (th2 != null) {
                    this.f51462i = true;
                    this.f51458e.clear();
                    rVar.onError(th2);
                    this.f51455b.dispose();
                    return true;
                } else if (z11) {
                    this.f51462i = true;
                    rVar.onComplete();
                    this.f51455b.dispose();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void c() {
            int i9 = 1;
            while (!this.f51462i) {
                boolean z10 = this.f51461h;
                Throwable th2 = this.f51460g;
                if (!this.f51456c && z10 && th2 != null) {
                    this.f51462i = true;
                    this.f51454a.onError(this.f51460g);
                    this.f51455b.dispose();
                    return;
                }
                this.f51454a.onNext(null);
                if (z10) {
                    this.f51462i = true;
                    Throwable th3 = this.f51460g;
                    if (th3 != null) {
                        this.f51454a.onError(th3);
                    } else {
                        this.f51454a.onComplete();
                    }
                    this.f51455b.dispose();
                    return;
                }
                i9 = addAndGet(-i9);
                if (i9 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public void clear() {
            this.f51458e.clear();
        }

        void d() {
            yh.g<T> gVar = this.f51458e;
            io.reactivex.r<? super T> rVar = this.f51454a;
            int i9 = 1;
            while (!b(this.f51461h, gVar.isEmpty(), rVar)) {
                while (true) {
                    boolean z10 = this.f51461h;
                    try {
                        Object obj = (T) gVar.poll();
                        boolean z11 = obj == null;
                        if (b(z10, z11, rVar)) {
                            return;
                        }
                        if (z11) {
                            i9 = addAndGet(-i9);
                            if (i9 == 0) {
                                return;
                            }
                        } else {
                            rVar.onNext(obj);
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f51462i = true;
                        this.f51459f.dispose();
                        gVar.clear();
                        rVar.onError(th2);
                        this.f51455b.dispose();
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public void dispose() {
            if (this.f51462i) {
                return;
            }
            this.f51462i = true;
            this.f51459f.dispose();
            this.f51455b.dispose();
            if (this.f51464k || getAndIncrement() != 0) {
                return;
            }
            this.f51458e.clear();
        }

        void f() {
            if (getAndIncrement() == 0) {
                this.f51455b.c(this);
            }
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public boolean isDisposed() {
            return this.f51462i;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public boolean isEmpty() {
            return this.f51458e.isEmpty();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51461h) {
                return;
            }
            this.f51461h = true;
            f();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51461h) {
                ci.a.s(th2);
                return;
            }
            this.f51460g = th2;
            this.f51461h = true;
            f();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51461h) {
                return;
            }
            if (this.f51463j != 2) {
                this.f51458e.offer(t10);
            }
            f();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51459f, bVar)) {
                this.f51459f = bVar;
                if (bVar instanceof yh.b) {
                    yh.b bVar2 = (yh.b) bVar;
                    int requestFusion = bVar2.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f51463j = requestFusion;
                        this.f51458e = bVar2;
                        this.f51461h = true;
                        this.f51454a.onSubscribe(this);
                        f();
                        return;
                    } else if (requestFusion == 2) {
                        this.f51463j = requestFusion;
                        this.f51458e = bVar2;
                        this.f51454a.onSubscribe(this);
                        return;
                    }
                }
                this.f51458e = new io.reactivex.internal.queue.b(this.f51457d);
                this.f51454a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public T poll() throws Exception {
            return this.f51458e.poll();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.c
        public int requestFusion(int i9) {
            if ((i9 & 2) != 0) {
                this.f51464k = true;
                return 2;
            }
            return 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f51464k) {
                c();
            } else {
                d();
            }
        }
    }

    public b2(io.reactivex.p<T> pVar, io.reactivex.s sVar, boolean z10, int i9) {
        super(pVar);
        this.f51451b = sVar;
        this.f51452c = z10;
        this.f51453d = i9;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        io.reactivex.s sVar = this.f51451b;
        if (sVar instanceof io.reactivex.internal.schedulers.j) {
            this.f51403a.subscribe(rVar);
            return;
        }
        this.f51403a.subscribe(new a(rVar, sVar.b(), this.f51452c, this.f51453d));
    }
}
