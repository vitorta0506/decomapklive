package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes7.dex */
public final class d2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super Throwable, ? extends T> f51532b;

    /* loaded from: classes7.dex */
    static final class a<T> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51533a;

        /* renamed from: b  reason: collision with root package name */
        final vh.o<? super Throwable, ? extends T> f51534b;

        /* renamed from: c  reason: collision with root package name */
        th.b f51535c;

        a(io.reactivex.r<? super T> rVar, vh.o<? super Throwable, ? extends T> oVar) {
            this.f51533a = rVar;
            this.f51534b = oVar;
        }

        @Override // th.b
        public void dispose() {
            this.f51535c.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51535c.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51533a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            try {
                T apply = this.f51534b.apply(th2);
                if (apply == null) {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th2);
                    this.f51533a.onError(nullPointerException);
                    return;
                }
                this.f51533a.onNext(apply);
                this.f51533a.onComplete();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f51533a.onError(new CompositeException(th2, th3));
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51533a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51535c, bVar)) {
                this.f51535c = bVar;
                this.f51533a.onSubscribe(this);
            }
        }
    }

    public d2(io.reactivex.p<T> pVar, vh.o<? super Throwable, ? extends T> oVar) {
        super(pVar);
        this.f51532b = oVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f51532b));
    }
}
