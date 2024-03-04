package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.s;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class u3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f52403b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f52404c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.s f52405d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f52406e;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T>, th.b, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52407a;

        /* renamed from: b  reason: collision with root package name */
        final long f52408b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f52409c;

        /* renamed from: d  reason: collision with root package name */
        final s.c f52410d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f52411e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<T> f52412f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        th.b f52413g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f52414h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f52415i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f52416j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f52417k;

        /* renamed from: l  reason: collision with root package name */
        boolean f52418l;

        a(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, s.c cVar, boolean z10) {
            this.f52407a = rVar;
            this.f52408b = j10;
            this.f52409c = timeUnit;
            this.f52410d = cVar;
            this.f52411e = z10;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.f52412f;
            io.reactivex.r<? super T> rVar = this.f52407a;
            int i9 = 1;
            while (!this.f52416j) {
                boolean z10 = this.f52414h;
                if (z10 && this.f52415i != null) {
                    atomicReference.lazySet(null);
                    rVar.onError(this.f52415i);
                    this.f52410d.dispose();
                    return;
                }
                boolean z11 = atomicReference.get() == null;
                if (z10) {
                    T andSet = atomicReference.getAndSet(null);
                    if (!z11 && this.f52411e) {
                        rVar.onNext(andSet);
                    }
                    rVar.onComplete();
                    this.f52410d.dispose();
                    return;
                }
                if (z11) {
                    if (this.f52417k) {
                        this.f52418l = false;
                        this.f52417k = false;
                    }
                } else if (!this.f52418l || this.f52417k) {
                    rVar.onNext(atomicReference.getAndSet(null));
                    this.f52417k = false;
                    this.f52418l = true;
                    this.f52410d.d(this, this.f52408b, this.f52409c);
                }
                i9 = addAndGet(-i9);
                if (i9 == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // th.b
        public void dispose() {
            this.f52416j = true;
            this.f52413g.dispose();
            this.f52410d.dispose();
            if (getAndIncrement() == 0) {
                this.f52412f.lazySet(null);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52416j;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52414h = true;
            b();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52415i = th2;
            this.f52414h = true;
            b();
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52412f.set(t10);
            b();
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52413g, bVar)) {
                this.f52413g = bVar;
                this.f52407a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f52417k = true;
            b();
        }
    }

    public u3(io.reactivex.k<T> kVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, boolean z10) {
        super(kVar);
        this.f52403b = j10;
        this.f52404c = timeUnit;
        this.f52405d = sVar;
        this.f52406e = z10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52403b, this.f52404c, this.f52405d.b(), this.f52406e));
    }
}
