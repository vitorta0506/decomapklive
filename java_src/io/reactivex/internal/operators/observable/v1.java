package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class v1<T, R> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.p<? extends R>> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, ? extends io.reactivex.p<? extends R>> f52464b;

    /* renamed from: c  reason: collision with root package name */
    final vh.o<? super Throwable, ? extends io.reactivex.p<? extends R>> f52465c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends io.reactivex.p<? extends R>> f52466d;

    /* loaded from: classes7.dex */
    static final class a<T, R> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super io.reactivex.p<? extends R>> f52467a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super T, ? extends io.reactivex.p<? extends R>> f52468b;

        /* renamed from: c  reason: collision with root package name */
        final vh.o<? super Throwable, ? extends io.reactivex.p<? extends R>> f52469c;

        /* renamed from: d  reason: collision with root package name */
        final Callable<? extends io.reactivex.p<? extends R>> f52470d;

        /* renamed from: e  reason: collision with root package name */
        th.b f52471e;

        a(io.reactivex.r<? super io.reactivex.p<? extends R>> rVar, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar, vh.o<? super Throwable, ? extends io.reactivex.p<? extends R>> oVar2, Callable<? extends io.reactivex.p<? extends R>> callable) {
            this.f52467a = rVar;
            this.f52468b = oVar;
            this.f52469c = oVar2;
            this.f52470d = callable;
        }

        @Override // th.b
        public void dispose() {
            this.f52471e.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52471e.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            try {
                this.f52467a.onNext((io.reactivex.p) xh.b.e(this.f52470d.call(), "The onComplete ObservableSource returned is null"));
                this.f52467a.onComplete();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52467a.onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            try {
                this.f52467a.onNext((io.reactivex.p) xh.b.e(this.f52469c.apply(th2), "The onError ObservableSource returned is null"));
                this.f52467a.onComplete();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f52467a.onError(new CompositeException(th2, th3));
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            try {
                this.f52467a.onNext((io.reactivex.p) xh.b.e(this.f52468b.apply(t10), "The onNext ObservableSource returned is null"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52467a.onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52471e, bVar)) {
                this.f52471e = bVar;
                this.f52467a.onSubscribe(this);
            }
        }
    }

    public v1(io.reactivex.p<T> pVar, vh.o<? super T, ? extends io.reactivex.p<? extends R>> oVar, vh.o<? super Throwable, ? extends io.reactivex.p<? extends R>> oVar2, Callable<? extends io.reactivex.p<? extends R>> callable) {
        super(pVar);
        this.f52464b = oVar;
        this.f52465c = oVar2;
        this.f52466d = callable;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super io.reactivex.p<? extends R>> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52464b, this.f52465c, this.f52466d));
    }
}
