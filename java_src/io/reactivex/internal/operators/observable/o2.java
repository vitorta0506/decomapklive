package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class o2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f52097b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52098a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f52099b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.p<? extends T> f52100c;

        /* renamed from: d  reason: collision with root package name */
        long f52101d;

        a(io.reactivex.r<? super T> rVar, long j10, SequentialDisposable sequentialDisposable, io.reactivex.p<? extends T> pVar) {
            this.f52098a = rVar;
            this.f52099b = sequentialDisposable;
            this.f52100c = pVar;
            this.f52101d = j10;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i9 = 1;
                while (!this.f52099b.isDisposed()) {
                    this.f52100c.subscribe(this);
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.r
        public void onComplete() {
            long j10 = this.f52101d;
            if (j10 != Long.MAX_VALUE) {
                this.f52101d = j10 - 1;
            }
            if (j10 != 0) {
                a();
            } else {
                this.f52098a.onComplete();
            }
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52098a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52098a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f52099b.replace(bVar);
        }
    }

    public o2(io.reactivex.k<T> kVar, long j10) {
        super(kVar);
        this.f52097b = j10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        rVar.onSubscribe(sequentialDisposable);
        long j10 = this.f52097b;
        new a(rVar, j10 != Long.MAX_VALUE ? j10 - 1 : Long.MAX_VALUE, sequentialDisposable, this.f51403a).a();
    }
}
