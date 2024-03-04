package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class q3<T, U> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<? extends U> f52230b;

    /* loaded from: classes7.dex */
    static final class a<T, U> extends AtomicInteger implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 1418547743690811973L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52231a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<th.b> f52232b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final a<T, U>.C0518a f52233c = new C0518a();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f52234d = new AtomicThrowable();

        /* renamed from: io.reactivex.internal.operators.observable.q3$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        final class C0518a extends AtomicReference<th.b> implements io.reactivex.r<U> {
            private static final long serialVersionUID = -8693423678067375039L;

            C0518a() {
            }

            @Override // io.reactivex.r
            public void onComplete() {
                a.this.a();
            }

            @Override // io.reactivex.r
            public void onError(Throwable th2) {
                a.this.b(th2);
            }

            @Override // io.reactivex.r
            public void onNext(U u10) {
                DisposableHelper.dispose(this);
                a.this.a();
            }

            @Override // io.reactivex.r
            public void onSubscribe(th.b bVar) {
                DisposableHelper.setOnce(this, bVar);
            }
        }

        a(io.reactivex.r<? super T> rVar) {
            this.f52231a = rVar;
        }

        void a() {
            DisposableHelper.dispose(this.f52232b);
            io.reactivex.internal.util.g.b(this.f52231a, this, this.f52234d);
        }

        void b(Throwable th2) {
            DisposableHelper.dispose(this.f52232b);
            io.reactivex.internal.util.g.d(this.f52231a, th2, this, this.f52234d);
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f52232b);
            DisposableHelper.dispose(this.f52233c);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f52232b.get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            DisposableHelper.dispose(this.f52233c);
            io.reactivex.internal.util.g.b(this.f52231a, this, this.f52234d);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            DisposableHelper.dispose(this.f52233c);
            io.reactivex.internal.util.g.d(this.f52231a, th2, this, this.f52234d);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            io.reactivex.internal.util.g.f(this.f52231a, t10, this, this.f52234d);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f52232b, bVar);
        }
    }

    public q3(io.reactivex.p<T> pVar, io.reactivex.p<? extends U> pVar2) {
        super(pVar);
        this.f52230b = pVar2;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar);
        rVar.onSubscribe(aVar);
        this.f52230b.subscribe(aVar.f52233c);
        this.f51403a.subscribe(aVar);
    }
}
