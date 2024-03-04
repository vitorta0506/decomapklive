package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.s;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class x3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f52559b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f52560c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.s f52561d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.p<? extends T> f52562e;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52563a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<th.b> f52564b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.r<? super T> rVar, AtomicReference<th.b> atomicReference) {
            this.f52563a = rVar;
            this.f52564b = atomicReference;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52563a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52563a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52563a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.replace(this.f52564b, bVar);
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, th.b, d {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52565a;

        /* renamed from: b  reason: collision with root package name */
        final long f52566b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f52567c;

        /* renamed from: d  reason: collision with root package name */
        final s.c f52568d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f52569e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f52570f = new AtomicLong();

        /* renamed from: g  reason: collision with root package name */
        final AtomicReference<th.b> f52571g = new AtomicReference<>();

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.p<? extends T> f52572h;

        b(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, s.c cVar, io.reactivex.p<? extends T> pVar) {
            this.f52565a = rVar;
            this.f52566b = j10;
            this.f52567c = timeUnit;
            this.f52568d = cVar;
            this.f52572h = pVar;
        }

        @Override // io.reactivex.internal.operators.observable.x3.d
        public void b(long j10) {
            if (this.f52570f.compareAndSet(j10, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f52571g);
                io.reactivex.p<? extends T> pVar = this.f52572h;
                this.f52572h = null;
                pVar.subscribe(new a(this.f52565a, this));
                this.f52568d.dispose();
            }
        }

        void c(long j10) {
            this.f52569e.replace(this.f52568d.d(new e(j10, this), this.f52566b, this.f52567c));
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52571g);
            DisposableHelper.dispose(this);
            this.f52568d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52570f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f52569e.dispose();
                this.f52565a.onComplete();
                this.f52568d.dispose();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52570f.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f52569e.dispose();
                this.f52565a.onError(th2);
                this.f52568d.dispose();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            long j10 = this.f52570f.get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (this.f52570f.compareAndSet(j10, j11)) {
                    this.f52569e.get().dispose();
                    this.f52565a.onNext(t10);
                    c(j11);
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f52571g, bVar);
        }
    }

    /* loaded from: classes7.dex */
    static final class c<T> extends AtomicLong implements io.reactivex.r<T>, th.b, d {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52573a;

        /* renamed from: b  reason: collision with root package name */
        final long f52574b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f52575c;

        /* renamed from: d  reason: collision with root package name */
        final s.c f52576d;

        /* renamed from: e  reason: collision with root package name */
        final SequentialDisposable f52577e = new SequentialDisposable();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<th.b> f52578f = new AtomicReference<>();

        c(io.reactivex.r<? super T> rVar, long j10, TimeUnit timeUnit, s.c cVar) {
            this.f52573a = rVar;
            this.f52574b = j10;
            this.f52575c = timeUnit;
            this.f52576d = cVar;
        }

        @Override // io.reactivex.internal.operators.observable.x3.d
        public void b(long j10) {
            if (compareAndSet(j10, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f52578f);
                this.f52573a.onError(new TimeoutException(io.reactivex.internal.util.f.c(this.f52574b, this.f52575c)));
                this.f52576d.dispose();
            }
        }

        void c(long j10) {
            this.f52577e.replace(this.f52576d.d(new e(j10, this), this.f52574b, this.f52575c));
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52578f);
            this.f52576d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f52578f.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f52577e.dispose();
                this.f52573a.onComplete();
                this.f52576d.dispose();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f52577e.dispose();
                this.f52573a.onError(th2);
                this.f52576d.dispose();
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            long j10 = get();
            if (j10 != Long.MAX_VALUE) {
                long j11 = 1 + j10;
                if (compareAndSet(j10, j11)) {
                    this.f52577e.get().dispose();
                    this.f52573a.onNext(t10);
                    c(j11);
                }
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f52578f, bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public interface d {
        void b(long j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final d f52579a;

        /* renamed from: b  reason: collision with root package name */
        final long f52580b;

        e(long j10, d dVar) {
            this.f52580b = j10;
            this.f52579a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f52579a.b(this.f52580b);
        }
    }

    public x3(io.reactivex.k<T> kVar, long j10, TimeUnit timeUnit, io.reactivex.s sVar, io.reactivex.p<? extends T> pVar) {
        super(kVar);
        this.f52559b = j10;
        this.f52560c = timeUnit;
        this.f52561d = sVar;
        this.f52562e = pVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        if (this.f52562e == null) {
            c cVar = new c(rVar, this.f52559b, this.f52560c, this.f52561d.b());
            rVar.onSubscribe(cVar);
            cVar.c(0L);
            this.f51403a.subscribe(cVar);
            return;
        }
        b bVar = new b(rVar, this.f52559b, this.f52560c, this.f52561d.b(), this.f52562e);
        rVar.onSubscribe(bVar);
        bVar.c(0L);
        this.f51403a.subscribe(bVar);
    }
}
