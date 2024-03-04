package ei;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.k;
import io.reactivex.r;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import yh.g;
/* loaded from: classes7.dex */
public final class d<T> extends c<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.internal.queue.b<T> f39432a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<r<? super T>> f39433b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<Runnable> f39434c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f39435d;

    /* renamed from: e  reason: collision with root package name */
    volatile boolean f39436e;

    /* renamed from: f  reason: collision with root package name */
    volatile boolean f39437f;

    /* renamed from: g  reason: collision with root package name */
    Throwable f39438g;

    /* renamed from: h  reason: collision with root package name */
    final AtomicBoolean f39439h;

    /* renamed from: i  reason: collision with root package name */
    final BasicIntQueueDisposable<T> f39440i;

    /* renamed from: j  reason: collision with root package name */
    boolean f39441j;

    /* loaded from: classes7.dex */
    final class a extends BasicIntQueueDisposable<T> {
        private static final long serialVersionUID = 7926949470189395511L;

        a() {
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public void clear() {
            d.this.f39432a.clear();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public void dispose() {
            if (d.this.f39436e) {
                return;
            }
            d.this.f39436e = true;
            d.this.g();
            d.this.f39433b.lazySet(null);
            if (d.this.f39440i.getAndIncrement() == 0) {
                d.this.f39433b.lazySet(null);
                d dVar = d.this;
                if (dVar.f39441j) {
                    return;
                }
                dVar.f39432a.clear();
            }
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public boolean isDisposed() {
            return d.this.f39436e;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public boolean isEmpty() {
            return d.this.f39432a.isEmpty();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public T poll() throws Exception {
            return d.this.f39432a.poll();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.c
        public int requestFusion(int i9) {
            if ((i9 & 2) != 0) {
                d.this.f39441j = true;
                return 2;
            }
            return 0;
        }
    }

    d(int i9, boolean z10) {
        this.f39432a = new io.reactivex.internal.queue.b<>(xh.b.f(i9, "capacityHint"));
        this.f39434c = new AtomicReference<>();
        this.f39435d = z10;
        this.f39433b = new AtomicReference<>();
        this.f39439h = new AtomicBoolean();
        this.f39440i = new a();
    }

    public static <T> d<T> d() {
        return new d<>(k.bufferSize(), true);
    }

    public static <T> d<T> e(int i9) {
        return new d<>(i9, true);
    }

    public static <T> d<T> f(int i9, Runnable runnable) {
        return new d<>(i9, runnable, true);
    }

    void g() {
        Runnable runnable = this.f39434c.get();
        if (runnable == null || !this.f39434c.compareAndSet(runnable, null)) {
            return;
        }
        runnable.run();
    }

    void h() {
        if (this.f39440i.getAndIncrement() != 0) {
            return;
        }
        r<? super T> rVar = this.f39433b.get();
        int i9 = 1;
        while (rVar == null) {
            i9 = this.f39440i.addAndGet(-i9);
            if (i9 == 0) {
                return;
            }
            rVar = this.f39433b.get();
        }
        if (this.f39441j) {
            i(rVar);
        } else {
            j(rVar);
        }
    }

    void i(r<? super T> rVar) {
        io.reactivex.internal.queue.b<T> bVar = this.f39432a;
        int i9 = 1;
        boolean z10 = !this.f39435d;
        while (!this.f39436e) {
            boolean z11 = this.f39437f;
            if (z10 && z11 && l(bVar, rVar)) {
                return;
            }
            rVar.onNext(null);
            if (z11) {
                k(rVar);
                return;
            }
            i9 = this.f39440i.addAndGet(-i9);
            if (i9 == 0) {
                return;
            }
        }
        this.f39433b.lazySet(null);
    }

    void j(r<? super T> rVar) {
        io.reactivex.internal.queue.b<T> bVar = this.f39432a;
        boolean z10 = !this.f39435d;
        boolean z11 = true;
        int i9 = 1;
        while (!this.f39436e) {
            boolean z12 = this.f39437f;
            Object obj = (T) this.f39432a.poll();
            boolean z13 = obj == null;
            if (z12) {
                if (z10 && z11) {
                    if (l(bVar, rVar)) {
                        return;
                    }
                    z11 = false;
                }
                if (z13) {
                    k(rVar);
                    return;
                }
            }
            if (z13) {
                i9 = this.f39440i.addAndGet(-i9);
                if (i9 == 0) {
                    return;
                }
            } else {
                rVar.onNext(obj);
            }
        }
        this.f39433b.lazySet(null);
        bVar.clear();
    }

    void k(r<? super T> rVar) {
        this.f39433b.lazySet(null);
        Throwable th2 = this.f39438g;
        if (th2 != null) {
            rVar.onError(th2);
        } else {
            rVar.onComplete();
        }
    }

    boolean l(g<T> gVar, r<? super T> rVar) {
        Throwable th2 = this.f39438g;
        if (th2 != null) {
            this.f39433b.lazySet(null);
            gVar.clear();
            rVar.onError(th2);
            return true;
        }
        return false;
    }

    @Override // io.reactivex.r
    public void onComplete() {
        if (this.f39437f || this.f39436e) {
            return;
        }
        this.f39437f = true;
        g();
        h();
    }

    @Override // io.reactivex.r
    public void onError(Throwable th2) {
        xh.b.e(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f39437f && !this.f39436e) {
            this.f39438g = th2;
            this.f39437f = true;
            g();
            h();
            return;
        }
        ci.a.s(th2);
    }

    @Override // io.reactivex.r
    public void onNext(T t10) {
        xh.b.e(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f39437f || this.f39436e) {
            return;
        }
        this.f39432a.offer(t10);
        h();
    }

    @Override // io.reactivex.r
    public void onSubscribe(th.b bVar) {
        if (this.f39437f || this.f39436e) {
            bVar.dispose();
        }
    }

    @Override // io.reactivex.k
    protected void subscribeActual(r<? super T> rVar) {
        if (!this.f39439h.get() && this.f39439h.compareAndSet(false, true)) {
            rVar.onSubscribe(this.f39440i);
            this.f39433b.lazySet(rVar);
            if (this.f39436e) {
                this.f39433b.lazySet(null);
                return;
            } else {
                h();
                return;
            }
        }
        EmptyDisposable.error(new IllegalStateException("Only a single observer allowed."), rVar);
    }

    d(int i9, Runnable runnable, boolean z10) {
        this.f39432a = new io.reactivex.internal.queue.b<>(xh.b.f(i9, "capacityHint"));
        this.f39434c = new AtomicReference<>(xh.b.e(runnable, "onTerminate"));
        this.f39435d = z10;
        this.f39433b = new AtomicReference<>();
        this.f39439h = new AtomicBoolean();
        this.f39440i = new a();
    }
}
