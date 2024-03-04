package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class j3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.s f51864b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, th.b {
        private static final long serialVersionUID = 8094547886072529208L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f51865a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<th.b> f51866b = new AtomicReference<>();

        a(io.reactivex.r<? super T> rVar) {
            this.f51865a = rVar;
        }

        void a(th.b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this.f51866b);
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f51865a.onComplete();
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f51865a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f51865a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            DisposableHelper.setOnce(this.f51866b, bVar);
        }
    }

    /* loaded from: classes7.dex */
    final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final a<T> f51867a;

        b(a<T> aVar) {
            this.f51867a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.this.f51403a.subscribe(this.f51867a);
        }
    }

    public j3(io.reactivex.p<T> pVar, io.reactivex.s sVar) {
        super(pVar);
        this.f51864b = sVar;
    }

    @Override // io.reactivex.k
    public void subscribeActual(io.reactivex.r<? super T> rVar) {
        a aVar = new a(rVar);
        rVar.onSubscribe(aVar);
        aVar.a(this.f51864b.d(new b(aVar)));
    }
}
