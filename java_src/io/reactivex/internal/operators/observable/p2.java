package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class p2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.e f52172b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52173a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f52174b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.p<? extends T> f52175c;

        /* renamed from: d  reason: collision with root package name */
        final vh.e f52176d;

        a(io.reactivex.r<? super T> rVar, vh.e eVar, SequentialDisposable sequentialDisposable, io.reactivex.p<? extends T> pVar) {
            this.f52173a = rVar;
            this.f52174b = sequentialDisposable;
            this.f52175c = pVar;
            this.f52176d = eVar;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i9 = 1;
                do {
                    this.f52175c.subscribe(this);
                    i9 = addAndGet(-i9);
                } while (i9 != 0);
            }
        }

        @Override // io.reactivex.r
        public void onComplete() {
            try {
                if (this.f52176d.a()) {
                    this.f52173a.onComplete();
                } else {
                    a();
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f52173a.onError(th2);
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52173a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52173a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f52174b.replace(bVar);
        }
    }

    public p2(io.reactivex.k<T> kVar, vh.e eVar) {
        super(kVar);
        this.f52172b = eVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        rVar.onSubscribe(sequentialDisposable);
        new a(rVar, this.f52172b, sequentialDisposable, this.f51403a).a();
    }
}
