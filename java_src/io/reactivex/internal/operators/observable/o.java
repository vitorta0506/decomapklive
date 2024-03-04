package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class o<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.p<B> f52078b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f52079c;

    /* loaded from: classes7.dex */
    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, U, B> f52080a;

        a(b<T, U, B> bVar) {
            this.f52080a = bVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52080a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52080a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(B b10) {
            this.f52080a.h();
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.observers.j<T, U, U> implements th.b {

        /* renamed from: g  reason: collision with root package name */
        final Callable<U> f52081g;

        /* renamed from: h  reason: collision with root package name */
        final io.reactivex.p<B> f52082h;

        /* renamed from: i  reason: collision with root package name */
        th.b f52083i;

        /* renamed from: j  reason: collision with root package name */
        th.b f52084j;

        /* renamed from: k  reason: collision with root package name */
        U f52085k;

        b(io.reactivex.r<? super U> rVar, Callable<U> callable, io.reactivex.p<B> pVar) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f52081g = callable;
            this.f52082h = pVar;
        }

        @Override // th.b
        public void dispose() {
            if (this.f51334d) {
                return;
            }
            this.f51334d = true;
            this.f52084j.dispose();
            this.f52083i.dispose();
            if (b()) {
                this.f51333c.clear();
            }
        }

        @Override // io.reactivex.internal.observers.j, io.reactivex.internal.util.h
        /* renamed from: g */
        public void v(io.reactivex.r<? super U> rVar, U u10) {
            this.f51332b.onNext(u10);
        }

        void h() {
            try {
                U u10 = (U) xh.b.e(this.f52081g.call(), "The buffer supplied is null");
                synchronized (this) {
                    U u11 = this.f52085k;
                    if (u11 == null) {
                        return;
                    }
                    this.f52085k = u10;
                    d(u11, false, this);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                dispose();
                this.f51332b.onError(th2);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51334d;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            synchronized (this) {
                U u10 = this.f52085k;
                if (u10 == null) {
                    return;
                }
                this.f52085k = null;
                this.f51333c.offer(u10);
                this.f51335e = true;
                if (b()) {
                    io.reactivex.internal.util.k.c(this.f51333c, this.f51332b, false, this, this);
                }
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            dispose();
            this.f51332b.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            synchronized (this) {
                U u10 = this.f52085k;
                if (u10 == null) {
                    return;
                }
                u10.add(t10);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52083i, bVar)) {
                this.f52083i = bVar;
                try {
                    this.f52085k = (U) xh.b.e(this.f52081g.call(), "The buffer supplied is null");
                    a aVar = new a(this);
                    this.f52084j = aVar;
                    this.f51332b.onSubscribe(this);
                    if (this.f51334d) {
                        return;
                    }
                    this.f52082h.subscribe(aVar);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f51334d = true;
                    bVar.dispose();
                    EmptyDisposable.error(th2, this.f51332b);
                }
            }
        }
    }

    public o(io.reactivex.p<T> pVar, io.reactivex.p<B> pVar2, Callable<U> callable) {
        super(pVar);
        this.f52078b = pVar2;
        this.f52079c = callable;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super U> rVar) {
        this.f51403a.subscribe(new b(new io.reactivex.observers.d(rVar), this.f52079c, this.f52078b));
    }
}
