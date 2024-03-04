package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Collection;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class j0<T, K> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.o<? super T, K> f51852b;

    /* renamed from: c  reason: collision with root package name */
    final Callable<? extends Collection<? super K>> f51853c;

    /* loaded from: classes7.dex */
    static final class a<T, K> extends io.reactivex.internal.observers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final Collection<? super K> f51854f;

        /* renamed from: g  reason: collision with root package name */
        final vh.o<? super T, K> f51855g;

        a(io.reactivex.r<? super T> rVar, vh.o<? super T, K> oVar, Collection<? super K> collection) {
            super(rVar);
            this.f51855g = oVar;
            this.f51854f = collection;
        }

        @Override // io.reactivex.internal.observers.a, yh.g
        public void clear() {
            this.f51854f.clear();
            super.clear();
        }

        @Override // io.reactivex.internal.observers.a, io.reactivex.r
        public void onComplete() {
            if (this.f51315d) {
                return;
            }
            this.f51315d = true;
            this.f51854f.clear();
            this.f51312a.onComplete();
        }

        @Override // io.reactivex.internal.observers.a, io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51315d) {
                ci.a.s(th2);
                return;
            }
            this.f51315d = true;
            this.f51854f.clear();
            this.f51312a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51315d) {
                return;
            }
            if (this.f51316e == 0) {
                try {
                    if (this.f51854f.add(xh.b.e(this.f51855g.apply(t10), "The keySelector returned a null key"))) {
                        this.f51312a.onNext(t10);
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    c(th2);
                    return;
                }
            }
            this.f51312a.onNext(null);
        }

        @Override // yh.g
        public T poll() throws Exception {
            T poll;
            do {
                poll = this.f51314c.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f51854f.add((Object) xh.b.e(this.f51855g.apply(poll), "The keySelector returned a null key")));
            return poll;
        }

        @Override // yh.c
        public int requestFusion(int i9) {
            return d(i9);
        }
    }

    public j0(io.reactivex.p<T> pVar, vh.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        super(pVar);
        this.f51852b = oVar;
        this.f51853c = callable;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        try {
            this.f51403a.subscribe(new a(rVar, this.f51852b, (Collection) xh.b.e(this.f51853c.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, rVar);
        }
    }
}
