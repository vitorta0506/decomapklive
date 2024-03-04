package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class w0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.c> f52494b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f52495c;

    /* loaded from: classes7.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.r<T> {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52496a;

        /* renamed from: c  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.c> f52498c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f52499d;

        /* renamed from: f  reason: collision with root package name */
        th.b f52501f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f52502g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f52497b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final th.a f52500e = new th.a();

        /* renamed from: io.reactivex.internal.operators.observable.w0$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class C0521a extends AtomicReference<th.b> implements io.reactivex.b, th.b {
            private static final long serialVersionUID = 8606673141535671828L;

            C0521a() {
            }

            @Override // th.b
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // th.b
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.b
            public void onComplete() {
                a.this.b(this);
            }

            @Override // io.reactivex.b
            public void onError(Throwable th2) {
                a.this.c(this, th2);
            }

            @Override // io.reactivex.b
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        a(io.reactivex.r<? super T> rVar, vh.o<? super T, ? extends io.reactivex.c> oVar, boolean z10) {
            this.f52496a = rVar;
            this.f52498c = oVar;
            this.f52499d = z10;
            lazySet(1);
        }

        void b(a<T>.C0521a c0521a) {
            this.f52500e.c(c0521a);
            onComplete();
        }

        void c(a<T>.C0521a c0521a, Throwable th2) {
            this.f52500e.c(c0521a);
            onError(th2);
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public void clear() {
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public void dispose() {
            this.f52502g = true;
            this.f52501f.dispose();
            this.f52500e.dispose();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, th.b
        public boolean isDisposed() {
            return this.f52501f.isDisposed();
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f52497b.terminate();
                if (terminate != null) {
                    this.f52496a.onError(terminate);
                } else {
                    this.f52496a.onComplete();
                }
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52497b.addThrowable(th2)) {
                if (this.f52499d) {
                    if (decrementAndGet() == 0) {
                        this.f52496a.onError(this.f52497b.terminate());
                        return;
                    }
                    return;
                }
                dispose();
                if (getAndSet(0) > 0) {
                    this.f52496a.onError(this.f52497b.terminate());
                    return;
                }
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            try {
                io.reactivex.c cVar = (io.reactivex.c) xh.b.e(this.f52498c.apply(t10), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0521a c0521a = new C0521a();
                if (this.f52502g || !this.f52500e.b(c0521a)) {
                    return;
                }
                cVar.a(c0521a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52501f.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52501f, bVar)) {
                this.f52501f = bVar;
                this.f52496a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.g
        public T poll() throws Exception {
            return null;
        }

        @Override // io.reactivex.internal.observers.BasicIntQueueDisposable, yh.c
        public int requestFusion(int i9) {
            return i9 & 2;
        }
    }

    public w0(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.c> oVar, boolean z10) {
        super(pVar);
        this.f52494b = oVar;
        this.f52495c = z10;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52494b, this.f52495c));
    }
}
