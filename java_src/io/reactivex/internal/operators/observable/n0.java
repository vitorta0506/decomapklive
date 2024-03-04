package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class n0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.g<? super T> f52041b;

    /* renamed from: c  reason: collision with root package name */
    final vh.g<? super Throwable> f52042c;

    /* renamed from: d  reason: collision with root package name */
    final vh.a f52043d;

    /* renamed from: e  reason: collision with root package name */
    final vh.a f52044e;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52045a;

        /* renamed from: b  reason: collision with root package name */
        final vh.g<? super T> f52046b;

        /* renamed from: c  reason: collision with root package name */
        final vh.g<? super Throwable> f52047c;

        /* renamed from: d  reason: collision with root package name */
        final vh.a f52048d;

        /* renamed from: e  reason: collision with root package name */
        final vh.a f52049e;

        /* renamed from: f  reason: collision with root package name */
        th.b f52050f;

        /* renamed from: g  reason: collision with root package name */
        boolean f52051g;

        a(io.reactivex.r<? super T> rVar, vh.g<? super T> gVar, vh.g<? super Throwable> gVar2, vh.a aVar, vh.a aVar2) {
            this.f52045a = rVar;
            this.f52046b = gVar;
            this.f52047c = gVar2;
            this.f52048d = aVar;
            this.f52049e = aVar2;
        }

        @Override // th.b
        public void dispose() {
            this.f52050f.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52050f.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52051g) {
                return;
            }
            try {
                this.f52048d.run();
                this.f52051g = true;
                this.f52045a.onComplete();
                try {
                    this.f52049e.run();
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    ci.a.s(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                onError(th3);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52051g) {
                ci.a.s(th2);
                return;
            }
            this.f52051g = true;
            try {
                this.f52047c.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f52045a.onError(th2);
            try {
                this.f52049e.run();
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                ci.a.s(th4);
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52051g) {
                return;
            }
            try {
                this.f52046b.accept(t10);
                this.f52045a.onNext(t10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52050f.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52050f, bVar)) {
                this.f52050f = bVar;
                this.f52045a.onSubscribe(this);
            }
        }
    }

    public n0(io.reactivex.p<T> pVar, vh.g<? super T> gVar, vh.g<? super Throwable> gVar2, vh.a aVar, vh.a aVar2) {
        super(pVar);
        this.f52041b = gVar;
        this.f52042c = gVar2;
        this.f52043d = aVar;
        this.f52044e = aVar2;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52041b, this.f52042c, this.f52043d, this.f52044e));
    }
}
