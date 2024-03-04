package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes7.dex */
public final class y<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.v<? extends T> f52581b;

    /* loaded from: classes7.dex */
    static final class a<T> extends AtomicReference<th.b> implements io.reactivex.r<T>, io.reactivex.u<T>, th.b {
        private static final long serialVersionUID = -1953724749712440952L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.r<? super T> f52582a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.v<? extends T> f52583b;

        /* renamed from: c  reason: collision with root package name */
        boolean f52584c;

        a(io.reactivex.r<? super T> rVar, io.reactivex.v<? extends T> vVar) {
            this.f52582a = rVar;
            this.f52583b = vVar;
        }

        @Override // th.b
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // th.b
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.r
        public void onComplete() {
            this.f52584c = true;
            DisposableHelper.replace(this, null);
            io.reactivex.v<? extends T> vVar = this.f52583b;
            this.f52583b = null;
            vVar.a(this);
        }

        @Override // io.reactivex.r
        public void onError(Throwable th2) {
            this.f52582a.onError(th2);
        }

        @Override // io.reactivex.r
        public void onNext(T t10) {
            this.f52582a.onNext(t10);
        }

        @Override // io.reactivex.r
        public void onSubscribe(th.b bVar) {
            if (!DisposableHelper.setOnce(this, bVar) || this.f52584c) {
                return;
            }
            this.f52582a.onSubscribe(this);
        }

        @Override // io.reactivex.u
        public void onSuccess(T t10) {
            this.f52582a.onNext(t10);
            this.f52582a.onComplete();
        }
    }

    public y(io.reactivex.k<T> kVar, io.reactivex.v<? extends T> vVar) {
        super(kVar);
        this.f52581b = vVar;
    }

    @Override // io.reactivex.k
    protected void subscribeActual(io.reactivex.r<? super T> rVar) {
        this.f51403a.subscribe(new a(rVar, this.f52581b));
    }
}
