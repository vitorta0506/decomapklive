package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;
/* loaded from: classes7.dex */
public final class e1<T> extends io.reactivex.k<T> {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends T> f51574a;

    /* loaded from: classes7.dex */
    static final class a<T> extends io.reactivex.internal.observers.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51575a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends T> f51576b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f51577c;

        /* renamed from: d  reason: collision with root package name */
        boolean f51578d;

        /* renamed from: e  reason: collision with root package name */
        boolean f51579e;

        /* renamed from: f  reason: collision with root package name */
        boolean f51580f;

        a(io.reactivex.r<? super T> rVar, Iterator<? extends T> it) {
            this.f51575a = rVar;
            this.f51576b = it;
        }

        void a() {
            while (!isDisposed()) {
                try {
                    this.f51575a.onNext(xh.b.e(this.f51576b.next(), "The iterator returned a null value"));
                    if (isDisposed()) {
                        return;
                    }
                    try {
                        if (!this.f51576b.hasNext()) {
                            if (isDisposed()) {
                                return;
                            }
                            this.f51575a.onComplete();
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f51575a.onError(th2);
                        return;
                    }
                } catch (Throwable th3) {
                    io.reactivex.exceptions.a.b(th3);
                    this.f51575a.onError(th3);
                    return;
                }
            }
        }

        @Override // yh.g
        public void clear() {
            this.f51579e = true;
        }

        @Override // th.b
        public void dispose() {
            this.f51577c = true;
        }

        @Override // th.b
        public boolean isDisposed() {
            return this.f51577c;
        }

        @Override // yh.g
        public boolean isEmpty() {
            return this.f51579e;
        }

        @Override // yh.g
        public T poll() {
            if (this.f51579e) {
                return null;
            }
            if (this.f51580f) {
                if (!this.f51576b.hasNext()) {
                    this.f51579e = true;
                    return null;
                }
            } else {
                this.f51580f = true;
            }
            return (T) xh.b.e(this.f51576b.next(), "The iterator returned a null value");
        }

        @Override // yh.c
        public int requestFusion(int i9) {
            if ((i9 & 1) != 0) {
                this.f51578d = true;
                return 1;
            }
            return 0;
        }
    }

    public e1(Iterable<? extends T> iterable) {
        this.f51574a = iterable;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        try {
            Iterator<? extends T> it = this.f51574a.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(rVar);
                    return;
                }
                a aVar = new a(rVar, it);
                rVar.onSubscribe(aVar);
                if (aVar.f51578d) {
                    return;
                }
                aVar.a();
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
