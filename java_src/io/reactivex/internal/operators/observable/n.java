package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class n<T, U extends Collection<? super T>, B> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends io.reactivex.p<B>> f52032b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<U> f52033c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.observers.b<B> {

        /* renamed from: a  reason: collision with root package name */
        final b<T, U, B> f52034a;

        /* renamed from: b  reason: collision with root package name */
        boolean f52035b;

        a(b<T, U, B> bVar) {
            this.f52034a = bVar;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52035b) {
                return;
            }
            this.f52035b = true;
            this.f52034a.i();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52035b) {
                ci.a.s(th2);
                return;
            }
            this.f52035b = true;
            this.f52034a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(B b10) {
            if (this.f52035b) {
                return;
            }
            this.f52035b = true;
            dispose();
            this.f52034a.i();
        }
    }

    /* loaded from: classes7.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.internal.observers.j<T, U, U> implements th.b {

        /* renamed from: g  reason: collision with root package name */
        final Callable<U> f52036g;

        /* renamed from: h  reason: collision with root package name */
        final Callable<? extends io.reactivex.p<B>> f52037h;

        /* renamed from: i  reason: collision with root package name */
        th.b f52038i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<th.b> f52039j;

        /* renamed from: k  reason: collision with root package name */
        U f52040k;

        b(io.reactivex.r<? super U> rVar, Callable<U> callable, Callable<? extends io.reactivex.p<B>> callable2) {
            super(rVar, new io.reactivex.internal.queue.a());
            this.f52039j = new AtomicReference<>();
            this.f52036g = callable;
            this.f52037h = callable2;
        }

        @Override // th.b
        public void dispose() {
            if (this.f51334d) {
                return;
            }
            this.f51334d = true;
            this.f52038i.dispose();
            h();
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
            DisposableHelper.dispose(this.f52039j);
        }

        void i() {
            try {
                U u10 = (U) xh.b.e(this.f52036g.call(), "The buffer supplied is null");
                try {
                    io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52037h.call(), "The boundary ObservableSource supplied is null");
                    a aVar = new a(this);
                    if (DisposableHelper.replace(this.f52039j, aVar)) {
                        synchronized (this) {
                            U u11 = this.f52040k;
                            if (u11 == null) {
                                return;
                            }
                            this.f52040k = u10;
                            pVar.subscribe(aVar);
                            d(u11, false, this);
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    this.f51334d = true;
                    this.f52038i.dispose();
                    this.f51332b.onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                dispose();
                this.f51332b.onError(th3);
            }
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51334d;
        }

        @Override // io.reactivex.r
        public void onComplete() {
            synchronized (this) {
                U u10 = this.f52040k;
                if (u10 == null) {
                    return;
                }
                this.f52040k = null;
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
                U u10 = this.f52040k;
                if (u10 == null) {
                    return;
                }
                u10.add(t10);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52038i, bVar)) {
                this.f52038i = bVar;
                io.reactivex.r<? super V> rVar = this.f51332b;
                try {
                    this.f52040k = (U) xh.b.e(this.f52036g.call(), "The buffer supplied is null");
                    try {
                        io.reactivex.p pVar = (io.reactivex.p) xh.b.e(this.f52037h.call(), "The boundary ObservableSource supplied is null");
                        a aVar = new a(this);
                        this.f52039j.set(aVar);
                        rVar.onSubscribe(this);
                        if (this.f51334d) {
                            return;
                        }
                        pVar.subscribe(aVar);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f51334d = true;
                        bVar.dispose();
                        EmptyDisposable.error(th2, rVar);
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f51334d = true;
                    bVar.dispose();
                    EmptyDisposable.error(th3, rVar);
                }
            }
        }
    }

    public n(io.reactivex.p<T> pVar, Callable<? extends io.reactivex.p<B>> callable, Callable<U> callable2) {
        super(pVar);
        this.f52032b = callable;
        this.f52033c = callable2;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super U> rVar) {
        this.f51403a.subscribe(new b(new io.reactivex.observers.d(rVar), this.f52033c, this.f52032b));
    }
}
