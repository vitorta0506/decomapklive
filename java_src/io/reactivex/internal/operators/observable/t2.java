package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes7.dex */
public final class t2<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final vh.q<? super Throwable> f52343b;

    /* renamed from: c  reason: collision with root package name */
    final long f52344c;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.r<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52345a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f52346b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.p<? extends T> f52347c;

        /* renamed from: d  reason: collision with root package name */
        final vh.q<? super Throwable> f52348d;

        /* renamed from: e  reason: collision with root package name */
        long f52349e;

        a(io.reactivex.r<? super T> rVar, long j10, vh.q<? super Throwable> qVar, SequentialDisposable sequentialDisposable, io.reactivex.p<? extends T> pVar) {
            this.f52345a = rVar;
            this.f52346b = sequentialDisposable;
            this.f52347c = pVar;
            this.f52348d = qVar;
            this.f52349e = j10;
        }

        void a() {
            if (getAndIncrement() == 0) {
                int i9 = 1;
                while (!this.f52346b.isDisposed()) {
                    this.f52347c.subscribe(this);
                    i9 = addAndGet(-i9);
                    if (i9 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52345a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            long j10 = this.f52349e;
            if (j10 != Long.MAX_VALUE) {
                this.f52349e = j10 - 1;
            }
            if (j10 == 0) {
                this.f52345a.onError(th2);
                return;
            }
            try {
                if (!this.f52348d.test(th2)) {
                    this.f52345a.onError(th2);
                } else {
                    a();
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                this.f52345a.onError(new CompositeException(th2, th3));
            }
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52345a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            this.f52346b.replace(bVar);
        }
    }

    public t2(io.reactivex.k<T> kVar, long j10, vh.q<? super Throwable> qVar) {
        super(kVar);
        this.f52343b = qVar;
        this.f52344c = j10;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        rVar.onSubscribe(sequentialDisposable);
        new a(rVar, this.f52344c, this.f52343b, sequentialDisposable, this.f51403a).a();
    }
}
