package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class c0<T, U> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.p<U>> f51474b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T, U> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51475a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<U>> f51476b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51477c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<th.b> f51478d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        volatile long f51479e;

        /* renamed from: f  reason: collision with root package name */
        boolean f51480f;

        /* renamed from: io.reactivex.internal.operators.observable.c0$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        static final class C0511a<T, U> extends io.reactivex.observers.b<U> {

            /* renamed from: a  reason: collision with root package name */
            final a<T, U> f51481a;

            /* renamed from: b  reason: collision with root package name */
            final long f51482b;

            /* renamed from: c  reason: collision with root package name */
            final T f51483c;

            /* renamed from: d  reason: collision with root package name */
            boolean f51484d;

            /* renamed from: e  reason: collision with root package name */
            final AtomicBoolean f51485e = new AtomicBoolean();

            C0511a(a<T, U> aVar, long j10, T t10) {
                this.f51481a = aVar;
                this.f51482b = j10;
                this.f51483c = t10;
            }

            void a() {
                if (this.f51485e.compareAndSet(false, true)) {
                    this.f51481a.a(this.f51482b, this.f51483c);
                }
            }

            @Override // io.reactivex.r
            public void onComplete() {
                if (this.f51484d) {
                    return;
                }
                this.f51484d = true;
                a();
            }

            @Override // io.reactivex.r
            public void onError(Throwable th2) {
                if (this.f51484d) {
                    ci.a.s(th2);
                    return;
                }
                this.f51484d = true;
                this.f51481a.onError(th2);
            }

            @Override // io.reactivex.r
            public void onNext(U u10) {
                if (this.f51484d) {
                    return;
                }
                this.f51484d = true;
                dispose();
                a();
            }
        }

        a(io.reactivex.r<? super T> rVar, vh.o<? super T, ? extends io.reactivex.p<U>> oVar) {
            this.f51475a = rVar;
            this.f51476b = oVar;
        }

        void a(long j10, T t10) {
            if (j10 == this.f51479e) {
                this.f51475a.onNext(t10);
            }
        }

        @Override // th.b
        public void dispose() {
            this.f51477c.dispose();
            DisposableHelper.dispose(this.f51478d);
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51477c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51480f) {
                return;
            }
            this.f51480f = true;
            th.b bVar = this.f51478d.get();
            if (bVar != DisposableHelper.DISPOSED) {
                C0511a c0511a = (C0511a) bVar;
                if (c0511a != null) {
                    c0511a.a();
                }
                DisposableHelper.dispose(this.f51478d);
                this.f51475a.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            DisposableHelper.dispose(this.f51478d);
            this.f51475a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51480f) {
                return;
            }
            long j10 = this.f51479e + 1;
            this.f51479e = j10;
            th.b bVar = this.f51478d.get();
            if (bVar != null) {
                bVar.dispose();
            }
            try {
                io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f51476b.apply(t10), "The ObservableSource supplied is null");
                C0511a c0511a = new C0511a(this, j10, t10);
                if (this.f51478d.compareAndSet(bVar, c0511a)) {
                    pVar.subscribe(c0511a);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                this.f51475a.onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51477c, bVar)) {
                this.f51477c = bVar;
                this.f51475a.onSubscribe(this);
            }
        }
    }

    public c0(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.p<U>> oVar) {
        super(pVar);
        this.f51474b = oVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(new io.reactivex.observers.d(rVar), this.f51474b));
    }
}
