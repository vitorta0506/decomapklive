package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;
/* loaded from: classes7.dex */
public final class l4<T, U, V> extends io.reactivex.k<V> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.k<? extends T> f51966a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<U> f51967b;

    /* renamed from: c  reason: collision with root package name */
    final vh.c<? super T, ? super U, ? extends V> f51968c;

    /* loaded from: classes7.dex */
    static final class a<T, U, V> implements io.reactivex.r<T>, th.b {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super V> f51969a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f51970b;

        /* renamed from: c  reason: collision with root package name */
        final vh.c<? super T, ? super U, ? extends V> f51971c;

        /* renamed from: d  reason: collision with root package name */
        th.b f51972d;

        /* renamed from: e  reason: collision with root package name */
        boolean f51973e;

        a(io.reactivex.r<? super V> rVar, Iterator<U> it, vh.c<? super T, ? super U, ? extends V> cVar) {
            this.f51969a = rVar;
            this.f51970b = it;
            this.f51971c = cVar;
        }

        void a(Throwable th2) {
            this.f51973e = true;
            this.f51972d.dispose();
            this.f51969a.onError(th2);
        }

        @Override // th.b
        public void dispose() {
            this.f51972d.dispose();
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51972d.isDisposed();
        }

        @Override // io.reactivex.r
        public void onComplete() {
            if (this.f51973e) {
                return;
            }
            this.f51973e = true;
            this.f51969a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            if (this.f51973e) {
                ci.a.s(th2);
                return;
            }
            this.f51973e = true;
            this.f51969a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            if (this.f51973e) {
                return;
            }
            try {
                try {
                    this.f51969a.onNext(xh.b.e(this.f51971c.apply(t10, xh.b.e(this.f51970b.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f51970b.hasNext()) {
                            return;
                        }
                        this.f51973e = true;
                        this.f51972d.dispose();
                        this.f51969a.onComplete();
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        a(th2);
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    a(th3);
                }
            } catch (Throwable th4) {
                io.reactivex.exceptions.a.b(th4);
                a(th4);
            }
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (DisposableHelper.validate(this.f51972d, bVar)) {
                this.f51972d = bVar;
                this.f51969a.onSubscribe(this);
            }
        }
    }

    public l4(io.reactivex.k<? extends T> kVar, Iterable<U> iterable, vh.c<? super T, ? super U, ? extends V> cVar) {
        this.f51966a = kVar;
        this.f51967b = iterable;
        this.f51968c = cVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super V> rVar) {
        try {
            Iterator it = (Iterator) xh.b.e(this.f51967b.iterator(), "The iterator returned by other is null");
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(rVar);
                } else {
                    this.f51966a.subscribe(new a(rVar, it, this.f51968c));
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptyDisposable.error(th2, rVar);
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            EmptyDisposable.error(th3, rVar);
        }
    }
}
