package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class y2<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final vh.c<R, ? super T, R> f52608b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<R> f52609c;

    /* loaded from: classes7.dex */
    static final class a<T, R> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super R> f52610a;

        /* renamed from: b  reason: collision with root package name */
        final vh.c<R, ? super T, R> f52611b;

        /* renamed from: c  reason: collision with root package name */
        R f52612c;

        /* renamed from: d  reason: collision with root package name */
        th.b f52613d;

        /* renamed from: e  reason: collision with root package name */
        boolean f52614e;

        a(io.reactivex.r<? super R> rVar, vh.c<R, ? super T, R> cVar, R r10) {
            this.f52610a = rVar;
            this.f52611b = cVar;
            this.f52612c = r10;
        }

        @Override // th.b
        public void dispose() {
            this.f52613d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f52613d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f52614e) {
                return;
            }
            this.f52614e = true;
            this.f52610a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f52614e) {
                ci.a.s(th2);
                return;
            }
            this.f52614e = true;
            this.f52610a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f52614e) {
                return;
            }
            try {
                R r10 = (R) xh.b.e(this.f52611b.apply(this.f52612c, t10), "The accumulator returned a null value");
                this.f52612c = r10;
                this.f52610a.onNext(r10);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52613d.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f52613d, bVar)) {
                this.f52613d = bVar;
                this.f52610a.onSubscribe(this);
                this.f52610a.onNext((R) this.f52612c);
            }
        }
    }

    public y2(io.reactivex.p<T> pVar, Callable<R> callable, vh.c<R, ? super T, R> cVar) {
        super(pVar);
        this.f52608b = cVar;
        this.f52609c = callable;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super R> rVar) {
        try {
            this.f51403a.subscribe(new a(rVar, this.f52608b, xh.b.e(this.f52609c.call(), "The seed supplied is null")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }
}
