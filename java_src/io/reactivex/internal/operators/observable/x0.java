package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class x0<T> extends io.reactivex.a implements yh.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.p<T> f52534a;

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.c> f52535b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f52536c;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements th.b, io.reactivex.r<T> {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.b f52537a;

        /* renamed from: c  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.c> f52539c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f52540d;

        /* renamed from: f  reason: collision with root package name */
        th.b f52542f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f52543g;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f52538b = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final th.a f52541e = new th.a();

        /* renamed from: io.reactivex.internal.operators.observable.x0$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class C0522a extends AtomicReference<th.b> implements io.reactivex.b, th.b {
            private static final long serialVersionUID = 8606673141535671828L;

            C0522a() {
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
                a.this.a(this);
            }

            @Override // io.reactivex.b
            public void onError(Throwable th2) {
                a.this.b(this, th2);
            }

            @Override // io.reactivex.b
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        a(io.reactivex.b bVar, vh.o<? super T, ? extends io.reactivex.c> oVar, boolean z10) {
            this.f52537a = bVar;
            this.f52539c = oVar;
            this.f52540d = z10;
            lazySet(1);
        }

        void a(a<T>.C0522a c0522a) {
            this.f52541e.c(c0522a);
            onComplete();
        }

        void b(a<T>.C0522a c0522a, Throwable th2) {
            this.f52541e.c(c0522a);
            onError(th2);
        }

        @Override // th.b
        public void dispose() {
            this.f52543g = true;
            this.f52542f.dispose();
            this.f52541e.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52542f.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable terminate = this.f52538b.terminate();
                if (terminate != null) {
                    this.f52537a.onError(terminate);
                } else {
                    this.f52537a.onComplete();
                }
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52538b.addThrowable(th2)) {
                if (this.f52540d) {
                    if (decrementAndGet() == 0) {
                        this.f52537a.onError(this.f52538b.terminate());
                        return;
                    }
                    return;
                }
                dispose();
                if (getAndSet(0) > 0) {
                    this.f52537a.onError(this.f52538b.terminate());
                    return;
                }
                return;
            }
            ci.a.s(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            try {
                io.reactivex.c cVar = (io.reactivex.c) xh.b.e(this.f52539c.apply(t10), "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0522a c0522a = new C0522a();
                if (this.f52543g || !this.f52541e.b(c0522a)) {
                    return;
                }
                cVar.a(c0522a);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52542f.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52542f, bVar)) {
                this.f52542f = bVar;
                this.f52537a.onSubscribe(this);
            }
        }
    }

    public x0(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.c> oVar, boolean z10) {
        this.f52534a = pVar;
        this.f52535b = oVar;
        this.f52536c = z10;
    }

    @Override // yh.a
    public io.reactivex.k<T> b() {
        return ci.a.o(new w0(this.f52534a, this.f52535b, this.f52536c));
    }

    @Override // io.reactivex.a
    protected void c(io.reactivex.b bVar) {
        this.f52534a.subscribe(new a(bVar, this.f52535b, this.f52536c));
    }
}
