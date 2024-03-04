package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class s2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.d<? super Integer, ? super Throwable> f52312b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52313a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f52314b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.p<? extends T> f52315c;

        /* renamed from: d  reason: collision with root package name */
        final vh.d<? super Integer, ? super Throwable> f52316d;

        /* renamed from: e  reason: collision with root package name */
        int f52317e;

        a(io.reactivex.r<? super T> rVar, vh.d<? super Integer, ? super Throwable> dVar, SequentialDisposable sequentialDisposable, io.reactivex.p<? extends T> pVar) {
            this.f52313a = rVar;
            this.f52314b = sequentialDisposable;
            this.f52315c = pVar;
            this.f52316d = dVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i9 = 1;
                while (!this.f52314b.isDisposed()) {
                    this.f52315c.subscribe(this);
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52313a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            try {
                vh.d<? super Integer, ? super Throwable> dVar = this.f52316d;
                int i9 = this.f52317e + 1;
                this.f52317e = i9;
                if (!dVar.test(Integer.valueOf(i9), th2)) {
                    this.f52313a.onError(th2);
                } else {
                    a();
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f52313a.onError(new CompositeException(th2, th3));
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52313a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f52314b.replace(bVar);
        }
    }

    public s2(io.reactivex.k<T> kVar, vh.d<? super Integer, ? super Throwable> dVar) {
        super(kVar);
        this.f52312b = dVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        rVar.onSubscribe(sequentialDisposable);
        new a(rVar, this.f52312b, sequentialDisposable, this.f51403a).a();
    }
}
